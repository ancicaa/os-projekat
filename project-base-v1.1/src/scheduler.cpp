//
// Created by os on 9/13/24.
//
#include "../h/scheduler.hpp"
List<TCB> Scheduler::readyThreadQueue;


void Scheduler::put(TCB *ccb) {
    readyThreadQueue.addLast(ccb);
}


TCB *Scheduler::get() {
    return readyThreadQueue.removeFirst();
}