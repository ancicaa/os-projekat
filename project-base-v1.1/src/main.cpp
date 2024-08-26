#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../lib/console.h"
#include "../lib/hw.h"
#include "../h/printing.hpp"

extern "C" void rutina();

int main() {
    MemoryAllocator::init();
    Riscv::w_stvec((uint64)rutina);// upis adrese prekidne rutine

    MemoryAllocator::print();
    void *a = mem_alloc(10);
    MemoryAllocator::print();           //velicina free treba da bude MEM_BLOCK_SIZE + sizeof(Block) = 88 manja od predhodne
    void *b = mem_alloc(100);
    MemoryAllocator::print();           //velicina free treba da bude 2*MEM_BLOCK_SIZE + sizeof(Block) = 152 manja od predhodne
    void *c = mem_alloc(1000);
    MemoryAllocator::print();           //velicina free treba da bude 16*MEM_BLOCK_SIZE + sizeof(Block) = 1048 manja od predhodne

    printString("a: ");
    printInt((uint64)a);
    printString("\nb: ");
    printInt((uint64)b);
    printString("\nc: ");
    printInt((uint64)c);
    printString("\n");

    mem_free(a);
    void *d = mem_alloc(10);
    printString("a: ");
    printInt((uint64)a);
    printString(" d: ");
    printInt((uint64)d);            //a i d treba da budu isti, jer prostor oslobodjen od a treba da je dovoljan za d
    printString("\n");

    mem_free(d);
    void *e = mem_alloc(100);
    printString("a: ");
    printInt((uint64)a);
    printString(" e: ");
    printInt((uint64)e);            //a i e ne bi smeli da budu isti, jer prostor oslobodjen od d nije dovoljan za e
    printString("\n");
    mem_free(e);
    a = mem_alloc(10);

    //moze se menjati redosled dealokacije da se vidi rad alokatora
    mem_free(a);
    MemoryAllocator::print();
    mem_free(b);
    MemoryAllocator::print();
    mem_free(c);
    MemoryAllocator::print();           //ovde treba da bude isti ispis kao na pocetku
    return 0;
}





