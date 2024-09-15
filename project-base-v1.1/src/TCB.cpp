#include "../lib/hw.h"
#include "../lib/mem.h"
#include "../h/TCB.hpp"
#include "../h/riscv.hpp"
#include "../h/scheduler.hpp"
#include "../test/printing.hpp"

TCB *TCB::running = nullptr;

void TCB::yield() {
    Riscv::pushRegisters();
    TCB::dispatch();
    Riscv::popRegisters();
}

void TCB::dispatch() { //promena konteksta, trenutnu zavrsenu zameni nekom drugom
    TCB *old = running;
    if (old != nullptr && !old->isFinished() && !old->isBlocked()) {
        Scheduler::put(old);
    }
    running = Scheduler::get();
    TCB::contextSwitch(&old->context, &running->context);
}


TCB::TCB(Body body, void *arg, void *stack_space) : body(body), arg(arg), finished(false), blocked(false) {// da li moze drugacije
    if (stack_space) {
        stack = static_cast<uint64 *>(stack_space);
    } else {
        size_t stack_size_in_blocks = (DEFAULT_STACK_SIZE * sizeof(uint64) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
        stack = static_cast<uint64 *>(MemoryAllocator::mem_alloc(stack_size_in_blocks * MEM_BLOCK_SIZE));
    }
    if (body) {
        Scheduler::put(this);
    } else {
        TCB::running = this;
    }
    context.ra = (uint64) &thread_wrapper;
    context.sp = (uint64) ((char *) stack + DEFAULT_STACK_SIZE - 1);
}

int TCB::createThread(thread_t *handle, Body body, void *arg, void *stack_space) {
    if (!handle) {
        return -1;
    }
    TCB *new_thread = new TCB(body, arg, stack_space); //drugi konstruktor da li imati odma samo jedan ili je ovako ok
    *handle = new_thread;
    return 0;
}

int TCB::thread_exit() { // da li treba jos nesto
    if (running == nullptr) {
        return -1;
    }
    running->setFinished(true);
    MemoryAllocator::mem_free(running->stack);
    TCB::dispatch();
    return 0;
}

void TCB::thread_wrapper() {
    Riscv::popSppSpie();
    running->body(running->arg);
    ::thread_exit();
}