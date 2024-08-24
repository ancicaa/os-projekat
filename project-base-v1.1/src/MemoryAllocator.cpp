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

void *MemoryAllocator::mem_alloc(size_t s) {
    if (s <= 0) return 0;
    size_t size=s;

    Block* blk=head; //pronadji prvi slobodan blok dovoljne velicine

    if (blk == nullptr) return nullptr;// ako nema dovoljno velikog bloka, vrati nullptr ??

    if (blk->size > size + sizeof(Block)) { //ako moze da stane super
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
    return (void*)((char*)blk + sizeof(Block)); // korisni deo bloka
}

int MemoryAllocator::mem_free(void* addr) {
    if(addr==nullptr || addr > HEAP_END_ADDR || addr<HEAP_START_ADDR) return -1; //adresa nula
    Block* trenutni = (Block*)((char*)addr - sizeof(Block)); // da dobijem blok iz adrese??

    if (trenutni->free) return -2; // vec slobodno
    trenutni->free=true;
    if (!trenutni->next && trenutni->next->free) {
        merge(trenutni, trenutni->next);
    }
    if (!trenutni->prev && trenutni->prev->free)
        merge(trenutni, trenutni->prev);

    trenutni = nullptr;
    return 0;
}


void MemoryAllocator::merge(Block *prvi,Block *drugi) {
    if (prvi == nullptr || drugi == nullptr) {
        return;
    }


}


