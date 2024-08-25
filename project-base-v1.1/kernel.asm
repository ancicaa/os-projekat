
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	43813103          	ld	sp,1080(sp) # 80004438 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	6b0010ef          	jal	ra,800016cc <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <rutina>:
.align 4
.global rutina
.type rutina @function
rutina:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00113423          	sd	ra,8(sp)
    80001008:	00213823          	sd	sp,16(sp)
    8000100c:	00313c23          	sd	gp,24(sp)
    80001010:	02413023          	sd	tp,32(sp)
    80001014:	02513423          	sd	t0,40(sp)
    80001018:	02613823          	sd	t1,48(sp)
    8000101c:	02713c23          	sd	t2,56(sp)
    80001020:	04813023          	sd	s0,64(sp)
    80001024:	04913423          	sd	s1,72(sp)
    80001028:	04a13823          	sd	a0,80(sp)
    8000102c:	04b13c23          	sd	a1,88(sp)
    80001030:	06c13023          	sd	a2,96(sp)
    80001034:	06d13423          	sd	a3,104(sp)
    80001038:	06e13823          	sd	a4,112(sp)
    8000103c:	06f13c23          	sd	a5,120(sp)
    80001040:	09013023          	sd	a6,128(sp)
    80001044:	09113423          	sd	a7,136(sp)
    80001048:	09213823          	sd	s2,144(sp)
    8000104c:	09313c23          	sd	s3,152(sp)
    80001050:	0b413023          	sd	s4,160(sp)
    80001054:	0b513423          	sd	s5,168(sp)
    80001058:	0b613823          	sd	s6,176(sp)
    8000105c:	0b713c23          	sd	s7,184(sp)
    80001060:	0d813023          	sd	s8,192(sp)
    80001064:	0d913423          	sd	s9,200(sp)
    80001068:	0da13823          	sd	s10,208(sp)
    8000106c:	0db13c23          	sd	s11,216(sp)
    80001070:	0fc13023          	sd	t3,224(sp)
    80001074:	0fd13423          	sd	t4,232(sp)
    80001078:	0fe13823          	sd	t5,240(sp)
    8000107c:	0ff13c23          	sd	t6,248(sp)

    csrr t0, sepc
    80001080:	141022f3          	csrr	t0,sepc
    sd t0, (sp)
    80001084:	00513023          	sd	t0,0(sp)

    call _ZN5Riscv13obradaprekidaEmmmmm
    80001088:	320000ef          	jal	ra,800013a8 <_ZN5Riscv13obradaprekidaEmmmmm>

    ld t1, (sp)
    8000108c:	00013303          	ld	t1,0(sp)
    csrr t0, sepc
    80001090:	141022f3          	csrr	t0,sepc
    sub t0, t0, t1
    80001094:	406282b3          	sub	t0,t0,t1
    beqz t0, interrput
    80001098:	08028263          	beqz	t0,8000111c <interrput>

    .irp index, 1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000109c:	00813083          	ld	ra,8(sp)
    800010a0:	01013103          	ld	sp,16(sp)
    800010a4:	01813183          	ld	gp,24(sp)
    800010a8:	02013203          	ld	tp,32(sp)
    800010ac:	02813283          	ld	t0,40(sp)
    800010b0:	03013303          	ld	t1,48(sp)
    800010b4:	03813383          	ld	t2,56(sp)
    800010b8:	04013403          	ld	s0,64(sp)
    800010bc:	04813483          	ld	s1,72(sp)
    800010c0:	05813583          	ld	a1,88(sp)
    800010c4:	06013603          	ld	a2,96(sp)
    800010c8:	06813683          	ld	a3,104(sp)
    800010cc:	07013703          	ld	a4,112(sp)
    800010d0:	07813783          	ld	a5,120(sp)
    800010d4:	08013803          	ld	a6,128(sp)
    800010d8:	08813883          	ld	a7,136(sp)
    800010dc:	09013903          	ld	s2,144(sp)
    800010e0:	09813983          	ld	s3,152(sp)
    800010e4:	0a013a03          	ld	s4,160(sp)
    800010e8:	0a813a83          	ld	s5,168(sp)
    800010ec:	0b013b03          	ld	s6,176(sp)
    800010f0:	0b813b83          	ld	s7,184(sp)
    800010f4:	0c013c03          	ld	s8,192(sp)
    800010f8:	0c813c83          	ld	s9,200(sp)
    800010fc:	0d013d03          	ld	s10,208(sp)
    80001100:	0d813d83          	ld	s11,216(sp)
    80001104:	0e013e03          	ld	t3,224(sp)
    80001108:	0e813e83          	ld	t4,232(sp)
    8000110c:	0f013f03          	ld	t5,240(sp)
    80001110:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001114:	10010113          	addi	sp,sp,256
    sret
    80001118:	10200073          	sret

000000008000111c <interrput>:

interrput:
    .irp index, 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000111c:	00813083          	ld	ra,8(sp)
    80001120:	01013103          	ld	sp,16(sp)
    80001124:	01813183          	ld	gp,24(sp)
    80001128:	02013203          	ld	tp,32(sp)
    8000112c:	02813283          	ld	t0,40(sp)
    80001130:	03013303          	ld	t1,48(sp)
    80001134:	03813383          	ld	t2,56(sp)
    80001138:	04013403          	ld	s0,64(sp)
    8000113c:	04813483          	ld	s1,72(sp)
    80001140:	05013503          	ld	a0,80(sp)
    80001144:	05813583          	ld	a1,88(sp)
    80001148:	06013603          	ld	a2,96(sp)
    8000114c:	06813683          	ld	a3,104(sp)
    80001150:	07013703          	ld	a4,112(sp)
    80001154:	07813783          	ld	a5,120(sp)
    80001158:	08013803          	ld	a6,128(sp)
    8000115c:	08813883          	ld	a7,136(sp)
    80001160:	09013903          	ld	s2,144(sp)
    80001164:	09813983          	ld	s3,152(sp)
    80001168:	0a013a03          	ld	s4,160(sp)
    8000116c:	0a813a83          	ld	s5,168(sp)
    80001170:	0b013b03          	ld	s6,176(sp)
    80001174:	0b813b83          	ld	s7,184(sp)
    80001178:	0c013c03          	ld	s8,192(sp)
    8000117c:	0c813c83          	ld	s9,200(sp)
    80001180:	0d013d03          	ld	s10,208(sp)
    80001184:	0d813d83          	ld	s11,216(sp)
    80001188:	0e013e03          	ld	t3,224(sp)
    8000118c:	0e813e83          	ld	t4,232(sp)
    80001190:	0f013f03          	ld	t5,240(sp)
    80001194:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001198:	10010113          	addi	sp,sp,256
    8000119c:	10200073          	sret

00000000800011a0 <_Z7syscallmmmmm>:
#include "../h/syscall_c.hpp"
#include "../h/riscv.hpp"


