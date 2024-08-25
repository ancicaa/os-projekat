#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../lib/console.h"
#include "../lib/hw.h"
extern "C" void rutina();

int main() {
    MemoryAllocator::init();
    Riscv::w_stvec((uint64)rutina);// upis adrese prekidne rutine

    int* a = (int*)MemoryAllocator::mem_alloc(20* sizeof(int));
    *a='1';
    *(a+1)='2';
    *(a+2)='3';
    *(a+3)='4';
    *(a+4)='5';
    MemoryAllocator::mem_free((a));
    MemoryAllocator::mem_free((a+3));
   __putc(*a);
    __putc(*(a+1));
    __putc(*(a+2));
    __putc(*(a+3));
    __putc(*(a+4));
    __putc(*(a+5));
    __putc(*(a+6));


    return 0;
}





