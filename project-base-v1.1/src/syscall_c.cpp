#include "../h/syscall_c.hpp"
#include "../h/riscv.hpp"


uint64 syscall(uint64 code, uint64 arg = 0, uint64 arg2 = 0, uint64 arg3 = 0, uint64 arg4 = 0) {
    __asm__ volatile ("ecall");
    return Riscv::r_a0();
}

void *mem_alloc(size_t size) {
    int blocks = (size - 1) / MEM_BLOCK_SIZE + 1;
    return (void *) syscall(MEM_ALLOC, blocks);
}

int mem_free(void *ptr) {
    return syscall(MEM_FREE, (uint64)ptr);
}

char getc () {
    return syscall(GETC);
}

void putc (char c) {
    syscall(PUTC, c);
}