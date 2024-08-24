#include "../h/riscv.hpp"

#include "../h/MemoryAllocator.hpp"
#include "../lib/hw.h"
#include "../lib/console.h"
#include "../h/syscall_c.hpp"

enum scause {
    SYSCALL_U = 8,
    SYSCALL_S = 9,
    TIMER = 0x8000000000000001,
    CONSOLE = 0x8000000000000009,
    ILLEGAL_INSTRTUCION = 2,
    ILLEGAL_READ_ADDRESS = 5,
    ILLEGAL_WRITE_ADDRESS = 7,
};

void Riscv::obradaprekida(uint64 code, uint64 arg1, uint64 arg2, uint64 arg3, uint64 arg4) {
    uint64 scause = r_scause();
    uint64 sepc = r_sepc(); //cita pc
    uint64 sstatus = r_sstatus();//cita status registar

    if (scause == SYSCALL_S or scause == SYSCALL_U) {
        switch (code) {
            case MEM_ALLOC:
                MemoryAllocator::mem_alloc(arg1);
            break;
            case MEM_FREE:
                MemoryAllocator::mem_free((void *) arg1);
            break;
            case GETC:
                __getc();
            break;
            case PUTC:
                __putc(arg1);
            break;
        }

        w_sstatus(sstatus);
        w_sepc(sepc + 4);
    } else if (scause == TIMER) {
        mc_sip(SIP_SSIE);
    } else if (scause == CONSOLE) {
        console_handler();
    } else if (scause == ILLEGAL_INSTRTUCION) {
    } else if (scause == ILLEGAL_READ_ADDRESS) {
    } else if (scause == ILLEGAL_WRITE_ADDRESS) {
    };
}