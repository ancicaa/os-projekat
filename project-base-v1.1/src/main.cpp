#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../lib/console.h"
#include "../lib/hw.h"
#include "../h/printing.hpp"
#include "../h/TCB.hpp"
#include "../h/syscall_cpp.hpp"

extern "C" void rutina();

extern void userMain();

int main() {
    MemoryAllocator::init();
    Riscv::w_stvec((uint64) rutina);// upis adrese prekidne rutinina

    setMaxThreads(10);
    thread_t main_handle;
    thread_create(&main_handle, nullptr, nullptr);

    thread_t um_handle;
    thread_create(&um_handle, reinterpret_cast<void (*)(void *)>(userMain), nullptr);
    thread_join(um_handle);
    return 0;
}