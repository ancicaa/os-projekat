#include "../h/syscall_cpp.hpp"

void *operator new(size_t size) {
    return mem_alloc(size);//MemoryAllocator::mem_alloc(size);
}

void *operator new[](size_t size) {
    return mem_alloc(size);//)MemoryAllocator::mem_alloc(size);
}

void operator delete(void *p) noexcept {
    mem_free(p);//MemoryAllocator::mem_free(p);
}

void operator delete[](void *p) noexcept {
    mem_free(p);
    //MemoryAllocator::mem_free(p);
}


Thread::Thread(void (*body)(void *), void *arg) {
    this->body = body;
    this->arg = arg;
}

Thread::Thread() {
    this->body = nullptr;
}

Thread::~Thread() {
    mem_free(myHandle);
}

void Thread::dispatch() {
    thread_dispatch();
}

int Thread::sleep(time_t t) {
    return 0;
}

int Thread::start() {
    return thread_create(&myHandle, wrapperRun, this);
}

void Thread::wrapperRun(void *arg) {
    auto thread = (Thread *) arg;
    if (thread->body == nullptr)
        thread->run();
    else
        thread->body(thread->arg);
}


///////////////semafori
Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

int Semaphore::signal() {
    if (myHandle == nullptr) {
        return -1;
    }
    return sem_signal(myHandle);
}

int Semaphore::wait() {
    if (myHandle == nullptr) {
        return -1;
    }
    return sem_wait(myHandle);
}

int Semaphore::trywait() {
    if (myHandle == nullptr) {
        return -1;
    }
    return sem_trywait(myHandle);
}

Semaphore::~Semaphore() {
    sem_close(myHandle);
}


char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    ::putc(c);
}