uint64 syscall(uint64 code, uint64 arg = 0, uint64 arg2 = 0, uint64 arg3 = 0, uint64 arg4 = 0) {
    800011a0:	fe010113          	addi	sp,sp,-32
    800011a4:	00813c23          	sd	s0,24(sp)
    800011a8:	02010413          	addi	s0,sp,32
    __asm__ volatile ("ecall");
    800011ac:	00000073          	ecall

//a0
inline uint64 Riscv::r_a0()
{
    uint64 volatile a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    800011b0:	00050793          	mv	a5,a0
    800011b4:	fef43423          	sd	a5,-24(s0)
    return a0;
    800011b8:	fe843503          	ld	a0,-24(s0)
    return Riscv::r_a0();
}
    800011bc:	01813403          	ld	s0,24(sp)
    800011c0:	02010113          	addi	sp,sp,32
    800011c4:	00008067          	ret

00000000800011c8 <_Z9mem_allocm>:

void *mem_alloc(size_t size) {
    800011c8:	ff010113          	addi	sp,sp,-16
    800011cc:	00113423          	sd	ra,8(sp)
    800011d0:	00813023          	sd	s0,0(sp)
    800011d4:	01010413          	addi	s0,sp,16
    int blocks = (size - 1) / MEM_BLOCK_SIZE + 1;
    800011d8:	fff50593          	addi	a1,a0,-1 # fff <_entry-0x7ffff001>
    800011dc:	0065d593          	srli	a1,a1,0x6
    return (void *) syscall(MEM_ALLOC, blocks);
    800011e0:	00000713          	li	a4,0
    800011e4:	00000693          	li	a3,0
    800011e8:	00000613          	li	a2,0
    800011ec:	0015859b          	addiw	a1,a1,1
    800011f0:	00100513          	li	a0,1
    800011f4:	00000097          	auipc	ra,0x0
    800011f8:	fac080e7          	jalr	-84(ra) # 800011a0 <_Z7syscallmmmmm>
}
    800011fc:	00813083          	ld	ra,8(sp)
    80001200:	00013403          	ld	s0,0(sp)
    80001204:	01010113          	addi	sp,sp,16
    80001208:	00008067          	ret

000000008000120c <_Z8mem_freePv>:

int mem_free(void *ptr) {
    8000120c:	ff010113          	addi	sp,sp,-16
    80001210:	00113423          	sd	ra,8(sp)
    80001214:	00813023          	sd	s0,0(sp)
    80001218:	01010413          	addi	s0,sp,16
    8000121c:	00050593          	mv	a1,a0
    return syscall(MEM_FREE, (uint64)ptr);
    80001220:	00000713          	li	a4,0
    80001224:	00000693          	li	a3,0
    80001228:	00000613          	li	a2,0
    8000122c:	00200513          	li	a0,2
    80001230:	00000097          	auipc	ra,0x0
    80001234:	f70080e7          	jalr	-144(ra) # 800011a0 <_Z7syscallmmmmm>
}
    80001238:	0005051b          	sext.w	a0,a0
    8000123c:	00813083          	ld	ra,8(sp)
    80001240:	00013403          	ld	s0,0(sp)
    80001244:	01010113          	addi	sp,sp,16
    80001248:	00008067          	ret

000000008000124c <_Z4getcv>:

char getc () {
    8000124c:	ff010113          	addi	sp,sp,-16
    80001250:	00113423          	sd	ra,8(sp)
    80001254:	00813023          	sd	s0,0(sp)
    80001258:	01010413          	addi	s0,sp,16
    return syscall(GETC);
    8000125c:	00000713          	li	a4,0
    80001260:	00000693          	li	a3,0
    80001264:	00000613          	li	a2,0
    80001268:	00000593          	li	a1,0
    8000126c:	04100513          	li	a0,65
    80001270:	00000097          	auipc	ra,0x0
    80001274:	f30080e7          	jalr	-208(ra) # 800011a0 <_Z7syscallmmmmm>
}
    80001278:	0ff57513          	andi	a0,a0,255
    8000127c:	00813083          	ld	ra,8(sp)
    80001280:	00013403          	ld	s0,0(sp)
    80001284:	01010113          	addi	sp,sp,16
    80001288:	00008067          	ret

000000008000128c <_Z4putcc>:

void putc (char c) {
    8000128c:	ff010113          	addi	sp,sp,-16
    80001290:	00113423          	sd	ra,8(sp)
    80001294:	00813023          	sd	s0,0(sp)
    80001298:	01010413          	addi	s0,sp,16
    8000129c:	00050593          	mv	a1,a0
    syscall(PUTC, c);
    800012a0:	00000713          	li	a4,0
    800012a4:	00000693          	li	a3,0
    800012a8:	00000613          	li	a2,0
    800012ac:	04200513          	li	a0,66
    800012b0:	00000097          	auipc	ra,0x0
    800012b4:	ef0080e7          	jalr	-272(ra) # 800011a0 <_Z7syscallmmmmm>
    800012b8:	00813083          	ld	ra,8(sp)
    800012bc:	00013403          	ld	s0,0(sp)
    800012c0:	01010113          	addi	sp,sp,16
    800012c4:	00008067          	ret

00000000800012c8 <main>:
#include "../h/MemoryAllocator.hpp"
#include "../lib/console.h"
#include "../lib/hw.h"
extern "C" void rutina();

int main() {
    800012c8:	fe010113          	addi	sp,sp,-32
    800012cc:	00113c23          	sd	ra,24(sp)
    800012d0:	00813823          	sd	s0,16(sp)
    800012d4:	00913423          	sd	s1,8(sp)
    800012d8:	02010413          	addi	s0,sp,32
    MemoryAllocator::init();
    800012dc:	00000097          	auipc	ra,0x0
    800012e0:	1cc080e7          	jalr	460(ra) # 800014a8 <_ZN15MemoryAllocator4initEv>
    Riscv::w_stvec((uint64)rutina);// upis adrese prekidne rutine
    800012e4:	00003797          	auipc	a5,0x3
    800012e8:	1447b783          	ld	a5,324(a5) # 80004428 <_GLOBAL_OFFSET_TABLE_+0x8>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800012ec:	10579073          	csrw	stvec,a5

    int* a = (int*)MemoryAllocator::mem_alloc(20* sizeof(int));
    800012f0:	05000513          	li	a0,80
    800012f4:	00000097          	auipc	ra,0x0
    800012f8:	210080e7          	jalr	528(ra) # 80001504 <_ZN15MemoryAllocator9mem_allocEm>
    800012fc:	00050493          	mv	s1,a0
    *a='1';
    80001300:	03100793          	li	a5,49
    80001304:	00f52023          	sw	a5,0(a0)
    *(a+1)='2';
    80001308:	03200793          	li	a5,50
    8000130c:	00f52223          	sw	a5,4(a0)
    *(a+2)='3';
    80001310:	03300793          	li	a5,51
    80001314:	00f52423          	sw	a5,8(a0)
    *(a+3)='4';
    80001318:	03400793          	li	a5,52
    8000131c:	00f52623          	sw	a5,12(a0)
    *(a+4)='5';
    80001320:	03500793          	li	a5,53
    80001324:	00f52823          	sw	a5,16(a0)
    MemoryAllocator::mem_free((a));
    80001328:	00000097          	auipc	ra,0x0
    8000132c:	2c8080e7          	jalr	712(ra) # 800015f0 <_ZN15MemoryAllocator8mem_freeEPv>
    MemoryAllocator::mem_free((a+3));
    80001330:	00c48513          	addi	a0,s1,12
    80001334:	00000097          	auipc	ra,0x0
    80001338:	2bc080e7          	jalr	700(ra) # 800015f0 <_ZN15MemoryAllocator8mem_freeEPv>
   __putc(*a);
    8000133c:	0004c503          	lbu	a0,0(s1)
    80001340:	00002097          	auipc	ra,0x2
    80001344:	44c080e7          	jalr	1100(ra) # 8000378c <__putc>
    __putc(*(a+1));
    80001348:	0044c503          	lbu	a0,4(s1)
    8000134c:	00002097          	auipc	ra,0x2
    80001350:	440080e7          	jalr	1088(ra) # 8000378c <__putc>
    __putc(*(a+2));
    80001354:	0084c503          	lbu	a0,8(s1)
    80001358:	00002097          	auipc	ra,0x2
    8000135c:	434080e7          	jalr	1076(ra) # 8000378c <__putc>
    __putc(*(a+3));
    80001360:	00c4c503          	lbu	a0,12(s1)
    80001364:	00002097          	auipc	ra,0x2
    80001368:	428080e7          	jalr	1064(ra) # 8000378c <__putc>
    __putc(*(a+4));
    8000136c:	0104c503          	lbu	a0,16(s1)
    80001370:	00002097          	auipc	ra,0x2
    80001374:	41c080e7          	jalr	1052(ra) # 8000378c <__putc>
    __putc(*(a+5));
    80001378:	0144c503          	lbu	a0,20(s1)
    8000137c:	00002097          	auipc	ra,0x2
    80001380:	410080e7          	jalr	1040(ra) # 8000378c <__putc>
    __putc(*(a+6));
    80001384:	0184c503          	lbu	a0,24(s1)
    80001388:	00002097          	auipc	ra,0x2
    8000138c:	404080e7          	jalr	1028(ra) # 8000378c <__putc>


    return 0;
}
    80001390:	00000513          	li	a0,0
    80001394:	01813083          	ld	ra,24(sp)
    80001398:	01013403          	ld	s0,16(sp)
    8000139c:	00813483          	ld	s1,8(sp)
    800013a0:	02010113          	addi	sp,sp,32
    800013a4:	00008067          	ret

00000000800013a8 <_ZN5Riscv13obradaprekidaEmmmmm>:
    ILLEGAL_INSTRTUCION = 2,
    ILLEGAL_READ_ADDRESS = 5,
    ILLEGAL_WRITE_ADDRESS = 7,
};

void Riscv::obradaprekida(uint64 code, uint64 arg1, uint64 arg2, uint64 arg3, uint64 arg4) {
    800013a8:	fc010113          	addi	sp,sp,-64
    800013ac:	02113c23          	sd	ra,56(sp)
    800013b0:	02813823          	sd	s0,48(sp)
    800013b4:	02913423          	sd	s1,40(sp)
    800013b8:	03213023          	sd	s2,32(sp)
    800013bc:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800013c0:	142027f3          	csrr	a5,scause
    800013c4:	fcf43c23          	sd	a5,-40(s0)
    return scause;
    800013c8:	fd843703          	ld	a4,-40(s0)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800013cc:	141027f3          	csrr	a5,sepc
    800013d0:	fcf43823          	sd	a5,-48(s0)
    return sepc;
    800013d4:	fd043483          	ld	s1,-48(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800013d8:	100027f3          	csrr	a5,sstatus
    800013dc:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    800013e0:	fc843903          	ld	s2,-56(s0)
    uint64 scause = r_scause();
    uint64 sepc = r_sepc(); //cita pc
    uint64 sstatus = r_sstatus();//cita status registar

    if (scause == SYSCALL_S or scause == SYSCALL_U) {
    800013e4:	ff870693          	addi	a3,a4,-8
    800013e8:	00100793          	li	a5,1
    800013ec:	02d7f863          	bgeu	a5,a3,8000141c <_ZN5Riscv13obradaprekidaEmmmmm+0x74>
            break;
        }

        w_sstatus(sstatus);
        w_sepc(sepc + 4);
    } else if (scause == TIMER) {
    800013f0:	fff00793          	li	a5,-1
    800013f4:	03f79793          	slli	a5,a5,0x3f
    800013f8:	00178793          	addi	a5,a5,1
    800013fc:	0af70063          	beq	a4,a5,8000149c <_ZN5Riscv13obradaprekidaEmmmmm+0xf4>
        mc_sip(SIP_SSIE);
    } else if (scause == CONSOLE) {
    80001400:	fff00793          	li	a5,-1
    80001404:	03f79793          	slli	a5,a5,0x3f
    80001408:	00978793          	addi	a5,a5,9
    8000140c:	06f71663          	bne	a4,a5,80001478 <_ZN5Riscv13obradaprekidaEmmmmm+0xd0>
        console_handler();
    80001410:	00002097          	auipc	ra,0x2
    80001414:	3f0080e7          	jalr	1008(ra) # 80003800 <console_handler>
    } else if (scause == ILLEGAL_INSTRTUCION) {
    } else if (scause == ILLEGAL_READ_ADDRESS) {
    } else if (scause == ILLEGAL_WRITE_ADDRESS) {
    };
    80001418:	0600006f          	j	80001478 <_ZN5Riscv13obradaprekidaEmmmmm+0xd0>
        switch (code) {
    8000141c:	04100793          	li	a5,65
    80001420:	06f50863          	beq	a0,a5,80001490 <_ZN5Riscv13obradaprekidaEmmmmm+0xe8>
    80001424:	02a7e263          	bltu	a5,a0,80001448 <_ZN5Riscv13obradaprekidaEmmmmm+0xa0>
    80001428:	00100793          	li	a5,1
    8000142c:	02f50a63          	beq	a0,a5,80001460 <_ZN5Riscv13obradaprekidaEmmmmm+0xb8>
    80001430:	00200793          	li	a5,2
    80001434:	02f51c63          	bne	a0,a5,8000146c <_ZN5Riscv13obradaprekidaEmmmmm+0xc4>
                MemoryAllocator::mem_free((void *) arg1);
    80001438:	00058513          	mv	a0,a1
    8000143c:	00000097          	auipc	ra,0x0
    80001440:	1b4080e7          	jalr	436(ra) # 800015f0 <_ZN15MemoryAllocator8mem_freeEPv>
            break;
    80001444:	0280006f          	j	8000146c <_ZN5Riscv13obradaprekidaEmmmmm+0xc4>
        switch (code) {
    80001448:	04200793          	li	a5,66
    8000144c:	02f51063          	bne	a0,a5,8000146c <_ZN5Riscv13obradaprekidaEmmmmm+0xc4>
                __putc(arg1);
    80001450:	0ff5f513          	andi	a0,a1,255
    80001454:	00002097          	auipc	ra,0x2
    80001458:	338080e7          	jalr	824(ra) # 8000378c <__putc>
            break;
    8000145c:	0100006f          	j	8000146c <_ZN5Riscv13obradaprekidaEmmmmm+0xc4>
                MemoryAllocator::mem_alloc(arg1);
    80001460:	00058513          	mv	a0,a1
    80001464:	00000097          	auipc	ra,0x0
    80001468:	0a0080e7          	jalr	160(ra) # 80001504 <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000146c:	10091073          	csrw	sstatus,s2
        w_sepc(sepc + 4);
    80001470:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001474:	14149073          	csrw	sepc,s1
    80001478:	03813083          	ld	ra,56(sp)
    8000147c:	03013403          	ld	s0,48(sp)
    80001480:	02813483          	ld	s1,40(sp)
    80001484:	02013903          	ld	s2,32(sp)
    80001488:	04010113          	addi	sp,sp,64
    8000148c:	00008067          	ret
                __getc();
    80001490:	00002097          	auipc	ra,0x2
    80001494:	338080e7          	jalr	824(ra) # 800037c8 <__getc>
            break;
    80001498:	fd5ff06f          	j	8000146c <_ZN5Riscv13obradaprekidaEmmmmm+0xc4>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    8000149c:	00200793          	li	a5,2
    800014a0:	1447b073          	csrc	sip,a5
}
    800014a4:	fd5ff06f          	j	80001478 <_ZN5Riscv13obradaprekidaEmmmmm+0xd0>

00000000800014a8 <_ZN15MemoryAllocator4initEv>:
#include "../h/MemoryAllocator.hpp"

Block* MemoryAllocator::head = nullptr;
void MemoryAllocator::init() {
    800014a8:	ff010113          	addi	sp,sp,-16
    800014ac:	00813423          	sd	s0,8(sp)
    800014b0:	01010413          	addi	s0,sp,16
    size_t total_heap_size = (char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR;
    800014b4:	00003797          	auipc	a5,0x3
    800014b8:	f8c7b783          	ld	a5,-116(a5) # 80004440 <_GLOBAL_OFFSET_TABLE_+0x20>
    800014bc:	0007b703          	ld	a4,0(a5)
    800014c0:	00003797          	auipc	a5,0x3
    800014c4:	f707b783          	ld	a5,-144(a5) # 80004430 <_GLOBAL_OFFSET_TABLE_+0x10>
    800014c8:	0007b783          	ld	a5,0(a5)
    800014cc:	40f70733          	sub	a4,a4,a5

    head = (Block*)HEAP_START_ADDR; //incijalizujemo listu blokova
    800014d0:	00003697          	auipc	a3,0x3
    800014d4:	fc068693          	addi	a3,a3,-64 # 80004490 <_ZN15MemoryAllocator4headE>
    800014d8:	00f6b023          	sd	a5,0(a3)
    head->size = total_heap_size - sizeof(Block); //velicina 1.blk
    800014dc:	fe87071b          	addiw	a4,a4,-24
    800014e0:	00e7a823          	sw	a4,16(a5)
    head->free = true;
    800014e4:	00100713          	li	a4,1
    800014e8:	00e78a23          	sb	a4,20(a5)
    head->next = nullptr; //nema sl nema prethodni
    800014ec:	0007b023          	sd	zero,0(a5)
    head->prev = nullptr;
    800014f0:	0006b783          	ld	a5,0(a3)
    800014f4:	0007b423          	sd	zero,8(a5)
}
    800014f8:	00813403          	ld	s0,8(sp)
    800014fc:	01010113          	addi	sp,sp,16
    80001500:	00008067          	ret

0000000080001504 <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc(size_t s) {
    80001504:	ff010113          	addi	sp,sp,-16
    80001508:	00813423          	sd	s0,8(sp)
    8000150c:	01010413          	addi	s0,sp,16
    if (s <= 0) return nullptr;
    80001510:	08050c63          	beqz	a0,800015a8 <_ZN15MemoryAllocator9mem_allocEm+0xa4>
    80001514:	00050713          	mv	a4,a0

    size_t size = s;
    Block* blk = head;
    80001518:	00003517          	auipc	a0,0x3
    8000151c:	f7853503          	ld	a0,-136(a0) # 80004490 <_ZN15MemoryAllocator4headE>
    80001520:	0080006f          	j	80001528 <_ZN15MemoryAllocator9mem_allocEm+0x24>

    while (blk != nullptr) {
        if (blk->free && blk->size >= size + sizeof(Block)) {
            break;
        }
        blk = blk->next;
    80001524:	00053503          	ld	a0,0(a0)
    while (blk != nullptr) {
    80001528:	00050c63          	beqz	a0,80001540 <_ZN15MemoryAllocator9mem_allocEm+0x3c>
        if (blk->free && blk->size >= size + sizeof(Block)) {
    8000152c:	01454783          	lbu	a5,20(a0)
    80001530:	fe078ae3          	beqz	a5,80001524 <_ZN15MemoryAllocator9mem_allocEm+0x20>
    80001534:	01056683          	lwu	a3,16(a0)
    80001538:	01870793          	addi	a5,a4,24
    8000153c:	fef6e4e3          	bltu	a3,a5,80001524 <_ZN15MemoryAllocator9mem_allocEm+0x20>
    }

    if (blk == nullptr) return nullptr; // nema dovoljno velikog bloka
    80001540:	04050e63          	beqz	a0,8000159c <_ZN15MemoryAllocator9mem_allocEm+0x98>
    if (blk->size > size + sizeof(Block)) {
    80001544:	01052683          	lw	a3,16(a0)
    80001548:	02069613          	slli	a2,a3,0x20
    8000154c:	02065613          	srli	a2,a2,0x20
    80001550:	01870793          	addi	a5,a4,24
    80001554:	04c7f063          	bgeu	a5,a2,80001594 <_ZN15MemoryAllocator9mem_allocEm+0x90>
        Block* newBlock = (Block*)((char*)blk + sizeof(Block) + size);
    80001558:	00f507b3          	add	a5,a0,a5
        newBlock->size = blk->size - size - sizeof(Block);
    8000155c:	0007061b          	sext.w	a2,a4
    80001560:	40e6873b          	subw	a4,a3,a4
    80001564:	fe87071b          	addiw	a4,a4,-24
    80001568:	00e7a823          	sw	a4,16(a5)
        newBlock->free = true;
    8000156c:	00100713          	li	a4,1
    80001570:	00e78a23          	sb	a4,20(a5)
        newBlock->next = blk->next;
    80001574:	00053703          	ld	a4,0(a0)
    80001578:	00e7b023          	sd	a4,0(a5)
        newBlock->prev = blk;
    8000157c:	00a7b423          	sd	a0,8(a5)

        if (blk->next) {
    80001580:	00053703          	ld	a4,0(a0)
    80001584:	00070463          	beqz	a4,8000158c <_ZN15MemoryAllocator9mem_allocEm+0x88>
            blk->next->prev = newBlock;
    80001588:	00f73423          	sd	a5,8(a4)
        }

        blk->next = newBlock;
    8000158c:	00f53023          	sd	a5,0(a0)
        blk->size = size;
    80001590:	00c52823          	sw	a2,16(a0)
    }

    blk->free = false;
    80001594:	00050a23          	sb	zero,20(a0)
    return (void*)((char*)blk + sizeof(Block));
    80001598:	01850513          	addi	a0,a0,24
}
    8000159c:	00813403          	ld	s0,8(sp)
    800015a0:	01010113          	addi	sp,sp,16
    800015a4:	00008067          	ret
    if (s <= 0) return nullptr;
    800015a8:	00000513          	li	a0,0
    800015ac:	ff1ff06f          	j	8000159c <_ZN15MemoryAllocator9mem_allocEm+0x98>

00000000800015b0 <_ZN15MemoryAllocator5mergeEP5BlockS1_>:
    return 0;
}



void MemoryAllocator::merge(Block *prvi,Block *drugi) {
    800015b0:	ff010113          	addi	sp,sp,-16
    800015b4:	00813423          	sd	s0,8(sp)
    800015b8:	01010413          	addi	s0,sp,16
    if (prvi == nullptr || drugi == nullptr) {
    800015bc:	02050463          	beqz	a0,800015e4 <_ZN15MemoryAllocator5mergeEP5BlockS1_+0x34>
    800015c0:	02058263          	beqz	a1,800015e4 <_ZN15MemoryAllocator5mergeEP5BlockS1_+0x34>
        return;
    }
    prvi->size += drugi->size;
    800015c4:	0105a703          	lw	a4,16(a1)
    800015c8:	01052783          	lw	a5,16(a0)
    800015cc:	00e787bb          	addw	a5,a5,a4
    800015d0:	00f52823          	sw	a5,16(a0)
    prvi->next = drugi->next;
    800015d4:	0005b783          	ld	a5,0(a1)
    800015d8:	00f53023          	sd	a5,0(a0)
    if (prvi->next != nullptr) {
    800015dc:	00078463          	beqz	a5,800015e4 <_ZN15MemoryAllocator5mergeEP5BlockS1_+0x34>
        prvi->next->prev = prvi;
    800015e0:	00a7b423          	sd	a0,8(a5)
    }

}
    800015e4:	00813403          	ld	s0,8(sp)
    800015e8:	01010113          	addi	sp,sp,16
    800015ec:	00008067          	ret

00000000800015f0 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (addr == nullptr || addr > HEAP_END_ADDR || addr < HEAP_START_ADDR) return -1;
    800015f0:	0a050a63          	beqz	a0,800016a4 <_ZN15MemoryAllocator8mem_freeEPv+0xb4>
int MemoryAllocator::mem_free(void* addr) {
    800015f4:	fe010113          	addi	sp,sp,-32
    800015f8:	00113c23          	sd	ra,24(sp)
    800015fc:	00813823          	sd	s0,16(sp)
    80001600:	00913423          	sd	s1,8(sp)
    80001604:	01213023          	sd	s2,0(sp)
    80001608:	02010413          	addi	s0,sp,32
    8000160c:	00050493          	mv	s1,a0
    if (addr == nullptr || addr > HEAP_END_ADDR || addr < HEAP_START_ADDR) return -1;
    80001610:	00003797          	auipc	a5,0x3
    80001614:	e307b783          	ld	a5,-464(a5) # 80004440 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001618:	0007b783          	ld	a5,0(a5)
    8000161c:	08a7e863          	bltu	a5,a0,800016ac <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
    80001620:	00003797          	auipc	a5,0x3
    80001624:	e107b783          	ld	a5,-496(a5) # 80004430 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001628:	0007b783          	ld	a5,0(a5)
    8000162c:	08f56463          	bltu	a0,a5,800016b4 <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
    Block* trenutni = (Block*)((char*)addr - sizeof(Block)); // predji na blok
    80001630:	fe850913          	addi	s2,a0,-24
    if (trenutni->free) return -2; //slobodan
    80001634:	ffc54783          	lbu	a5,-4(a0)
    80001638:	08079263          	bnez	a5,800016bc <_ZN15MemoryAllocator8mem_freeEPv+0xcc>
    trenutni->free = true;
    8000163c:	00100793          	li	a5,1
    80001640:	fef50e23          	sb	a5,-4(a0)
    if (trenutni->next != nullptr && trenutni->next->free) {// spoji sa sl blokom ako je slobodan
    80001644:	fe853583          	ld	a1,-24(a0)
    80001648:	00058663          	beqz	a1,80001654 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
    8000164c:	0145c783          	lbu	a5,20(a1)
    80001650:	02079863          	bnez	a5,80001680 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    if (trenutni->prev != nullptr && trenutni->prev->free) { // sa prethodnim  ako je slobodan
    80001654:	ff04b503          	ld	a0,-16(s1)
    80001658:	06050663          	beqz	a0,800016c4 <_ZN15MemoryAllocator8mem_freeEPv+0xd4>
    8000165c:	01454783          	lbu	a5,20(a0)
    80001660:	02079863          	bnez	a5,80001690 <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    return 0;
    80001664:	00000513          	li	a0,0
}
    80001668:	01813083          	ld	ra,24(sp)
    8000166c:	01013403          	ld	s0,16(sp)
    80001670:	00813483          	ld	s1,8(sp)
    80001674:	00013903          	ld	s2,0(sp)
    80001678:	02010113          	addi	sp,sp,32
    8000167c:	00008067          	ret
        merge(trenutni, trenutni->next);
    80001680:	00090513          	mv	a0,s2
    80001684:	00000097          	auipc	ra,0x0
    80001688:	f2c080e7          	jalr	-212(ra) # 800015b0 <_ZN15MemoryAllocator5mergeEP5BlockS1_>
    8000168c:	fc9ff06f          	j	80001654 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        merge(trenutni->prev, trenutni);
    80001690:	00090593          	mv	a1,s2
    80001694:	00000097          	auipc	ra,0x0
    80001698:	f1c080e7          	jalr	-228(ra) # 800015b0 <_ZN15MemoryAllocator5mergeEP5BlockS1_>
    return 0;
    8000169c:	00000513          	li	a0,0
    800016a0:	fc9ff06f          	j	80001668 <_ZN15MemoryAllocator8mem_freeEPv+0x78>
    if (addr == nullptr || addr > HEAP_END_ADDR || addr < HEAP_START_ADDR) return -1;
    800016a4:	fff00513          	li	a0,-1
}
    800016a8:	00008067          	ret
    if (addr == nullptr || addr > HEAP_END_ADDR || addr < HEAP_START_ADDR) return -1;
    800016ac:	fff00513          	li	a0,-1
    800016b0:	fb9ff06f          	j	80001668 <_ZN15MemoryAllocator8mem_freeEPv+0x78>
    800016b4:	fff00513          	li	a0,-1
    800016b8:	fb1ff06f          	j	80001668 <_ZN15MemoryAllocator8mem_freeEPv+0x78>
    if (trenutni->free) return -2; //slobodan
    800016bc:	ffe00513          	li	a0,-2
    800016c0:	fa9ff06f          	j	80001668 <_ZN15MemoryAllocator8mem_freeEPv+0x78>
    return 0;
    800016c4:	00000513          	li	a0,0
    800016c8:	fa1ff06f          	j	80001668 <_ZN15MemoryAllocator8mem_freeEPv+0x78>

00000000800016cc <start>:
    800016cc:	ff010113          	addi	sp,sp,-16
    800016d0:	00813423          	sd	s0,8(sp)
    800016d4:	01010413          	addi	s0,sp,16
    800016d8:	300027f3          	csrr	a5,mstatus
    800016dc:	ffffe737          	lui	a4,0xffffe
    800016e0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff910f>
    800016e4:	00e7f7b3          	and	a5,a5,a4
    800016e8:	00001737          	lui	a4,0x1
    800016ec:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800016f0:	00e7e7b3          	or	a5,a5,a4
    800016f4:	30079073          	csrw	mstatus,a5
    800016f8:	00000797          	auipc	a5,0x0
    800016fc:	16078793          	addi	a5,a5,352 # 80001858 <system_main>
    80001700:	34179073          	csrw	mepc,a5
    80001704:	00000793          	li	a5,0
    80001708:	18079073          	csrw	satp,a5
    8000170c:	000107b7          	lui	a5,0x10
    80001710:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001714:	30279073          	csrw	medeleg,a5
    80001718:	30379073          	csrw	mideleg,a5
    8000171c:	104027f3          	csrr	a5,sie
    80001720:	2227e793          	ori	a5,a5,546
    80001724:	10479073          	csrw	sie,a5
    80001728:	fff00793          	li	a5,-1
    8000172c:	00a7d793          	srli	a5,a5,0xa
    80001730:	3b079073          	csrw	pmpaddr0,a5
    80001734:	00f00793          	li	a5,15
    80001738:	3a079073          	csrw	pmpcfg0,a5
    8000173c:	f14027f3          	csrr	a5,mhartid
    80001740:	0200c737          	lui	a4,0x200c
    80001744:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001748:	0007869b          	sext.w	a3,a5
    8000174c:	00269713          	slli	a4,a3,0x2
    80001750:	000f4637          	lui	a2,0xf4
    80001754:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001758:	00d70733          	add	a4,a4,a3
    8000175c:	0037979b          	slliw	a5,a5,0x3
    80001760:	020046b7          	lui	a3,0x2004
    80001764:	00d787b3          	add	a5,a5,a3
    80001768:	00c585b3          	add	a1,a1,a2
    8000176c:	00371693          	slli	a3,a4,0x3
    80001770:	00003717          	auipc	a4,0x3
    80001774:	d3070713          	addi	a4,a4,-720 # 800044a0 <timer_scratch>
    80001778:	00b7b023          	sd	a1,0(a5)
    8000177c:	00d70733          	add	a4,a4,a3
    80001780:	00f73c23          	sd	a5,24(a4)
    80001784:	02c73023          	sd	a2,32(a4)
    80001788:	34071073          	csrw	mscratch,a4
    8000178c:	00000797          	auipc	a5,0x0
    80001790:	6e478793          	addi	a5,a5,1764 # 80001e70 <timervec>
    80001794:	30579073          	csrw	mtvec,a5
    80001798:	300027f3          	csrr	a5,mstatus
    8000179c:	0087e793          	ori	a5,a5,8
    800017a0:	30079073          	csrw	mstatus,a5
    800017a4:	304027f3          	csrr	a5,mie
    800017a8:	0807e793          	ori	a5,a5,128
    800017ac:	30479073          	csrw	mie,a5
    800017b0:	f14027f3          	csrr	a5,mhartid
    800017b4:	0007879b          	sext.w	a5,a5
    800017b8:	00078213          	mv	tp,a5
    800017bc:	30200073          	mret
    800017c0:	00813403          	ld	s0,8(sp)
    800017c4:	01010113          	addi	sp,sp,16
    800017c8:	00008067          	ret

00000000800017cc <timerinit>:
    800017cc:	ff010113          	addi	sp,sp,-16
    800017d0:	00813423          	sd	s0,8(sp)
    800017d4:	01010413          	addi	s0,sp,16
    800017d8:	f14027f3          	csrr	a5,mhartid
    800017dc:	0200c737          	lui	a4,0x200c
    800017e0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800017e4:	0007869b          	sext.w	a3,a5
    800017e8:	00269713          	slli	a4,a3,0x2
    800017ec:	000f4637          	lui	a2,0xf4
    800017f0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800017f4:	00d70733          	add	a4,a4,a3
    800017f8:	0037979b          	slliw	a5,a5,0x3
    800017fc:	020046b7          	lui	a3,0x2004
    80001800:	00d787b3          	add	a5,a5,a3
    80001804:	00c585b3          	add	a1,a1,a2
    80001808:	00371693          	slli	a3,a4,0x3
    8000180c:	00003717          	auipc	a4,0x3
    80001810:	c9470713          	addi	a4,a4,-876 # 800044a0 <timer_scratch>
    80001814:	00b7b023          	sd	a1,0(a5)
    80001818:	00d70733          	add	a4,a4,a3
    8000181c:	00f73c23          	sd	a5,24(a4)
    80001820:	02c73023          	sd	a2,32(a4)
    80001824:	34071073          	csrw	mscratch,a4
    80001828:	00000797          	auipc	a5,0x0
    8000182c:	64878793          	addi	a5,a5,1608 # 80001e70 <timervec>
    80001830:	30579073          	csrw	mtvec,a5
    80001834:	300027f3          	csrr	a5,mstatus
    80001838:	0087e793          	ori	a5,a5,8
    8000183c:	30079073          	csrw	mstatus,a5
    80001840:	304027f3          	csrr	a5,mie
    80001844:	0807e793          	ori	a5,a5,128
    80001848:	30479073          	csrw	mie,a5
    8000184c:	00813403          	ld	s0,8(sp)
    80001850:	01010113          	addi	sp,sp,16
    80001854:	00008067          	ret

0000000080001858 <system_main>:
    80001858:	fe010113          	addi	sp,sp,-32
    8000185c:	00813823          	sd	s0,16(sp)
    80001860:	00913423          	sd	s1,8(sp)
    80001864:	00113c23          	sd	ra,24(sp)
    80001868:	02010413          	addi	s0,sp,32
    8000186c:	00000097          	auipc	ra,0x0
    80001870:	0c4080e7          	jalr	196(ra) # 80001930 <cpuid>
    80001874:	00003497          	auipc	s1,0x3
    80001878:	bec48493          	addi	s1,s1,-1044 # 80004460 <started>
    8000187c:	02050263          	beqz	a0,800018a0 <system_main+0x48>
    80001880:	0004a783          	lw	a5,0(s1)
    80001884:	0007879b          	sext.w	a5,a5
    80001888:	fe078ce3          	beqz	a5,80001880 <system_main+0x28>
    8000188c:	0ff0000f          	fence
    80001890:	00002517          	auipc	a0,0x2
    80001894:	7c050513          	addi	a0,a0,1984 # 80004050 <CONSOLE_STATUS+0x40>
    80001898:	00001097          	auipc	ra,0x1
    8000189c:	a74080e7          	jalr	-1420(ra) # 8000230c <panic>
    800018a0:	00001097          	auipc	ra,0x1
    800018a4:	9c8080e7          	jalr	-1592(ra) # 80002268 <consoleinit>
    800018a8:	00001097          	auipc	ra,0x1
    800018ac:	154080e7          	jalr	340(ra) # 800029fc <printfinit>
    800018b0:	00003517          	auipc	a0,0x3
    800018b4:	88050513          	addi	a0,a0,-1920 # 80004130 <CONSOLE_STATUS+0x120>
    800018b8:	00001097          	auipc	ra,0x1
    800018bc:	ab0080e7          	jalr	-1360(ra) # 80002368 <__printf>
    800018c0:	00002517          	auipc	a0,0x2
    800018c4:	76050513          	addi	a0,a0,1888 # 80004020 <CONSOLE_STATUS+0x10>
    800018c8:	00001097          	auipc	ra,0x1
    800018cc:	aa0080e7          	jalr	-1376(ra) # 80002368 <__printf>
    800018d0:	00003517          	auipc	a0,0x3
    800018d4:	86050513          	addi	a0,a0,-1952 # 80004130 <CONSOLE_STATUS+0x120>
    800018d8:	00001097          	auipc	ra,0x1
    800018dc:	a90080e7          	jalr	-1392(ra) # 80002368 <__printf>
    800018e0:	00001097          	auipc	ra,0x1
    800018e4:	4a8080e7          	jalr	1192(ra) # 80002d88 <kinit>
    800018e8:	00000097          	auipc	ra,0x0
    800018ec:	148080e7          	jalr	328(ra) # 80001a30 <trapinit>
    800018f0:	00000097          	auipc	ra,0x0
    800018f4:	16c080e7          	jalr	364(ra) # 80001a5c <trapinithart>
    800018f8:	00000097          	auipc	ra,0x0
    800018fc:	5b8080e7          	jalr	1464(ra) # 80001eb0 <plicinit>
    80001900:	00000097          	auipc	ra,0x0
    80001904:	5d8080e7          	jalr	1496(ra) # 80001ed8 <plicinithart>
    80001908:	00000097          	auipc	ra,0x0
    8000190c:	078080e7          	jalr	120(ra) # 80001980 <userinit>
    80001910:	0ff0000f          	fence
    80001914:	00100793          	li	a5,1
    80001918:	00002517          	auipc	a0,0x2
    8000191c:	72050513          	addi	a0,a0,1824 # 80004038 <CONSOLE_STATUS+0x28>
    80001920:	00f4a023          	sw	a5,0(s1)
    80001924:	00001097          	auipc	ra,0x1
    80001928:	a44080e7          	jalr	-1468(ra) # 80002368 <__printf>
    8000192c:	0000006f          	j	8000192c <system_main+0xd4>

0000000080001930 <cpuid>:
    80001930:	ff010113          	addi	sp,sp,-16
    80001934:	00813423          	sd	s0,8(sp)
    80001938:	01010413          	addi	s0,sp,16
    8000193c:	00020513          	mv	a0,tp
    80001940:	00813403          	ld	s0,8(sp)
    80001944:	0005051b          	sext.w	a0,a0
    80001948:	01010113          	addi	sp,sp,16
    8000194c:	00008067          	ret

0000000080001950 <mycpu>:
    80001950:	ff010113          	addi	sp,sp,-16
    80001954:	00813423          	sd	s0,8(sp)
    80001958:	01010413          	addi	s0,sp,16
    8000195c:	00020793          	mv	a5,tp
    80001960:	00813403          	ld	s0,8(sp)
    80001964:	0007879b          	sext.w	a5,a5
    80001968:	00779793          	slli	a5,a5,0x7
    8000196c:	00004517          	auipc	a0,0x4
    80001970:	b6450513          	addi	a0,a0,-1180 # 800054d0 <cpus>
    80001974:	00f50533          	add	a0,a0,a5
    80001978:	01010113          	addi	sp,sp,16
    8000197c:	00008067          	ret

0000000080001980 <userinit>:
    80001980:	ff010113          	addi	sp,sp,-16
    80001984:	00813423          	sd	s0,8(sp)
    80001988:	01010413          	addi	s0,sp,16
    8000198c:	00813403          	ld	s0,8(sp)
    80001990:	01010113          	addi	sp,sp,16
    80001994:	00000317          	auipc	t1,0x0
    80001998:	93430067          	jr	-1740(t1) # 800012c8 <main>

000000008000199c <either_copyout>:
    8000199c:	ff010113          	addi	sp,sp,-16
    800019a0:	00813023          	sd	s0,0(sp)
    800019a4:	00113423          	sd	ra,8(sp)
    800019a8:	01010413          	addi	s0,sp,16
    800019ac:	02051663          	bnez	a0,800019d8 <either_copyout+0x3c>
    800019b0:	00058513          	mv	a0,a1
    800019b4:	00060593          	mv	a1,a2
    800019b8:	0006861b          	sext.w	a2,a3
    800019bc:	00002097          	auipc	ra,0x2
    800019c0:	c58080e7          	jalr	-936(ra) # 80003614 <__memmove>
    800019c4:	00813083          	ld	ra,8(sp)
    800019c8:	00013403          	ld	s0,0(sp)
    800019cc:	00000513          	li	a0,0
    800019d0:	01010113          	addi	sp,sp,16
    800019d4:	00008067          	ret
    800019d8:	00002517          	auipc	a0,0x2
    800019dc:	6a050513          	addi	a0,a0,1696 # 80004078 <CONSOLE_STATUS+0x68>
    800019e0:	00001097          	auipc	ra,0x1
    800019e4:	92c080e7          	jalr	-1748(ra) # 8000230c <panic>

00000000800019e8 <either_copyin>:
    800019e8:	ff010113          	addi	sp,sp,-16
    800019ec:	00813023          	sd	s0,0(sp)
    800019f0:	00113423          	sd	ra,8(sp)
    800019f4:	01010413          	addi	s0,sp,16
    800019f8:	02059463          	bnez	a1,80001a20 <either_copyin+0x38>
    800019fc:	00060593          	mv	a1,a2
    80001a00:	0006861b          	sext.w	a2,a3
    80001a04:	00002097          	auipc	ra,0x2
    80001a08:	c10080e7          	jalr	-1008(ra) # 80003614 <__memmove>
    80001a0c:	00813083          	ld	ra,8(sp)
    80001a10:	00013403          	ld	s0,0(sp)
    80001a14:	00000513          	li	a0,0
    80001a18:	01010113          	addi	sp,sp,16
    80001a1c:	00008067          	ret
    80001a20:	00002517          	auipc	a0,0x2
    80001a24:	68050513          	addi	a0,a0,1664 # 800040a0 <CONSOLE_STATUS+0x90>
    80001a28:	00001097          	auipc	ra,0x1
    80001a2c:	8e4080e7          	jalr	-1820(ra) # 8000230c <panic>

0000000080001a30 <trapinit>:
    80001a30:	ff010113          	addi	sp,sp,-16
    80001a34:	00813423          	sd	s0,8(sp)
    80001a38:	01010413          	addi	s0,sp,16
    80001a3c:	00813403          	ld	s0,8(sp)
    80001a40:	00002597          	auipc	a1,0x2
    80001a44:	68858593          	addi	a1,a1,1672 # 800040c8 <CONSOLE_STATUS+0xb8>
    80001a48:	00004517          	auipc	a0,0x4
    80001a4c:	b0850513          	addi	a0,a0,-1272 # 80005550 <tickslock>
    80001a50:	01010113          	addi	sp,sp,16
    80001a54:	00001317          	auipc	t1,0x1
    80001a58:	5c430067          	jr	1476(t1) # 80003018 <initlock>

0000000080001a5c <trapinithart>:
    80001a5c:	ff010113          	addi	sp,sp,-16
    80001a60:	00813423          	sd	s0,8(sp)
    80001a64:	01010413          	addi	s0,sp,16
    80001a68:	00000797          	auipc	a5,0x0
    80001a6c:	2f878793          	addi	a5,a5,760 # 80001d60 <kernelvec>
    80001a70:	10579073          	csrw	stvec,a5
    80001a74:	00813403          	ld	s0,8(sp)
    80001a78:	01010113          	addi	sp,sp,16
    80001a7c:	00008067          	ret

0000000080001a80 <usertrap>:
    80001a80:	ff010113          	addi	sp,sp,-16
    80001a84:	00813423          	sd	s0,8(sp)
    80001a88:	01010413          	addi	s0,sp,16
    80001a8c:	00813403          	ld	s0,8(sp)
    80001a90:	01010113          	addi	sp,sp,16
    80001a94:	00008067          	ret

0000000080001a98 <usertrapret>:
    80001a98:	ff010113          	addi	sp,sp,-16
    80001a9c:	00813423          	sd	s0,8(sp)
    80001aa0:	01010413          	addi	s0,sp,16
    80001aa4:	00813403          	ld	s0,8(sp)
    80001aa8:	01010113          	addi	sp,sp,16
    80001aac:	00008067          	ret

0000000080001ab0 <kerneltrap>:
    80001ab0:	fe010113          	addi	sp,sp,-32
    80001ab4:	00813823          	sd	s0,16(sp)
    80001ab8:	00113c23          	sd	ra,24(sp)
    80001abc:	00913423          	sd	s1,8(sp)
    80001ac0:	02010413          	addi	s0,sp,32
    80001ac4:	142025f3          	csrr	a1,scause
    80001ac8:	100027f3          	csrr	a5,sstatus
    80001acc:	0027f793          	andi	a5,a5,2
    80001ad0:	10079c63          	bnez	a5,80001be8 <kerneltrap+0x138>
    80001ad4:	142027f3          	csrr	a5,scause
    80001ad8:	0207ce63          	bltz	a5,80001b14 <kerneltrap+0x64>
    80001adc:	00002517          	auipc	a0,0x2
    80001ae0:	63450513          	addi	a0,a0,1588 # 80004110 <CONSOLE_STATUS+0x100>
    80001ae4:	00001097          	auipc	ra,0x1
    80001ae8:	884080e7          	jalr	-1916(ra) # 80002368 <__printf>
    80001aec:	141025f3          	csrr	a1,sepc
    80001af0:	14302673          	csrr	a2,stval
    80001af4:	00002517          	auipc	a0,0x2
    80001af8:	62c50513          	addi	a0,a0,1580 # 80004120 <CONSOLE_STATUS+0x110>
    80001afc:	00001097          	auipc	ra,0x1
    80001b00:	86c080e7          	jalr	-1940(ra) # 80002368 <__printf>
    80001b04:	00002517          	auipc	a0,0x2
    80001b08:	63450513          	addi	a0,a0,1588 # 80004138 <CONSOLE_STATUS+0x128>
    80001b0c:	00001097          	auipc	ra,0x1
    80001b10:	800080e7          	jalr	-2048(ra) # 8000230c <panic>
    80001b14:	0ff7f713          	andi	a4,a5,255
    80001b18:	00900693          	li	a3,9
    80001b1c:	04d70063          	beq	a4,a3,80001b5c <kerneltrap+0xac>
    80001b20:	fff00713          	li	a4,-1
    80001b24:	03f71713          	slli	a4,a4,0x3f
    80001b28:	00170713          	addi	a4,a4,1
    80001b2c:	fae798e3          	bne	a5,a4,80001adc <kerneltrap+0x2c>
    80001b30:	00000097          	auipc	ra,0x0
    80001b34:	e00080e7          	jalr	-512(ra) # 80001930 <cpuid>
    80001b38:	06050663          	beqz	a0,80001ba4 <kerneltrap+0xf4>
    80001b3c:	144027f3          	csrr	a5,sip
    80001b40:	ffd7f793          	andi	a5,a5,-3
    80001b44:	14479073          	csrw	sip,a5
    80001b48:	01813083          	ld	ra,24(sp)
    80001b4c:	01013403          	ld	s0,16(sp)
    80001b50:	00813483          	ld	s1,8(sp)
    80001b54:	02010113          	addi	sp,sp,32
    80001b58:	00008067          	ret
    80001b5c:	00000097          	auipc	ra,0x0
    80001b60:	3c8080e7          	jalr	968(ra) # 80001f24 <plic_claim>
    80001b64:	00a00793          	li	a5,10
    80001b68:	00050493          	mv	s1,a0
    80001b6c:	06f50863          	beq	a0,a5,80001bdc <kerneltrap+0x12c>
    80001b70:	fc050ce3          	beqz	a0,80001b48 <kerneltrap+0x98>
    80001b74:	00050593          	mv	a1,a0
    80001b78:	00002517          	auipc	a0,0x2
    80001b7c:	57850513          	addi	a0,a0,1400 # 800040f0 <CONSOLE_STATUS+0xe0>
    80001b80:	00000097          	auipc	ra,0x0
    80001b84:	7e8080e7          	jalr	2024(ra) # 80002368 <__printf>
    80001b88:	01013403          	ld	s0,16(sp)
    80001b8c:	01813083          	ld	ra,24(sp)
    80001b90:	00048513          	mv	a0,s1
    80001b94:	00813483          	ld	s1,8(sp)
    80001b98:	02010113          	addi	sp,sp,32
    80001b9c:	00000317          	auipc	t1,0x0
    80001ba0:	3c030067          	jr	960(t1) # 80001f5c <plic_complete>
    80001ba4:	00004517          	auipc	a0,0x4
    80001ba8:	9ac50513          	addi	a0,a0,-1620 # 80005550 <tickslock>
    80001bac:	00001097          	auipc	ra,0x1
    80001bb0:	490080e7          	jalr	1168(ra) # 8000303c <acquire>
    80001bb4:	00003717          	auipc	a4,0x3
    80001bb8:	8b070713          	addi	a4,a4,-1872 # 80004464 <ticks>
    80001bbc:	00072783          	lw	a5,0(a4)
    80001bc0:	00004517          	auipc	a0,0x4
    80001bc4:	99050513          	addi	a0,a0,-1648 # 80005550 <tickslock>
    80001bc8:	0017879b          	addiw	a5,a5,1
    80001bcc:	00f72023          	sw	a5,0(a4)
    80001bd0:	00001097          	auipc	ra,0x1
    80001bd4:	538080e7          	jalr	1336(ra) # 80003108 <release>
    80001bd8:	f65ff06f          	j	80001b3c <kerneltrap+0x8c>
    80001bdc:	00001097          	auipc	ra,0x1
    80001be0:	094080e7          	jalr	148(ra) # 80002c70 <uartintr>
    80001be4:	fa5ff06f          	j	80001b88 <kerneltrap+0xd8>
    80001be8:	00002517          	auipc	a0,0x2
    80001bec:	4e850513          	addi	a0,a0,1256 # 800040d0 <CONSOLE_STATUS+0xc0>
    80001bf0:	00000097          	auipc	ra,0x0
    80001bf4:	71c080e7          	jalr	1820(ra) # 8000230c <panic>

0000000080001bf8 <clockintr>:
    80001bf8:	fe010113          	addi	sp,sp,-32
    80001bfc:	00813823          	sd	s0,16(sp)
    80001c00:	00913423          	sd	s1,8(sp)
    80001c04:	00113c23          	sd	ra,24(sp)
    80001c08:	02010413          	addi	s0,sp,32
    80001c0c:	00004497          	auipc	s1,0x4
    80001c10:	94448493          	addi	s1,s1,-1724 # 80005550 <tickslock>
    80001c14:	00048513          	mv	a0,s1
    80001c18:	00001097          	auipc	ra,0x1
    80001c1c:	424080e7          	jalr	1060(ra) # 8000303c <acquire>
    80001c20:	00003717          	auipc	a4,0x3
    80001c24:	84470713          	addi	a4,a4,-1980 # 80004464 <ticks>
    80001c28:	00072783          	lw	a5,0(a4)
    80001c2c:	01013403          	ld	s0,16(sp)
    80001c30:	01813083          	ld	ra,24(sp)
    80001c34:	00048513          	mv	a0,s1
    80001c38:	0017879b          	addiw	a5,a5,1
    80001c3c:	00813483          	ld	s1,8(sp)
    80001c40:	00f72023          	sw	a5,0(a4)
    80001c44:	02010113          	addi	sp,sp,32
    80001c48:	00001317          	auipc	t1,0x1
    80001c4c:	4c030067          	jr	1216(t1) # 80003108 <release>

0000000080001c50 <devintr>:
    80001c50:	142027f3          	csrr	a5,scause
    80001c54:	00000513          	li	a0,0
    80001c58:	0007c463          	bltz	a5,80001c60 <devintr+0x10>
    80001c5c:	00008067          	ret
    80001c60:	fe010113          	addi	sp,sp,-32
    80001c64:	00813823          	sd	s0,16(sp)
    80001c68:	00113c23          	sd	ra,24(sp)
    80001c6c:	00913423          	sd	s1,8(sp)
    80001c70:	02010413          	addi	s0,sp,32
    80001c74:	0ff7f713          	andi	a4,a5,255
    80001c78:	00900693          	li	a3,9
    80001c7c:	04d70c63          	beq	a4,a3,80001cd4 <devintr+0x84>
    80001c80:	fff00713          	li	a4,-1
    80001c84:	03f71713          	slli	a4,a4,0x3f
    80001c88:	00170713          	addi	a4,a4,1
    80001c8c:	00e78c63          	beq	a5,a4,80001ca4 <devintr+0x54>
    80001c90:	01813083          	ld	ra,24(sp)
    80001c94:	01013403          	ld	s0,16(sp)
    80001c98:	00813483          	ld	s1,8(sp)
    80001c9c:	02010113          	addi	sp,sp,32
    80001ca0:	00008067          	ret
    80001ca4:	00000097          	auipc	ra,0x0
    80001ca8:	c8c080e7          	jalr	-884(ra) # 80001930 <cpuid>
    80001cac:	06050663          	beqz	a0,80001d18 <devintr+0xc8>
    80001cb0:	144027f3          	csrr	a5,sip
    80001cb4:	ffd7f793          	andi	a5,a5,-3
    80001cb8:	14479073          	csrw	sip,a5
    80001cbc:	01813083          	ld	ra,24(sp)
    80001cc0:	01013403          	ld	s0,16(sp)
    80001cc4:	00813483          	ld	s1,8(sp)
    80001cc8:	00200513          	li	a0,2
    80001ccc:	02010113          	addi	sp,sp,32
    80001cd0:	00008067          	ret
    80001cd4:	00000097          	auipc	ra,0x0
    80001cd8:	250080e7          	jalr	592(ra) # 80001f24 <plic_claim>
    80001cdc:	00a00793          	li	a5,10
    80001ce0:	00050493          	mv	s1,a0
    80001ce4:	06f50663          	beq	a0,a5,80001d50 <devintr+0x100>
    80001ce8:	00100513          	li	a0,1
    80001cec:	fa0482e3          	beqz	s1,80001c90 <devintr+0x40>
    80001cf0:	00048593          	mv	a1,s1
    80001cf4:	00002517          	auipc	a0,0x2
    80001cf8:	3fc50513          	addi	a0,a0,1020 # 800040f0 <CONSOLE_STATUS+0xe0>
    80001cfc:	00000097          	auipc	ra,0x0
    80001d00:	66c080e7          	jalr	1644(ra) # 80002368 <__printf>
    80001d04:	00048513          	mv	a0,s1
    80001d08:	00000097          	auipc	ra,0x0
    80001d0c:	254080e7          	jalr	596(ra) # 80001f5c <plic_complete>
    80001d10:	00100513          	li	a0,1
    80001d14:	f7dff06f          	j	80001c90 <devintr+0x40>
    80001d18:	00004517          	auipc	a0,0x4
    80001d1c:	83850513          	addi	a0,a0,-1992 # 80005550 <tickslock>
    80001d20:	00001097          	auipc	ra,0x1
    80001d24:	31c080e7          	jalr	796(ra) # 8000303c <acquire>
    80001d28:	00002717          	auipc	a4,0x2
    80001d2c:	73c70713          	addi	a4,a4,1852 # 80004464 <ticks>
    80001d30:	00072783          	lw	a5,0(a4)
    80001d34:	00004517          	auipc	a0,0x4
    80001d38:	81c50513          	addi	a0,a0,-2020 # 80005550 <tickslock>
    80001d3c:	0017879b          	addiw	a5,a5,1
    80001d40:	00f72023          	sw	a5,0(a4)
    80001d44:	00001097          	auipc	ra,0x1
    80001d48:	3c4080e7          	jalr	964(ra) # 80003108 <release>
    80001d4c:	f65ff06f          	j	80001cb0 <devintr+0x60>
    80001d50:	00001097          	auipc	ra,0x1
    80001d54:	f20080e7          	jalr	-224(ra) # 80002c70 <uartintr>
    80001d58:	fadff06f          	j	80001d04 <devintr+0xb4>
    80001d5c:	0000                	unimp
	...

0000000080001d60 <kernelvec>:
    80001d60:	f0010113          	addi	sp,sp,-256
    80001d64:	00113023          	sd	ra,0(sp)
    80001d68:	00213423          	sd	sp,8(sp)
    80001d6c:	00313823          	sd	gp,16(sp)
    80001d70:	00413c23          	sd	tp,24(sp)
    80001d74:	02513023          	sd	t0,32(sp)
    80001d78:	02613423          	sd	t1,40(sp)
    80001d7c:	02713823          	sd	t2,48(sp)
    80001d80:	02813c23          	sd	s0,56(sp)
    80001d84:	04913023          	sd	s1,64(sp)
    80001d88:	04a13423          	sd	a0,72(sp)
    80001d8c:	04b13823          	sd	a1,80(sp)
    80001d90:	04c13c23          	sd	a2,88(sp)
    80001d94:	06d13023          	sd	a3,96(sp)
    80001d98:	06e13423          	sd	a4,104(sp)
    80001d9c:	06f13823          	sd	a5,112(sp)
    80001da0:	07013c23          	sd	a6,120(sp)
    80001da4:	09113023          	sd	a7,128(sp)
    80001da8:	09213423          	sd	s2,136(sp)
    80001dac:	09313823          	sd	s3,144(sp)
    80001db0:	09413c23          	sd	s4,152(sp)
    80001db4:	0b513023          	sd	s5,160(sp)
    80001db8:	0b613423          	sd	s6,168(sp)
    80001dbc:	0b713823          	sd	s7,176(sp)
    80001dc0:	0b813c23          	sd	s8,184(sp)
    80001dc4:	0d913023          	sd	s9,192(sp)
    80001dc8:	0da13423          	sd	s10,200(sp)
    80001dcc:	0db13823          	sd	s11,208(sp)
    80001dd0:	0dc13c23          	sd	t3,216(sp)
    80001dd4:	0fd13023          	sd	t4,224(sp)
    80001dd8:	0fe13423          	sd	t5,232(sp)
    80001ddc:	0ff13823          	sd	t6,240(sp)
    80001de0:	cd1ff0ef          	jal	ra,80001ab0 <kerneltrap>
    80001de4:	00013083          	ld	ra,0(sp)
    80001de8:	00813103          	ld	sp,8(sp)
    80001dec:	01013183          	ld	gp,16(sp)
    80001df0:	02013283          	ld	t0,32(sp)
    80001df4:	02813303          	ld	t1,40(sp)
    80001df8:	03013383          	ld	t2,48(sp)
    80001dfc:	03813403          	ld	s0,56(sp)
    80001e00:	04013483          	ld	s1,64(sp)
    80001e04:	04813503          	ld	a0,72(sp)
    80001e08:	05013583          	ld	a1,80(sp)
    80001e0c:	05813603          	ld	a2,88(sp)
    80001e10:	06013683          	ld	a3,96(sp)
    80001e14:	06813703          	ld	a4,104(sp)
    80001e18:	07013783          	ld	a5,112(sp)
    80001e1c:	07813803          	ld	a6,120(sp)
    80001e20:	08013883          	ld	a7,128(sp)
    80001e24:	08813903          	ld	s2,136(sp)
    80001e28:	09013983          	ld	s3,144(sp)
    80001e2c:	09813a03          	ld	s4,152(sp)
    80001e30:	0a013a83          	ld	s5,160(sp)
    80001e34:	0a813b03          	ld	s6,168(sp)
    80001e38:	0b013b83          	ld	s7,176(sp)
    80001e3c:	0b813c03          	ld	s8,184(sp)
    80001e40:	0c013c83          	ld	s9,192(sp)
    80001e44:	0c813d03          	ld	s10,200(sp)
    80001e48:	0d013d83          	ld	s11,208(sp)
    80001e4c:	0d813e03          	ld	t3,216(sp)
    80001e50:	0e013e83          	ld	t4,224(sp)
    80001e54:	0e813f03          	ld	t5,232(sp)
    80001e58:	0f013f83          	ld	t6,240(sp)
    80001e5c:	10010113          	addi	sp,sp,256
    80001e60:	10200073          	sret
    80001e64:	00000013          	nop
    80001e68:	00000013          	nop
    80001e6c:	00000013          	nop

0000000080001e70 <timervec>:
    80001e70:	34051573          	csrrw	a0,mscratch,a0
    80001e74:	00b53023          	sd	a1,0(a0)
    80001e78:	00c53423          	sd	a2,8(a0)
    80001e7c:	00d53823          	sd	a3,16(a0)
    80001e80:	01853583          	ld	a1,24(a0)
    80001e84:	02053603          	ld	a2,32(a0)
    80001e88:	0005b683          	ld	a3,0(a1)
    80001e8c:	00c686b3          	add	a3,a3,a2
    80001e90:	00d5b023          	sd	a3,0(a1)
    80001e94:	00200593          	li	a1,2
    80001e98:	14459073          	csrw	sip,a1
    80001e9c:	01053683          	ld	a3,16(a0)
    80001ea0:	00853603          	ld	a2,8(a0)
    80001ea4:	00053583          	ld	a1,0(a0)
    80001ea8:	34051573          	csrrw	a0,mscratch,a0
    80001eac:	30200073          	mret

0000000080001eb0 <plicinit>:
    80001eb0:	ff010113          	addi	sp,sp,-16
    80001eb4:	00813423          	sd	s0,8(sp)
    80001eb8:	01010413          	addi	s0,sp,16
    80001ebc:	00813403          	ld	s0,8(sp)
    80001ec0:	0c0007b7          	lui	a5,0xc000
    80001ec4:	00100713          	li	a4,1
    80001ec8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80001ecc:	00e7a223          	sw	a4,4(a5)
    80001ed0:	01010113          	addi	sp,sp,16
    80001ed4:	00008067          	ret

0000000080001ed8 <plicinithart>:
    80001ed8:	ff010113          	addi	sp,sp,-16
    80001edc:	00813023          	sd	s0,0(sp)
    80001ee0:	00113423          	sd	ra,8(sp)
    80001ee4:	01010413          	addi	s0,sp,16
    80001ee8:	00000097          	auipc	ra,0x0
    80001eec:	a48080e7          	jalr	-1464(ra) # 80001930 <cpuid>
    80001ef0:	0085171b          	slliw	a4,a0,0x8
    80001ef4:	0c0027b7          	lui	a5,0xc002
    80001ef8:	00e787b3          	add	a5,a5,a4
    80001efc:	40200713          	li	a4,1026
    80001f00:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80001f04:	00813083          	ld	ra,8(sp)
    80001f08:	00013403          	ld	s0,0(sp)
    80001f0c:	00d5151b          	slliw	a0,a0,0xd
    80001f10:	0c2017b7          	lui	a5,0xc201
    80001f14:	00a78533          	add	a0,a5,a0
    80001f18:	00052023          	sw	zero,0(a0)
    80001f1c:	01010113          	addi	sp,sp,16
    80001f20:	00008067          	ret

0000000080001f24 <plic_claim>:
    80001f24:	ff010113          	addi	sp,sp,-16
    80001f28:	00813023          	sd	s0,0(sp)
    80001f2c:	00113423          	sd	ra,8(sp)
    80001f30:	01010413          	addi	s0,sp,16
    80001f34:	00000097          	auipc	ra,0x0
    80001f38:	9fc080e7          	jalr	-1540(ra) # 80001930 <cpuid>
    80001f3c:	00813083          	ld	ra,8(sp)
    80001f40:	00013403          	ld	s0,0(sp)
    80001f44:	00d5151b          	slliw	a0,a0,0xd
    80001f48:	0c2017b7          	lui	a5,0xc201
    80001f4c:	00a78533          	add	a0,a5,a0
    80001f50:	00452503          	lw	a0,4(a0)
    80001f54:	01010113          	addi	sp,sp,16
    80001f58:	00008067          	ret

0000000080001f5c <plic_complete>:
    80001f5c:	fe010113          	addi	sp,sp,-32
    80001f60:	00813823          	sd	s0,16(sp)
    80001f64:	00913423          	sd	s1,8(sp)
    80001f68:	00113c23          	sd	ra,24(sp)
    80001f6c:	02010413          	addi	s0,sp,32
    80001f70:	00050493          	mv	s1,a0
    80001f74:	00000097          	auipc	ra,0x0
    80001f78:	9bc080e7          	jalr	-1604(ra) # 80001930 <cpuid>
    80001f7c:	01813083          	ld	ra,24(sp)
    80001f80:	01013403          	ld	s0,16(sp)
    80001f84:	00d5179b          	slliw	a5,a0,0xd
    80001f88:	0c201737          	lui	a4,0xc201
    80001f8c:	00f707b3          	add	a5,a4,a5
    80001f90:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80001f94:	00813483          	ld	s1,8(sp)
    80001f98:	02010113          	addi	sp,sp,32
    80001f9c:	00008067          	ret

0000000080001fa0 <consolewrite>:
    80001fa0:	fb010113          	addi	sp,sp,-80
    80001fa4:	04813023          	sd	s0,64(sp)
    80001fa8:	04113423          	sd	ra,72(sp)
    80001fac:	02913c23          	sd	s1,56(sp)
    80001fb0:	03213823          	sd	s2,48(sp)
    80001fb4:	03313423          	sd	s3,40(sp)
    80001fb8:	03413023          	sd	s4,32(sp)
    80001fbc:	01513c23          	sd	s5,24(sp)
    80001fc0:	05010413          	addi	s0,sp,80
    80001fc4:	06c05c63          	blez	a2,8000203c <consolewrite+0x9c>
    80001fc8:	00060993          	mv	s3,a2
    80001fcc:	00050a13          	mv	s4,a0
    80001fd0:	00058493          	mv	s1,a1
    80001fd4:	00000913          	li	s2,0
    80001fd8:	fff00a93          	li	s5,-1
    80001fdc:	01c0006f          	j	80001ff8 <consolewrite+0x58>
    80001fe0:	fbf44503          	lbu	a0,-65(s0)
    80001fe4:	0019091b          	addiw	s2,s2,1
    80001fe8:	00148493          	addi	s1,s1,1
    80001fec:	00001097          	auipc	ra,0x1
    80001ff0:	a9c080e7          	jalr	-1380(ra) # 80002a88 <uartputc>
    80001ff4:	03298063          	beq	s3,s2,80002014 <consolewrite+0x74>
    80001ff8:	00048613          	mv	a2,s1
    80001ffc:	00100693          	li	a3,1
    80002000:	000a0593          	mv	a1,s4
    80002004:	fbf40513          	addi	a0,s0,-65
    80002008:	00000097          	auipc	ra,0x0
    8000200c:	9e0080e7          	jalr	-1568(ra) # 800019e8 <either_copyin>
    80002010:	fd5518e3          	bne	a0,s5,80001fe0 <consolewrite+0x40>
    80002014:	04813083          	ld	ra,72(sp)
    80002018:	04013403          	ld	s0,64(sp)
    8000201c:	03813483          	ld	s1,56(sp)
    80002020:	02813983          	ld	s3,40(sp)
    80002024:	02013a03          	ld	s4,32(sp)
    80002028:	01813a83          	ld	s5,24(sp)
    8000202c:	00090513          	mv	a0,s2
    80002030:	03013903          	ld	s2,48(sp)
    80002034:	05010113          	addi	sp,sp,80
    80002038:	00008067          	ret
    8000203c:	00000913          	li	s2,0
    80002040:	fd5ff06f          	j	80002014 <consolewrite+0x74>

0000000080002044 <consoleread>:
    80002044:	f9010113          	addi	sp,sp,-112
    80002048:	06813023          	sd	s0,96(sp)
    8000204c:	04913c23          	sd	s1,88(sp)
    80002050:	05213823          	sd	s2,80(sp)
    80002054:	05313423          	sd	s3,72(sp)
    80002058:	05413023          	sd	s4,64(sp)
    8000205c:	03513c23          	sd	s5,56(sp)
    80002060:	03613823          	sd	s6,48(sp)
    80002064:	03713423          	sd	s7,40(sp)
    80002068:	03813023          	sd	s8,32(sp)
    8000206c:	06113423          	sd	ra,104(sp)
    80002070:	01913c23          	sd	s9,24(sp)
    80002074:	07010413          	addi	s0,sp,112
    80002078:	00060b93          	mv	s7,a2
    8000207c:	00050913          	mv	s2,a0
    80002080:	00058c13          	mv	s8,a1
    80002084:	00060b1b          	sext.w	s6,a2
    80002088:	00003497          	auipc	s1,0x3
    8000208c:	4e048493          	addi	s1,s1,1248 # 80005568 <cons>
    80002090:	00400993          	li	s3,4
    80002094:	fff00a13          	li	s4,-1
    80002098:	00a00a93          	li	s5,10
    8000209c:	05705e63          	blez	s7,800020f8 <consoleread+0xb4>
    800020a0:	09c4a703          	lw	a4,156(s1)
    800020a4:	0984a783          	lw	a5,152(s1)
    800020a8:	0007071b          	sext.w	a4,a4
    800020ac:	08e78463          	beq	a5,a4,80002134 <consoleread+0xf0>
    800020b0:	07f7f713          	andi	a4,a5,127
    800020b4:	00e48733          	add	a4,s1,a4
    800020b8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800020bc:	0017869b          	addiw	a3,a5,1
    800020c0:	08d4ac23          	sw	a3,152(s1)
    800020c4:	00070c9b          	sext.w	s9,a4
    800020c8:	0b370663          	beq	a4,s3,80002174 <consoleread+0x130>
    800020cc:	00100693          	li	a3,1
    800020d0:	f9f40613          	addi	a2,s0,-97
    800020d4:	000c0593          	mv	a1,s8
    800020d8:	00090513          	mv	a0,s2
    800020dc:	f8e40fa3          	sb	a4,-97(s0)
    800020e0:	00000097          	auipc	ra,0x0
    800020e4:	8bc080e7          	jalr	-1860(ra) # 8000199c <either_copyout>
    800020e8:	01450863          	beq	a0,s4,800020f8 <consoleread+0xb4>
    800020ec:	001c0c13          	addi	s8,s8,1
    800020f0:	fffb8b9b          	addiw	s7,s7,-1
    800020f4:	fb5c94e3          	bne	s9,s5,8000209c <consoleread+0x58>
    800020f8:	000b851b          	sext.w	a0,s7
    800020fc:	06813083          	ld	ra,104(sp)
    80002100:	06013403          	ld	s0,96(sp)
    80002104:	05813483          	ld	s1,88(sp)
    80002108:	05013903          	ld	s2,80(sp)
    8000210c:	04813983          	ld	s3,72(sp)
    80002110:	04013a03          	ld	s4,64(sp)
    80002114:	03813a83          	ld	s5,56(sp)
    80002118:	02813b83          	ld	s7,40(sp)
    8000211c:	02013c03          	ld	s8,32(sp)
    80002120:	01813c83          	ld	s9,24(sp)
    80002124:	40ab053b          	subw	a0,s6,a0
    80002128:	03013b03          	ld	s6,48(sp)
    8000212c:	07010113          	addi	sp,sp,112
    80002130:	00008067          	ret
    80002134:	00001097          	auipc	ra,0x1
    80002138:	1d8080e7          	jalr	472(ra) # 8000330c <push_on>
    8000213c:	0984a703          	lw	a4,152(s1)
    80002140:	09c4a783          	lw	a5,156(s1)
    80002144:	0007879b          	sext.w	a5,a5
    80002148:	fef70ce3          	beq	a4,a5,80002140 <consoleread+0xfc>
    8000214c:	00001097          	auipc	ra,0x1
    80002150:	234080e7          	jalr	564(ra) # 80003380 <pop_on>
    80002154:	0984a783          	lw	a5,152(s1)
    80002158:	07f7f713          	andi	a4,a5,127
    8000215c:	00e48733          	add	a4,s1,a4
    80002160:	01874703          	lbu	a4,24(a4)
    80002164:	0017869b          	addiw	a3,a5,1
    80002168:	08d4ac23          	sw	a3,152(s1)
    8000216c:	00070c9b          	sext.w	s9,a4
    80002170:	f5371ee3          	bne	a4,s3,800020cc <consoleread+0x88>
    80002174:	000b851b          	sext.w	a0,s7
    80002178:	f96bf2e3          	bgeu	s7,s6,800020fc <consoleread+0xb8>
    8000217c:	08f4ac23          	sw	a5,152(s1)
    80002180:	f7dff06f          	j	800020fc <consoleread+0xb8>

0000000080002184 <consputc>:
    80002184:	10000793          	li	a5,256
    80002188:	00f50663          	beq	a0,a5,80002194 <consputc+0x10>
    8000218c:	00001317          	auipc	t1,0x1
    80002190:	9f430067          	jr	-1548(t1) # 80002b80 <uartputc_sync>
    80002194:	ff010113          	addi	sp,sp,-16
    80002198:	00113423          	sd	ra,8(sp)
    8000219c:	00813023          	sd	s0,0(sp)
    800021a0:	01010413          	addi	s0,sp,16
    800021a4:	00800513          	li	a0,8
    800021a8:	00001097          	auipc	ra,0x1
    800021ac:	9d8080e7          	jalr	-1576(ra) # 80002b80 <uartputc_sync>
    800021b0:	02000513          	li	a0,32
    800021b4:	00001097          	auipc	ra,0x1
    800021b8:	9cc080e7          	jalr	-1588(ra) # 80002b80 <uartputc_sync>
    800021bc:	00013403          	ld	s0,0(sp)
    800021c0:	00813083          	ld	ra,8(sp)
    800021c4:	00800513          	li	a0,8
    800021c8:	01010113          	addi	sp,sp,16
    800021cc:	00001317          	auipc	t1,0x1
    800021d0:	9b430067          	jr	-1612(t1) # 80002b80 <uartputc_sync>

00000000800021d4 <consoleintr>:
    800021d4:	fe010113          	addi	sp,sp,-32
    800021d8:	00813823          	sd	s0,16(sp)
    800021dc:	00913423          	sd	s1,8(sp)
    800021e0:	01213023          	sd	s2,0(sp)
    800021e4:	00113c23          	sd	ra,24(sp)
    800021e8:	02010413          	addi	s0,sp,32
    800021ec:	00003917          	auipc	s2,0x3
    800021f0:	37c90913          	addi	s2,s2,892 # 80005568 <cons>
    800021f4:	00050493          	mv	s1,a0
    800021f8:	00090513          	mv	a0,s2
    800021fc:	00001097          	auipc	ra,0x1
    80002200:	e40080e7          	jalr	-448(ra) # 8000303c <acquire>
    80002204:	02048c63          	beqz	s1,8000223c <consoleintr+0x68>
    80002208:	0a092783          	lw	a5,160(s2)
    8000220c:	09892703          	lw	a4,152(s2)
    80002210:	07f00693          	li	a3,127
    80002214:	40e7873b          	subw	a4,a5,a4
    80002218:	02e6e263          	bltu	a3,a4,8000223c <consoleintr+0x68>
    8000221c:	00d00713          	li	a4,13
    80002220:	04e48063          	beq	s1,a4,80002260 <consoleintr+0x8c>
    80002224:	07f7f713          	andi	a4,a5,127
    80002228:	00e90733          	add	a4,s2,a4
    8000222c:	0017879b          	addiw	a5,a5,1
    80002230:	0af92023          	sw	a5,160(s2)
    80002234:	00970c23          	sb	s1,24(a4)
    80002238:	08f92e23          	sw	a5,156(s2)
    8000223c:	01013403          	ld	s0,16(sp)
    80002240:	01813083          	ld	ra,24(sp)
    80002244:	00813483          	ld	s1,8(sp)
    80002248:	00013903          	ld	s2,0(sp)
    8000224c:	00003517          	auipc	a0,0x3
    80002250:	31c50513          	addi	a0,a0,796 # 80005568 <cons>
    80002254:	02010113          	addi	sp,sp,32
    80002258:	00001317          	auipc	t1,0x1
    8000225c:	eb030067          	jr	-336(t1) # 80003108 <release>
    80002260:	00a00493          	li	s1,10
    80002264:	fc1ff06f          	j	80002224 <consoleintr+0x50>

0000000080002268 <consoleinit>:
    80002268:	fe010113          	addi	sp,sp,-32
    8000226c:	00113c23          	sd	ra,24(sp)
    80002270:	00813823          	sd	s0,16(sp)
    80002274:	00913423          	sd	s1,8(sp)
    80002278:	02010413          	addi	s0,sp,32
    8000227c:	00003497          	auipc	s1,0x3
    80002280:	2ec48493          	addi	s1,s1,748 # 80005568 <cons>
    80002284:	00048513          	mv	a0,s1
    80002288:	00002597          	auipc	a1,0x2
    8000228c:	ec058593          	addi	a1,a1,-320 # 80004148 <CONSOLE_STATUS+0x138>
    80002290:	00001097          	auipc	ra,0x1
    80002294:	d88080e7          	jalr	-632(ra) # 80003018 <initlock>
    80002298:	00000097          	auipc	ra,0x0
    8000229c:	7ac080e7          	jalr	1964(ra) # 80002a44 <uartinit>
    800022a0:	01813083          	ld	ra,24(sp)
    800022a4:	01013403          	ld	s0,16(sp)
    800022a8:	00000797          	auipc	a5,0x0
    800022ac:	d9c78793          	addi	a5,a5,-612 # 80002044 <consoleread>
    800022b0:	0af4bc23          	sd	a5,184(s1)
    800022b4:	00000797          	auipc	a5,0x0
    800022b8:	cec78793          	addi	a5,a5,-788 # 80001fa0 <consolewrite>
    800022bc:	0cf4b023          	sd	a5,192(s1)
    800022c0:	00813483          	ld	s1,8(sp)
    800022c4:	02010113          	addi	sp,sp,32
    800022c8:	00008067          	ret

00000000800022cc <console_read>:
    800022cc:	ff010113          	addi	sp,sp,-16
    800022d0:	00813423          	sd	s0,8(sp)
    800022d4:	01010413          	addi	s0,sp,16
    800022d8:	00813403          	ld	s0,8(sp)
    800022dc:	00003317          	auipc	t1,0x3
    800022e0:	34433303          	ld	t1,836(t1) # 80005620 <devsw+0x10>
    800022e4:	01010113          	addi	sp,sp,16
    800022e8:	00030067          	jr	t1

00000000800022ec <console_write>:
    800022ec:	ff010113          	addi	sp,sp,-16
    800022f0:	00813423          	sd	s0,8(sp)
    800022f4:	01010413          	addi	s0,sp,16
    800022f8:	00813403          	ld	s0,8(sp)
    800022fc:	00003317          	auipc	t1,0x3
    80002300:	32c33303          	ld	t1,812(t1) # 80005628 <devsw+0x18>
    80002304:	01010113          	addi	sp,sp,16
    80002308:	00030067          	jr	t1

000000008000230c <panic>:
    8000230c:	fe010113          	addi	sp,sp,-32
    80002310:	00113c23          	sd	ra,24(sp)
    80002314:	00813823          	sd	s0,16(sp)
    80002318:	00913423          	sd	s1,8(sp)
    8000231c:	02010413          	addi	s0,sp,32
    80002320:	00050493          	mv	s1,a0
    80002324:	00002517          	auipc	a0,0x2
    80002328:	e2c50513          	addi	a0,a0,-468 # 80004150 <CONSOLE_STATUS+0x140>
    8000232c:	00003797          	auipc	a5,0x3
    80002330:	3807ae23          	sw	zero,924(a5) # 800056c8 <pr+0x18>
    80002334:	00000097          	auipc	ra,0x0
    80002338:	034080e7          	jalr	52(ra) # 80002368 <__printf>
    8000233c:	00048513          	mv	a0,s1
    80002340:	00000097          	auipc	ra,0x0
    80002344:	028080e7          	jalr	40(ra) # 80002368 <__printf>
    80002348:	00002517          	auipc	a0,0x2
    8000234c:	de850513          	addi	a0,a0,-536 # 80004130 <CONSOLE_STATUS+0x120>
    80002350:	00000097          	auipc	ra,0x0
    80002354:	018080e7          	jalr	24(ra) # 80002368 <__printf>
    80002358:	00100793          	li	a5,1
    8000235c:	00002717          	auipc	a4,0x2
    80002360:	10f72623          	sw	a5,268(a4) # 80004468 <panicked>
    80002364:	0000006f          	j	80002364 <panic+0x58>

0000000080002368 <__printf>:
    80002368:	f3010113          	addi	sp,sp,-208
    8000236c:	08813023          	sd	s0,128(sp)
    80002370:	07313423          	sd	s3,104(sp)
    80002374:	09010413          	addi	s0,sp,144
    80002378:	05813023          	sd	s8,64(sp)
    8000237c:	08113423          	sd	ra,136(sp)
    80002380:	06913c23          	sd	s1,120(sp)
    80002384:	07213823          	sd	s2,112(sp)
    80002388:	07413023          	sd	s4,96(sp)
    8000238c:	05513c23          	sd	s5,88(sp)
    80002390:	05613823          	sd	s6,80(sp)
    80002394:	05713423          	sd	s7,72(sp)
    80002398:	03913c23          	sd	s9,56(sp)
    8000239c:	03a13823          	sd	s10,48(sp)
    800023a0:	03b13423          	sd	s11,40(sp)
    800023a4:	00003317          	auipc	t1,0x3
    800023a8:	30c30313          	addi	t1,t1,780 # 800056b0 <pr>
    800023ac:	01832c03          	lw	s8,24(t1)
    800023b0:	00b43423          	sd	a1,8(s0)
    800023b4:	00c43823          	sd	a2,16(s0)
    800023b8:	00d43c23          	sd	a3,24(s0)
    800023bc:	02e43023          	sd	a4,32(s0)
    800023c0:	02f43423          	sd	a5,40(s0)
    800023c4:	03043823          	sd	a6,48(s0)
    800023c8:	03143c23          	sd	a7,56(s0)
    800023cc:	00050993          	mv	s3,a0
    800023d0:	4a0c1663          	bnez	s8,8000287c <__printf+0x514>
    800023d4:	60098c63          	beqz	s3,800029ec <__printf+0x684>
    800023d8:	0009c503          	lbu	a0,0(s3)
    800023dc:	00840793          	addi	a5,s0,8
    800023e0:	f6f43c23          	sd	a5,-136(s0)
    800023e4:	00000493          	li	s1,0
    800023e8:	22050063          	beqz	a0,80002608 <__printf+0x2a0>
    800023ec:	00002a37          	lui	s4,0x2
    800023f0:	00018ab7          	lui	s5,0x18
    800023f4:	000f4b37          	lui	s6,0xf4
    800023f8:	00989bb7          	lui	s7,0x989
    800023fc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002400:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002404:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002408:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000240c:	00148c9b          	addiw	s9,s1,1
    80002410:	02500793          	li	a5,37
    80002414:	01998933          	add	s2,s3,s9
    80002418:	38f51263          	bne	a0,a5,8000279c <__printf+0x434>
    8000241c:	00094783          	lbu	a5,0(s2)
    80002420:	00078c9b          	sext.w	s9,a5
    80002424:	1e078263          	beqz	a5,80002608 <__printf+0x2a0>
    80002428:	0024849b          	addiw	s1,s1,2
    8000242c:	07000713          	li	a4,112
    80002430:	00998933          	add	s2,s3,s1
    80002434:	38e78a63          	beq	a5,a4,800027c8 <__printf+0x460>
    80002438:	20f76863          	bltu	a4,a5,80002648 <__printf+0x2e0>
    8000243c:	42a78863          	beq	a5,a0,8000286c <__printf+0x504>
    80002440:	06400713          	li	a4,100
    80002444:	40e79663          	bne	a5,a4,80002850 <__printf+0x4e8>
    80002448:	f7843783          	ld	a5,-136(s0)
    8000244c:	0007a603          	lw	a2,0(a5)
    80002450:	00878793          	addi	a5,a5,8
    80002454:	f6f43c23          	sd	a5,-136(s0)
    80002458:	42064a63          	bltz	a2,8000288c <__printf+0x524>
    8000245c:	00a00713          	li	a4,10
    80002460:	02e677bb          	remuw	a5,a2,a4
    80002464:	00002d97          	auipc	s11,0x2
    80002468:	d14d8d93          	addi	s11,s11,-748 # 80004178 <digits>
    8000246c:	00900593          	li	a1,9
    80002470:	0006051b          	sext.w	a0,a2
    80002474:	00000c93          	li	s9,0
    80002478:	02079793          	slli	a5,a5,0x20
    8000247c:	0207d793          	srli	a5,a5,0x20
    80002480:	00fd87b3          	add	a5,s11,a5
    80002484:	0007c783          	lbu	a5,0(a5)
    80002488:	02e656bb          	divuw	a3,a2,a4
    8000248c:	f8f40023          	sb	a5,-128(s0)
    80002490:	14c5d863          	bge	a1,a2,800025e0 <__printf+0x278>
    80002494:	06300593          	li	a1,99
    80002498:	00100c93          	li	s9,1
    8000249c:	02e6f7bb          	remuw	a5,a3,a4
    800024a0:	02079793          	slli	a5,a5,0x20
    800024a4:	0207d793          	srli	a5,a5,0x20
    800024a8:	00fd87b3          	add	a5,s11,a5
    800024ac:	0007c783          	lbu	a5,0(a5)
    800024b0:	02e6d73b          	divuw	a4,a3,a4
    800024b4:	f8f400a3          	sb	a5,-127(s0)
    800024b8:	12a5f463          	bgeu	a1,a0,800025e0 <__printf+0x278>
    800024bc:	00a00693          	li	a3,10
    800024c0:	00900593          	li	a1,9
    800024c4:	02d777bb          	remuw	a5,a4,a3
    800024c8:	02079793          	slli	a5,a5,0x20
    800024cc:	0207d793          	srli	a5,a5,0x20
    800024d0:	00fd87b3          	add	a5,s11,a5
    800024d4:	0007c503          	lbu	a0,0(a5)
    800024d8:	02d757bb          	divuw	a5,a4,a3
    800024dc:	f8a40123          	sb	a0,-126(s0)
    800024e0:	48e5f263          	bgeu	a1,a4,80002964 <__printf+0x5fc>
    800024e4:	06300513          	li	a0,99
    800024e8:	02d7f5bb          	remuw	a1,a5,a3
    800024ec:	02059593          	slli	a1,a1,0x20
    800024f0:	0205d593          	srli	a1,a1,0x20
    800024f4:	00bd85b3          	add	a1,s11,a1
    800024f8:	0005c583          	lbu	a1,0(a1)
    800024fc:	02d7d7bb          	divuw	a5,a5,a3
    80002500:	f8b401a3          	sb	a1,-125(s0)
    80002504:	48e57263          	bgeu	a0,a4,80002988 <__printf+0x620>
    80002508:	3e700513          	li	a0,999
    8000250c:	02d7f5bb          	remuw	a1,a5,a3
    80002510:	02059593          	slli	a1,a1,0x20
    80002514:	0205d593          	srli	a1,a1,0x20
    80002518:	00bd85b3          	add	a1,s11,a1
    8000251c:	0005c583          	lbu	a1,0(a1)
    80002520:	02d7d7bb          	divuw	a5,a5,a3
    80002524:	f8b40223          	sb	a1,-124(s0)
    80002528:	46e57663          	bgeu	a0,a4,80002994 <__printf+0x62c>
    8000252c:	02d7f5bb          	remuw	a1,a5,a3
    80002530:	02059593          	slli	a1,a1,0x20
    80002534:	0205d593          	srli	a1,a1,0x20
    80002538:	00bd85b3          	add	a1,s11,a1
    8000253c:	0005c583          	lbu	a1,0(a1)
    80002540:	02d7d7bb          	divuw	a5,a5,a3
    80002544:	f8b402a3          	sb	a1,-123(s0)
    80002548:	46ea7863          	bgeu	s4,a4,800029b8 <__printf+0x650>
    8000254c:	02d7f5bb          	remuw	a1,a5,a3
    80002550:	02059593          	slli	a1,a1,0x20
    80002554:	0205d593          	srli	a1,a1,0x20
    80002558:	00bd85b3          	add	a1,s11,a1
    8000255c:	0005c583          	lbu	a1,0(a1)
    80002560:	02d7d7bb          	divuw	a5,a5,a3
    80002564:	f8b40323          	sb	a1,-122(s0)
    80002568:	3eeaf863          	bgeu	s5,a4,80002958 <__printf+0x5f0>
    8000256c:	02d7f5bb          	remuw	a1,a5,a3
    80002570:	02059593          	slli	a1,a1,0x20
    80002574:	0205d593          	srli	a1,a1,0x20
    80002578:	00bd85b3          	add	a1,s11,a1
    8000257c:	0005c583          	lbu	a1,0(a1)
    80002580:	02d7d7bb          	divuw	a5,a5,a3
    80002584:	f8b403a3          	sb	a1,-121(s0)
    80002588:	42eb7e63          	bgeu	s6,a4,800029c4 <__printf+0x65c>
    8000258c:	02d7f5bb          	remuw	a1,a5,a3
    80002590:	02059593          	slli	a1,a1,0x20
    80002594:	0205d593          	srli	a1,a1,0x20
    80002598:	00bd85b3          	add	a1,s11,a1
    8000259c:	0005c583          	lbu	a1,0(a1)
    800025a0:	02d7d7bb          	divuw	a5,a5,a3
    800025a4:	f8b40423          	sb	a1,-120(s0)
    800025a8:	42ebfc63          	bgeu	s7,a4,800029e0 <__printf+0x678>
    800025ac:	02079793          	slli	a5,a5,0x20
    800025b0:	0207d793          	srli	a5,a5,0x20
    800025b4:	00fd8db3          	add	s11,s11,a5
    800025b8:	000dc703          	lbu	a4,0(s11)
    800025bc:	00a00793          	li	a5,10
    800025c0:	00900c93          	li	s9,9
    800025c4:	f8e404a3          	sb	a4,-119(s0)
    800025c8:	00065c63          	bgez	a2,800025e0 <__printf+0x278>
    800025cc:	f9040713          	addi	a4,s0,-112
    800025d0:	00f70733          	add	a4,a4,a5
    800025d4:	02d00693          	li	a3,45
    800025d8:	fed70823          	sb	a3,-16(a4)
    800025dc:	00078c93          	mv	s9,a5
    800025e0:	f8040793          	addi	a5,s0,-128
    800025e4:	01978cb3          	add	s9,a5,s9
    800025e8:	f7f40d13          	addi	s10,s0,-129
    800025ec:	000cc503          	lbu	a0,0(s9)
    800025f0:	fffc8c93          	addi	s9,s9,-1
    800025f4:	00000097          	auipc	ra,0x0
    800025f8:	b90080e7          	jalr	-1136(ra) # 80002184 <consputc>
    800025fc:	ffac98e3          	bne	s9,s10,800025ec <__printf+0x284>
    80002600:	00094503          	lbu	a0,0(s2)
    80002604:	e00514e3          	bnez	a0,8000240c <__printf+0xa4>
    80002608:	1a0c1663          	bnez	s8,800027b4 <__printf+0x44c>
    8000260c:	08813083          	ld	ra,136(sp)
    80002610:	08013403          	ld	s0,128(sp)
    80002614:	07813483          	ld	s1,120(sp)
    80002618:	07013903          	ld	s2,112(sp)
    8000261c:	06813983          	ld	s3,104(sp)
    80002620:	06013a03          	ld	s4,96(sp)
    80002624:	05813a83          	ld	s5,88(sp)
    80002628:	05013b03          	ld	s6,80(sp)
    8000262c:	04813b83          	ld	s7,72(sp)
    80002630:	04013c03          	ld	s8,64(sp)
    80002634:	03813c83          	ld	s9,56(sp)
    80002638:	03013d03          	ld	s10,48(sp)
    8000263c:	02813d83          	ld	s11,40(sp)
    80002640:	0d010113          	addi	sp,sp,208
    80002644:	00008067          	ret
    80002648:	07300713          	li	a4,115
    8000264c:	1ce78a63          	beq	a5,a4,80002820 <__printf+0x4b8>
    80002650:	07800713          	li	a4,120
    80002654:	1ee79e63          	bne	a5,a4,80002850 <__printf+0x4e8>
    80002658:	f7843783          	ld	a5,-136(s0)
    8000265c:	0007a703          	lw	a4,0(a5)
    80002660:	00878793          	addi	a5,a5,8
    80002664:	f6f43c23          	sd	a5,-136(s0)
    80002668:	28074263          	bltz	a4,800028ec <__printf+0x584>
    8000266c:	00002d97          	auipc	s11,0x2
    80002670:	b0cd8d93          	addi	s11,s11,-1268 # 80004178 <digits>
    80002674:	00f77793          	andi	a5,a4,15
    80002678:	00fd87b3          	add	a5,s11,a5
    8000267c:	0007c683          	lbu	a3,0(a5)
    80002680:	00f00613          	li	a2,15
    80002684:	0007079b          	sext.w	a5,a4
    80002688:	f8d40023          	sb	a3,-128(s0)
    8000268c:	0047559b          	srliw	a1,a4,0x4
    80002690:	0047569b          	srliw	a3,a4,0x4
    80002694:	00000c93          	li	s9,0
    80002698:	0ee65063          	bge	a2,a4,80002778 <__printf+0x410>
    8000269c:	00f6f693          	andi	a3,a3,15
    800026a0:	00dd86b3          	add	a3,s11,a3
    800026a4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800026a8:	0087d79b          	srliw	a5,a5,0x8
    800026ac:	00100c93          	li	s9,1
    800026b0:	f8d400a3          	sb	a3,-127(s0)
    800026b4:	0cb67263          	bgeu	a2,a1,80002778 <__printf+0x410>
    800026b8:	00f7f693          	andi	a3,a5,15
    800026bc:	00dd86b3          	add	a3,s11,a3
    800026c0:	0006c583          	lbu	a1,0(a3)
    800026c4:	00f00613          	li	a2,15
    800026c8:	0047d69b          	srliw	a3,a5,0x4
    800026cc:	f8b40123          	sb	a1,-126(s0)
    800026d0:	0047d593          	srli	a1,a5,0x4
    800026d4:	28f67e63          	bgeu	a2,a5,80002970 <__printf+0x608>
    800026d8:	00f6f693          	andi	a3,a3,15
    800026dc:	00dd86b3          	add	a3,s11,a3
    800026e0:	0006c503          	lbu	a0,0(a3)
    800026e4:	0087d813          	srli	a6,a5,0x8
    800026e8:	0087d69b          	srliw	a3,a5,0x8
    800026ec:	f8a401a3          	sb	a0,-125(s0)
    800026f0:	28b67663          	bgeu	a2,a1,8000297c <__printf+0x614>
    800026f4:	00f6f693          	andi	a3,a3,15
    800026f8:	00dd86b3          	add	a3,s11,a3
    800026fc:	0006c583          	lbu	a1,0(a3)
    80002700:	00c7d513          	srli	a0,a5,0xc
    80002704:	00c7d69b          	srliw	a3,a5,0xc
    80002708:	f8b40223          	sb	a1,-124(s0)
    8000270c:	29067a63          	bgeu	a2,a6,800029a0 <__printf+0x638>
    80002710:	00f6f693          	andi	a3,a3,15
    80002714:	00dd86b3          	add	a3,s11,a3
    80002718:	0006c583          	lbu	a1,0(a3)
    8000271c:	0107d813          	srli	a6,a5,0x10
    80002720:	0107d69b          	srliw	a3,a5,0x10
    80002724:	f8b402a3          	sb	a1,-123(s0)
    80002728:	28a67263          	bgeu	a2,a0,800029ac <__printf+0x644>
    8000272c:	00f6f693          	andi	a3,a3,15
    80002730:	00dd86b3          	add	a3,s11,a3
    80002734:	0006c683          	lbu	a3,0(a3)
    80002738:	0147d79b          	srliw	a5,a5,0x14
    8000273c:	f8d40323          	sb	a3,-122(s0)
    80002740:	21067663          	bgeu	a2,a6,8000294c <__printf+0x5e4>
    80002744:	02079793          	slli	a5,a5,0x20
    80002748:	0207d793          	srli	a5,a5,0x20
    8000274c:	00fd8db3          	add	s11,s11,a5
    80002750:	000dc683          	lbu	a3,0(s11)
    80002754:	00800793          	li	a5,8
    80002758:	00700c93          	li	s9,7
    8000275c:	f8d403a3          	sb	a3,-121(s0)
    80002760:	00075c63          	bgez	a4,80002778 <__printf+0x410>
    80002764:	f9040713          	addi	a4,s0,-112
    80002768:	00f70733          	add	a4,a4,a5
    8000276c:	02d00693          	li	a3,45
    80002770:	fed70823          	sb	a3,-16(a4)
    80002774:	00078c93          	mv	s9,a5
    80002778:	f8040793          	addi	a5,s0,-128
    8000277c:	01978cb3          	add	s9,a5,s9
    80002780:	f7f40d13          	addi	s10,s0,-129
    80002784:	000cc503          	lbu	a0,0(s9)
    80002788:	fffc8c93          	addi	s9,s9,-1
    8000278c:	00000097          	auipc	ra,0x0
    80002790:	9f8080e7          	jalr	-1544(ra) # 80002184 <consputc>
    80002794:	ff9d18e3          	bne	s10,s9,80002784 <__printf+0x41c>
    80002798:	0100006f          	j	800027a8 <__printf+0x440>
    8000279c:	00000097          	auipc	ra,0x0
    800027a0:	9e8080e7          	jalr	-1560(ra) # 80002184 <consputc>
    800027a4:	000c8493          	mv	s1,s9
    800027a8:	00094503          	lbu	a0,0(s2)
    800027ac:	c60510e3          	bnez	a0,8000240c <__printf+0xa4>
    800027b0:	e40c0ee3          	beqz	s8,8000260c <__printf+0x2a4>
    800027b4:	00003517          	auipc	a0,0x3
    800027b8:	efc50513          	addi	a0,a0,-260 # 800056b0 <pr>
    800027bc:	00001097          	auipc	ra,0x1
    800027c0:	94c080e7          	jalr	-1716(ra) # 80003108 <release>
    800027c4:	e49ff06f          	j	8000260c <__printf+0x2a4>
    800027c8:	f7843783          	ld	a5,-136(s0)
    800027cc:	03000513          	li	a0,48
    800027d0:	01000d13          	li	s10,16
    800027d4:	00878713          	addi	a4,a5,8
    800027d8:	0007bc83          	ld	s9,0(a5)
    800027dc:	f6e43c23          	sd	a4,-136(s0)
    800027e0:	00000097          	auipc	ra,0x0
    800027e4:	9a4080e7          	jalr	-1628(ra) # 80002184 <consputc>
    800027e8:	07800513          	li	a0,120
    800027ec:	00000097          	auipc	ra,0x0
    800027f0:	998080e7          	jalr	-1640(ra) # 80002184 <consputc>
    800027f4:	00002d97          	auipc	s11,0x2
    800027f8:	984d8d93          	addi	s11,s11,-1660 # 80004178 <digits>
    800027fc:	03ccd793          	srli	a5,s9,0x3c
    80002800:	00fd87b3          	add	a5,s11,a5
    80002804:	0007c503          	lbu	a0,0(a5)
    80002808:	fffd0d1b          	addiw	s10,s10,-1
    8000280c:	004c9c93          	slli	s9,s9,0x4
    80002810:	00000097          	auipc	ra,0x0
    80002814:	974080e7          	jalr	-1676(ra) # 80002184 <consputc>
    80002818:	fe0d12e3          	bnez	s10,800027fc <__printf+0x494>
    8000281c:	f8dff06f          	j	800027a8 <__printf+0x440>
    80002820:	f7843783          	ld	a5,-136(s0)
    80002824:	0007bc83          	ld	s9,0(a5)
    80002828:	00878793          	addi	a5,a5,8
    8000282c:	f6f43c23          	sd	a5,-136(s0)
    80002830:	000c9a63          	bnez	s9,80002844 <__printf+0x4dc>
    80002834:	1080006f          	j	8000293c <__printf+0x5d4>
    80002838:	001c8c93          	addi	s9,s9,1
    8000283c:	00000097          	auipc	ra,0x0
    80002840:	948080e7          	jalr	-1720(ra) # 80002184 <consputc>
    80002844:	000cc503          	lbu	a0,0(s9)
    80002848:	fe0518e3          	bnez	a0,80002838 <__printf+0x4d0>
    8000284c:	f5dff06f          	j	800027a8 <__printf+0x440>
    80002850:	02500513          	li	a0,37
    80002854:	00000097          	auipc	ra,0x0
    80002858:	930080e7          	jalr	-1744(ra) # 80002184 <consputc>
    8000285c:	000c8513          	mv	a0,s9
    80002860:	00000097          	auipc	ra,0x0
    80002864:	924080e7          	jalr	-1756(ra) # 80002184 <consputc>
    80002868:	f41ff06f          	j	800027a8 <__printf+0x440>
    8000286c:	02500513          	li	a0,37
    80002870:	00000097          	auipc	ra,0x0
    80002874:	914080e7          	jalr	-1772(ra) # 80002184 <consputc>
    80002878:	f31ff06f          	j	800027a8 <__printf+0x440>
    8000287c:	00030513          	mv	a0,t1
    80002880:	00000097          	auipc	ra,0x0
    80002884:	7bc080e7          	jalr	1980(ra) # 8000303c <acquire>
    80002888:	b4dff06f          	j	800023d4 <__printf+0x6c>
    8000288c:	40c0053b          	negw	a0,a2
    80002890:	00a00713          	li	a4,10
    80002894:	02e576bb          	remuw	a3,a0,a4
    80002898:	00002d97          	auipc	s11,0x2
    8000289c:	8e0d8d93          	addi	s11,s11,-1824 # 80004178 <digits>
    800028a0:	ff700593          	li	a1,-9
    800028a4:	02069693          	slli	a3,a3,0x20
    800028a8:	0206d693          	srli	a3,a3,0x20
    800028ac:	00dd86b3          	add	a3,s11,a3
    800028b0:	0006c683          	lbu	a3,0(a3)
    800028b4:	02e557bb          	divuw	a5,a0,a4
    800028b8:	f8d40023          	sb	a3,-128(s0)
    800028bc:	10b65e63          	bge	a2,a1,800029d8 <__printf+0x670>
    800028c0:	06300593          	li	a1,99
    800028c4:	02e7f6bb          	remuw	a3,a5,a4
    800028c8:	02069693          	slli	a3,a3,0x20
    800028cc:	0206d693          	srli	a3,a3,0x20
    800028d0:	00dd86b3          	add	a3,s11,a3
    800028d4:	0006c683          	lbu	a3,0(a3)
    800028d8:	02e7d73b          	divuw	a4,a5,a4
    800028dc:	00200793          	li	a5,2
    800028e0:	f8d400a3          	sb	a3,-127(s0)
    800028e4:	bca5ece3          	bltu	a1,a0,800024bc <__printf+0x154>
    800028e8:	ce5ff06f          	j	800025cc <__printf+0x264>
    800028ec:	40e007bb          	negw	a5,a4
    800028f0:	00002d97          	auipc	s11,0x2
    800028f4:	888d8d93          	addi	s11,s11,-1912 # 80004178 <digits>
    800028f8:	00f7f693          	andi	a3,a5,15
    800028fc:	00dd86b3          	add	a3,s11,a3
    80002900:	0006c583          	lbu	a1,0(a3)
    80002904:	ff100613          	li	a2,-15
    80002908:	0047d69b          	srliw	a3,a5,0x4
    8000290c:	f8b40023          	sb	a1,-128(s0)
    80002910:	0047d59b          	srliw	a1,a5,0x4
    80002914:	0ac75e63          	bge	a4,a2,800029d0 <__printf+0x668>
    80002918:	00f6f693          	andi	a3,a3,15
    8000291c:	00dd86b3          	add	a3,s11,a3
    80002920:	0006c603          	lbu	a2,0(a3)
    80002924:	00f00693          	li	a3,15
    80002928:	0087d79b          	srliw	a5,a5,0x8
    8000292c:	f8c400a3          	sb	a2,-127(s0)
    80002930:	d8b6e4e3          	bltu	a3,a1,800026b8 <__printf+0x350>
    80002934:	00200793          	li	a5,2
    80002938:	e2dff06f          	j	80002764 <__printf+0x3fc>
    8000293c:	00002c97          	auipc	s9,0x2
    80002940:	81cc8c93          	addi	s9,s9,-2020 # 80004158 <CONSOLE_STATUS+0x148>
    80002944:	02800513          	li	a0,40
    80002948:	ef1ff06f          	j	80002838 <__printf+0x4d0>
    8000294c:	00700793          	li	a5,7
    80002950:	00600c93          	li	s9,6
    80002954:	e0dff06f          	j	80002760 <__printf+0x3f8>
    80002958:	00700793          	li	a5,7
    8000295c:	00600c93          	li	s9,6
    80002960:	c69ff06f          	j	800025c8 <__printf+0x260>
    80002964:	00300793          	li	a5,3
    80002968:	00200c93          	li	s9,2
    8000296c:	c5dff06f          	j	800025c8 <__printf+0x260>
    80002970:	00300793          	li	a5,3
    80002974:	00200c93          	li	s9,2
    80002978:	de9ff06f          	j	80002760 <__printf+0x3f8>
    8000297c:	00400793          	li	a5,4
    80002980:	00300c93          	li	s9,3
    80002984:	dddff06f          	j	80002760 <__printf+0x3f8>
    80002988:	00400793          	li	a5,4
    8000298c:	00300c93          	li	s9,3
    80002990:	c39ff06f          	j	800025c8 <__printf+0x260>
    80002994:	00500793          	li	a5,5
    80002998:	00400c93          	li	s9,4
    8000299c:	c2dff06f          	j	800025c8 <__printf+0x260>
    800029a0:	00500793          	li	a5,5
    800029a4:	00400c93          	li	s9,4
    800029a8:	db9ff06f          	j	80002760 <__printf+0x3f8>
    800029ac:	00600793          	li	a5,6
    800029b0:	00500c93          	li	s9,5
    800029b4:	dadff06f          	j	80002760 <__printf+0x3f8>
    800029b8:	00600793          	li	a5,6
    800029bc:	00500c93          	li	s9,5
    800029c0:	c09ff06f          	j	800025c8 <__printf+0x260>
    800029c4:	00800793          	li	a5,8
    800029c8:	00700c93          	li	s9,7
    800029cc:	bfdff06f          	j	800025c8 <__printf+0x260>
    800029d0:	00100793          	li	a5,1
    800029d4:	d91ff06f          	j	80002764 <__printf+0x3fc>
    800029d8:	00100793          	li	a5,1
    800029dc:	bf1ff06f          	j	800025cc <__printf+0x264>
    800029e0:	00900793          	li	a5,9
    800029e4:	00800c93          	li	s9,8
    800029e8:	be1ff06f          	j	800025c8 <__printf+0x260>
    800029ec:	00001517          	auipc	a0,0x1
    800029f0:	77450513          	addi	a0,a0,1908 # 80004160 <CONSOLE_STATUS+0x150>
    800029f4:	00000097          	auipc	ra,0x0
    800029f8:	918080e7          	jalr	-1768(ra) # 8000230c <panic>

00000000800029fc <printfinit>:
    800029fc:	fe010113          	addi	sp,sp,-32
    80002a00:	00813823          	sd	s0,16(sp)
    80002a04:	00913423          	sd	s1,8(sp)
    80002a08:	00113c23          	sd	ra,24(sp)
    80002a0c:	02010413          	addi	s0,sp,32
    80002a10:	00003497          	auipc	s1,0x3
    80002a14:	ca048493          	addi	s1,s1,-864 # 800056b0 <pr>
    80002a18:	00048513          	mv	a0,s1
    80002a1c:	00001597          	auipc	a1,0x1
    80002a20:	75458593          	addi	a1,a1,1876 # 80004170 <CONSOLE_STATUS+0x160>
    80002a24:	00000097          	auipc	ra,0x0
    80002a28:	5f4080e7          	jalr	1524(ra) # 80003018 <initlock>
    80002a2c:	01813083          	ld	ra,24(sp)
    80002a30:	01013403          	ld	s0,16(sp)
    80002a34:	0004ac23          	sw	zero,24(s1)
    80002a38:	00813483          	ld	s1,8(sp)
    80002a3c:	02010113          	addi	sp,sp,32
    80002a40:	00008067          	ret

0000000080002a44 <uartinit>:
    80002a44:	ff010113          	addi	sp,sp,-16
    80002a48:	00813423          	sd	s0,8(sp)
    80002a4c:	01010413          	addi	s0,sp,16
    80002a50:	100007b7          	lui	a5,0x10000
    80002a54:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002a58:	f8000713          	li	a4,-128
    80002a5c:	00e781a3          	sb	a4,3(a5)
    80002a60:	00300713          	li	a4,3
    80002a64:	00e78023          	sb	a4,0(a5)
    80002a68:	000780a3          	sb	zero,1(a5)
    80002a6c:	00e781a3          	sb	a4,3(a5)
    80002a70:	00700693          	li	a3,7
    80002a74:	00d78123          	sb	a3,2(a5)
    80002a78:	00e780a3          	sb	a4,1(a5)
    80002a7c:	00813403          	ld	s0,8(sp)
    80002a80:	01010113          	addi	sp,sp,16
    80002a84:	00008067          	ret

0000000080002a88 <uartputc>:
    80002a88:	00002797          	auipc	a5,0x2
    80002a8c:	9e07a783          	lw	a5,-1568(a5) # 80004468 <panicked>
    80002a90:	00078463          	beqz	a5,80002a98 <uartputc+0x10>
    80002a94:	0000006f          	j	80002a94 <uartputc+0xc>
    80002a98:	fd010113          	addi	sp,sp,-48
    80002a9c:	02813023          	sd	s0,32(sp)
    80002aa0:	00913c23          	sd	s1,24(sp)
    80002aa4:	01213823          	sd	s2,16(sp)
    80002aa8:	01313423          	sd	s3,8(sp)
    80002aac:	02113423          	sd	ra,40(sp)
    80002ab0:	03010413          	addi	s0,sp,48
    80002ab4:	00002917          	auipc	s2,0x2
    80002ab8:	9bc90913          	addi	s2,s2,-1604 # 80004470 <uart_tx_r>
    80002abc:	00093783          	ld	a5,0(s2)
    80002ac0:	00002497          	auipc	s1,0x2
    80002ac4:	9b848493          	addi	s1,s1,-1608 # 80004478 <uart_tx_w>
    80002ac8:	0004b703          	ld	a4,0(s1)
    80002acc:	02078693          	addi	a3,a5,32
    80002ad0:	00050993          	mv	s3,a0
    80002ad4:	02e69c63          	bne	a3,a4,80002b0c <uartputc+0x84>
    80002ad8:	00001097          	auipc	ra,0x1
    80002adc:	834080e7          	jalr	-1996(ra) # 8000330c <push_on>
    80002ae0:	00093783          	ld	a5,0(s2)
    80002ae4:	0004b703          	ld	a4,0(s1)
    80002ae8:	02078793          	addi	a5,a5,32
    80002aec:	00e79463          	bne	a5,a4,80002af4 <uartputc+0x6c>
    80002af0:	0000006f          	j	80002af0 <uartputc+0x68>
    80002af4:	00001097          	auipc	ra,0x1
    80002af8:	88c080e7          	jalr	-1908(ra) # 80003380 <pop_on>
    80002afc:	00093783          	ld	a5,0(s2)
    80002b00:	0004b703          	ld	a4,0(s1)
    80002b04:	02078693          	addi	a3,a5,32
    80002b08:	fce688e3          	beq	a3,a4,80002ad8 <uartputc+0x50>
    80002b0c:	01f77693          	andi	a3,a4,31
    80002b10:	00003597          	auipc	a1,0x3
    80002b14:	bc058593          	addi	a1,a1,-1088 # 800056d0 <uart_tx_buf>
    80002b18:	00d586b3          	add	a3,a1,a3
    80002b1c:	00170713          	addi	a4,a4,1
    80002b20:	01368023          	sb	s3,0(a3)
    80002b24:	00e4b023          	sd	a4,0(s1)
    80002b28:	10000637          	lui	a2,0x10000
    80002b2c:	02f71063          	bne	a4,a5,80002b4c <uartputc+0xc4>
    80002b30:	0340006f          	j	80002b64 <uartputc+0xdc>
    80002b34:	00074703          	lbu	a4,0(a4)
    80002b38:	00f93023          	sd	a5,0(s2)
    80002b3c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002b40:	00093783          	ld	a5,0(s2)
    80002b44:	0004b703          	ld	a4,0(s1)
    80002b48:	00f70e63          	beq	a4,a5,80002b64 <uartputc+0xdc>
    80002b4c:	00564683          	lbu	a3,5(a2)
    80002b50:	01f7f713          	andi	a4,a5,31
    80002b54:	00e58733          	add	a4,a1,a4
    80002b58:	0206f693          	andi	a3,a3,32
    80002b5c:	00178793          	addi	a5,a5,1
    80002b60:	fc069ae3          	bnez	a3,80002b34 <uartputc+0xac>
    80002b64:	02813083          	ld	ra,40(sp)
    80002b68:	02013403          	ld	s0,32(sp)
    80002b6c:	01813483          	ld	s1,24(sp)
    80002b70:	01013903          	ld	s2,16(sp)
    80002b74:	00813983          	ld	s3,8(sp)
    80002b78:	03010113          	addi	sp,sp,48
    80002b7c:	00008067          	ret

0000000080002b80 <uartputc_sync>:
    80002b80:	ff010113          	addi	sp,sp,-16
    80002b84:	00813423          	sd	s0,8(sp)
    80002b88:	01010413          	addi	s0,sp,16
    80002b8c:	00002717          	auipc	a4,0x2
    80002b90:	8dc72703          	lw	a4,-1828(a4) # 80004468 <panicked>
    80002b94:	02071663          	bnez	a4,80002bc0 <uartputc_sync+0x40>
    80002b98:	00050793          	mv	a5,a0
    80002b9c:	100006b7          	lui	a3,0x10000
    80002ba0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80002ba4:	02077713          	andi	a4,a4,32
    80002ba8:	fe070ce3          	beqz	a4,80002ba0 <uartputc_sync+0x20>
    80002bac:	0ff7f793          	andi	a5,a5,255
    80002bb0:	00f68023          	sb	a5,0(a3)
    80002bb4:	00813403          	ld	s0,8(sp)
    80002bb8:	01010113          	addi	sp,sp,16
    80002bbc:	00008067          	ret
    80002bc0:	0000006f          	j	80002bc0 <uartputc_sync+0x40>

0000000080002bc4 <uartstart>:
    80002bc4:	ff010113          	addi	sp,sp,-16
    80002bc8:	00813423          	sd	s0,8(sp)
    80002bcc:	01010413          	addi	s0,sp,16
    80002bd0:	00002617          	auipc	a2,0x2
    80002bd4:	8a060613          	addi	a2,a2,-1888 # 80004470 <uart_tx_r>
    80002bd8:	00002517          	auipc	a0,0x2
    80002bdc:	8a050513          	addi	a0,a0,-1888 # 80004478 <uart_tx_w>
    80002be0:	00063783          	ld	a5,0(a2)
    80002be4:	00053703          	ld	a4,0(a0)
    80002be8:	04f70263          	beq	a4,a5,80002c2c <uartstart+0x68>
    80002bec:	100005b7          	lui	a1,0x10000
    80002bf0:	00003817          	auipc	a6,0x3
    80002bf4:	ae080813          	addi	a6,a6,-1312 # 800056d0 <uart_tx_buf>
    80002bf8:	01c0006f          	j	80002c14 <uartstart+0x50>
    80002bfc:	0006c703          	lbu	a4,0(a3)
    80002c00:	00f63023          	sd	a5,0(a2)
    80002c04:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002c08:	00063783          	ld	a5,0(a2)
    80002c0c:	00053703          	ld	a4,0(a0)
    80002c10:	00f70e63          	beq	a4,a5,80002c2c <uartstart+0x68>
    80002c14:	01f7f713          	andi	a4,a5,31
    80002c18:	00e806b3          	add	a3,a6,a4
    80002c1c:	0055c703          	lbu	a4,5(a1)
    80002c20:	00178793          	addi	a5,a5,1
    80002c24:	02077713          	andi	a4,a4,32
    80002c28:	fc071ae3          	bnez	a4,80002bfc <uartstart+0x38>
    80002c2c:	00813403          	ld	s0,8(sp)
    80002c30:	01010113          	addi	sp,sp,16
    80002c34:	00008067          	ret

0000000080002c38 <uartgetc>:
    80002c38:	ff010113          	addi	sp,sp,-16
    80002c3c:	00813423          	sd	s0,8(sp)
    80002c40:	01010413          	addi	s0,sp,16
    80002c44:	10000737          	lui	a4,0x10000
    80002c48:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80002c4c:	0017f793          	andi	a5,a5,1
    80002c50:	00078c63          	beqz	a5,80002c68 <uartgetc+0x30>
    80002c54:	00074503          	lbu	a0,0(a4)
    80002c58:	0ff57513          	andi	a0,a0,255
    80002c5c:	00813403          	ld	s0,8(sp)
    80002c60:	01010113          	addi	sp,sp,16
    80002c64:	00008067          	ret
    80002c68:	fff00513          	li	a0,-1
    80002c6c:	ff1ff06f          	j	80002c5c <uartgetc+0x24>

0000000080002c70 <uartintr>:
    80002c70:	100007b7          	lui	a5,0x10000
    80002c74:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80002c78:	0017f793          	andi	a5,a5,1
    80002c7c:	0a078463          	beqz	a5,80002d24 <uartintr+0xb4>
    80002c80:	fe010113          	addi	sp,sp,-32
    80002c84:	00813823          	sd	s0,16(sp)
    80002c88:	00913423          	sd	s1,8(sp)
    80002c8c:	00113c23          	sd	ra,24(sp)
    80002c90:	02010413          	addi	s0,sp,32
    80002c94:	100004b7          	lui	s1,0x10000
    80002c98:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80002c9c:	0ff57513          	andi	a0,a0,255
    80002ca0:	fffff097          	auipc	ra,0xfffff
    80002ca4:	534080e7          	jalr	1332(ra) # 800021d4 <consoleintr>
    80002ca8:	0054c783          	lbu	a5,5(s1)
    80002cac:	0017f793          	andi	a5,a5,1
    80002cb0:	fe0794e3          	bnez	a5,80002c98 <uartintr+0x28>
    80002cb4:	00001617          	auipc	a2,0x1
    80002cb8:	7bc60613          	addi	a2,a2,1980 # 80004470 <uart_tx_r>
    80002cbc:	00001517          	auipc	a0,0x1
    80002cc0:	7bc50513          	addi	a0,a0,1980 # 80004478 <uart_tx_w>
    80002cc4:	00063783          	ld	a5,0(a2)
    80002cc8:	00053703          	ld	a4,0(a0)
    80002ccc:	04f70263          	beq	a4,a5,80002d10 <uartintr+0xa0>
    80002cd0:	100005b7          	lui	a1,0x10000
    80002cd4:	00003817          	auipc	a6,0x3
    80002cd8:	9fc80813          	addi	a6,a6,-1540 # 800056d0 <uart_tx_buf>
    80002cdc:	01c0006f          	j	80002cf8 <uartintr+0x88>
    80002ce0:	0006c703          	lbu	a4,0(a3)
    80002ce4:	00f63023          	sd	a5,0(a2)
    80002ce8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002cec:	00063783          	ld	a5,0(a2)
    80002cf0:	00053703          	ld	a4,0(a0)
    80002cf4:	00f70e63          	beq	a4,a5,80002d10 <uartintr+0xa0>
    80002cf8:	01f7f713          	andi	a4,a5,31
    80002cfc:	00e806b3          	add	a3,a6,a4
    80002d00:	0055c703          	lbu	a4,5(a1)
    80002d04:	00178793          	addi	a5,a5,1
    80002d08:	02077713          	andi	a4,a4,32
    80002d0c:	fc071ae3          	bnez	a4,80002ce0 <uartintr+0x70>
    80002d10:	01813083          	ld	ra,24(sp)
    80002d14:	01013403          	ld	s0,16(sp)
    80002d18:	00813483          	ld	s1,8(sp)
    80002d1c:	02010113          	addi	sp,sp,32
    80002d20:	00008067          	ret
    80002d24:	00001617          	auipc	a2,0x1
    80002d28:	74c60613          	addi	a2,a2,1868 # 80004470 <uart_tx_r>
    80002d2c:	00001517          	auipc	a0,0x1
    80002d30:	74c50513          	addi	a0,a0,1868 # 80004478 <uart_tx_w>
    80002d34:	00063783          	ld	a5,0(a2)
    80002d38:	00053703          	ld	a4,0(a0)
    80002d3c:	04f70263          	beq	a4,a5,80002d80 <uartintr+0x110>
    80002d40:	100005b7          	lui	a1,0x10000
    80002d44:	00003817          	auipc	a6,0x3
    80002d48:	98c80813          	addi	a6,a6,-1652 # 800056d0 <uart_tx_buf>
    80002d4c:	01c0006f          	j	80002d68 <uartintr+0xf8>
    80002d50:	0006c703          	lbu	a4,0(a3)
    80002d54:	00f63023          	sd	a5,0(a2)
    80002d58:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002d5c:	00063783          	ld	a5,0(a2)
    80002d60:	00053703          	ld	a4,0(a0)
    80002d64:	02f70063          	beq	a4,a5,80002d84 <uartintr+0x114>
    80002d68:	01f7f713          	andi	a4,a5,31
    80002d6c:	00e806b3          	add	a3,a6,a4
    80002d70:	0055c703          	lbu	a4,5(a1)
    80002d74:	00178793          	addi	a5,a5,1
    80002d78:	02077713          	andi	a4,a4,32
    80002d7c:	fc071ae3          	bnez	a4,80002d50 <uartintr+0xe0>
    80002d80:	00008067          	ret
    80002d84:	00008067          	ret

0000000080002d88 <kinit>:
    80002d88:	fc010113          	addi	sp,sp,-64
    80002d8c:	02913423          	sd	s1,40(sp)
    80002d90:	fffff7b7          	lui	a5,0xfffff
    80002d94:	00004497          	auipc	s1,0x4
    80002d98:	95b48493          	addi	s1,s1,-1701 # 800066ef <end+0xfff>
    80002d9c:	02813823          	sd	s0,48(sp)
    80002da0:	01313c23          	sd	s3,24(sp)
    80002da4:	00f4f4b3          	and	s1,s1,a5
    80002da8:	02113c23          	sd	ra,56(sp)
    80002dac:	03213023          	sd	s2,32(sp)
    80002db0:	01413823          	sd	s4,16(sp)
    80002db4:	01513423          	sd	s5,8(sp)
    80002db8:	04010413          	addi	s0,sp,64
    80002dbc:	000017b7          	lui	a5,0x1
    80002dc0:	01100993          	li	s3,17
    80002dc4:	00f487b3          	add	a5,s1,a5
    80002dc8:	01b99993          	slli	s3,s3,0x1b
    80002dcc:	06f9e063          	bltu	s3,a5,80002e2c <kinit+0xa4>
    80002dd0:	00003a97          	auipc	s5,0x3
    80002dd4:	920a8a93          	addi	s5,s5,-1760 # 800056f0 <end>
    80002dd8:	0754ec63          	bltu	s1,s5,80002e50 <kinit+0xc8>
    80002ddc:	0734fa63          	bgeu	s1,s3,80002e50 <kinit+0xc8>
    80002de0:	00088a37          	lui	s4,0x88
    80002de4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80002de8:	00001917          	auipc	s2,0x1
    80002dec:	69890913          	addi	s2,s2,1688 # 80004480 <kmem>
    80002df0:	00ca1a13          	slli	s4,s4,0xc
    80002df4:	0140006f          	j	80002e08 <kinit+0x80>
    80002df8:	000017b7          	lui	a5,0x1
    80002dfc:	00f484b3          	add	s1,s1,a5
    80002e00:	0554e863          	bltu	s1,s5,80002e50 <kinit+0xc8>
    80002e04:	0534f663          	bgeu	s1,s3,80002e50 <kinit+0xc8>
    80002e08:	00001637          	lui	a2,0x1
    80002e0c:	00100593          	li	a1,1
    80002e10:	00048513          	mv	a0,s1
    80002e14:	00000097          	auipc	ra,0x0
    80002e18:	5e4080e7          	jalr	1508(ra) # 800033f8 <__memset>
    80002e1c:	00093783          	ld	a5,0(s2)
    80002e20:	00f4b023          	sd	a5,0(s1)
    80002e24:	00993023          	sd	s1,0(s2)
    80002e28:	fd4498e3          	bne	s1,s4,80002df8 <kinit+0x70>
    80002e2c:	03813083          	ld	ra,56(sp)
    80002e30:	03013403          	ld	s0,48(sp)
    80002e34:	02813483          	ld	s1,40(sp)
    80002e38:	02013903          	ld	s2,32(sp)
    80002e3c:	01813983          	ld	s3,24(sp)
    80002e40:	01013a03          	ld	s4,16(sp)
    80002e44:	00813a83          	ld	s5,8(sp)
    80002e48:	04010113          	addi	sp,sp,64
    80002e4c:	00008067          	ret
    80002e50:	00001517          	auipc	a0,0x1
    80002e54:	34050513          	addi	a0,a0,832 # 80004190 <digits+0x18>
    80002e58:	fffff097          	auipc	ra,0xfffff
    80002e5c:	4b4080e7          	jalr	1204(ra) # 8000230c <panic>

0000000080002e60 <freerange>:
    80002e60:	fc010113          	addi	sp,sp,-64
    80002e64:	000017b7          	lui	a5,0x1
    80002e68:	02913423          	sd	s1,40(sp)
    80002e6c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80002e70:	009504b3          	add	s1,a0,s1
    80002e74:	fffff537          	lui	a0,0xfffff
    80002e78:	02813823          	sd	s0,48(sp)
    80002e7c:	02113c23          	sd	ra,56(sp)
    80002e80:	03213023          	sd	s2,32(sp)
    80002e84:	01313c23          	sd	s3,24(sp)
    80002e88:	01413823          	sd	s4,16(sp)
    80002e8c:	01513423          	sd	s5,8(sp)
    80002e90:	01613023          	sd	s6,0(sp)
    80002e94:	04010413          	addi	s0,sp,64
    80002e98:	00a4f4b3          	and	s1,s1,a0
    80002e9c:	00f487b3          	add	a5,s1,a5
    80002ea0:	06f5e463          	bltu	a1,a5,80002f08 <freerange+0xa8>
    80002ea4:	00003a97          	auipc	s5,0x3
    80002ea8:	84ca8a93          	addi	s5,s5,-1972 # 800056f0 <end>
    80002eac:	0954e263          	bltu	s1,s5,80002f30 <freerange+0xd0>
    80002eb0:	01100993          	li	s3,17
    80002eb4:	01b99993          	slli	s3,s3,0x1b
    80002eb8:	0734fc63          	bgeu	s1,s3,80002f30 <freerange+0xd0>
    80002ebc:	00058a13          	mv	s4,a1
    80002ec0:	00001917          	auipc	s2,0x1
    80002ec4:	5c090913          	addi	s2,s2,1472 # 80004480 <kmem>
    80002ec8:	00002b37          	lui	s6,0x2
    80002ecc:	0140006f          	j	80002ee0 <freerange+0x80>
    80002ed0:	000017b7          	lui	a5,0x1
    80002ed4:	00f484b3          	add	s1,s1,a5
    80002ed8:	0554ec63          	bltu	s1,s5,80002f30 <freerange+0xd0>
    80002edc:	0534fa63          	bgeu	s1,s3,80002f30 <freerange+0xd0>
    80002ee0:	00001637          	lui	a2,0x1
    80002ee4:	00100593          	li	a1,1
    80002ee8:	00048513          	mv	a0,s1
    80002eec:	00000097          	auipc	ra,0x0
    80002ef0:	50c080e7          	jalr	1292(ra) # 800033f8 <__memset>
    80002ef4:	00093703          	ld	a4,0(s2)
    80002ef8:	016487b3          	add	a5,s1,s6
    80002efc:	00e4b023          	sd	a4,0(s1)
    80002f00:	00993023          	sd	s1,0(s2)
    80002f04:	fcfa76e3          	bgeu	s4,a5,80002ed0 <freerange+0x70>
    80002f08:	03813083          	ld	ra,56(sp)
    80002f0c:	03013403          	ld	s0,48(sp)
    80002f10:	02813483          	ld	s1,40(sp)
    80002f14:	02013903          	ld	s2,32(sp)
    80002f18:	01813983          	ld	s3,24(sp)
    80002f1c:	01013a03          	ld	s4,16(sp)
    80002f20:	00813a83          	ld	s5,8(sp)
    80002f24:	00013b03          	ld	s6,0(sp)
    80002f28:	04010113          	addi	sp,sp,64
    80002f2c:	00008067          	ret
    80002f30:	00001517          	auipc	a0,0x1
    80002f34:	26050513          	addi	a0,a0,608 # 80004190 <digits+0x18>
    80002f38:	fffff097          	auipc	ra,0xfffff
    80002f3c:	3d4080e7          	jalr	980(ra) # 8000230c <panic>

0000000080002f40 <kfree>:
    80002f40:	fe010113          	addi	sp,sp,-32
    80002f44:	00813823          	sd	s0,16(sp)
    80002f48:	00113c23          	sd	ra,24(sp)
    80002f4c:	00913423          	sd	s1,8(sp)
    80002f50:	02010413          	addi	s0,sp,32
    80002f54:	03451793          	slli	a5,a0,0x34
    80002f58:	04079c63          	bnez	a5,80002fb0 <kfree+0x70>
    80002f5c:	00002797          	auipc	a5,0x2
    80002f60:	79478793          	addi	a5,a5,1940 # 800056f0 <end>
    80002f64:	00050493          	mv	s1,a0
    80002f68:	04f56463          	bltu	a0,a5,80002fb0 <kfree+0x70>
    80002f6c:	01100793          	li	a5,17
    80002f70:	01b79793          	slli	a5,a5,0x1b
    80002f74:	02f57e63          	bgeu	a0,a5,80002fb0 <kfree+0x70>
    80002f78:	00001637          	lui	a2,0x1
    80002f7c:	00100593          	li	a1,1
    80002f80:	00000097          	auipc	ra,0x0
    80002f84:	478080e7          	jalr	1144(ra) # 800033f8 <__memset>
    80002f88:	00001797          	auipc	a5,0x1
    80002f8c:	4f878793          	addi	a5,a5,1272 # 80004480 <kmem>
    80002f90:	0007b703          	ld	a4,0(a5)
    80002f94:	01813083          	ld	ra,24(sp)
    80002f98:	01013403          	ld	s0,16(sp)
    80002f9c:	00e4b023          	sd	a4,0(s1)
    80002fa0:	0097b023          	sd	s1,0(a5)
    80002fa4:	00813483          	ld	s1,8(sp)
    80002fa8:	02010113          	addi	sp,sp,32
    80002fac:	00008067          	ret
    80002fb0:	00001517          	auipc	a0,0x1
    80002fb4:	1e050513          	addi	a0,a0,480 # 80004190 <digits+0x18>
    80002fb8:	fffff097          	auipc	ra,0xfffff
    80002fbc:	354080e7          	jalr	852(ra) # 8000230c <panic>

0000000080002fc0 <kalloc>:
    80002fc0:	fe010113          	addi	sp,sp,-32
    80002fc4:	00813823          	sd	s0,16(sp)
    80002fc8:	00913423          	sd	s1,8(sp)
    80002fcc:	00113c23          	sd	ra,24(sp)
    80002fd0:	02010413          	addi	s0,sp,32
    80002fd4:	00001797          	auipc	a5,0x1
    80002fd8:	4ac78793          	addi	a5,a5,1196 # 80004480 <kmem>
    80002fdc:	0007b483          	ld	s1,0(a5)
    80002fe0:	02048063          	beqz	s1,80003000 <kalloc+0x40>
    80002fe4:	0004b703          	ld	a4,0(s1)
    80002fe8:	00001637          	lui	a2,0x1
    80002fec:	00500593          	li	a1,5
    80002ff0:	00048513          	mv	a0,s1
    80002ff4:	00e7b023          	sd	a4,0(a5)
    80002ff8:	00000097          	auipc	ra,0x0
    80002ffc:	400080e7          	jalr	1024(ra) # 800033f8 <__memset>
    80003000:	01813083          	ld	ra,24(sp)
    80003004:	01013403          	ld	s0,16(sp)
    80003008:	00048513          	mv	a0,s1
    8000300c:	00813483          	ld	s1,8(sp)
    80003010:	02010113          	addi	sp,sp,32
    80003014:	00008067          	ret

0000000080003018 <initlock>:
    80003018:	ff010113          	addi	sp,sp,-16
    8000301c:	00813423          	sd	s0,8(sp)
    80003020:	01010413          	addi	s0,sp,16
    80003024:	00813403          	ld	s0,8(sp)
    80003028:	00b53423          	sd	a1,8(a0)
    8000302c:	00052023          	sw	zero,0(a0)
    80003030:	00053823          	sd	zero,16(a0)
    80003034:	01010113          	addi	sp,sp,16
    80003038:	00008067          	ret

000000008000303c <acquire>:
    8000303c:	fe010113          	addi	sp,sp,-32
    80003040:	00813823          	sd	s0,16(sp)
    80003044:	00913423          	sd	s1,8(sp)
    80003048:	00113c23          	sd	ra,24(sp)
    8000304c:	01213023          	sd	s2,0(sp)
    80003050:	02010413          	addi	s0,sp,32
    80003054:	00050493          	mv	s1,a0
    80003058:	10002973          	csrr	s2,sstatus
    8000305c:	100027f3          	csrr	a5,sstatus
    80003060:	ffd7f793          	andi	a5,a5,-3
    80003064:	10079073          	csrw	sstatus,a5
    80003068:	fffff097          	auipc	ra,0xfffff
    8000306c:	8e8080e7          	jalr	-1816(ra) # 80001950 <mycpu>
    80003070:	07852783          	lw	a5,120(a0)
    80003074:	06078e63          	beqz	a5,800030f0 <acquire+0xb4>
    80003078:	fffff097          	auipc	ra,0xfffff
    8000307c:	8d8080e7          	jalr	-1832(ra) # 80001950 <mycpu>
    80003080:	07852783          	lw	a5,120(a0)
    80003084:	0004a703          	lw	a4,0(s1)
    80003088:	0017879b          	addiw	a5,a5,1
    8000308c:	06f52c23          	sw	a5,120(a0)
    80003090:	04071063          	bnez	a4,800030d0 <acquire+0x94>
    80003094:	00100713          	li	a4,1
    80003098:	00070793          	mv	a5,a4
    8000309c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800030a0:	0007879b          	sext.w	a5,a5
    800030a4:	fe079ae3          	bnez	a5,80003098 <acquire+0x5c>
    800030a8:	0ff0000f          	fence
    800030ac:	fffff097          	auipc	ra,0xfffff
    800030b0:	8a4080e7          	jalr	-1884(ra) # 80001950 <mycpu>
    800030b4:	01813083          	ld	ra,24(sp)
    800030b8:	01013403          	ld	s0,16(sp)
    800030bc:	00a4b823          	sd	a0,16(s1)
    800030c0:	00013903          	ld	s2,0(sp)
    800030c4:	00813483          	ld	s1,8(sp)
    800030c8:	02010113          	addi	sp,sp,32
    800030cc:	00008067          	ret
    800030d0:	0104b903          	ld	s2,16(s1)
    800030d4:	fffff097          	auipc	ra,0xfffff
    800030d8:	87c080e7          	jalr	-1924(ra) # 80001950 <mycpu>
    800030dc:	faa91ce3          	bne	s2,a0,80003094 <acquire+0x58>
    800030e0:	00001517          	auipc	a0,0x1
    800030e4:	0b850513          	addi	a0,a0,184 # 80004198 <digits+0x20>
    800030e8:	fffff097          	auipc	ra,0xfffff
    800030ec:	224080e7          	jalr	548(ra) # 8000230c <panic>
    800030f0:	00195913          	srli	s2,s2,0x1
    800030f4:	fffff097          	auipc	ra,0xfffff
    800030f8:	85c080e7          	jalr	-1956(ra) # 80001950 <mycpu>
    800030fc:	00197913          	andi	s2,s2,1
    80003100:	07252e23          	sw	s2,124(a0)
    80003104:	f75ff06f          	j	80003078 <acquire+0x3c>

0000000080003108 <release>:
    80003108:	fe010113          	addi	sp,sp,-32
    8000310c:	00813823          	sd	s0,16(sp)
    80003110:	00113c23          	sd	ra,24(sp)
    80003114:	00913423          	sd	s1,8(sp)
    80003118:	01213023          	sd	s2,0(sp)
    8000311c:	02010413          	addi	s0,sp,32
    80003120:	00052783          	lw	a5,0(a0)
    80003124:	00079a63          	bnez	a5,80003138 <release+0x30>
    80003128:	00001517          	auipc	a0,0x1
    8000312c:	07850513          	addi	a0,a0,120 # 800041a0 <digits+0x28>
    80003130:	fffff097          	auipc	ra,0xfffff
    80003134:	1dc080e7          	jalr	476(ra) # 8000230c <panic>
    80003138:	01053903          	ld	s2,16(a0)
    8000313c:	00050493          	mv	s1,a0
    80003140:	fffff097          	auipc	ra,0xfffff
    80003144:	810080e7          	jalr	-2032(ra) # 80001950 <mycpu>
    80003148:	fea910e3          	bne	s2,a0,80003128 <release+0x20>
    8000314c:	0004b823          	sd	zero,16(s1)
    80003150:	0ff0000f          	fence
    80003154:	0f50000f          	fence	iorw,ow
    80003158:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000315c:	ffffe097          	auipc	ra,0xffffe
    80003160:	7f4080e7          	jalr	2036(ra) # 80001950 <mycpu>
    80003164:	100027f3          	csrr	a5,sstatus
    80003168:	0027f793          	andi	a5,a5,2
    8000316c:	04079a63          	bnez	a5,800031c0 <release+0xb8>
    80003170:	07852783          	lw	a5,120(a0)
    80003174:	02f05e63          	blez	a5,800031b0 <release+0xa8>
    80003178:	fff7871b          	addiw	a4,a5,-1
    8000317c:	06e52c23          	sw	a4,120(a0)
    80003180:	00071c63          	bnez	a4,80003198 <release+0x90>
    80003184:	07c52783          	lw	a5,124(a0)
    80003188:	00078863          	beqz	a5,80003198 <release+0x90>
    8000318c:	100027f3          	csrr	a5,sstatus
    80003190:	0027e793          	ori	a5,a5,2
    80003194:	10079073          	csrw	sstatus,a5
    80003198:	01813083          	ld	ra,24(sp)
    8000319c:	01013403          	ld	s0,16(sp)
    800031a0:	00813483          	ld	s1,8(sp)
    800031a4:	00013903          	ld	s2,0(sp)
    800031a8:	02010113          	addi	sp,sp,32
    800031ac:	00008067          	ret
    800031b0:	00001517          	auipc	a0,0x1
    800031b4:	01050513          	addi	a0,a0,16 # 800041c0 <digits+0x48>
    800031b8:	fffff097          	auipc	ra,0xfffff
    800031bc:	154080e7          	jalr	340(ra) # 8000230c <panic>
    800031c0:	00001517          	auipc	a0,0x1
    800031c4:	fe850513          	addi	a0,a0,-24 # 800041a8 <digits+0x30>
    800031c8:	fffff097          	auipc	ra,0xfffff
    800031cc:	144080e7          	jalr	324(ra) # 8000230c <panic>

00000000800031d0 <holding>:
    800031d0:	00052783          	lw	a5,0(a0)
    800031d4:	00079663          	bnez	a5,800031e0 <holding+0x10>
    800031d8:	00000513          	li	a0,0
    800031dc:	00008067          	ret
    800031e0:	fe010113          	addi	sp,sp,-32
    800031e4:	00813823          	sd	s0,16(sp)
    800031e8:	00913423          	sd	s1,8(sp)
    800031ec:	00113c23          	sd	ra,24(sp)
    800031f0:	02010413          	addi	s0,sp,32
    800031f4:	01053483          	ld	s1,16(a0)
    800031f8:	ffffe097          	auipc	ra,0xffffe
    800031fc:	758080e7          	jalr	1880(ra) # 80001950 <mycpu>
    80003200:	01813083          	ld	ra,24(sp)
    80003204:	01013403          	ld	s0,16(sp)
    80003208:	40a48533          	sub	a0,s1,a0
    8000320c:	00153513          	seqz	a0,a0
    80003210:	00813483          	ld	s1,8(sp)
    80003214:	02010113          	addi	sp,sp,32
    80003218:	00008067          	ret

000000008000321c <push_off>:
    8000321c:	fe010113          	addi	sp,sp,-32
    80003220:	00813823          	sd	s0,16(sp)
    80003224:	00113c23          	sd	ra,24(sp)
    80003228:	00913423          	sd	s1,8(sp)
    8000322c:	02010413          	addi	s0,sp,32
    80003230:	100024f3          	csrr	s1,sstatus
    80003234:	100027f3          	csrr	a5,sstatus
    80003238:	ffd7f793          	andi	a5,a5,-3
    8000323c:	10079073          	csrw	sstatus,a5
    80003240:	ffffe097          	auipc	ra,0xffffe
    80003244:	710080e7          	jalr	1808(ra) # 80001950 <mycpu>
    80003248:	07852783          	lw	a5,120(a0)
    8000324c:	02078663          	beqz	a5,80003278 <push_off+0x5c>
    80003250:	ffffe097          	auipc	ra,0xffffe
    80003254:	700080e7          	jalr	1792(ra) # 80001950 <mycpu>
    80003258:	07852783          	lw	a5,120(a0)
    8000325c:	01813083          	ld	ra,24(sp)
    80003260:	01013403          	ld	s0,16(sp)
    80003264:	0017879b          	addiw	a5,a5,1
    80003268:	06f52c23          	sw	a5,120(a0)
    8000326c:	00813483          	ld	s1,8(sp)
    80003270:	02010113          	addi	sp,sp,32
    80003274:	00008067          	ret
    80003278:	0014d493          	srli	s1,s1,0x1
    8000327c:	ffffe097          	auipc	ra,0xffffe
    80003280:	6d4080e7          	jalr	1748(ra) # 80001950 <mycpu>
    80003284:	0014f493          	andi	s1,s1,1
    80003288:	06952e23          	sw	s1,124(a0)
    8000328c:	fc5ff06f          	j	80003250 <push_off+0x34>

0000000080003290 <pop_off>:
    80003290:	ff010113          	addi	sp,sp,-16
    80003294:	00813023          	sd	s0,0(sp)
    80003298:	00113423          	sd	ra,8(sp)
    8000329c:	01010413          	addi	s0,sp,16
    800032a0:	ffffe097          	auipc	ra,0xffffe
    800032a4:	6b0080e7          	jalr	1712(ra) # 80001950 <mycpu>
    800032a8:	100027f3          	csrr	a5,sstatus
    800032ac:	0027f793          	andi	a5,a5,2
    800032b0:	04079663          	bnez	a5,800032fc <pop_off+0x6c>
    800032b4:	07852783          	lw	a5,120(a0)
    800032b8:	02f05a63          	blez	a5,800032ec <pop_off+0x5c>
    800032bc:	fff7871b          	addiw	a4,a5,-1
    800032c0:	06e52c23          	sw	a4,120(a0)
    800032c4:	00071c63          	bnez	a4,800032dc <pop_off+0x4c>
    800032c8:	07c52783          	lw	a5,124(a0)
    800032cc:	00078863          	beqz	a5,800032dc <pop_off+0x4c>
    800032d0:	100027f3          	csrr	a5,sstatus
    800032d4:	0027e793          	ori	a5,a5,2
    800032d8:	10079073          	csrw	sstatus,a5
    800032dc:	00813083          	ld	ra,8(sp)
    800032e0:	00013403          	ld	s0,0(sp)
    800032e4:	01010113          	addi	sp,sp,16
    800032e8:	00008067          	ret
    800032ec:	00001517          	auipc	a0,0x1
    800032f0:	ed450513          	addi	a0,a0,-300 # 800041c0 <digits+0x48>
    800032f4:	fffff097          	auipc	ra,0xfffff
    800032f8:	018080e7          	jalr	24(ra) # 8000230c <panic>
    800032fc:	00001517          	auipc	a0,0x1
    80003300:	eac50513          	addi	a0,a0,-340 # 800041a8 <digits+0x30>
    80003304:	fffff097          	auipc	ra,0xfffff
    80003308:	008080e7          	jalr	8(ra) # 8000230c <panic>

000000008000330c <push_on>:
    8000330c:	fe010113          	addi	sp,sp,-32
    80003310:	00813823          	sd	s0,16(sp)
    80003314:	00113c23          	sd	ra,24(sp)
    80003318:	00913423          	sd	s1,8(sp)
    8000331c:	02010413          	addi	s0,sp,32
    80003320:	100024f3          	csrr	s1,sstatus
    80003324:	100027f3          	csrr	a5,sstatus
    80003328:	0027e793          	ori	a5,a5,2
    8000332c:	10079073          	csrw	sstatus,a5
    80003330:	ffffe097          	auipc	ra,0xffffe
    80003334:	620080e7          	jalr	1568(ra) # 80001950 <mycpu>
    80003338:	07852783          	lw	a5,120(a0)
    8000333c:	02078663          	beqz	a5,80003368 <push_on+0x5c>
    80003340:	ffffe097          	auipc	ra,0xffffe
    80003344:	610080e7          	jalr	1552(ra) # 80001950 <mycpu>
    80003348:	07852783          	lw	a5,120(a0)
    8000334c:	01813083          	ld	ra,24(sp)
    80003350:	01013403          	ld	s0,16(sp)
    80003354:	0017879b          	addiw	a5,a5,1
    80003358:	06f52c23          	sw	a5,120(a0)
    8000335c:	00813483          	ld	s1,8(sp)
    80003360:	02010113          	addi	sp,sp,32
    80003364:	00008067          	ret
    80003368:	0014d493          	srli	s1,s1,0x1
    8000336c:	ffffe097          	auipc	ra,0xffffe
    80003370:	5e4080e7          	jalr	1508(ra) # 80001950 <mycpu>
    80003374:	0014f493          	andi	s1,s1,1
    80003378:	06952e23          	sw	s1,124(a0)
    8000337c:	fc5ff06f          	j	80003340 <push_on+0x34>

0000000080003380 <pop_on>:
    80003380:	ff010113          	addi	sp,sp,-16
    80003384:	00813023          	sd	s0,0(sp)
    80003388:	00113423          	sd	ra,8(sp)
    8000338c:	01010413          	addi	s0,sp,16
    80003390:	ffffe097          	auipc	ra,0xffffe
    80003394:	5c0080e7          	jalr	1472(ra) # 80001950 <mycpu>
    80003398:	100027f3          	csrr	a5,sstatus
    8000339c:	0027f793          	andi	a5,a5,2
    800033a0:	04078463          	beqz	a5,800033e8 <pop_on+0x68>
    800033a4:	07852783          	lw	a5,120(a0)
    800033a8:	02f05863          	blez	a5,800033d8 <pop_on+0x58>
    800033ac:	fff7879b          	addiw	a5,a5,-1
    800033b0:	06f52c23          	sw	a5,120(a0)
    800033b4:	07853783          	ld	a5,120(a0)
    800033b8:	00079863          	bnez	a5,800033c8 <pop_on+0x48>
    800033bc:	100027f3          	csrr	a5,sstatus
    800033c0:	ffd7f793          	andi	a5,a5,-3
    800033c4:	10079073          	csrw	sstatus,a5
    800033c8:	00813083          	ld	ra,8(sp)
    800033cc:	00013403          	ld	s0,0(sp)
    800033d0:	01010113          	addi	sp,sp,16
    800033d4:	00008067          	ret
    800033d8:	00001517          	auipc	a0,0x1
    800033dc:	e1050513          	addi	a0,a0,-496 # 800041e8 <digits+0x70>
    800033e0:	fffff097          	auipc	ra,0xfffff
    800033e4:	f2c080e7          	jalr	-212(ra) # 8000230c <panic>
    800033e8:	00001517          	auipc	a0,0x1
    800033ec:	de050513          	addi	a0,a0,-544 # 800041c8 <digits+0x50>
    800033f0:	fffff097          	auipc	ra,0xfffff
    800033f4:	f1c080e7          	jalr	-228(ra) # 8000230c <panic>

00000000800033f8 <__memset>:
    800033f8:	ff010113          	addi	sp,sp,-16
    800033fc:	00813423          	sd	s0,8(sp)
    80003400:	01010413          	addi	s0,sp,16
    80003404:	1a060e63          	beqz	a2,800035c0 <__memset+0x1c8>
    80003408:	40a007b3          	neg	a5,a0
    8000340c:	0077f793          	andi	a5,a5,7
    80003410:	00778693          	addi	a3,a5,7
    80003414:	00b00813          	li	a6,11
    80003418:	0ff5f593          	andi	a1,a1,255
    8000341c:	fff6071b          	addiw	a4,a2,-1
    80003420:	1b06e663          	bltu	a3,a6,800035cc <__memset+0x1d4>
    80003424:	1cd76463          	bltu	a4,a3,800035ec <__memset+0x1f4>
    80003428:	1a078e63          	beqz	a5,800035e4 <__memset+0x1ec>
    8000342c:	00b50023          	sb	a1,0(a0)
    80003430:	00100713          	li	a4,1
    80003434:	1ae78463          	beq	a5,a4,800035dc <__memset+0x1e4>
    80003438:	00b500a3          	sb	a1,1(a0)
    8000343c:	00200713          	li	a4,2
    80003440:	1ae78a63          	beq	a5,a4,800035f4 <__memset+0x1fc>
    80003444:	00b50123          	sb	a1,2(a0)
    80003448:	00300713          	li	a4,3
    8000344c:	18e78463          	beq	a5,a4,800035d4 <__memset+0x1dc>
    80003450:	00b501a3          	sb	a1,3(a0)
    80003454:	00400713          	li	a4,4
    80003458:	1ae78263          	beq	a5,a4,800035fc <__memset+0x204>
    8000345c:	00b50223          	sb	a1,4(a0)
    80003460:	00500713          	li	a4,5
    80003464:	1ae78063          	beq	a5,a4,80003604 <__memset+0x20c>
    80003468:	00b502a3          	sb	a1,5(a0)
    8000346c:	00700713          	li	a4,7
    80003470:	18e79e63          	bne	a5,a4,8000360c <__memset+0x214>
    80003474:	00b50323          	sb	a1,6(a0)
    80003478:	00700e93          	li	t4,7
    8000347c:	00859713          	slli	a4,a1,0x8
    80003480:	00e5e733          	or	a4,a1,a4
    80003484:	01059e13          	slli	t3,a1,0x10
    80003488:	01c76e33          	or	t3,a4,t3
    8000348c:	01859313          	slli	t1,a1,0x18
    80003490:	006e6333          	or	t1,t3,t1
    80003494:	02059893          	slli	a7,a1,0x20
    80003498:	40f60e3b          	subw	t3,a2,a5
    8000349c:	011368b3          	or	a7,t1,a7
    800034a0:	02859813          	slli	a6,a1,0x28
    800034a4:	0108e833          	or	a6,a7,a6
    800034a8:	03059693          	slli	a3,a1,0x30
    800034ac:	003e589b          	srliw	a7,t3,0x3
    800034b0:	00d866b3          	or	a3,a6,a3
    800034b4:	03859713          	slli	a4,a1,0x38
    800034b8:	00389813          	slli	a6,a7,0x3
    800034bc:	00f507b3          	add	a5,a0,a5
    800034c0:	00e6e733          	or	a4,a3,a4
    800034c4:	000e089b          	sext.w	a7,t3
    800034c8:	00f806b3          	add	a3,a6,a5
    800034cc:	00e7b023          	sd	a4,0(a5)
    800034d0:	00878793          	addi	a5,a5,8
    800034d4:	fed79ce3          	bne	a5,a3,800034cc <__memset+0xd4>
    800034d8:	ff8e7793          	andi	a5,t3,-8
    800034dc:	0007871b          	sext.w	a4,a5
    800034e0:	01d787bb          	addw	a5,a5,t4
    800034e4:	0ce88e63          	beq	a7,a4,800035c0 <__memset+0x1c8>
    800034e8:	00f50733          	add	a4,a0,a5
    800034ec:	00b70023          	sb	a1,0(a4)
    800034f0:	0017871b          	addiw	a4,a5,1
    800034f4:	0cc77663          	bgeu	a4,a2,800035c0 <__memset+0x1c8>
    800034f8:	00e50733          	add	a4,a0,a4
    800034fc:	00b70023          	sb	a1,0(a4)
    80003500:	0027871b          	addiw	a4,a5,2
    80003504:	0ac77e63          	bgeu	a4,a2,800035c0 <__memset+0x1c8>
    80003508:	00e50733          	add	a4,a0,a4
    8000350c:	00b70023          	sb	a1,0(a4)
    80003510:	0037871b          	addiw	a4,a5,3
    80003514:	0ac77663          	bgeu	a4,a2,800035c0 <__memset+0x1c8>
    80003518:	00e50733          	add	a4,a0,a4
    8000351c:	00b70023          	sb	a1,0(a4)
    80003520:	0047871b          	addiw	a4,a5,4
    80003524:	08c77e63          	bgeu	a4,a2,800035c0 <__memset+0x1c8>
    80003528:	00e50733          	add	a4,a0,a4
    8000352c:	00b70023          	sb	a1,0(a4)
    80003530:	0057871b          	addiw	a4,a5,5
    80003534:	08c77663          	bgeu	a4,a2,800035c0 <__memset+0x1c8>
    80003538:	00e50733          	add	a4,a0,a4
    8000353c:	00b70023          	sb	a1,0(a4)
    80003540:	0067871b          	addiw	a4,a5,6
    80003544:	06c77e63          	bgeu	a4,a2,800035c0 <__memset+0x1c8>
    80003548:	00e50733          	add	a4,a0,a4
    8000354c:	00b70023          	sb	a1,0(a4)
    80003550:	0077871b          	addiw	a4,a5,7
    80003554:	06c77663          	bgeu	a4,a2,800035c0 <__memset+0x1c8>
    80003558:	00e50733          	add	a4,a0,a4
    8000355c:	00b70023          	sb	a1,0(a4)
    80003560:	0087871b          	addiw	a4,a5,8
    80003564:	04c77e63          	bgeu	a4,a2,800035c0 <__memset+0x1c8>
    80003568:	00e50733          	add	a4,a0,a4
    8000356c:	00b70023          	sb	a1,0(a4)
    80003570:	0097871b          	addiw	a4,a5,9
    80003574:	04c77663          	bgeu	a4,a2,800035c0 <__memset+0x1c8>
    80003578:	00e50733          	add	a4,a0,a4
    8000357c:	00b70023          	sb	a1,0(a4)
    80003580:	00a7871b          	addiw	a4,a5,10
    80003584:	02c77e63          	bgeu	a4,a2,800035c0 <__memset+0x1c8>
    80003588:	00e50733          	add	a4,a0,a4
    8000358c:	00b70023          	sb	a1,0(a4)
    80003590:	00b7871b          	addiw	a4,a5,11
    80003594:	02c77663          	bgeu	a4,a2,800035c0 <__memset+0x1c8>
    80003598:	00e50733          	add	a4,a0,a4
    8000359c:	00b70023          	sb	a1,0(a4)
    800035a0:	00c7871b          	addiw	a4,a5,12
    800035a4:	00c77e63          	bgeu	a4,a2,800035c0 <__memset+0x1c8>
    800035a8:	00e50733          	add	a4,a0,a4
    800035ac:	00b70023          	sb	a1,0(a4)
    800035b0:	00d7879b          	addiw	a5,a5,13
    800035b4:	00c7f663          	bgeu	a5,a2,800035c0 <__memset+0x1c8>
    800035b8:	00f507b3          	add	a5,a0,a5
    800035bc:	00b78023          	sb	a1,0(a5)
    800035c0:	00813403          	ld	s0,8(sp)
    800035c4:	01010113          	addi	sp,sp,16
    800035c8:	00008067          	ret
    800035cc:	00b00693          	li	a3,11
    800035d0:	e55ff06f          	j	80003424 <__memset+0x2c>
    800035d4:	00300e93          	li	t4,3
    800035d8:	ea5ff06f          	j	8000347c <__memset+0x84>
    800035dc:	00100e93          	li	t4,1
    800035e0:	e9dff06f          	j	8000347c <__memset+0x84>
    800035e4:	00000e93          	li	t4,0
    800035e8:	e95ff06f          	j	8000347c <__memset+0x84>
    800035ec:	00000793          	li	a5,0
    800035f0:	ef9ff06f          	j	800034e8 <__memset+0xf0>
    800035f4:	00200e93          	li	t4,2
    800035f8:	e85ff06f          	j	8000347c <__memset+0x84>
    800035fc:	00400e93          	li	t4,4
    80003600:	e7dff06f          	j	8000347c <__memset+0x84>
    80003604:	00500e93          	li	t4,5
    80003608:	e75ff06f          	j	8000347c <__memset+0x84>
    8000360c:	00600e93          	li	t4,6
    80003610:	e6dff06f          	j	8000347c <__memset+0x84>

0000000080003614 <__memmove>:
    80003614:	ff010113          	addi	sp,sp,-16
    80003618:	00813423          	sd	s0,8(sp)
    8000361c:	01010413          	addi	s0,sp,16
    80003620:	0e060863          	beqz	a2,80003710 <__memmove+0xfc>
    80003624:	fff6069b          	addiw	a3,a2,-1
    80003628:	0006881b          	sext.w	a6,a3
    8000362c:	0ea5e863          	bltu	a1,a0,8000371c <__memmove+0x108>
    80003630:	00758713          	addi	a4,a1,7
    80003634:	00a5e7b3          	or	a5,a1,a0
    80003638:	40a70733          	sub	a4,a4,a0
    8000363c:	0077f793          	andi	a5,a5,7
    80003640:	00f73713          	sltiu	a4,a4,15
    80003644:	00174713          	xori	a4,a4,1
    80003648:	0017b793          	seqz	a5,a5
    8000364c:	00e7f7b3          	and	a5,a5,a4
    80003650:	10078863          	beqz	a5,80003760 <__memmove+0x14c>
    80003654:	00900793          	li	a5,9
    80003658:	1107f463          	bgeu	a5,a6,80003760 <__memmove+0x14c>
    8000365c:	0036581b          	srliw	a6,a2,0x3
    80003660:	fff8081b          	addiw	a6,a6,-1
    80003664:	02081813          	slli	a6,a6,0x20
    80003668:	01d85893          	srli	a7,a6,0x1d
    8000366c:	00858813          	addi	a6,a1,8
    80003670:	00058793          	mv	a5,a1
    80003674:	00050713          	mv	a4,a0
    80003678:	01088833          	add	a6,a7,a6
    8000367c:	0007b883          	ld	a7,0(a5)
    80003680:	00878793          	addi	a5,a5,8
    80003684:	00870713          	addi	a4,a4,8
    80003688:	ff173c23          	sd	a7,-8(a4)
    8000368c:	ff0798e3          	bne	a5,a6,8000367c <__memmove+0x68>
    80003690:	ff867713          	andi	a4,a2,-8
    80003694:	02071793          	slli	a5,a4,0x20
    80003698:	0207d793          	srli	a5,a5,0x20
    8000369c:	00f585b3          	add	a1,a1,a5
    800036a0:	40e686bb          	subw	a3,a3,a4
    800036a4:	00f507b3          	add	a5,a0,a5
    800036a8:	06e60463          	beq	a2,a4,80003710 <__memmove+0xfc>
    800036ac:	0005c703          	lbu	a4,0(a1)
    800036b0:	00e78023          	sb	a4,0(a5)
    800036b4:	04068e63          	beqz	a3,80003710 <__memmove+0xfc>
    800036b8:	0015c603          	lbu	a2,1(a1)
    800036bc:	00100713          	li	a4,1
    800036c0:	00c780a3          	sb	a2,1(a5)
    800036c4:	04e68663          	beq	a3,a4,80003710 <__memmove+0xfc>
    800036c8:	0025c603          	lbu	a2,2(a1)
    800036cc:	00200713          	li	a4,2
    800036d0:	00c78123          	sb	a2,2(a5)
    800036d4:	02e68e63          	beq	a3,a4,80003710 <__memmove+0xfc>
    800036d8:	0035c603          	lbu	a2,3(a1)
    800036dc:	00300713          	li	a4,3
    800036e0:	00c781a3          	sb	a2,3(a5)
    800036e4:	02e68663          	beq	a3,a4,80003710 <__memmove+0xfc>
    800036e8:	0045c603          	lbu	a2,4(a1)
    800036ec:	00400713          	li	a4,4
    800036f0:	00c78223          	sb	a2,4(a5)
    800036f4:	00e68e63          	beq	a3,a4,80003710 <__memmove+0xfc>
    800036f8:	0055c603          	lbu	a2,5(a1)
    800036fc:	00500713          	li	a4,5
    80003700:	00c782a3          	sb	a2,5(a5)
    80003704:	00e68663          	beq	a3,a4,80003710 <__memmove+0xfc>
    80003708:	0065c703          	lbu	a4,6(a1)
    8000370c:	00e78323          	sb	a4,6(a5)
    80003710:	00813403          	ld	s0,8(sp)
    80003714:	01010113          	addi	sp,sp,16
    80003718:	00008067          	ret
    8000371c:	02061713          	slli	a4,a2,0x20
    80003720:	02075713          	srli	a4,a4,0x20
    80003724:	00e587b3          	add	a5,a1,a4
    80003728:	f0f574e3          	bgeu	a0,a5,80003630 <__memmove+0x1c>
    8000372c:	02069613          	slli	a2,a3,0x20
    80003730:	02065613          	srli	a2,a2,0x20
    80003734:	fff64613          	not	a2,a2
    80003738:	00e50733          	add	a4,a0,a4
    8000373c:	00c78633          	add	a2,a5,a2
    80003740:	fff7c683          	lbu	a3,-1(a5)
    80003744:	fff78793          	addi	a5,a5,-1
    80003748:	fff70713          	addi	a4,a4,-1
    8000374c:	00d70023          	sb	a3,0(a4)
    80003750:	fec798e3          	bne	a5,a2,80003740 <__memmove+0x12c>
    80003754:	00813403          	ld	s0,8(sp)
    80003758:	01010113          	addi	sp,sp,16
    8000375c:	00008067          	ret
    80003760:	02069713          	slli	a4,a3,0x20
    80003764:	02075713          	srli	a4,a4,0x20
    80003768:	00170713          	addi	a4,a4,1
    8000376c:	00e50733          	add	a4,a0,a4
    80003770:	00050793          	mv	a5,a0
    80003774:	0005c683          	lbu	a3,0(a1)
    80003778:	00178793          	addi	a5,a5,1
    8000377c:	00158593          	addi	a1,a1,1
    80003780:	fed78fa3          	sb	a3,-1(a5)
    80003784:	fee798e3          	bne	a5,a4,80003774 <__memmove+0x160>
    80003788:	f89ff06f          	j	80003710 <__memmove+0xfc>

000000008000378c <__putc>:
    8000378c:	fe010113          	addi	sp,sp,-32
    80003790:	00813823          	sd	s0,16(sp)
    80003794:	00113c23          	sd	ra,24(sp)
    80003798:	02010413          	addi	s0,sp,32
    8000379c:	00050793          	mv	a5,a0
    800037a0:	fef40593          	addi	a1,s0,-17
    800037a4:	00100613          	li	a2,1
    800037a8:	00000513          	li	a0,0
    800037ac:	fef407a3          	sb	a5,-17(s0)
    800037b0:	fffff097          	auipc	ra,0xfffff
    800037b4:	b3c080e7          	jalr	-1220(ra) # 800022ec <console_write>
    800037b8:	01813083          	ld	ra,24(sp)
    800037bc:	01013403          	ld	s0,16(sp)
    800037c0:	02010113          	addi	sp,sp,32
    800037c4:	00008067          	ret

00000000800037c8 <__getc>:
    800037c8:	fe010113          	addi	sp,sp,-32
    800037cc:	00813823          	sd	s0,16(sp)
    800037d0:	00113c23          	sd	ra,24(sp)
    800037d4:	02010413          	addi	s0,sp,32
    800037d8:	fe840593          	addi	a1,s0,-24
    800037dc:	00100613          	li	a2,1
    800037e0:	00000513          	li	a0,0
    800037e4:	fffff097          	auipc	ra,0xfffff
    800037e8:	ae8080e7          	jalr	-1304(ra) # 800022cc <console_read>
    800037ec:	fe844503          	lbu	a0,-24(s0)
    800037f0:	01813083          	ld	ra,24(sp)
    800037f4:	01013403          	ld	s0,16(sp)
    800037f8:	02010113          	addi	sp,sp,32
    800037fc:	00008067          	ret

0000000080003800 <console_handler>:
    80003800:	fe010113          	addi	sp,sp,-32
    80003804:	00813823          	sd	s0,16(sp)
    80003808:	00113c23          	sd	ra,24(sp)
    8000380c:	00913423          	sd	s1,8(sp)
    80003810:	02010413          	addi	s0,sp,32
    80003814:	14202773          	csrr	a4,scause
    80003818:	100027f3          	csrr	a5,sstatus
    8000381c:	0027f793          	andi	a5,a5,2
    80003820:	06079e63          	bnez	a5,8000389c <console_handler+0x9c>
    80003824:	00074c63          	bltz	a4,8000383c <console_handler+0x3c>
    80003828:	01813083          	ld	ra,24(sp)
    8000382c:	01013403          	ld	s0,16(sp)
    80003830:	00813483          	ld	s1,8(sp)
    80003834:	02010113          	addi	sp,sp,32
    80003838:	00008067          	ret
    8000383c:	0ff77713          	andi	a4,a4,255
    80003840:	00900793          	li	a5,9
    80003844:	fef712e3          	bne	a4,a5,80003828 <console_handler+0x28>
    80003848:	ffffe097          	auipc	ra,0xffffe
    8000384c:	6dc080e7          	jalr	1756(ra) # 80001f24 <plic_claim>
    80003850:	00a00793          	li	a5,10
    80003854:	00050493          	mv	s1,a0
    80003858:	02f50c63          	beq	a0,a5,80003890 <console_handler+0x90>
    8000385c:	fc0506e3          	beqz	a0,80003828 <console_handler+0x28>
    80003860:	00050593          	mv	a1,a0
    80003864:	00001517          	auipc	a0,0x1
    80003868:	88c50513          	addi	a0,a0,-1908 # 800040f0 <CONSOLE_STATUS+0xe0>
    8000386c:	fffff097          	auipc	ra,0xfffff
    80003870:	afc080e7          	jalr	-1284(ra) # 80002368 <__printf>
    80003874:	01013403          	ld	s0,16(sp)
    80003878:	01813083          	ld	ra,24(sp)
    8000387c:	00048513          	mv	a0,s1
    80003880:	00813483          	ld	s1,8(sp)
    80003884:	02010113          	addi	sp,sp,32
    80003888:	ffffe317          	auipc	t1,0xffffe
    8000388c:	6d430067          	jr	1748(t1) # 80001f5c <plic_complete>
    80003890:	fffff097          	auipc	ra,0xfffff
    80003894:	3e0080e7          	jalr	992(ra) # 80002c70 <uartintr>
    80003898:	fddff06f          	j	80003874 <console_handler+0x74>
    8000389c:	00001517          	auipc	a0,0x1
    800038a0:	95450513          	addi	a0,a0,-1708 # 800041f0 <digits+0x78>
    800038a4:	fffff097          	auipc	ra,0xfffff
    800038a8:	a68080e7          	jalr	-1432(ra) # 8000230c <panic>
	...
