//
// Created by os on 9/13/24.
//

#ifndef SCHEDULER_HPP
#define SCHEDULER_HPP

#include "list.hpp"
class TCB;

class Scheduler{
    friend class List<TCB>;

private:
    static List<TCB> readyThreadQueue;

public:
    static TCB *get();

    static void put(TCB *ccb);

};
#endif //SCHEDULER_HPP
