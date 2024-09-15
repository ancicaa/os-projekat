#include "../h/syscall_c.hpp"
#include "../h/riscv.hpp"


uint64 syscall(uint64 code, uint64 arg = 0, uint64 arg2 = 0, uint64 arg3 = 0, uint64 arg4 = 0) {
    __asm__ volatile ("ecall");
    return Riscv::r_a0();
}
//-------------------------memorija
void *mem_alloc(size_t size) {
    int blocks = (size - 1) / MEM_BLOCK_SIZE + 1;
    return (void *) syscall(MEM_ALLOC, blocks);
}

int mem_free(void *ptr) {
    return syscall(MEM_FREE, (uint64)ptr);
}

//-------------------------niti
int thread_create(thread_t *handle,void(*start_routine)(void *),void *arg){
    void *space = nullptr;
    if (start_routine) {
        space = mem_alloc(DEFAULT_STACK_SIZE);
    }
  return  (int) syscall(THREAD_CREATE, (uint64) handle, (uint64) start_routine, (uint64) arg, (uint64) space);
}

int thread_exit(){
  return (int) syscall(THREAD_EXIT);
  }


void thread_dispatch(){
    (void) syscall(THREAD_DISPATCH);
 }

//-------------------------semafori
int sem_open(sem_t* handle,unsigned int init){
  return (int)syscall(SEM_OPEN, (uint64) handle, init);
}
int sem_close(sem_t handle){
    return (int)syscall(SEM_OPEN, (uint64) handle);
}
int sem_wait(sem_t id){
    return (int)syscall(SEM_WAIT, (uint64) id);
}
int sem_signal(sem_t id){
    return (int)syscall(SEM_SIGNAL, (uint64) id);
}
int sem_trywait(sem_t id){
    return (int)syscall(SEM_TRYWAIT, (uint64) id);
}

//-------------------------------------
char getc () {
    return syscall(GETC);
}

void putc (char c) {
    syscall(PUTC, c);
}

