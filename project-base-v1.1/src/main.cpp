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

class Thread1 : public Thread {
public:
    Thread1(char letter) : Thread() {
        this->letter = letter;
    }
    void run() override {
        for(int i = 0; i < 1000; i++) {
            putc(letter);
            thread_dispatch();
        }
    }
private:
    char letter;
};

int main() {
    MemoryAllocator::init();
    Riscv::w_stvec((uint64) rutina);// upis adrese prekidne rutinina
    thread_t main_handle;
    setMaxThreads(2);
    thread_create(&main_handle, nullptr, nullptr);
//    thread_t um_handle;
//    thread_create(&um_handle, reinterpret_cast<void (*)(void *)>(userMain), nullptr);
//    thread_join(um_handle);
    Thread* thr[50];
    for (int i = 0; i < 50; i++) {
        thr[i] = new Thread1('A' + i);
    }
    for (auto t: thr) t->start();
    thread_waitall();
    return 0;
}
