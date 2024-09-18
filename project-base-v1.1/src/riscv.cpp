#include "../h/riscv.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../lib/hw.h"
#include "../lib/console.h"
#include "../h/syscall_c.hpp"
#include "../h/TCB.hpp"
#include "../h/_sem.hpp"
#include "../test/printing.hpp"

enum scause {
    SYSCALL_U = 8,
    SYSCALL_S = 9,
    TIMER = 0x8000000000000001,
    CONSOLE = 0x8000000000000009,
    ILLEGAL_INSTRTUCION = 2,
    ILLEGAL_READ_ADDRESS = 5,
    ILLEGAL_WRITE_ADDRESS = 7,
};

void Riscv::obradaprekida(uint64 code, uint64 arg1, uint64 arg2, uint64 arg3, uint64 arg4) {
    uint64 volatile scause = r_scause();
    uint64 volatile sepc = r_sepc(); //cita pc
    uint64 volatile sstatus = r_sstatus();//cita status registar

    if (scause == SYSCALL_S or scause == SYSCALL_U) {
        switch (code) {
            case MEM_ALLOC:
                __mem_alloc(MEM_BLOCK_SIZE*arg1);
                //MemoryAllocator::mem_alloc(arg1);
                break;
            case MEM_FREE:
                __mem_free((void*)arg1);
                //MemoryAllocator::mem_free((void *) arg1);
                break;
            case GETC:
                __getc();
                break;
            case PUTC:
                __putc(arg1);
                break;
            case THREAD_CREATE:
                TCB::createThread((thread_t *) arg1, (TCB::Body) arg2, (void *) arg3, (void *) arg4);
                break;
            case THREAD_EXIT:
                TCB::thread_exit();
                break;
            case THREAD_DISPATCH:
                TCB::dispatch();
                break;
            case THREAD_JOIN:
                ((thread_t) arg1)->join();
                break;
            case THREAD_WAITALL:
                TCB::waitForAll();
                break;
            case THREAD_MAX:
                TCB::setMaxThread(arg1);
                break;
            case SEM_OPEN:
                _sem::sem_open((sem_t *) arg1, (long) arg2);
                break;
            case SEM_CLOSE:
                _sem::sem_close((sem_t) arg1);
                break;
            case SEM_WAIT:
                _sem::sem_wait((sem_t) arg1);
                break;
            case SEM_SIGNAL:
                _sem::sem_signal((sem_t) arg1);
                break;
            case SEM_TRYWAIT:
                _sem::sem_trywait((sem_t) arg1);
                break;
            case SEND:
                TCB::send((thread_t) arg1, (const char *) arg2);
                break;
            case RECEIVE:
                TCB::receive();
                break;
        }
        w_sstatus(sstatus);
        w_sepc(sepc + 4);
    } else if (scause == TIMER) {
        mc_sip(SIP_SSIE);
    } else if (scause == CONSOLE) {
        console_handler();
    } else if (scause == ILLEGAL_INSTRTUCION) {
        printString("ILLEGAL INSTRUCTION");
        while (true);
    } else if (scause == ILLEGAL_READ_ADDRESS) {
        printString("ILLEGAL READ ADDRESS");
        while (true);
    } else if (scause == ILLEGAL_WRITE_ADDRESS) {
        printString("ILLEGAL WRITE ADDRESS");
        while (true);
    }
}

void Riscv::popSppSpie() {
    Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}