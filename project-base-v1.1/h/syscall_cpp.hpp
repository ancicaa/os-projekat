//
// Created by os on 9/13/24.
//

#ifndef SYSCALL_CPP_HPP
#define SYSCALL_CPP_HPP
#include "syscall_c.hpp"
#include "../src/_new.cpp"
#include "../lib/hw.h"
#include "../lib/console.h"
#include "../lib/mem.h"

void* operator new(size_t);
void* operator new[](size_t);
void operator delete(void*) noexcept;
void operator delete[](void*) noexcept;

class Thread {
public:
    Thread(void (*body)(void *), void *arg);
    virtual ~Thread();

    int start();

    static void dispatch();
    static int sleep (time_t);

    static void wrapperRun(void* arg);

protected:
    Thread();
    virtual void run() {}

private:
    thread_t myHandle;
    void (*body)(void *);
    void *arg;
};


class Semaphore {
public:
    Semaphore(unsigned init=1);

    int signal();
    int wait();
    int trywait();

    virtual ~Semaphore();
private:
    sem_t myHandle;
};


class Console {
public:
    static char getc();
    static void putc(char);
};



#endif //SYSCALL_CPP_HPP
