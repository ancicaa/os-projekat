//
// Created by os on 9/13/24.
//

#ifndef SEMAPHORE_HPP
#define SEMAPHORE_HPP

#include "../lib/hw.h"
#include "list.hpp"
#include "TCB.hpp"

class _sem;
typedef _sem* sem_t;

class TCB;
typedef TCB* thread_t;

class _sem {
public:
    _sem(unsigned init = 1) : value(init), closed(false) {}
    static int sem_open(sem_t* handle, unsigned init);
    static int sem_close(sem_t handle);
    static int sem_wait(sem_t id);
    static int sem_signal(sem_t id);
    static int sem_trywait(sem_t id);

    virtual ~_sem() {}


private:
    unsigned value;
    sem_t handle;
    bool closed;
    friend class TCB;
    List<TCB> blokiraneNiti;

};
#endif //SEMAPHORE_HPP


