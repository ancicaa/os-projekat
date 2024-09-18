//
// Created by os on 9/17/24.
//

#ifndef PROJECT_BASE_V1_1_RESOURCE_HPP
#define PROJECT_BASE_V1_1_RESOURCE_HPP


#include "syscall_cpp.hpp"

class Resource {
public:
    explicit Resource(int res) : res(res), threads(0), mutex(1), waiter(0) {}

    void take(int n) {
        mutex.wait();
        while (res < n) {
            threads++;
            mutex.signal();
            waiter.wait();
            mutex.wait();
        }
        res -= n;
        mutex.signal();
    }

    void give_back(int n) {
        mutex.wait();
        res += n;
        for (int i = 0; i < threads; i++)
            waiter.signal();
        threads = 0;
        mutex.signal();
    }

private:
    int res;
    int threads;
    Semaphore mutex;
    Semaphore waiter;
};


#endif //PROJECT_BASE_V1_1_RESOURCE_HPP
