#include "../h/MemoryAllocator.hpp"

Block* MemoryAllocator::head = nullptr;
void MemoryAllocator::init() {
    size_t total_heap_size = (char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR;

    head = (Block*)HEAP_START_ADDR; //incijalizujemo listu blokova
    head->size = total_heap_size - sizeof(Block); //velicina 1.blk
    head->free = true;
    head->next = nullptr; //nema sl nema prethodni
    head->prev = nullptr;
}

void* MemoryAllocator::mem_alloc(size_t s) {
    if (s <= 0) return nullptr;

    size_t size = s;
    Block* blk = head;

    while (blk != nullptr) {
        if (blk->free && blk->size >= size + sizeof(Block)) {
            break;
        }
        blk = blk->next;
    }

    if (blk == nullptr) return nullptr; // nema dovoljno velikog bloka
    if (blk->size > size + sizeof(Block)) {
        Block* newBlock = (Block*)((char*)blk + sizeof(Block) + size);
        newBlock->size = blk->size - size - sizeof(Block);
        newBlock->free = true;
        newBlock->next = blk->next;
        newBlock->prev = blk;

        if (blk->next) {
            blk->next->prev = newBlock;
        }

        blk->next = newBlock;
        blk->size = size;
    }

    blk->free = false;
    return (void*)((char*)blk + sizeof(Block));
}


int MemoryAllocator::mem_free(void* addr) {
    if (addr == nullptr || addr > HEAP_END_ADDR || addr < HEAP_START_ADDR) return -1;

    Block* trenutni = (Block*)((char*)addr - sizeof(Block)); // predji na blok

    if (trenutni->free) return -2; //slobodan

    trenutni->free = true;

    if (trenutni->next != nullptr && trenutni->next->free) {// spoji sa sl blokom ako je slobodan
        merge(trenutni, trenutni->next);
    }

    if (trenutni->prev != nullptr && trenutni->prev->free) { // sa prethodnim  ako je slobodan
        merge(trenutni->prev, trenutni);
    }

    return 0;
}



void MemoryAllocator::merge(Block *prvi,Block *drugi) {
    if (prvi == nullptr || drugi == nullptr) {
        return;
    }
    prvi->size += drugi->size;
    prvi->next = drugi->next;
    if (prvi->next != nullptr) {
        prvi->next->prev = prvi;
    }

}


