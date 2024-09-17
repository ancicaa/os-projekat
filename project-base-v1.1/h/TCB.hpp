//
// Created by os on 9/13/24.
//

#ifndef TCB_HPP
#define TCB_HPP

#include "../lib/hw.h"
#include "scheduler.hpp"
#include "../h/riscv.hpp"
#include "../lib/mem.h"
#include "syscall_c.hpp"
#include "../h/list.hpp"

class TCB {
public:
    using Body = void (*)(void *);

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }

    bool isBlocked() const { return blocked; }

    void setBlocked(bool value) { blocked = value; }

    static void yield();

    static void dispatch();

    static TCB *running;

    static int ID;

    friend class _sem;

    friend class Riscv;

    static int createThread(thread_t *handle, Body body, void *arg, void *stack_space);

    static int thread_exit();

    int join();

    static void waitForAll();

    TCB(Body body, void *arg, void *stack_space); //?? proveriti

    ~TCB() { __mem_free(stack); }

    static void setMaxThread(int number);

private:
    struct Context {
        uint64 ra;
        uint64 sp;
    };

    Body body;
    void *arg;
    uint64 *stack;
    Context context;
    bool finished;
    bool blocked;

    _sem* joiner;

    static void thread_wrapper();

    List<TCB> children;

    static long max_threads;
    static _sem* max_sem;

public:
    static void contextSwitch(Context *oldContext, Context *newContext);

};

#endif //TCB_HPP
