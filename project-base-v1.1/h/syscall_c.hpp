#ifndef SYSCALL_C_HPP
#define SYSCALL_C_HPP
#include "../lib/hw.h"

enum code {
    MEM_ALLOC=0x01,
    MEM_FREE=0x02,
    GETC=0x41,
    PUTC=0x42
};

void *mem_alloc(size_t size);

int mem_free(void* p);

// int thread_create(
//         thread_t *handle,
//         void(*start_routine)(void *),
//         void *arg
// );
//
// int thread_exit();
//
// void thread_dispatch();
//
// int sem_open(
//         sem_t *handle,
//         unsigned init
// );
//
// int sem_close (sem_t handle);
//
// int sem_wait(sem_t id);
//
// int sem_signal(sem_t id);
//
// int sem_trywait(sem_t id);
//
char getc ();

void putc (char c);

#endif //SYSCALL_C_HPP
