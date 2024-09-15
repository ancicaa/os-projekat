#include "../h/syscall_cpp.hpp"

void *operator new(size_t size) {
    return MemoryAllocator::mem_alloc(size);
}

void *operator new[](size_t size) {
    return MemoryAllocator::mem_alloc(size);
}


void operator delete( void* p ) noexcept {
    MemoryAllocator::mem_free(p);
}

void operator delete[]( void* p ) noexcept {
    MemoryAllocator::mem_free(p);
}


Thread::Thread(void (*body)(void *), void *arg) {
    this->body = body;
    this->arg = arg;
}

Thread::~Thread() {
}

void Thread::dispatch() {
    thread_dispatch();
}

int Thread::sleep(time_t t) {
    return 0;
}

int Thread::start(){
    thread_create(&myHandle, body, arg);
    return 0;
}

void Thread::wrapperRun(void* pt){
    if(pt != nullptr) ((Thread*)pt)->run();
    else return;

}

Thread::Thread(){
    this->body = nullptr;
    this->arg = nullptr;
 }



///////////////semafori
Semaphore::Semaphore(unsigned int init){
    sem_open(&myHandle, init);
}

int Semaphore::signal(){
    if (myHandle == nullptr) {
        return -1;
    }
    return sem_signal(myHandle);
}

int Semaphore::wait(){
    if (myHandle == nullptr) {
        return -1;
    }
    return sem_wait(myHandle);
}
int Semaphore::trywait(){
    if (myHandle == nullptr) {
        return -1;
    }
    return sem_trywait(myHandle);
}
Semaphore::~Semaphore(){
    sem_close(myHandle);
}



char Console::getc() {
    return ::getc();
}
void Console::putc(char c) {
    ::putc(c);
}