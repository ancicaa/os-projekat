//
// Created by os on 9/13/24.
//

#include "../h/_sem.hpp"
#include "../h/scheduler.hpp"
#include "../test/printing.hpp"

int _sem::sem_open(sem_t *handle, long init) {
    if (handle == nullptr) {
        return -1;
    }
    sem_t semaphore = new _sem();
    semaphore->value = init;
    semaphore->closed = false;
    *handle = semaphore;

    if (*handle == nullptr) {
        return -2;
    }
    return 0;
}


int _sem::sem_close(sem_t handle) {
    if (handle == nullptr || handle->closed) {
        return -1;
    }
    handle->closed = true;
    for (TCB *thread = handle->blokiraneNiti.peekFirst();
         thread != nullptr; thread = handle->blokiraneNiti.peekFirst()) {
        thread->setBlocked(false);  // Oznaci nit kao deblokiranu
        Scheduler::put(thread);     //
        handle->blokiraneNiti.removeFirst();  // ukloni  nit iz liste
    }

    if (MemoryAllocator::mem_free(handle)) {
        return -2;
    }

    return 0;
}


int _sem::sem_wait(sem_t id) {
    if (id == nullptr || id->closed) {
        return -1;
    }
    if (id->value == 0) {//ako je semafor nula ili manji, blokiraj nit
        TCB::running->setBlocked(true);  //  nit blokirana
        id->blokiraneNiti.addLast(TCB::running);  // Dodaj nit na listu blokiranih
        TCB::yield();
    } else {
        id->value--;
    }
    if (id->closed)
        return -1;
    else
        return 0;
}


int _sem::sem_signal(sem_t id) {
    if (id == nullptr) {
        return -1;
    }

    if (id->closed) {
        return -2;
    }

    // da li postoji neka blokirana nit

    if (!id->blokiraneNiti.isEmpty()) {
        TCB *thread = id->blokiraneNiti.removeFirst();  // ako da  deblokiraj prvu
        if (thread != nullptr) {

            thread->setBlocked(false);  // nije blokirana
            Scheduler::put(thread);  // ubaci
        }
    } else {
        id->value++;
    }
    return 0;
}

int _sem::sem_trywait(sem_t id) {
    if (id == nullptr) return -1;
    if (id->value <= 0) { // Ako je semafor vec zaključan, vraca 1
        return 1;
    }
    id->value--; // semafor nije zaključan, smanji vrednost semafora i vrati 0
    return 0;
}

