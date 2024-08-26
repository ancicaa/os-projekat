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

    return 0;
}





