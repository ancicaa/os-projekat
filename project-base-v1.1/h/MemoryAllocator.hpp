
#ifndef MEMORYALLOCATOR_HPP
#define MEMORYALLOCATOR_HPP

#include "../lib/hw.h"


struct Block{
    struct Block* next;
    struct Block* prev;
    uint32 size;
    bool free;

};

class MemoryAllocator{
private:
    static Block* head;
    //Block* find_free_block(size_t size);

public:
    static void init();
    static void* mem_alloc(size_t size);
    static int mem_free(void* addr);
    static void merge(struct Block* prvi, struct Block* drugi);
    //struct Block *head=nullptr;
};

#endif //MEMORYALLOCATOR_HPP
