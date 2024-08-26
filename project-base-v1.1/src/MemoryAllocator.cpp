#include "../h/MemoryAllocator.hpp"
#include "../h/printing.hpp"

Block *MemoryAllocator::head = nullptr;

void MemoryAllocator::init() {
    size_t total_heap_size = (char *) HEAP_END_ADDR - (char *) HEAP_START_ADDR;

    head = (Block *) HEAP_START_ADDR; //incijalizujemo listu blokova
    head->size = total_heap_size - sizeof(Block); //velicina 1.blk
    head->free = true;
    head->next = nullptr; //nema sl nema prethodni
    head->prev = nullptr;
}

void *MemoryAllocator::mem_alloc(size_t s) {
    if (s <= 0) return nullptr;

    size_t size = s * MEM_BLOCK_SIZE;
    Block *blk = head;

    while (blk != nullptr) {
        if (blk->free && blk->size >= size + sizeof(Block)) {
            break;
        }
        blk = blk->next;
    }

    if (blk == nullptr) return nullptr; // nema dovoljno velikog bloka
    if (blk->size > size + sizeof(Block)) {
        Block *newBlock = (Block *) ((char *) blk + sizeof(Block) + size);
        newBlock->size = blk->size - size - sizeof(Block);
        newBlock->free = true;
        newBlock->next = blk->next;
        newBlock->prev = blk->prev;

        blk->next = newBlock;
        blk->size = size;
    } else {
        if (blk->prev) blk->prev->next = blk->next;
        if (blk->next) blk->next->prev = blk->prev;
    }
    if (blk == head) head = blk->next;
    blk->free = false;
    return (void *) ((char *) blk + sizeof(Block));
}


int MemoryAllocator::mem_free(void *addr) {
    if (addr == nullptr || addr > HEAP_END_ADDR || addr < HEAP_START_ADDR) return -1;

    Block *trenutni = (Block *) ((char *) addr - sizeof(Block)); // predji na blok

    if (trenutni->free) return -2; //slobodan

    trenutni->free = true;

    Block *sledeci = nullptr, *predhodni = nullptr;
    for (sledeci = head; sledeci->next; sledeci = sledeci->next) {
        if (sledeci > trenutni) break;
    }

    if (!sledeci->next and trenutni > sledeci) {
        predhodni = sledeci; sledeci = nullptr;
    }

    else predhodni = sledeci->prev;

    if (predhodni) predhodni->next = trenutni;
    trenutni->prev = predhodni;
    if (sledeci) sledeci->prev = trenutni;
    trenutni->next = sledeci;

    if (sledeci == head) head = trenutni;

    merge(trenutni, sledeci); // spoji sa sl blokom ako je slobodan

    merge(predhodni, trenutni); // sa prethodnim  ako je slobodan

    return 0;
}


void MemoryAllocator::merge(Block *prvi, Block *drugi) {
    if (prvi == nullptr || drugi == nullptr) {
        return;
    }
    if ((char *) prvi + prvi->size + sizeof(Block) != (char *) drugi) {
        return;
    }
    prvi->size += drugi->size + sizeof(Block);
    prvi->next = drugi->next;
    if (prvi->next != nullptr) {
        prvi->next->prev = prvi;
    }

}

void MemoryAllocator::print() {
    printString("--------------------------------------------------\n");
    for (Block *curr = head; curr; curr = curr->next) {
        printInt((uint64) curr);
        printString(": ");
        printInt((uint64) curr->prev);
        printString(" ");
        printInt(curr->size);
        printString(" ");
        printInt(curr->free);
        printString(" ");
        printInt((uint64) curr->next);
        printString("\n");
    }
    printString("__________________________________________________\n");
}


