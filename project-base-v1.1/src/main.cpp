#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../lib/console.h"
#include "../lib/hw.h"
extern "C" void rutina();

int main() {
    MemoryAllocator::init();
    Riscv::w_stvec((uint64)rutina);// upis adrese prekidne rutine

    char* a = (char*)MemoryAllocator::mem_alloc(2);
    *a='a';
    *(a+1)='b';
    *(a+2)='c';
    *(a+3)='d';
    *(a+4)='e';

   __putc(*a);
    __putc(*(a+1));
    __putc(*(a+2));
    __putc(*(a+3));
    __putc(*(a+4));



    return 0;
}





