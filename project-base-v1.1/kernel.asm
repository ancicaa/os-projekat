
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	9a813103          	ld	sp,-1624(sp) # 8000b9a8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	564060ef          	jal	ra,80006580 <start>

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
    80001088:	375000ef          	jal	ra,80001bfc <_ZN5Riscv13obradaprekidaEmmmmm>

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

00000000800011a0 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    800011a0:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    800011a4:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    800011a8:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    800011ac:	0085b103          	ld	sp,8(a1)

    ret
    800011b0:	00008067          	ret

00000000800011b4 <_ZN5Riscv13pushRegistersEv>:


.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    800011b4:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    800011b8:	00313c23          	sd	gp,24(sp)
    800011bc:	02413023          	sd	tp,32(sp)
    800011c0:	02513423          	sd	t0,40(sp)
    800011c4:	02613823          	sd	t1,48(sp)
    800011c8:	02713c23          	sd	t2,56(sp)
    800011cc:	04813023          	sd	s0,64(sp)
    800011d0:	04913423          	sd	s1,72(sp)
    800011d4:	04a13823          	sd	a0,80(sp)
    800011d8:	04b13c23          	sd	a1,88(sp)
    800011dc:	06c13023          	sd	a2,96(sp)
    800011e0:	06d13423          	sd	a3,104(sp)
    800011e4:	06e13823          	sd	a4,112(sp)
    800011e8:	06f13c23          	sd	a5,120(sp)
    800011ec:	09013023          	sd	a6,128(sp)
    800011f0:	09113423          	sd	a7,136(sp)
    800011f4:	09213823          	sd	s2,144(sp)
    800011f8:	09313c23          	sd	s3,152(sp)
    800011fc:	0b413023          	sd	s4,160(sp)
    80001200:	0b513423          	sd	s5,168(sp)
    80001204:	0b613823          	sd	s6,176(sp)
    80001208:	0b713c23          	sd	s7,184(sp)
    8000120c:	0d813023          	sd	s8,192(sp)
    80001210:	0d913423          	sd	s9,200(sp)
    80001214:	0da13823          	sd	s10,208(sp)
    80001218:	0db13c23          	sd	s11,216(sp)
    8000121c:	0fc13023          	sd	t3,224(sp)
    80001220:	0fd13423          	sd	t4,232(sp)
    80001224:	0fe13823          	sd	t5,240(sp)
    80001228:	0ff13c23          	sd	t6,248(sp)
    ret
    8000122c:	00008067          	ret

0000000080001230 <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001230:	01813183          	ld	gp,24(sp)
    80001234:	02013203          	ld	tp,32(sp)
    80001238:	02813283          	ld	t0,40(sp)
    8000123c:	03013303          	ld	t1,48(sp)
    80001240:	03813383          	ld	t2,56(sp)
    80001244:	04013403          	ld	s0,64(sp)
    80001248:	04813483          	ld	s1,72(sp)
    8000124c:	05013503          	ld	a0,80(sp)
    80001250:	05813583          	ld	a1,88(sp)
    80001254:	06013603          	ld	a2,96(sp)
    80001258:	06813683          	ld	a3,104(sp)
    8000125c:	07013703          	ld	a4,112(sp)
    80001260:	07813783          	ld	a5,120(sp)
    80001264:	08013803          	ld	a6,128(sp)
    80001268:	08813883          	ld	a7,136(sp)
    8000126c:	09013903          	ld	s2,144(sp)
    80001270:	09813983          	ld	s3,152(sp)
    80001274:	0a013a03          	ld	s4,160(sp)
    80001278:	0a813a83          	ld	s5,168(sp)
    8000127c:	0b013b03          	ld	s6,176(sp)
    80001280:	0b813b83          	ld	s7,184(sp)
    80001284:	0c013c03          	ld	s8,192(sp)
    80001288:	0c813c83          	ld	s9,200(sp)
    8000128c:	0d013d03          	ld	s10,208(sp)
    80001290:	0d813d83          	ld	s11,216(sp)
    80001294:	0e013e03          	ld	t3,224(sp)
    80001298:	0e813e83          	ld	t4,232(sp)
    8000129c:	0f013f03          	ld	t5,240(sp)
    800012a0:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    800012a4:	10010113          	addi	sp,sp,256
    ret
    800012a8:	00008067          	ret

00000000800012ac <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    800012ac:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    800012b0:	00b29a63          	bne	t0,a1,800012c4 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    800012b4:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    800012b8:	fe029ae3          	bnez	t0,800012ac <copy_and_swap>
    li a0, 0               # Set return to success.
    800012bc:	00000513          	li	a0,0
    jr ra                  # Return.
    800012c0:	00008067          	ret

00000000800012c4 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    800012c4:	00100513          	li	a0,1
    800012c8:	00008067          	ret

00000000800012cc <_Z7syscallmmmmm>:
#include "../h/syscall_c.hpp"
#include "../h/riscv.hpp"
#include "../h/TCB.hpp"

uint64 syscall(uint64 code, uint64 arg = 0, uint64 arg2 = 0, uint64 arg3 = 0, uint64 arg4 = 0) {
    800012cc:	fe010113          	addi	sp,sp,-32
    800012d0:	00813c23          	sd	s0,24(sp)
    800012d4:	02010413          	addi	s0,sp,32
    __asm__ volatile ("ecall");
    800012d8:	00000073          	ecall

//a0
inline uint64 Riscv::r_a0()
{
    uint64 volatile a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    800012dc:	00050793          	mv	a5,a0
    800012e0:	fef43423          	sd	a5,-24(s0)
    return a0;
    800012e4:	fe843503          	ld	a0,-24(s0)
    return Riscv::r_a0();
}
    800012e8:	01813403          	ld	s0,24(sp)
    800012ec:	02010113          	addi	sp,sp,32
    800012f0:	00008067          	ret

00000000800012f4 <_Z9mem_allocm>:

//-------------------------memorija
void *mem_alloc(size_t size) {
    800012f4:	ff010113          	addi	sp,sp,-16
    800012f8:	00113423          	sd	ra,8(sp)
    800012fc:	00813023          	sd	s0,0(sp)
    80001300:	01010413          	addi	s0,sp,16
    int blocks = (size - 1) / MEM_BLOCK_SIZE + 1;
    80001304:	fff50593          	addi	a1,a0,-1
    80001308:	0065d593          	srli	a1,a1,0x6
    return (void *) syscall(MEM_ALLOC, blocks);
    8000130c:	00000713          	li	a4,0
    80001310:	00000693          	li	a3,0
    80001314:	00000613          	li	a2,0
    80001318:	0015859b          	addiw	a1,a1,1
    8000131c:	00100513          	li	a0,1
    80001320:	00000097          	auipc	ra,0x0
    80001324:	fac080e7          	jalr	-84(ra) # 800012cc <_Z7syscallmmmmm>
}
    80001328:	00813083          	ld	ra,8(sp)
    8000132c:	00013403          	ld	s0,0(sp)
    80001330:	01010113          	addi	sp,sp,16
    80001334:	00008067          	ret

0000000080001338 <_Z8mem_freePv>:

int mem_free(void *ptr) {
    80001338:	ff010113          	addi	sp,sp,-16
    8000133c:	00113423          	sd	ra,8(sp)
    80001340:	00813023          	sd	s0,0(sp)
    80001344:	01010413          	addi	s0,sp,16
    80001348:	00050593          	mv	a1,a0
    return syscall(MEM_FREE, (uint64) ptr);
    8000134c:	00000713          	li	a4,0
    80001350:	00000693          	li	a3,0
    80001354:	00000613          	li	a2,0
    80001358:	00200513          	li	a0,2
    8000135c:	00000097          	auipc	ra,0x0
    80001360:	f70080e7          	jalr	-144(ra) # 800012cc <_Z7syscallmmmmm>
}
    80001364:	0005051b          	sext.w	a0,a0
    80001368:	00813083          	ld	ra,8(sp)
    8000136c:	00013403          	ld	s0,0(sp)
    80001370:	01010113          	addi	sp,sp,16
    80001374:	00008067          	ret

0000000080001378 <_Z13thread_createPP3TCBPFvPvES2_>:

//-------------------------niti
int thread_create(thread_t *handle, void(*start_routine)(void *), void *arg) {
    80001378:	fd010113          	addi	sp,sp,-48
    8000137c:	02113423          	sd	ra,40(sp)
    80001380:	02813023          	sd	s0,32(sp)
    80001384:	00913c23          	sd	s1,24(sp)
    80001388:	01213823          	sd	s2,16(sp)
    8000138c:	01313423          	sd	s3,8(sp)
    80001390:	03010413          	addi	s0,sp,48
    80001394:	00050913          	mv	s2,a0
    80001398:	00058493          	mv	s1,a1
    8000139c:	00060993          	mv	s3,a2
    void *space = nullptr;
    if (start_routine) {
    800013a0:	04058663          	beqz	a1,800013ec <_Z13thread_createPP3TCBPFvPvES2_+0x74>
        space = mem_alloc(DEFAULT_STACK_SIZE);
    800013a4:	00001537          	lui	a0,0x1
    800013a8:	00000097          	auipc	ra,0x0
    800013ac:	f4c080e7          	jalr	-180(ra) # 800012f4 <_Z9mem_allocm>
    800013b0:	00050713          	mv	a4,a0
    }
    return (int) syscall(THREAD_CREATE, (uint64) handle, (uint64) start_routine, (uint64) arg, (uint64) space);
    800013b4:	00098693          	mv	a3,s3
    800013b8:	00048613          	mv	a2,s1
    800013bc:	00090593          	mv	a1,s2
    800013c0:	01100513          	li	a0,17
    800013c4:	00000097          	auipc	ra,0x0
    800013c8:	f08080e7          	jalr	-248(ra) # 800012cc <_Z7syscallmmmmm>
}
    800013cc:	0005051b          	sext.w	a0,a0
    800013d0:	02813083          	ld	ra,40(sp)
    800013d4:	02013403          	ld	s0,32(sp)
    800013d8:	01813483          	ld	s1,24(sp)
    800013dc:	01013903          	ld	s2,16(sp)
    800013e0:	00813983          	ld	s3,8(sp)
    800013e4:	03010113          	addi	sp,sp,48
    800013e8:	00008067          	ret
    void *space = nullptr;
    800013ec:	00000713          	li	a4,0
    800013f0:	fc5ff06f          	j	800013b4 <_Z13thread_createPP3TCBPFvPvES2_+0x3c>

00000000800013f4 <_Z11thread_exitv>:

int thread_exit() {
    800013f4:	ff010113          	addi	sp,sp,-16
    800013f8:	00113423          	sd	ra,8(sp)
    800013fc:	00813023          	sd	s0,0(sp)
    80001400:	01010413          	addi	s0,sp,16
    return (int) syscall(THREAD_EXIT);
    80001404:	00000713          	li	a4,0
    80001408:	00000693          	li	a3,0
    8000140c:	00000613          	li	a2,0
    80001410:	00000593          	li	a1,0
    80001414:	01200513          	li	a0,18
    80001418:	00000097          	auipc	ra,0x0
    8000141c:	eb4080e7          	jalr	-332(ra) # 800012cc <_Z7syscallmmmmm>
}
    80001420:	0005051b          	sext.w	a0,a0
    80001424:	00813083          	ld	ra,8(sp)
    80001428:	00013403          	ld	s0,0(sp)
    8000142c:	01010113          	addi	sp,sp,16
    80001430:	00008067          	ret

0000000080001434 <_Z15thread_dispatchv>:


void thread_dispatch() {
    80001434:	ff010113          	addi	sp,sp,-16
    80001438:	00113423          	sd	ra,8(sp)
    8000143c:	00813023          	sd	s0,0(sp)
    80001440:	01010413          	addi	s0,sp,16
    (void) syscall(THREAD_DISPATCH);
    80001444:	00000713          	li	a4,0
    80001448:	00000693          	li	a3,0
    8000144c:	00000613          	li	a2,0
    80001450:	00000593          	li	a1,0
    80001454:	01300513          	li	a0,19
    80001458:	00000097          	auipc	ra,0x0
    8000145c:	e74080e7          	jalr	-396(ra) # 800012cc <_Z7syscallmmmmm>
}
    80001460:	00813083          	ld	ra,8(sp)
    80001464:	00013403          	ld	s0,0(sp)
    80001468:	01010113          	addi	sp,sp,16
    8000146c:	00008067          	ret

0000000080001470 <_Z11thread_joinP3TCB>:

int thread_join(thread_t id) {
    80001470:	ff010113          	addi	sp,sp,-16
    80001474:	00113423          	sd	ra,8(sp)
    80001478:	00813023          	sd	s0,0(sp)
    8000147c:	01010413          	addi	s0,sp,16
    80001480:	00050593          	mv	a1,a0
    return (int) syscall(THREAD_JOIN, (uint64) id);
    80001484:	00000713          	li	a4,0
    80001488:	00000693          	li	a3,0
    8000148c:	00000613          	li	a2,0
    80001490:	01400513          	li	a0,20
    80001494:	00000097          	auipc	ra,0x0
    80001498:	e38080e7          	jalr	-456(ra) # 800012cc <_Z7syscallmmmmm>
}
    8000149c:	0005051b          	sext.w	a0,a0
    800014a0:	00813083          	ld	ra,8(sp)
    800014a4:	00013403          	ld	s0,0(sp)
    800014a8:	01010113          	addi	sp,sp,16
    800014ac:	00008067          	ret

00000000800014b0 <_Z13setMaxThreadsi>:

void setMaxThreads(int number) {
    800014b0:	ff010113          	addi	sp,sp,-16
    800014b4:	00113423          	sd	ra,8(sp)
    800014b8:	00813023          	sd	s0,0(sp)
    800014bc:	01010413          	addi	s0,sp,16
    800014c0:	00050593          	mv	a1,a0
    syscall(THREAD_MAX, number);
    800014c4:	00000713          	li	a4,0
    800014c8:	00000693          	li	a3,0
    800014cc:	00000613          	li	a2,0
    800014d0:	01600513          	li	a0,22
    800014d4:	00000097          	auipc	ra,0x0
    800014d8:	df8080e7          	jalr	-520(ra) # 800012cc <_Z7syscallmmmmm>
}
    800014dc:	00813083          	ld	ra,8(sp)
    800014e0:	00013403          	ld	s0,0(sp)
    800014e4:	01010113          	addi	sp,sp,16
    800014e8:	00008067          	ret

00000000800014ec <_Z14thread_waitallv>:

void thread_waitall() {
    800014ec:	ff010113          	addi	sp,sp,-16
    800014f0:	00113423          	sd	ra,8(sp)
    800014f4:	00813023          	sd	s0,0(sp)
    800014f8:	01010413          	addi	s0,sp,16
    syscall(THREAD_WAITALL);
    800014fc:	00000713          	li	a4,0
    80001500:	00000693          	li	a3,0
    80001504:	00000613          	li	a2,0
    80001508:	00000593          	li	a1,0
    8000150c:	01500513          	li	a0,21
    80001510:	00000097          	auipc	ra,0x0
    80001514:	dbc080e7          	jalr	-580(ra) # 800012cc <_Z7syscallmmmmm>
}
    80001518:	00813083          	ld	ra,8(sp)
    8000151c:	00013403          	ld	s0,0(sp)
    80001520:	01010113          	addi	sp,sp,16
    80001524:	00008067          	ret

0000000080001528 <_Z4sendP3TCBPKc>:

void send(thread_t id, const char *msg) {
    80001528:	ff010113          	addi	sp,sp,-16
    8000152c:	00113423          	sd	ra,8(sp)
    80001530:	00813023          	sd	s0,0(sp)
    80001534:	01010413          	addi	s0,sp,16
    80001538:	00058613          	mv	a2,a1
    //id->box_empty->wait();
    syscall(SEND, (uint64) id, (uint64) msg);
    8000153c:	00000713          	li	a4,0
    80001540:	00000693          	li	a3,0
    80001544:	00050593          	mv	a1,a0
    80001548:	05000513          	li	a0,80
    8000154c:	00000097          	auipc	ra,0x0
    80001550:	d80080e7          	jalr	-640(ra) # 800012cc <_Z7syscallmmmmm>
}
    80001554:	00813083          	ld	ra,8(sp)
    80001558:	00013403          	ld	s0,0(sp)
    8000155c:	01010113          	addi	sp,sp,16
    80001560:	00008067          	ret

0000000080001564 <_Z7receivev>:

const char *receive() {
    80001564:	ff010113          	addi	sp,sp,-16
    80001568:	00113423          	sd	ra,8(sp)
    8000156c:	00813023          	sd	s0,0(sp)
    80001570:	01010413          	addi	s0,sp,16
    return (const char *) syscall(RECEIVE);
    80001574:	00000713          	li	a4,0
    80001578:	00000693          	li	a3,0
    8000157c:	00000613          	li	a2,0
    80001580:	00000593          	li	a1,0
    80001584:	05100513          	li	a0,81
    80001588:	00000097          	auipc	ra,0x0
    8000158c:	d44080e7          	jalr	-700(ra) # 800012cc <_Z7syscallmmmmm>
}
    80001590:	00813083          	ld	ra,8(sp)
    80001594:	00013403          	ld	s0,0(sp)
    80001598:	01010113          	addi	sp,sp,16
    8000159c:	00008067          	ret

00000000800015a0 <_Z8sem_openPP4_semj>:

//-------------------------semafori
int sem_open(sem_t *handle, unsigned int init) {
    800015a0:	ff010113          	addi	sp,sp,-16
    800015a4:	00113423          	sd	ra,8(sp)
    800015a8:	00813023          	sd	s0,0(sp)
    800015ac:	01010413          	addi	s0,sp,16
    return (int) syscall(SEM_OPEN, (uint64) handle, init);
    800015b0:	00000713          	li	a4,0
    800015b4:	00000693          	li	a3,0
    800015b8:	02059613          	slli	a2,a1,0x20
    800015bc:	02065613          	srli	a2,a2,0x20
    800015c0:	00050593          	mv	a1,a0
    800015c4:	02100513          	li	a0,33
    800015c8:	00000097          	auipc	ra,0x0
    800015cc:	d04080e7          	jalr	-764(ra) # 800012cc <_Z7syscallmmmmm>
}
    800015d0:	0005051b          	sext.w	a0,a0
    800015d4:	00813083          	ld	ra,8(sp)
    800015d8:	00013403          	ld	s0,0(sp)
    800015dc:	01010113          	addi	sp,sp,16
    800015e0:	00008067          	ret

00000000800015e4 <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle) {
    800015e4:	ff010113          	addi	sp,sp,-16
    800015e8:	00113423          	sd	ra,8(sp)
    800015ec:	00813023          	sd	s0,0(sp)
    800015f0:	01010413          	addi	s0,sp,16
    800015f4:	00050593          	mv	a1,a0
    return (int) syscall(SEM_OPEN, (uint64) handle);
    800015f8:	00000713          	li	a4,0
    800015fc:	00000693          	li	a3,0
    80001600:	00000613          	li	a2,0
    80001604:	02100513          	li	a0,33
    80001608:	00000097          	auipc	ra,0x0
    8000160c:	cc4080e7          	jalr	-828(ra) # 800012cc <_Z7syscallmmmmm>
}
    80001610:	0005051b          	sext.w	a0,a0
    80001614:	00813083          	ld	ra,8(sp)
    80001618:	00013403          	ld	s0,0(sp)
    8000161c:	01010113          	addi	sp,sp,16
    80001620:	00008067          	ret

0000000080001624 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id) {
    80001624:	ff010113          	addi	sp,sp,-16
    80001628:	00113423          	sd	ra,8(sp)
    8000162c:	00813023          	sd	s0,0(sp)
    80001630:	01010413          	addi	s0,sp,16
    80001634:	00050593          	mv	a1,a0
    return (int) syscall(SEM_WAIT, (uint64) id);
    80001638:	00000713          	li	a4,0
    8000163c:	00000693          	li	a3,0
    80001640:	00000613          	li	a2,0
    80001644:	02300513          	li	a0,35
    80001648:	00000097          	auipc	ra,0x0
    8000164c:	c84080e7          	jalr	-892(ra) # 800012cc <_Z7syscallmmmmm>
}
    80001650:	0005051b          	sext.w	a0,a0
    80001654:	00813083          	ld	ra,8(sp)
    80001658:	00013403          	ld	s0,0(sp)
    8000165c:	01010113          	addi	sp,sp,16
    80001660:	00008067          	ret

0000000080001664 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id) {
    80001664:	ff010113          	addi	sp,sp,-16
    80001668:	00113423          	sd	ra,8(sp)
    8000166c:	00813023          	sd	s0,0(sp)
    80001670:	01010413          	addi	s0,sp,16
    80001674:	00050593          	mv	a1,a0
    return (int) syscall(SEM_SIGNAL, (uint64) id);
    80001678:	00000713          	li	a4,0
    8000167c:	00000693          	li	a3,0
    80001680:	00000613          	li	a2,0
    80001684:	02400513          	li	a0,36
    80001688:	00000097          	auipc	ra,0x0
    8000168c:	c44080e7          	jalr	-956(ra) # 800012cc <_Z7syscallmmmmm>
}
    80001690:	0005051b          	sext.w	a0,a0
    80001694:	00813083          	ld	ra,8(sp)
    80001698:	00013403          	ld	s0,0(sp)
    8000169c:	01010113          	addi	sp,sp,16
    800016a0:	00008067          	ret

00000000800016a4 <_Z11sem_trywaitP4_sem>:

int sem_trywait(sem_t id) {
    800016a4:	ff010113          	addi	sp,sp,-16
    800016a8:	00113423          	sd	ra,8(sp)
    800016ac:	00813023          	sd	s0,0(sp)
    800016b0:	01010413          	addi	s0,sp,16
    800016b4:	00050593          	mv	a1,a0
    return (int) syscall(SEM_TRYWAIT, (uint64) id);
    800016b8:	00000713          	li	a4,0
    800016bc:	00000693          	li	a3,0
    800016c0:	00000613          	li	a2,0
    800016c4:	02600513          	li	a0,38
    800016c8:	00000097          	auipc	ra,0x0
    800016cc:	c04080e7          	jalr	-1020(ra) # 800012cc <_Z7syscallmmmmm>
}
    800016d0:	0005051b          	sext.w	a0,a0
    800016d4:	00813083          	ld	ra,8(sp)
    800016d8:	00013403          	ld	s0,0(sp)
    800016dc:	01010113          	addi	sp,sp,16
    800016e0:	00008067          	ret

00000000800016e4 <_Z4getcv>:

//-------------------------------------
char getc() {
    800016e4:	ff010113          	addi	sp,sp,-16
    800016e8:	00113423          	sd	ra,8(sp)
    800016ec:	00813023          	sd	s0,0(sp)
    800016f0:	01010413          	addi	s0,sp,16
    return syscall(GETC);
    800016f4:	00000713          	li	a4,0
    800016f8:	00000693          	li	a3,0
    800016fc:	00000613          	li	a2,0
    80001700:	00000593          	li	a1,0
    80001704:	04100513          	li	a0,65
    80001708:	00000097          	auipc	ra,0x0
    8000170c:	bc4080e7          	jalr	-1084(ra) # 800012cc <_Z7syscallmmmmm>
}
    80001710:	0ff57513          	andi	a0,a0,255
    80001714:	00813083          	ld	ra,8(sp)
    80001718:	00013403          	ld	s0,0(sp)
    8000171c:	01010113          	addi	sp,sp,16
    80001720:	00008067          	ret

0000000080001724 <_Z4putcc>:

void putc(char c) {
    80001724:	ff010113          	addi	sp,sp,-16
    80001728:	00113423          	sd	ra,8(sp)
    8000172c:	00813023          	sd	s0,0(sp)
    80001730:	01010413          	addi	s0,sp,16
    80001734:	00050593          	mv	a1,a0
    syscall(PUTC, c);
    80001738:	00000713          	li	a4,0
    8000173c:	00000693          	li	a3,0
    80001740:	00000613          	li	a2,0
    80001744:	04200513          	li	a0,66
    80001748:	00000097          	auipc	ra,0x0
    8000174c:	b84080e7          	jalr	-1148(ra) # 800012cc <_Z7syscallmmmmm>
}
    80001750:	00813083          	ld	ra,8(sp)
    80001754:	00013403          	ld	s0,0(sp)
    80001758:	01010113          	addi	sp,sp,16
    8000175c:	00008067          	ret

0000000080001760 <_Z13sem_timedwaitP4_semm>:


int sem_timedwait(sem_t, time_t) {
    80001760:	ff010113          	addi	sp,sp,-16
    80001764:	00813423          	sd	s0,8(sp)
    80001768:	01010413          	addi	s0,sp,16
    return 0;
}
    8000176c:	00000513          	li	a0,0
    80001770:	00813403          	ld	s0,8(sp)
    80001774:	01010113          	addi	sp,sp,16
    80001778:	00008067          	ret

000000008000177c <_Z10time_sleepm>:

int time_sleep(time_t) {
    8000177c:	ff010113          	addi	sp,sp,-16
    80001780:	00813423          	sd	s0,8(sp)
    80001784:	01010413          	addi	s0,sp,16
    return 0;
    80001788:	00000513          	li	a0,0
    8000178c:	00813403          	ld	s0,8(sp)
    80001790:	01010113          	addi	sp,sp,16
    80001794:	00008067          	ret

0000000080001798 <main>:

extern "C" void rutina();

extern void userMain();

int main() {
    80001798:	fe010113          	addi	sp,sp,-32
    8000179c:	00113c23          	sd	ra,24(sp)
    800017a0:	00813823          	sd	s0,16(sp)
    800017a4:	02010413          	addi	s0,sp,32
    MemoryAllocator::init();
    800017a8:	00001097          	auipc	ra,0x1
    800017ac:	fdc080e7          	jalr	-36(ra) # 80002784 <_ZN15MemoryAllocator4initEv>
    Riscv::w_stvec((uint64) rutina);// upis adrese prekidne rutinina
    800017b0:	0000a797          	auipc	a5,0xa
    800017b4:	1e87b783          	ld	a5,488(a5) # 8000b998 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800017b8:	10579073          	csrw	stvec,a5

    setMaxThreads(10);
    800017bc:	00a00513          	li	a0,10
    800017c0:	00000097          	auipc	ra,0x0
    800017c4:	cf0080e7          	jalr	-784(ra) # 800014b0 <_Z13setMaxThreadsi>
    thread_t main_handle;
    thread_create(&main_handle, nullptr, nullptr);
    800017c8:	00000613          	li	a2,0
    800017cc:	00000593          	li	a1,0
    800017d0:	fe840513          	addi	a0,s0,-24
    800017d4:	00000097          	auipc	ra,0x0
    800017d8:	ba4080e7          	jalr	-1116(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>

    thread_t um_handle;
    thread_create(&um_handle, reinterpret_cast<void (*)(void *)>(userMain), nullptr);
    800017dc:	00000613          	li	a2,0
    800017e0:	0000a597          	auipc	a1,0xa
    800017e4:	1b05b583          	ld	a1,432(a1) # 8000b990 <_GLOBAL_OFFSET_TABLE_+0x8>
    800017e8:	fe040513          	addi	a0,s0,-32
    800017ec:	00000097          	auipc	ra,0x0
    800017f0:	b8c080e7          	jalr	-1140(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_join(um_handle);
    800017f4:	fe043503          	ld	a0,-32(s0)
    800017f8:	00000097          	auipc	ra,0x0
    800017fc:	c78080e7          	jalr	-904(ra) # 80001470 <_Z11thread_joinP3TCB>
    return 0;
    80001800:	00000513          	li	a0,0
    80001804:	01813083          	ld	ra,24(sp)
    80001808:	01013403          	ld	s0,16(sp)
    8000180c:	02010113          	addi	sp,sp,32
    80001810:	00008067          	ret

0000000080001814 <_ZN6Thread10wrapperRunEPv>:

int Thread::start() {
    return thread_create(&myHandle, wrapperRun, this);
}

void Thread::wrapperRun(void *arg) {
    80001814:	ff010113          	addi	sp,sp,-16
    80001818:	00113423          	sd	ra,8(sp)
    8000181c:	00813023          	sd	s0,0(sp)
    80001820:	01010413          	addi	s0,sp,16
    auto thread = (Thread *) arg;
    if (thread->body == nullptr)
    80001824:	01053783          	ld	a5,16(a0) # 1010 <_entry-0x7fffeff0>
    80001828:	00078e63          	beqz	a5,80001844 <_ZN6Thread10wrapperRunEPv+0x30>
        thread->run();
    else
        thread->body(thread->arg);
    8000182c:	01853503          	ld	a0,24(a0)
    80001830:	000780e7          	jalr	a5
}
    80001834:	00813083          	ld	ra,8(sp)
    80001838:	00013403          	ld	s0,0(sp)
    8000183c:	01010113          	addi	sp,sp,16
    80001840:	00008067          	ret
        thread->run();
    80001844:	00053783          	ld	a5,0(a0)
    80001848:	0107b783          	ld	a5,16(a5)
    8000184c:	000780e7          	jalr	a5
    80001850:	fe5ff06f          	j	80001834 <_ZN6Thread10wrapperRunEPv+0x20>

0000000080001854 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80001854:	ff010113          	addi	sp,sp,-16
    80001858:	00113423          	sd	ra,8(sp)
    8000185c:	00813023          	sd	s0,0(sp)
    80001860:	01010413          	addi	s0,sp,16
    80001864:	0000a797          	auipc	a5,0xa
    80001868:	eec78793          	addi	a5,a5,-276 # 8000b750 <_ZTV6Thread+0x10>
    8000186c:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    80001870:	00853503          	ld	a0,8(a0)
    80001874:	00000097          	auipc	ra,0x0
    80001878:	ac4080e7          	jalr	-1340(ra) # 80001338 <_Z8mem_freePv>
}
    8000187c:	00813083          	ld	ra,8(sp)
    80001880:	00013403          	ld	s0,0(sp)
    80001884:	01010113          	addi	sp,sp,16
    80001888:	00008067          	ret

000000008000188c <_ZN9SemaphoreD1Ev>:
        return -1;
    }
    return sem_trywait(myHandle);
}

Semaphore::~Semaphore() {
    8000188c:	ff010113          	addi	sp,sp,-16
    80001890:	00113423          	sd	ra,8(sp)
    80001894:	00813023          	sd	s0,0(sp)
    80001898:	01010413          	addi	s0,sp,16
    8000189c:	0000a797          	auipc	a5,0xa
    800018a0:	edc78793          	addi	a5,a5,-292 # 8000b778 <_ZTV9Semaphore+0x10>
    800018a4:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    800018a8:	00853503          	ld	a0,8(a0)
    800018ac:	00000097          	auipc	ra,0x0
    800018b0:	d38080e7          	jalr	-712(ra) # 800015e4 <_Z9sem_closeP4_sem>
}
    800018b4:	00813083          	ld	ra,8(sp)
    800018b8:	00013403          	ld	s0,0(sp)
    800018bc:	01010113          	addi	sp,sp,16
    800018c0:	00008067          	ret

00000000800018c4 <_Znwm>:
void *operator new(size_t size) {
    800018c4:	ff010113          	addi	sp,sp,-16
    800018c8:	00113423          	sd	ra,8(sp)
    800018cc:	00813023          	sd	s0,0(sp)
    800018d0:	01010413          	addi	s0,sp,16
    return mem_alloc(size);//MemoryAllocator::mem_alloc(size);
    800018d4:	00000097          	auipc	ra,0x0
    800018d8:	a20080e7          	jalr	-1504(ra) # 800012f4 <_Z9mem_allocm>
}
    800018dc:	00813083          	ld	ra,8(sp)
    800018e0:	00013403          	ld	s0,0(sp)
    800018e4:	01010113          	addi	sp,sp,16
    800018e8:	00008067          	ret

00000000800018ec <_Znam>:
void *operator new[](size_t size) {
    800018ec:	ff010113          	addi	sp,sp,-16
    800018f0:	00113423          	sd	ra,8(sp)
    800018f4:	00813023          	sd	s0,0(sp)
    800018f8:	01010413          	addi	s0,sp,16
    return mem_alloc(size);//)MemoryAllocator::mem_alloc(size);
    800018fc:	00000097          	auipc	ra,0x0
    80001900:	9f8080e7          	jalr	-1544(ra) # 800012f4 <_Z9mem_allocm>
}
    80001904:	00813083          	ld	ra,8(sp)
    80001908:	00013403          	ld	s0,0(sp)
    8000190c:	01010113          	addi	sp,sp,16
    80001910:	00008067          	ret

0000000080001914 <_ZdlPv>:
void operator delete(void *p) noexcept {
    80001914:	ff010113          	addi	sp,sp,-16
    80001918:	00113423          	sd	ra,8(sp)
    8000191c:	00813023          	sd	s0,0(sp)
    80001920:	01010413          	addi	s0,sp,16
    mem_free(p);//MemoryAllocator::mem_free(p);
    80001924:	00000097          	auipc	ra,0x0
    80001928:	a14080e7          	jalr	-1516(ra) # 80001338 <_Z8mem_freePv>
}
    8000192c:	00813083          	ld	ra,8(sp)
    80001930:	00013403          	ld	s0,0(sp)
    80001934:	01010113          	addi	sp,sp,16
    80001938:	00008067          	ret

000000008000193c <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    8000193c:	fe010113          	addi	sp,sp,-32
    80001940:	00113c23          	sd	ra,24(sp)
    80001944:	00813823          	sd	s0,16(sp)
    80001948:	00913423          	sd	s1,8(sp)
    8000194c:	02010413          	addi	s0,sp,32
    80001950:	00050493          	mv	s1,a0
}
    80001954:	00000097          	auipc	ra,0x0
    80001958:	f00080e7          	jalr	-256(ra) # 80001854 <_ZN6ThreadD1Ev>
    8000195c:	00048513          	mv	a0,s1
    80001960:	00000097          	auipc	ra,0x0
    80001964:	fb4080e7          	jalr	-76(ra) # 80001914 <_ZdlPv>
    80001968:	01813083          	ld	ra,24(sp)
    8000196c:	01013403          	ld	s0,16(sp)
    80001970:	00813483          	ld	s1,8(sp)
    80001974:	02010113          	addi	sp,sp,32
    80001978:	00008067          	ret

000000008000197c <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    8000197c:	fe010113          	addi	sp,sp,-32
    80001980:	00113c23          	sd	ra,24(sp)
    80001984:	00813823          	sd	s0,16(sp)
    80001988:	00913423          	sd	s1,8(sp)
    8000198c:	02010413          	addi	s0,sp,32
    80001990:	00050493          	mv	s1,a0
}
    80001994:	00000097          	auipc	ra,0x0
    80001998:	ef8080e7          	jalr	-264(ra) # 8000188c <_ZN9SemaphoreD1Ev>
    8000199c:	00048513          	mv	a0,s1
    800019a0:	00000097          	auipc	ra,0x0
    800019a4:	f74080e7          	jalr	-140(ra) # 80001914 <_ZdlPv>
    800019a8:	01813083          	ld	ra,24(sp)
    800019ac:	01013403          	ld	s0,16(sp)
    800019b0:	00813483          	ld	s1,8(sp)
    800019b4:	02010113          	addi	sp,sp,32
    800019b8:	00008067          	ret

00000000800019bc <_ZdaPv>:
void operator delete[](void *p) noexcept {
    800019bc:	ff010113          	addi	sp,sp,-16
    800019c0:	00113423          	sd	ra,8(sp)
    800019c4:	00813023          	sd	s0,0(sp)
    800019c8:	01010413          	addi	s0,sp,16
    mem_free(p);
    800019cc:	00000097          	auipc	ra,0x0
    800019d0:	96c080e7          	jalr	-1684(ra) # 80001338 <_Z8mem_freePv>
}
    800019d4:	00813083          	ld	ra,8(sp)
    800019d8:	00013403          	ld	s0,0(sp)
    800019dc:	01010113          	addi	sp,sp,16
    800019e0:	00008067          	ret

00000000800019e4 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    800019e4:	ff010113          	addi	sp,sp,-16
    800019e8:	00813423          	sd	s0,8(sp)
    800019ec:	01010413          	addi	s0,sp,16
    800019f0:	0000a797          	auipc	a5,0xa
    800019f4:	d6078793          	addi	a5,a5,-672 # 8000b750 <_ZTV6Thread+0x10>
    800019f8:	00f53023          	sd	a5,0(a0)
    this->body = body;
    800019fc:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    80001a00:	00c53c23          	sd	a2,24(a0)
}
    80001a04:	00813403          	ld	s0,8(sp)
    80001a08:	01010113          	addi	sp,sp,16
    80001a0c:	00008067          	ret

0000000080001a10 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001a10:	ff010113          	addi	sp,sp,-16
    80001a14:	00813423          	sd	s0,8(sp)
    80001a18:	01010413          	addi	s0,sp,16
    80001a1c:	0000a797          	auipc	a5,0xa
    80001a20:	d3478793          	addi	a5,a5,-716 # 8000b750 <_ZTV6Thread+0x10>
    80001a24:	00f53023          	sd	a5,0(a0)
    this->body = nullptr;
    80001a28:	00053823          	sd	zero,16(a0)
}
    80001a2c:	00813403          	ld	s0,8(sp)
    80001a30:	01010113          	addi	sp,sp,16
    80001a34:	00008067          	ret

0000000080001a38 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001a38:	ff010113          	addi	sp,sp,-16
    80001a3c:	00113423          	sd	ra,8(sp)
    80001a40:	00813023          	sd	s0,0(sp)
    80001a44:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001a48:	00000097          	auipc	ra,0x0
    80001a4c:	9ec080e7          	jalr	-1556(ra) # 80001434 <_Z15thread_dispatchv>
}
    80001a50:	00813083          	ld	ra,8(sp)
    80001a54:	00013403          	ld	s0,0(sp)
    80001a58:	01010113          	addi	sp,sp,16
    80001a5c:	00008067          	ret

0000000080001a60 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t t) {
    80001a60:	ff010113          	addi	sp,sp,-16
    80001a64:	00813423          	sd	s0,8(sp)
    80001a68:	01010413          	addi	s0,sp,16
}
    80001a6c:	00000513          	li	a0,0
    80001a70:	00813403          	ld	s0,8(sp)
    80001a74:	01010113          	addi	sp,sp,16
    80001a78:	00008067          	ret

0000000080001a7c <_ZN6Thread5startEv>:
int Thread::start() {
    80001a7c:	ff010113          	addi	sp,sp,-16
    80001a80:	00113423          	sd	ra,8(sp)
    80001a84:	00813023          	sd	s0,0(sp)
    80001a88:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, wrapperRun, this);
    80001a8c:	00050613          	mv	a2,a0
    80001a90:	00000597          	auipc	a1,0x0
    80001a94:	d8458593          	addi	a1,a1,-636 # 80001814 <_ZN6Thread10wrapperRunEPv>
    80001a98:	00850513          	addi	a0,a0,8
    80001a9c:	00000097          	auipc	ra,0x0
    80001aa0:	8dc080e7          	jalr	-1828(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001aa4:	00813083          	ld	ra,8(sp)
    80001aa8:	00013403          	ld	s0,0(sp)
    80001aac:	01010113          	addi	sp,sp,16
    80001ab0:	00008067          	ret

0000000080001ab4 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80001ab4:	ff010113          	addi	sp,sp,-16
    80001ab8:	00113423          	sd	ra,8(sp)
    80001abc:	00813023          	sd	s0,0(sp)
    80001ac0:	01010413          	addi	s0,sp,16
    80001ac4:	0000a797          	auipc	a5,0xa
    80001ac8:	cb478793          	addi	a5,a5,-844 # 8000b778 <_ZTV9Semaphore+0x10>
    80001acc:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80001ad0:	00850513          	addi	a0,a0,8
    80001ad4:	00000097          	auipc	ra,0x0
    80001ad8:	acc080e7          	jalr	-1332(ra) # 800015a0 <_Z8sem_openPP4_semj>
}
    80001adc:	00813083          	ld	ra,8(sp)
    80001ae0:	00013403          	ld	s0,0(sp)
    80001ae4:	01010113          	addi	sp,sp,16
    80001ae8:	00008067          	ret

0000000080001aec <_ZN9Semaphore6signalEv>:
    if (myHandle == nullptr) {
    80001aec:	00853503          	ld	a0,8(a0)
    80001af0:	02050663          	beqz	a0,80001b1c <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    80001af4:	ff010113          	addi	sp,sp,-16
    80001af8:	00113423          	sd	ra,8(sp)
    80001afc:	00813023          	sd	s0,0(sp)
    80001b00:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001b04:	00000097          	auipc	ra,0x0
    80001b08:	b60080e7          	jalr	-1184(ra) # 80001664 <_Z10sem_signalP4_sem>
}
    80001b0c:	00813083          	ld	ra,8(sp)
    80001b10:	00013403          	ld	s0,0(sp)
    80001b14:	01010113          	addi	sp,sp,16
    80001b18:	00008067          	ret
        return -1;
    80001b1c:	fff00513          	li	a0,-1
}
    80001b20:	00008067          	ret

0000000080001b24 <_ZN9Semaphore4waitEv>:
    if (myHandle == nullptr) {
    80001b24:	00853503          	ld	a0,8(a0)
    80001b28:	02050663          	beqz	a0,80001b54 <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    80001b2c:	ff010113          	addi	sp,sp,-16
    80001b30:	00113423          	sd	ra,8(sp)
    80001b34:	00813023          	sd	s0,0(sp)
    80001b38:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001b3c:	00000097          	auipc	ra,0x0
    80001b40:	ae8080e7          	jalr	-1304(ra) # 80001624 <_Z8sem_waitP4_sem>
}
    80001b44:	00813083          	ld	ra,8(sp)
    80001b48:	00013403          	ld	s0,0(sp)
    80001b4c:	01010113          	addi	sp,sp,16
    80001b50:	00008067          	ret
        return -1;
    80001b54:	fff00513          	li	a0,-1
}
    80001b58:	00008067          	ret

0000000080001b5c <_ZN9Semaphore7trywaitEv>:
    if (myHandle == nullptr) {
    80001b5c:	00853503          	ld	a0,8(a0)
    80001b60:	02050663          	beqz	a0,80001b8c <_ZN9Semaphore7trywaitEv+0x30>
int Semaphore::trywait() {
    80001b64:	ff010113          	addi	sp,sp,-16
    80001b68:	00113423          	sd	ra,8(sp)
    80001b6c:	00813023          	sd	s0,0(sp)
    80001b70:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    80001b74:	00000097          	auipc	ra,0x0
    80001b78:	b30080e7          	jalr	-1232(ra) # 800016a4 <_Z11sem_trywaitP4_sem>
}
    80001b7c:	00813083          	ld	ra,8(sp)
    80001b80:	00013403          	ld	s0,0(sp)
    80001b84:	01010113          	addi	sp,sp,16
    80001b88:	00008067          	ret
        return -1;
    80001b8c:	fff00513          	li	a0,-1
}
    80001b90:	00008067          	ret

0000000080001b94 <_ZN7Console4getcEv>:


char Console::getc() {
    80001b94:	ff010113          	addi	sp,sp,-16
    80001b98:	00113423          	sd	ra,8(sp)
    80001b9c:	00813023          	sd	s0,0(sp)
    80001ba0:	01010413          	addi	s0,sp,16
    return ::getc();
    80001ba4:	00000097          	auipc	ra,0x0
    80001ba8:	b40080e7          	jalr	-1216(ra) # 800016e4 <_Z4getcv>
}
    80001bac:	00813083          	ld	ra,8(sp)
    80001bb0:	00013403          	ld	s0,0(sp)
    80001bb4:	01010113          	addi	sp,sp,16
    80001bb8:	00008067          	ret

0000000080001bbc <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80001bbc:	ff010113          	addi	sp,sp,-16
    80001bc0:	00113423          	sd	ra,8(sp)
    80001bc4:	00813023          	sd	s0,0(sp)
    80001bc8:	01010413          	addi	s0,sp,16
    ::putc(c);
    80001bcc:	00000097          	auipc	ra,0x0
    80001bd0:	b58080e7          	jalr	-1192(ra) # 80001724 <_Z4putcc>
    80001bd4:	00813083          	ld	ra,8(sp)
    80001bd8:	00013403          	ld	s0,0(sp)
    80001bdc:	01010113          	addi	sp,sp,16
    80001be0:	00008067          	ret

0000000080001be4 <_ZN6Thread3runEv>:
    static void wrapperRun(void *arg);

protected:
    Thread();

    virtual void run() {}
    80001be4:	ff010113          	addi	sp,sp,-16
    80001be8:	00813423          	sd	s0,8(sp)
    80001bec:	01010413          	addi	s0,sp,16
    80001bf0:	00813403          	ld	s0,8(sp)
    80001bf4:	01010113          	addi	sp,sp,16
    80001bf8:	00008067          	ret

0000000080001bfc <_ZN5Riscv13obradaprekidaEmmmmm>:
    ILLEGAL_INSTRTUCION = 2,
    ILLEGAL_READ_ADDRESS = 5,
    ILLEGAL_WRITE_ADDRESS = 7,
};

void Riscv::obradaprekida(uint64 code, uint64 arg1, uint64 arg2, uint64 arg3, uint64 arg4) {
    80001bfc:	fc010113          	addi	sp,sp,-64
    80001c00:	02113c23          	sd	ra,56(sp)
    80001c04:	02813823          	sd	s0,48(sp)
    80001c08:	04010413          	addi	s0,sp,64
    80001c0c:	00050793          	mv	a5,a0
    80001c10:	00058513          	mv	a0,a1
    80001c14:	00060593          	mv	a1,a2
    80001c18:	00068613          	mv	a2,a3
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001c1c:	142026f3          	csrr	a3,scause
    80001c20:	fcd43823          	sd	a3,-48(s0)
    return scause;
    80001c24:	fd043683          	ld	a3,-48(s0)
    uint64 volatile scause = r_scause();
    80001c28:	fed43423          	sd	a3,-24(s0)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001c2c:	141026f3          	csrr	a3,sepc
    80001c30:	fcd43423          	sd	a3,-56(s0)
    return sepc;
    80001c34:	fc843683          	ld	a3,-56(s0)
    uint64 volatile sepc = r_sepc(); //cita pc
    80001c38:	fed43023          	sd	a3,-32(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001c3c:	100026f3          	csrr	a3,sstatus
    80001c40:	fcd43023          	sd	a3,-64(s0)
    return sstatus;
    80001c44:	fc043683          	ld	a3,-64(s0)
    uint64 volatile sstatus = r_sstatus();//cita status registar
    80001c48:	fcd43c23          	sd	a3,-40(s0)

    if (scause == SYSCALL_S or scause == SYSCALL_U) {
    80001c4c:	fe843803          	ld	a6,-24(s0)
    80001c50:	00900693          	li	a3,9
    80001c54:	06d80863          	beq	a6,a3,80001cc4 <_ZN5Riscv13obradaprekidaEmmmmm+0xc8>
    80001c58:	fe843803          	ld	a6,-24(s0)
    80001c5c:	00800693          	li	a3,8
    80001c60:	06d80263          	beq	a6,a3,80001cc4 <_ZN5Riscv13obradaprekidaEmmmmm+0xc8>
                TCB::receive();
                break;
        }
        w_sstatus(sstatus);
        w_sepc(sepc + 4);
    } else if (scause == TIMER) {
    80001c64:	fe843703          	ld	a4,-24(s0)
    80001c68:	fff00793          	li	a5,-1
    80001c6c:	03f79793          	slli	a5,a5,0x3f
    80001c70:	00178793          	addi	a5,a5,1
    80001c74:	16f70863          	beq	a4,a5,80001de4 <_ZN5Riscv13obradaprekidaEmmmmm+0x1e8>
        mc_sip(SIP_SSIE);
    } else if (scause == CONSOLE) {
    80001c78:	fe843703          	ld	a4,-24(s0)
    80001c7c:	fff00793          	li	a5,-1
    80001c80:	03f79793          	slli	a5,a5,0x3f
    80001c84:	00978793          	addi	a5,a5,9
    80001c88:	16f70463          	beq	a4,a5,80001df0 <_ZN5Riscv13obradaprekidaEmmmmm+0x1f4>
        console_handler();
    } else if (scause == ILLEGAL_INSTRTUCION) {
    80001c8c:	fe843703          	ld	a4,-24(s0)
    80001c90:	00200793          	li	a5,2
    80001c94:	16f70463          	beq	a4,a5,80001dfc <_ZN5Riscv13obradaprekidaEmmmmm+0x200>
        printString("ILLEGAL INSTRUCTION");
        while (true);
    } else if (scause == ILLEGAL_READ_ADDRESS) {
    80001c98:	fe843703          	ld	a4,-24(s0)
    80001c9c:	00500793          	li	a5,5
    80001ca0:	16f70863          	beq	a4,a5,80001e10 <_ZN5Riscv13obradaprekidaEmmmmm+0x214>
        printString("ILLEGAL READ ADDRESS");
        while (true);
    } else if (scause == ILLEGAL_WRITE_ADDRESS) {
    80001ca4:	fe843703          	ld	a4,-24(s0)
    80001ca8:	00700793          	li	a5,7
    80001cac:	04f71e63          	bne	a4,a5,80001d08 <_ZN5Riscv13obradaprekidaEmmmmm+0x10c>
        printString("ILLEGAL WRITE ADDRESS");
    80001cb0:	00007517          	auipc	a0,0x7
    80001cb4:	3a050513          	addi	a0,a0,928 # 80009050 <CONSOLE_STATUS+0x40>
    80001cb8:	00003097          	auipc	ra,0x3
    80001cbc:	2f0080e7          	jalr	752(ra) # 80004fa8 <_Z11printStringPKc>
        while (true);
    80001cc0:	0000006f          	j	80001cc0 <_ZN5Riscv13obradaprekidaEmmmmm+0xc4>
        switch (code) {
    80001cc4:	05100813          	li	a6,81
    80001cc8:	02f86663          	bltu	a6,a5,80001cf4 <_ZN5Riscv13obradaprekidaEmmmmm+0xf8>
    80001ccc:	00279793          	slli	a5,a5,0x2
    80001cd0:	00007817          	auipc	a6,0x7
    80001cd4:	39880813          	addi	a6,a6,920 # 80009068 <CONSOLE_STATUS+0x58>
    80001cd8:	010787b3          	add	a5,a5,a6
    80001cdc:	0007a783          	lw	a5,0(a5)
    80001ce0:	010787b3          	add	a5,a5,a6
    80001ce4:	00078067          	jr	a5
                __mem_alloc(MEM_BLOCK_SIZE*arg1);
    80001ce8:	00651513          	slli	a0,a0,0x6
    80001cec:	00007097          	auipc	ra,0x7
    80001cf0:	b3c080e7          	jalr	-1220(ra) # 80008828 <__mem_alloc>
        w_sstatus(sstatus);
    80001cf4:	fd843783          	ld	a5,-40(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001cf8:	10079073          	csrw	sstatus,a5
        w_sepc(sepc + 4);
    80001cfc:	fe043783          	ld	a5,-32(s0)
    80001d00:	00478793          	addi	a5,a5,4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001d04:	14179073          	csrw	sepc,a5
    }
}
    80001d08:	03813083          	ld	ra,56(sp)
    80001d0c:	03013403          	ld	s0,48(sp)
    80001d10:	04010113          	addi	sp,sp,64
    80001d14:	00008067          	ret
                __mem_free((void*)arg1);
    80001d18:	00007097          	auipc	ra,0x7
    80001d1c:	a44080e7          	jalr	-1468(ra) # 8000875c <__mem_free>
                break;
    80001d20:	fd5ff06f          	j	80001cf4 <_ZN5Riscv13obradaprekidaEmmmmm+0xf8>
                __getc();
    80001d24:	00007097          	auipc	ra,0x7
    80001d28:	954080e7          	jalr	-1708(ra) # 80008678 <__getc>
                break;
    80001d2c:	fc9ff06f          	j	80001cf4 <_ZN5Riscv13obradaprekidaEmmmmm+0xf8>
                __putc(arg1);
    80001d30:	0ff57513          	andi	a0,a0,255
    80001d34:	00007097          	auipc	ra,0x7
    80001d38:	908080e7          	jalr	-1784(ra) # 8000863c <__putc>
                break;
    80001d3c:	fb9ff06f          	j	80001cf4 <_ZN5Riscv13obradaprekidaEmmmmm+0xf8>
                TCB::createThread((thread_t *) arg1, (TCB::Body) arg2, (void *) arg3, (void *) arg4);
    80001d40:	00070693          	mv	a3,a4
    80001d44:	00000097          	auipc	ra,0x0
    80001d48:	338080e7          	jalr	824(ra) # 8000207c <_ZN3TCB12createThreadEPPS_PFvPvES2_S2_>
                break;
    80001d4c:	fa9ff06f          	j	80001cf4 <_ZN5Riscv13obradaprekidaEmmmmm+0xf8>
                TCB::thread_exit();
    80001d50:	00000097          	auipc	ra,0x0
    80001d54:	3d8080e7          	jalr	984(ra) # 80002128 <_ZN3TCB11thread_exitEv>
                break;
    80001d58:	f9dff06f          	j	80001cf4 <_ZN5Riscv13obradaprekidaEmmmmm+0xf8>
                TCB::dispatch();
    80001d5c:	00000097          	auipc	ra,0x0
    80001d60:	14c080e7          	jalr	332(ra) # 80001ea8 <_ZN3TCB8dispatchEv>
                break;
    80001d64:	f91ff06f          	j	80001cf4 <_ZN5Riscv13obradaprekidaEmmmmm+0xf8>
                ((thread_t) arg1)->join();
    80001d68:	00000097          	auipc	ra,0x0
    80001d6c:	440080e7          	jalr	1088(ra) # 800021a8 <_ZN3TCB4joinEv>
                break;
    80001d70:	f85ff06f          	j	80001cf4 <_ZN5Riscv13obradaprekidaEmmmmm+0xf8>
                TCB::waitForAll();
    80001d74:	00000097          	auipc	ra,0x0
    80001d78:	488080e7          	jalr	1160(ra) # 800021fc <_ZN3TCB10waitForAllEv>
                break;
    80001d7c:	f79ff06f          	j	80001cf4 <_ZN5Riscv13obradaprekidaEmmmmm+0xf8>
                TCB::setMaxThread(arg1);
    80001d80:	0005051b          	sext.w	a0,a0
    80001d84:	00000097          	auipc	ra,0x0
    80001d88:	4c4080e7          	jalr	1220(ra) # 80002248 <_ZN3TCB12setMaxThreadEi>
                break;
    80001d8c:	f69ff06f          	j	80001cf4 <_ZN5Riscv13obradaprekidaEmmmmm+0xf8>
                _sem::sem_open((sem_t *) arg1, (long) arg2);
    80001d90:	00000097          	auipc	ra,0x0
    80001d94:	584080e7          	jalr	1412(ra) # 80002314 <_ZN4_sem8sem_openEPPS_l>
                break;
    80001d98:	f5dff06f          	j	80001cf4 <_ZN5Riscv13obradaprekidaEmmmmm+0xf8>
                _sem::sem_close((sem_t) arg1);
    80001d9c:	00000097          	auipc	ra,0x0
    80001da0:	5f8080e7          	jalr	1528(ra) # 80002394 <_ZN4_sem9sem_closeEPS_>
                break;
    80001da4:	f51ff06f          	j	80001cf4 <_ZN5Riscv13obradaprekidaEmmmmm+0xf8>
                _sem::sem_wait((sem_t) arg1);
    80001da8:	00000097          	auipc	ra,0x0
    80001dac:	6a4080e7          	jalr	1700(ra) # 8000244c <_ZN4_sem8sem_waitEPS_>
                break;
    80001db0:	f45ff06f          	j	80001cf4 <_ZN5Riscv13obradaprekidaEmmmmm+0xf8>
                _sem::sem_signal((sem_t) arg1);
    80001db4:	00000097          	auipc	ra,0x0
    80001db8:	75c080e7          	jalr	1884(ra) # 80002510 <_ZN4_sem10sem_signalEPS_>
                break;
    80001dbc:	f39ff06f          	j	80001cf4 <_ZN5Riscv13obradaprekidaEmmmmm+0xf8>
                _sem::sem_trywait((sem_t) arg1);
    80001dc0:	00000097          	auipc	ra,0x0
    80001dc4:	7fc080e7          	jalr	2044(ra) # 800025bc <_ZN4_sem11sem_trywaitEPS_>
                break;
    80001dc8:	f2dff06f          	j	80001cf4 <_ZN5Riscv13obradaprekidaEmmmmm+0xf8>
                TCB::send((thread_t) arg1, (const char *) arg2);
    80001dcc:	00000097          	auipc	ra,0x0
    80001dd0:	49c080e7          	jalr	1180(ra) # 80002268 <_ZN3TCB4sendEPS_PKc>
                break;
    80001dd4:	f21ff06f          	j	80001cf4 <_ZN5Riscv13obradaprekidaEmmmmm+0xf8>
                TCB::receive();
    80001dd8:	00000097          	auipc	ra,0x0
    80001ddc:	4e4080e7          	jalr	1252(ra) # 800022bc <_ZN3TCB7receiveEv>
                break;
    80001de0:	f15ff06f          	j	80001cf4 <_ZN5Riscv13obradaprekidaEmmmmm+0xf8>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001de4:	00200793          	li	a5,2
    80001de8:	1447b073          	csrc	sip,a5
}
    80001dec:	f1dff06f          	j	80001d08 <_ZN5Riscv13obradaprekidaEmmmmm+0x10c>
        console_handler();
    80001df0:	00007097          	auipc	ra,0x7
    80001df4:	8c0080e7          	jalr	-1856(ra) # 800086b0 <console_handler>
    80001df8:	f11ff06f          	j	80001d08 <_ZN5Riscv13obradaprekidaEmmmmm+0x10c>
        printString("ILLEGAL INSTRUCTION");
    80001dfc:	00007517          	auipc	a0,0x7
    80001e00:	22450513          	addi	a0,a0,548 # 80009020 <CONSOLE_STATUS+0x10>
    80001e04:	00003097          	auipc	ra,0x3
    80001e08:	1a4080e7          	jalr	420(ra) # 80004fa8 <_Z11printStringPKc>
        while (true);
    80001e0c:	0000006f          	j	80001e0c <_ZN5Riscv13obradaprekidaEmmmmm+0x210>
        printString("ILLEGAL READ ADDRESS");
    80001e10:	00007517          	auipc	a0,0x7
    80001e14:	22850513          	addi	a0,a0,552 # 80009038 <CONSOLE_STATUS+0x28>
    80001e18:	00003097          	auipc	ra,0x3
    80001e1c:	190080e7          	jalr	400(ra) # 80004fa8 <_Z11printStringPKc>
        while (true);
    80001e20:	0000006f          	j	80001e20 <_ZN5Riscv13obradaprekidaEmmmmm+0x224>

0000000080001e24 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie() {
    80001e24:	ff010113          	addi	sp,sp,-16
    80001e28:	00813423          	sd	s0,8(sp)
    80001e2c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001e30:	10000793          	li	a5,256
    80001e34:	1007b073          	csrc	sstatus,a5
    Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    __asm__ volatile("csrw sepc, ra");
    80001e38:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001e3c:	10200073          	sret
    80001e40:	00813403          	ld	s0,8(sp)
    80001e44:	01010113          	addi	sp,sp,16
    80001e48:	00008067          	ret

0000000080001e4c <_ZN3TCB14thread_wrapperEv>:
    _sem::sem_signal(max_sem);
    TCB::dispatch();
    return 0;
}

void TCB::thread_wrapper() {
    80001e4c:	fe010113          	addi	sp,sp,-32
    80001e50:	00113c23          	sd	ra,24(sp)
    80001e54:	00813823          	sd	s0,16(sp)
    80001e58:	00913423          	sd	s1,8(sp)
    80001e5c:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001e60:	00000097          	auipc	ra,0x0
    80001e64:	fc4080e7          	jalr	-60(ra) # 80001e24 <_ZN5Riscv10popSppSpieEv>
    sem_wait(max_sem);
    80001e68:	0000a497          	auipc	s1,0xa
    80001e6c:	ba848493          	addi	s1,s1,-1112 # 8000ba10 <_ZN3TCB7max_semE>
    80001e70:	0004b503          	ld	a0,0(s1)
    80001e74:	fffff097          	auipc	ra,0xfffff
    80001e78:	7b0080e7          	jalr	1968(ra) # 80001624 <_Z8sem_waitP4_sem>
    running->body(running->arg);
    80001e7c:	0084b783          	ld	a5,8(s1)
    80001e80:	0107b703          	ld	a4,16(a5)
    80001e84:	0187b503          	ld	a0,24(a5)
    80001e88:	000700e7          	jalr	a4
    ::thread_exit();
    80001e8c:	fffff097          	auipc	ra,0xfffff
    80001e90:	568080e7          	jalr	1384(ra) # 800013f4 <_Z11thread_exitv>
}
    80001e94:	01813083          	ld	ra,24(sp)
    80001e98:	01013403          	ld	s0,16(sp)
    80001e9c:	00813483          	ld	s1,8(sp)
    80001ea0:	02010113          	addi	sp,sp,32
    80001ea4:	00008067          	ret

0000000080001ea8 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() { //promena konteksta, trenutnu zavrsenu zameni nekom drugom
    80001ea8:	fe010113          	addi	sp,sp,-32
    80001eac:	00113c23          	sd	ra,24(sp)
    80001eb0:	00813823          	sd	s0,16(sp)
    80001eb4:	00913423          	sd	s1,8(sp)
    80001eb8:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001ebc:	0000a497          	auipc	s1,0xa
    80001ec0:	b5c4b483          	ld	s1,-1188(s1) # 8000ba18 <_ZN3TCB7runningE>
    if (old != nullptr && !old->isFinished() && !old->isBlocked()) {
    80001ec4:	00048a63          	beqz	s1,80001ed8 <_ZN3TCB8dispatchEv+0x30>

class TCB {
public:
    using Body = void (*)(void *);

    bool isFinished() const { return finished; }
    80001ec8:	0384c783          	lbu	a5,56(s1)
    80001ecc:	00079663          	bnez	a5,80001ed8 <_ZN3TCB8dispatchEv+0x30>

    void setFinished(bool value) { finished = value; }

    bool isBlocked() const { return blocked; }
    80001ed0:	0394c783          	lbu	a5,57(s1)
    80001ed4:	02078c63          	beqz	a5,80001f0c <_ZN3TCB8dispatchEv+0x64>
    running = Scheduler::get();
    80001ed8:	00001097          	auipc	ra,0x1
    80001edc:	810080e7          	jalr	-2032(ra) # 800026e8 <_ZN9Scheduler3getEv>
    80001ee0:	0000a797          	auipc	a5,0xa
    80001ee4:	b2a7bc23          	sd	a0,-1224(a5) # 8000ba18 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001ee8:	02850593          	addi	a1,a0,40
    80001eec:	02848513          	addi	a0,s1,40
    80001ef0:	fffff097          	auipc	ra,0xfffff
    80001ef4:	2b0080e7          	jalr	688(ra) # 800011a0 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001ef8:	01813083          	ld	ra,24(sp)
    80001efc:	01013403          	ld	s0,16(sp)
    80001f00:	00813483          	ld	s1,8(sp)
    80001f04:	02010113          	addi	sp,sp,32
    80001f08:	00008067          	ret
        Scheduler::put(old);
    80001f0c:	00048513          	mv	a0,s1
    80001f10:	00000097          	auipc	ra,0x0
    80001f14:	76c080e7          	jalr	1900(ra) # 8000267c <_ZN9Scheduler3putEP3TCB>
    80001f18:	fc1ff06f          	j	80001ed8 <_ZN3TCB8dispatchEv+0x30>

0000000080001f1c <_ZN3TCB5yieldEv>:
void TCB::yield() {
    80001f1c:	ff010113          	addi	sp,sp,-16
    80001f20:	00113423          	sd	ra,8(sp)
    80001f24:	00813023          	sd	s0,0(sp)
    80001f28:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    80001f2c:	fffff097          	auipc	ra,0xfffff
    80001f30:	288080e7          	jalr	648(ra) # 800011b4 <_ZN5Riscv13pushRegistersEv>
    TCB::dispatch();
    80001f34:	00000097          	auipc	ra,0x0
    80001f38:	f74080e7          	jalr	-140(ra) # 80001ea8 <_ZN3TCB8dispatchEv>
    Riscv::popRegisters();
    80001f3c:	fffff097          	auipc	ra,0xfffff
    80001f40:	2f4080e7          	jalr	756(ra) # 80001230 <_ZN5Riscv12popRegistersEv>
}
    80001f44:	00813083          	ld	ra,8(sp)
    80001f48:	00013403          	ld	s0,0(sp)
    80001f4c:	01010113          	addi	sp,sp,16
    80001f50:	00008067          	ret

0000000080001f54 <_ZN3TCBC1EPFvPvES0_S0_>:
TCB::TCB(Body body, void *arg, void *stack_space) : body(body), arg(arg), finished(false),
    80001f54:	fe010113          	addi	sp,sp,-32
    80001f58:	00113c23          	sd	ra,24(sp)
    80001f5c:	00813823          	sd	s0,16(sp)
    80001f60:	00913423          	sd	s1,8(sp)
    80001f64:	01213023          	sd	s2,0(sp)
    80001f68:	02010413          	addi	s0,sp,32
    80001f6c:	00050493          	mv	s1,a0
    80001f70:	00058913          	mv	s2,a1
                                                    blocked(false) {// da li moze drugacije
    80001f74:	00b53823          	sd	a1,16(a0)
    80001f78:	00c53c23          	sd	a2,24(a0)
    80001f7c:	02050c23          	sb	zero,56(a0)
    80001f80:	02050ca3          	sb	zero,57(a0)
        };

        public:

        Elem *head, *tail;
        List() : head(0), tail(0) {}
    80001f84:	04053423          	sd	zero,72(a0)
    80001f88:	04053823          	sd	zero,80(a0)
    if (stack_space) {
    80001f8c:	0a068863          	beqz	a3,8000203c <_ZN3TCBC1EPFvPvES0_S0_+0xe8>
        stack = static_cast<uint64 *>(stack_space);
    80001f90:	02d53023          	sd	a3,32(a0)
    if (body) {
    80001f94:	0c090463          	beqz	s2,8000205c <_ZN3TCBC1EPFvPvES0_S0_+0x108>
        Scheduler::put(this);
    80001f98:	00048513          	mv	a0,s1
    80001f9c:	00000097          	auipc	ra,0x0
    80001fa0:	6e0080e7          	jalr	1760(ra) # 8000267c <_ZN9Scheduler3putEP3TCB>
        running->children.addLast(this);
    80001fa4:	0000a917          	auipc	s2,0xa
    80001fa8:	a7493903          	ld	s2,-1420(s2) # 8000ba18 <_ZN3TCB7runningE>
            if (!tail) { tail = head; }
        }

        void addLast(T *data)
        {
            Elem *elem = new Elem(data, 0);
    80001fac:	01000513          	li	a0,16
    80001fb0:	00000097          	auipc	ra,0x0
    80001fb4:	914080e7          	jalr	-1772(ra) # 800018c4 <_Znwm>
            Elem(T *data, Elem *next) : data(data), next(next) {}
    80001fb8:	00953023          	sd	s1,0(a0)
    80001fbc:	00053423          	sd	zero,8(a0)
            if (tail)
    80001fc0:	05093783          	ld	a5,80(s2)
    80001fc4:	08078663          	beqz	a5,80002050 <_ZN3TCBC1EPFvPvES0_S0_+0xfc>
            {
                tail->next = elem;
    80001fc8:	00a7b423          	sd	a0,8(a5)
                tail = elem;
    80001fcc:	04a93823          	sd	a0,80(s2)
    this->message_box = nullptr;
    80001fd0:	0404bc23          	sd	zero,88(s1)
    _sem::sem_open(&this->box_empty, 1);
    80001fd4:	00100593          	li	a1,1
    80001fd8:	00848513          	addi	a0,s1,8
    80001fdc:	00000097          	auipc	ra,0x0
    80001fe0:	338080e7          	jalr	824(ra) # 80002314 <_ZN4_sem8sem_openEPPS_l>
    _sem::sem_open(&this->box_full, 0);
    80001fe4:	00000593          	li	a1,0
    80001fe8:	00048513          	mv	a0,s1
    80001fec:	00000097          	auipc	ra,0x0
    80001ff0:	328080e7          	jalr	808(ra) # 80002314 <_ZN4_sem8sem_openEPPS_l>
    sem_open(&this->joiner, 0);
    80001ff4:	00000593          	li	a1,0
    80001ff8:	04048513          	addi	a0,s1,64
    80001ffc:	fffff097          	auipc	ra,0xfffff
    80002000:	5a4080e7          	jalr	1444(ra) # 800015a0 <_Z8sem_openPP4_semj>
    context.ra = (uint64) &thread_wrapper;
    80002004:	00000797          	auipc	a5,0x0
    80002008:	e4878793          	addi	a5,a5,-440 # 80001e4c <_ZN3TCB14thread_wrapperEv>
    8000200c:	02f4b423          	sd	a5,40(s1)
    context.sp = (uint64) ((char *) stack + DEFAULT_STACK_SIZE - 1);
    80002010:	0204b783          	ld	a5,32(s1)
    80002014:	00001737          	lui	a4,0x1
    80002018:	fff70713          	addi	a4,a4,-1 # fff <_entry-0x7ffff001>
    8000201c:	00e787b3          	add	a5,a5,a4
    80002020:	02f4b823          	sd	a5,48(s1)
}
    80002024:	01813083          	ld	ra,24(sp)
    80002028:	01013403          	ld	s0,16(sp)
    8000202c:	00813483          	ld	s1,8(sp)
    80002030:	00013903          	ld	s2,0(sp)
    80002034:	02010113          	addi	sp,sp,32
    80002038:	00008067          	ret
        stack = static_cast<uint64 *>(MemoryAllocator::mem_alloc(stack_size_in_blocks * MEM_BLOCK_SIZE));
    8000203c:	00008537          	lui	a0,0x8
    80002040:	00000097          	auipc	ra,0x0
    80002044:	7a0080e7          	jalr	1952(ra) # 800027e0 <_ZN15MemoryAllocator9mem_allocEm>
    80002048:	02a4b023          	sd	a0,32(s1)
    8000204c:	f49ff06f          	j	80001f94 <_ZN3TCBC1EPFvPvES0_S0_+0x40>
            } else
            {
                head = tail = elem;
    80002050:	04a93823          	sd	a0,80(s2)
    80002054:	04a93423          	sd	a0,72(s2)
    80002058:	f79ff06f          	j	80001fd0 <_ZN3TCBC1EPFvPvES0_S0_+0x7c>
        TCB::running = this;
    8000205c:	0000a517          	auipc	a0,0xa
    80002060:	9b450513          	addi	a0,a0,-1612 # 8000ba10 <_ZN3TCB7max_semE>
    80002064:	00953423          	sd	s1,8(a0)
        _sem::sem_open(&max_sem, max_threads);
    80002068:	00009597          	auipc	a1,0x9
    8000206c:	7285b583          	ld	a1,1832(a1) # 8000b790 <_ZN3TCB11max_threadsE>
    80002070:	00000097          	auipc	ra,0x0
    80002074:	2a4080e7          	jalr	676(ra) # 80002314 <_ZN4_sem8sem_openEPPS_l>
    80002078:	f59ff06f          	j	80001fd0 <_ZN3TCBC1EPFvPvES0_S0_+0x7c>

000000008000207c <_ZN3TCB12createThreadEPPS_PFvPvES2_S2_>:
    if (!handle) {
    8000207c:	08050463          	beqz	a0,80002104 <_ZN3TCB12createThreadEPPS_PFvPvES2_S2_+0x88>
int TCB::createThread(thread_t *handle, Body body, void *arg, void *stack_space) {
    80002080:	fc010113          	addi	sp,sp,-64
    80002084:	02113c23          	sd	ra,56(sp)
    80002088:	02813823          	sd	s0,48(sp)
    8000208c:	02913423          	sd	s1,40(sp)
    80002090:	03213023          	sd	s2,32(sp)
    80002094:	01313c23          	sd	s3,24(sp)
    80002098:	01413823          	sd	s4,16(sp)
    8000209c:	01513423          	sd	s5,8(sp)
    800020a0:	04010413          	addi	s0,sp,64
    800020a4:	00050493          	mv	s1,a0
    800020a8:	00058913          	mv	s2,a1
    800020ac:	00060993          	mv	s3,a2
    800020b0:	00068a13          	mv	s4,a3
    TCB *new_thread = new TCB(body, arg, stack_space); //drugi konstruktor da li imati odma samo jedan ili je ovako ok
    800020b4:	06000513          	li	a0,96
    800020b8:	00000097          	auipc	ra,0x0
    800020bc:	80c080e7          	jalr	-2036(ra) # 800018c4 <_Znwm>
    800020c0:	00050a93          	mv	s5,a0
    800020c4:	000a0693          	mv	a3,s4
    800020c8:	00098613          	mv	a2,s3
    800020cc:	00090593          	mv	a1,s2
    800020d0:	00000097          	auipc	ra,0x0
    800020d4:	e84080e7          	jalr	-380(ra) # 80001f54 <_ZN3TCBC1EPFvPvES0_S0_>
    *handle = new_thread;
    800020d8:	0154b023          	sd	s5,0(s1)
    return 0;
    800020dc:	00000513          	li	a0,0
}
    800020e0:	03813083          	ld	ra,56(sp)
    800020e4:	03013403          	ld	s0,48(sp)
    800020e8:	02813483          	ld	s1,40(sp)
    800020ec:	02013903          	ld	s2,32(sp)
    800020f0:	01813983          	ld	s3,24(sp)
    800020f4:	01013a03          	ld	s4,16(sp)
    800020f8:	00813a83          	ld	s5,8(sp)
    800020fc:	04010113          	addi	sp,sp,64
    80002100:	00008067          	ret
        return -1;
    80002104:	fff00513          	li	a0,-1
}
    80002108:	00008067          	ret
    8000210c:	00050493          	mv	s1,a0
    TCB *new_thread = new TCB(body, arg, stack_space); //drugi konstruktor da li imati odma samo jedan ili je ovako ok
    80002110:	000a8513          	mv	a0,s5
    80002114:	00000097          	auipc	ra,0x0
    80002118:	800080e7          	jalr	-2048(ra) # 80001914 <_ZdlPv>
    8000211c:	00048513          	mv	a0,s1
    80002120:	0000b097          	auipc	ra,0xb
    80002124:	a48080e7          	jalr	-1464(ra) # 8000cb68 <_Unwind_Resume>

0000000080002128 <_ZN3TCB11thread_exitEv>:
    if (running == nullptr) {
    80002128:	0000a797          	auipc	a5,0xa
    8000212c:	8f07b783          	ld	a5,-1808(a5) # 8000ba18 <_ZN3TCB7runningE>
    80002130:	06078863          	beqz	a5,800021a0 <_ZN3TCB11thread_exitEv+0x78>
int TCB::thread_exit() { // da li treba jos nesto
    80002134:	fe010113          	addi	sp,sp,-32
    80002138:	00113c23          	sd	ra,24(sp)
    8000213c:	00813823          	sd	s0,16(sp)
    80002140:	00913423          	sd	s1,8(sp)
    80002144:	02010413          	addi	s0,sp,32
    void setFinished(bool value) { finished = value; }
    80002148:	00100713          	li	a4,1
    8000214c:	02e78c23          	sb	a4,56(a5)
    MemoryAllocator::mem_free(running->stack);
    80002150:	0207b503          	ld	a0,32(a5)
    80002154:	00000097          	auipc	ra,0x0
    80002158:	7c4080e7          	jalr	1988(ra) # 80002918 <_ZN15MemoryAllocator8mem_freeEPv>
    _sem::sem_close(running->joiner);
    8000215c:	0000a497          	auipc	s1,0xa
    80002160:	8b448493          	addi	s1,s1,-1868 # 8000ba10 <_ZN3TCB7max_semE>
    80002164:	0084b783          	ld	a5,8(s1)
    80002168:	0407b503          	ld	a0,64(a5)
    8000216c:	00000097          	auipc	ra,0x0
    80002170:	228080e7          	jalr	552(ra) # 80002394 <_ZN4_sem9sem_closeEPS_>
    _sem::sem_signal(max_sem);
    80002174:	0004b503          	ld	a0,0(s1)
    80002178:	00000097          	auipc	ra,0x0
    8000217c:	398080e7          	jalr	920(ra) # 80002510 <_ZN4_sem10sem_signalEPS_>
    TCB::dispatch();
    80002180:	00000097          	auipc	ra,0x0
    80002184:	d28080e7          	jalr	-728(ra) # 80001ea8 <_ZN3TCB8dispatchEv>
    return 0;
    80002188:	00000513          	li	a0,0
}
    8000218c:	01813083          	ld	ra,24(sp)
    80002190:	01013403          	ld	s0,16(sp)
    80002194:	00813483          	ld	s1,8(sp)
    80002198:	02010113          	addi	sp,sp,32
    8000219c:	00008067          	ret
        return -1;
    800021a0:	fff00513          	li	a0,-1
}
    800021a4:	00008067          	ret

00000000800021a8 <_ZN3TCB4joinEv>:
    bool isFinished() const { return finished; }
    800021a8:	03854783          	lbu	a5,56(a0)

int TCB::join() {
    if (this->isFinished() or this == running) return -1;
    800021ac:	04079063          	bnez	a5,800021ec <_ZN3TCB4joinEv+0x44>
    800021b0:	0000a797          	auipc	a5,0xa
    800021b4:	8687b783          	ld	a5,-1944(a5) # 8000ba18 <_ZN3TCB7runningE>
    800021b8:	02a78e63          	beq	a5,a0,800021f4 <_ZN3TCB4joinEv+0x4c>
int TCB::join() {
    800021bc:	ff010113          	addi	sp,sp,-16
    800021c0:	00113423          	sd	ra,8(sp)
    800021c4:	00813023          	sd	s0,0(sp)
    800021c8:	01010413          	addi	s0,sp,16
    sem_wait(this->joiner);
    800021cc:	04053503          	ld	a0,64(a0)
    800021d0:	fffff097          	auipc	ra,0xfffff
    800021d4:	454080e7          	jalr	1108(ra) # 80001624 <_Z8sem_waitP4_sem>
    return 0;
    800021d8:	00000513          	li	a0,0
}
    800021dc:	00813083          	ld	ra,8(sp)
    800021e0:	00013403          	ld	s0,0(sp)
    800021e4:	01010113          	addi	sp,sp,16
    800021e8:	00008067          	ret
    if (this->isFinished() or this == running) return -1;
    800021ec:	fff00513          	li	a0,-1
    800021f0:	00008067          	ret
    800021f4:	fff00513          	li	a0,-1
}
    800021f8:	00008067          	ret

00000000800021fc <_ZN3TCB10waitForAllEv>:

void TCB::waitForAll() {
    800021fc:	fe010113          	addi	sp,sp,-32
    80002200:	00113c23          	sd	ra,24(sp)
    80002204:	00813823          	sd	s0,16(sp)
    80002208:	00913423          	sd	s1,8(sp)
    8000220c:	02010413          	addi	s0,sp,32
    for (auto curr = running->children.head; curr; curr = curr->next) {
    80002210:	0000a797          	auipc	a5,0xa
    80002214:	8087b783          	ld	a5,-2040(a5) # 8000ba18 <_ZN3TCB7runningE>
    80002218:	0487b483          	ld	s1,72(a5)
    8000221c:	00048c63          	beqz	s1,80002234 <_ZN3TCB10waitForAllEv+0x38>
        thread_join(curr->data);
    80002220:	0004b503          	ld	a0,0(s1)
    80002224:	fffff097          	auipc	ra,0xfffff
    80002228:	24c080e7          	jalr	588(ra) # 80001470 <_Z11thread_joinP3TCB>
    for (auto curr = running->children.head; curr; curr = curr->next) {
    8000222c:	0084b483          	ld	s1,8(s1)
    80002230:	fedff06f          	j	8000221c <_ZN3TCB10waitForAllEv+0x20>
    }
}
    80002234:	01813083          	ld	ra,24(sp)
    80002238:	01013403          	ld	s0,16(sp)
    8000223c:	00813483          	ld	s1,8(sp)
    80002240:	02010113          	addi	sp,sp,32
    80002244:	00008067          	ret

0000000080002248 <_ZN3TCB12setMaxThreadEi>:

void TCB::setMaxThread(int number) {
    80002248:	ff010113          	addi	sp,sp,-16
    8000224c:	00813423          	sd	s0,8(sp)
    80002250:	01010413          	addi	s0,sp,16
    max_threads = number;
    80002254:	00009797          	auipc	a5,0x9
    80002258:	52a7be23          	sd	a0,1340(a5) # 8000b790 <_ZN3TCB11max_threadsE>
}
    8000225c:	00813403          	ld	s0,8(sp)
    80002260:	01010113          	addi	sp,sp,16
    80002264:	00008067          	ret

0000000080002268 <_ZN3TCB4sendEPS_PKc>:

void TCB::send(TCB *id, const char *msg) {
    80002268:	fe010113          	addi	sp,sp,-32
    8000226c:	00113c23          	sd	ra,24(sp)
    80002270:	00813823          	sd	s0,16(sp)
    80002274:	00913423          	sd	s1,8(sp)
    80002278:	01213023          	sd	s2,0(sp)
    8000227c:	02010413          	addi	s0,sp,32
    80002280:	00050493          	mv	s1,a0
    80002284:	00058913          	mv	s2,a1
    _sem::sem_wait(id->box_empty);
    80002288:	00853503          	ld	a0,8(a0)
    8000228c:	00000097          	auipc	ra,0x0
    80002290:	1c0080e7          	jalr	448(ra) # 8000244c <_ZN4_sem8sem_waitEPS_>
    id->message_box = msg;
    80002294:	0524bc23          	sd	s2,88(s1)
    _sem::sem_signal(id->box_full);
    80002298:	0004b503          	ld	a0,0(s1)
    8000229c:	00000097          	auipc	ra,0x0
    800022a0:	274080e7          	jalr	628(ra) # 80002510 <_ZN4_sem10sem_signalEPS_>
}
    800022a4:	01813083          	ld	ra,24(sp)
    800022a8:	01013403          	ld	s0,16(sp)
    800022ac:	00813483          	ld	s1,8(sp)
    800022b0:	00013903          	ld	s2,0(sp)
    800022b4:	02010113          	addi	sp,sp,32
    800022b8:	00008067          	ret

00000000800022bc <_ZN3TCB7receiveEv>:

const char *TCB::receive() {
    800022bc:	fe010113          	addi	sp,sp,-32
    800022c0:	00113c23          	sd	ra,24(sp)
    800022c4:	00813823          	sd	s0,16(sp)
    800022c8:	00913423          	sd	s1,8(sp)
    800022cc:	02010413          	addi	s0,sp,32
    _sem::sem_wait(running->box_full);
    800022d0:	00009497          	auipc	s1,0x9
    800022d4:	74048493          	addi	s1,s1,1856 # 8000ba10 <_ZN3TCB7max_semE>
    800022d8:	0084b783          	ld	a5,8(s1)
    800022dc:	0007b503          	ld	a0,0(a5)
    800022e0:	00000097          	auipc	ra,0x0
    800022e4:	16c080e7          	jalr	364(ra) # 8000244c <_ZN4_sem8sem_waitEPS_>
    _sem::sem_signal(running->box_empty);
    800022e8:	0084b783          	ld	a5,8(s1)
    800022ec:	0087b503          	ld	a0,8(a5)
    800022f0:	00000097          	auipc	ra,0x0
    800022f4:	220080e7          	jalr	544(ra) # 80002510 <_ZN4_sem10sem_signalEPS_>
    return running->message_box;
    800022f8:	0084b783          	ld	a5,8(s1)
}
    800022fc:	0587b503          	ld	a0,88(a5)
    80002300:	01813083          	ld	ra,24(sp)
    80002304:	01013403          	ld	s0,16(sp)
    80002308:	00813483          	ld	s1,8(sp)
    8000230c:	02010113          	addi	sp,sp,32
    80002310:	00008067          	ret

0000000080002314 <_ZN4_sem8sem_openEPPS_l>:
#include "../h/_sem.hpp"
#include "../h/scheduler.hpp"
#include "../test/printing.hpp"

int _sem::sem_open(sem_t *handle, long init) {
    if (handle == nullptr) {
    80002314:	06050863          	beqz	a0,80002384 <_ZN4_sem8sem_openEPPS_l+0x70>
int _sem::sem_open(sem_t *handle, long init) {
    80002318:	fe010113          	addi	sp,sp,-32
    8000231c:	00113c23          	sd	ra,24(sp)
    80002320:	00813823          	sd	s0,16(sp)
    80002324:	00913423          	sd	s1,8(sp)
    80002328:	01213023          	sd	s2,0(sp)
    8000232c:	02010413          	addi	s0,sp,32
    80002330:	00050493          	mv	s1,a0
    80002334:	00058913          	mv	s2,a1
        return -1;
    }
    sem_t semaphore = new _sem();
    80002338:	02800513          	li	a0,40
    8000233c:	fffff097          	auipc	ra,0xfffff
    80002340:	588080e7          	jalr	1416(ra) # 800018c4 <_Znwm>

typedef TCB *thread_t;

class _sem {
public:
    _sem(long init = 1) : value(init), closed(false) {}
    80002344:	00009797          	auipc	a5,0x9
    80002348:	46478793          	addi	a5,a5,1124 # 8000b7a8 <_ZTV4_sem+0x10>
    8000234c:	00f53023          	sd	a5,0(a0)
    80002350:	00050823          	sb	zero,16(a0)
        List() : head(0), tail(0) {}
    80002354:	00053c23          	sd	zero,24(a0)
    80002358:	02053023          	sd	zero,32(a0)
    semaphore->value = init;
    8000235c:	01253423          	sd	s2,8(a0)
    semaphore->closed = false;
    *handle = semaphore;
    80002360:	00a4b023          	sd	a0,0(s1)

    if (*handle == nullptr) {
    80002364:	02050463          	beqz	a0,8000238c <_ZN4_sem8sem_openEPPS_l+0x78>
        return -2;
    }
    return 0;
    80002368:	00000513          	li	a0,0
}
    8000236c:	01813083          	ld	ra,24(sp)
    80002370:	01013403          	ld	s0,16(sp)
    80002374:	00813483          	ld	s1,8(sp)
    80002378:	00013903          	ld	s2,0(sp)
    8000237c:	02010113          	addi	sp,sp,32
    80002380:	00008067          	ret
        return -1;
    80002384:	fff00513          	li	a0,-1
}
    80002388:	00008067          	ret
        return -2;
    8000238c:	ffe00513          	li	a0,-2
    80002390:	fddff06f          	j	8000236c <_ZN4_sem8sem_openEPPS_l+0x58>

0000000080002394 <_ZN4_sem9sem_closeEPS_>:


int _sem::sem_close(sem_t handle) {
    if (handle == nullptr || handle->closed) {
    80002394:	0a050063          	beqz	a0,80002434 <_ZN4_sem9sem_closeEPS_+0xa0>
int _sem::sem_close(sem_t handle) {
    80002398:	fe010113          	addi	sp,sp,-32
    8000239c:	00113c23          	sd	ra,24(sp)
    800023a0:	00813823          	sd	s0,16(sp)
    800023a4:	00913423          	sd	s1,8(sp)
    800023a8:	02010413          	addi	s0,sp,32
    800023ac:	00050493          	mv	s1,a0
    if (handle == nullptr || handle->closed) {
    800023b0:	01054783          	lbu	a5,16(a0)
    800023b4:	08079463          	bnez	a5,8000243c <_ZN4_sem9sem_closeEPS_+0xa8>
        return -1;
    }
    handle->closed = true;
    800023b8:	00100793          	li	a5,1
    800023bc:	00f50823          	sb	a5,16(a0)
            return ret;
        }

        T *peekFirst()
        {
            if (!head) { return 0; }
    800023c0:	01853503          	ld	a0,24(a0)
    800023c4:	02050263          	beqz	a0,800023e8 <_ZN4_sem9sem_closeEPS_+0x54>
            return head->data;
    800023c8:	00053503          	ld	a0,0(a0)
    800023cc:	01c0006f          	j	800023e8 <_ZN4_sem9sem_closeEPS_+0x54>
            if (!head) { tail = 0; }
    800023d0:	0204b023          	sd	zero,32(s1)
            delete elem;
    800023d4:	fffff097          	auipc	ra,0xfffff
    800023d8:	540080e7          	jalr	1344(ra) # 80001914 <_ZdlPv>
            if (!head) { return 0; }
    800023dc:	0184b783          	ld	a5,24(s1)
    800023e0:	02078863          	beqz	a5,80002410 <_ZN4_sem9sem_closeEPS_+0x7c>
            return head->data;
    800023e4:	0007b503          	ld	a0,0(a5)
    for (TCB *thread = handle->blokiraneNiti.peekFirst();
         thread != nullptr; thread = handle->blokiraneNiti.peekFirst()) {
    800023e8:	02050463          	beqz	a0,80002410 <_ZN4_sem9sem_closeEPS_+0x7c>

    void setBlocked(bool value) { blocked = value; }
    800023ec:	02050ca3          	sb	zero,57(a0)
        thread->setBlocked(false);  // Oznaci nit kao deblokiranu
        Scheduler::put(thread);     //
    800023f0:	00000097          	auipc	ra,0x0
    800023f4:	28c080e7          	jalr	652(ra) # 8000267c <_ZN9Scheduler3putEP3TCB>
            if (!head) { return 0; }
    800023f8:	0184b503          	ld	a0,24(s1)
    800023fc:	fe0500e3          	beqz	a0,800023dc <_ZN4_sem9sem_closeEPS_+0x48>
            head = head->next;
    80002400:	00853783          	ld	a5,8(a0)
    80002404:	00f4bc23          	sd	a5,24(s1)
            if (!head) { tail = 0; }
    80002408:	fc0796e3          	bnez	a5,800023d4 <_ZN4_sem9sem_closeEPS_+0x40>
    8000240c:	fc5ff06f          	j	800023d0 <_ZN4_sem9sem_closeEPS_+0x3c>
        handle->blokiraneNiti.removeFirst();  // ukloni  nit iz liste
    }

    if (MemoryAllocator::mem_free(handle)) {
    80002410:	00048513          	mv	a0,s1
    80002414:	00000097          	auipc	ra,0x0
    80002418:	504080e7          	jalr	1284(ra) # 80002918 <_ZN15MemoryAllocator8mem_freeEPv>
    8000241c:	02051463          	bnez	a0,80002444 <_ZN4_sem9sem_closeEPS_+0xb0>
        return -2;
    }

    return 0;
}
    80002420:	01813083          	ld	ra,24(sp)
    80002424:	01013403          	ld	s0,16(sp)
    80002428:	00813483          	ld	s1,8(sp)
    8000242c:	02010113          	addi	sp,sp,32
    80002430:	00008067          	ret
        return -1;
    80002434:	fff00513          	li	a0,-1
}
    80002438:	00008067          	ret
        return -1;
    8000243c:	fff00513          	li	a0,-1
    80002440:	fe1ff06f          	j	80002420 <_ZN4_sem9sem_closeEPS_+0x8c>
        return -2;
    80002444:	ffe00513          	li	a0,-2
    80002448:	fd9ff06f          	j	80002420 <_ZN4_sem9sem_closeEPS_+0x8c>

000000008000244c <_ZN4_sem8sem_waitEPS_>:


int _sem::sem_wait(sem_t id) {
    if (id == nullptr || id->closed) {
    8000244c:	0a050a63          	beqz	a0,80002500 <_ZN4_sem8sem_waitEPS_+0xb4>
int _sem::sem_wait(sem_t id) {
    80002450:	fe010113          	addi	sp,sp,-32
    80002454:	00113c23          	sd	ra,24(sp)
    80002458:	00813823          	sd	s0,16(sp)
    8000245c:	00913423          	sd	s1,8(sp)
    80002460:	01213023          	sd	s2,0(sp)
    80002464:	02010413          	addi	s0,sp,32
    80002468:	00050493          	mv	s1,a0
    if (id == nullptr || id->closed) {
    8000246c:	01054783          	lbu	a5,16(a0)
    80002470:	08079c63          	bnez	a5,80002508 <_ZN4_sem8sem_waitEPS_+0xbc>
        return -1;
    }
    if (id->value == 0) {//ako je semafor nula ili manji, blokiraj nit
    80002474:	00853783          	ld	a5,8(a0)
    80002478:	02078863          	beqz	a5,800024a8 <_ZN4_sem8sem_waitEPS_+0x5c>
        TCB::running->setBlocked(true);  //  nit blokirana
        id->blokiraneNiti.addLast(TCB::running);  // Dodaj nit na listu blokiranih
        TCB::yield();
    } else {
        id->value--;
    8000247c:	fff78793          	addi	a5,a5,-1
    80002480:	00f53423          	sd	a5,8(a0)
    }
    if (id->closed)
    80002484:	0104c783          	lbu	a5,16(s1)
    80002488:	06079863          	bnez	a5,800024f8 <_ZN4_sem8sem_waitEPS_+0xac>
        return -1;
    else
        return 0;
    8000248c:	00000513          	li	a0,0
}
    80002490:	01813083          	ld	ra,24(sp)
    80002494:	01013403          	ld	s0,16(sp)
    80002498:	00813483          	ld	s1,8(sp)
    8000249c:	00013903          	ld	s2,0(sp)
    800024a0:	02010113          	addi	sp,sp,32
    800024a4:	00008067          	ret
        TCB::running->setBlocked(true);  //  nit blokirana
    800024a8:	00009797          	auipc	a5,0x9
    800024ac:	5087b783          	ld	a5,1288(a5) # 8000b9b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800024b0:	0007b903          	ld	s2,0(a5)
    800024b4:	00100793          	li	a5,1
    800024b8:	02f90ca3          	sb	a5,57(s2)
            Elem *elem = new Elem(data, 0);
    800024bc:	01000513          	li	a0,16
    800024c0:	fffff097          	auipc	ra,0xfffff
    800024c4:	404080e7          	jalr	1028(ra) # 800018c4 <_Znwm>
            Elem(T *data, Elem *next) : data(data), next(next) {}
    800024c8:	01253023          	sd	s2,0(a0)
    800024cc:	00053423          	sd	zero,8(a0)
            if (tail)
    800024d0:	0204b783          	ld	a5,32(s1)
    800024d4:	00078c63          	beqz	a5,800024ec <_ZN4_sem8sem_waitEPS_+0xa0>
                tail->next = elem;
    800024d8:	00a7b423          	sd	a0,8(a5)
                tail = elem;
    800024dc:	02a4b023          	sd	a0,32(s1)
        TCB::yield();
    800024e0:	00000097          	auipc	ra,0x0
    800024e4:	a3c080e7          	jalr	-1476(ra) # 80001f1c <_ZN3TCB5yieldEv>
    800024e8:	f9dff06f          	j	80002484 <_ZN4_sem8sem_waitEPS_+0x38>
                head = tail = elem;
    800024ec:	02a4b023          	sd	a0,32(s1)
    800024f0:	00a4bc23          	sd	a0,24(s1)
    800024f4:	fedff06f          	j	800024e0 <_ZN4_sem8sem_waitEPS_+0x94>
        return -1;
    800024f8:	fff00513          	li	a0,-1
    800024fc:	f95ff06f          	j	80002490 <_ZN4_sem8sem_waitEPS_+0x44>
        return -1;
    80002500:	fff00513          	li	a0,-1
}
    80002504:	00008067          	ret
        return -1;
    80002508:	fff00513          	li	a0,-1
    8000250c:	f85ff06f          	j	80002490 <_ZN4_sem8sem_waitEPS_+0x44>

0000000080002510 <_ZN4_sem10sem_signalEPS_>:


int _sem::sem_signal(sem_t id) {
    if (id == nullptr) {
    80002510:	08050a63          	beqz	a0,800025a4 <_ZN4_sem10sem_signalEPS_+0x94>
    80002514:	00050793          	mv	a5,a0
        return -1;
    }

    if (id->closed) {
    80002518:	01054703          	lbu	a4,16(a0)
    8000251c:	08071863          	bnez	a4,800025ac <_ZN4_sem10sem_signalEPS_+0x9c>
            if (!tail) { return 0; }
            return tail->data;
        }

        bool isEmpty() const {
            return head == nullptr or tail == nullptr;
    80002520:	01853503          	ld	a0,24(a0)
    80002524:	06050663          	beqz	a0,80002590 <_ZN4_sem10sem_signalEPS_+0x80>
    80002528:	0207b703          	ld	a4,32(a5)
    8000252c:	06070263          	beqz	a4,80002590 <_ZN4_sem10sem_signalEPS_+0x80>
int _sem::sem_signal(sem_t id) {
    80002530:	fe010113          	addi	sp,sp,-32
    80002534:	00113c23          	sd	ra,24(sp)
    80002538:	00813823          	sd	s0,16(sp)
    8000253c:	00913423          	sd	s1,8(sp)
    80002540:	02010413          	addi	s0,sp,32
            head = head->next;
    80002544:	00853703          	ld	a4,8(a0)
    80002548:	00e7bc23          	sd	a4,24(a5)
            if (!head) { tail = 0; }
    8000254c:	02070e63          	beqz	a4,80002588 <_ZN4_sem10sem_signalEPS_+0x78>
            T *ret = elem->data;
    80002550:	00053483          	ld	s1,0(a0)
            delete elem;
    80002554:	fffff097          	auipc	ra,0xfffff
    80002558:	3c0080e7          	jalr	960(ra) # 80001914 <_ZdlPv>

    // da li postoji neka blokirana nit

    if (!id->blokiraneNiti.isEmpty()) {
        TCB *thread = id->blokiraneNiti.removeFirst();  // ako da  deblokiraj prvu
        if (thread != nullptr) {
    8000255c:	04048c63          	beqz	s1,800025b4 <_ZN4_sem10sem_signalEPS_+0xa4>
    80002560:	02048ca3          	sb	zero,57(s1)

            thread->setBlocked(false);  // nije blokirana
            Scheduler::put(thread);  // ubaci
    80002564:	00048513          	mv	a0,s1
    80002568:	00000097          	auipc	ra,0x0
    8000256c:	114080e7          	jalr	276(ra) # 8000267c <_ZN9Scheduler3putEP3TCB>
        }
    } else {
        id->value++;
    }
    return 0;
    80002570:	00000513          	li	a0,0
}
    80002574:	01813083          	ld	ra,24(sp)
    80002578:	01013403          	ld	s0,16(sp)
    8000257c:	00813483          	ld	s1,8(sp)
    80002580:	02010113          	addi	sp,sp,32
    80002584:	00008067          	ret
            if (!head) { tail = 0; }
    80002588:	0207b023          	sd	zero,32(a5)
    8000258c:	fc5ff06f          	j	80002550 <_ZN4_sem10sem_signalEPS_+0x40>
        id->value++;
    80002590:	0087b703          	ld	a4,8(a5)
    80002594:	00170713          	addi	a4,a4,1
    80002598:	00e7b423          	sd	a4,8(a5)
    return 0;
    8000259c:	00000513          	li	a0,0
    800025a0:	00008067          	ret
        return -1;
    800025a4:	fff00513          	li	a0,-1
    800025a8:	00008067          	ret
        return -2;
    800025ac:	ffe00513          	li	a0,-2
}
    800025b0:	00008067          	ret
    return 0;
    800025b4:	00000513          	li	a0,0
    800025b8:	fbdff06f          	j	80002574 <_ZN4_sem10sem_signalEPS_+0x64>

00000000800025bc <_ZN4_sem11sem_trywaitEPS_>:

int _sem::sem_trywait(sem_t id) {
    800025bc:	ff010113          	addi	sp,sp,-16
    800025c0:	00813423          	sd	s0,8(sp)
    800025c4:	01010413          	addi	s0,sp,16
    if (id == nullptr) return -1;
    800025c8:	02050263          	beqz	a0,800025ec <_ZN4_sem11sem_trywaitEPS_+0x30>
    if (id->value <= 0) { // Ako je semafor vec zaključan, vraca 1
    800025cc:	00853783          	ld	a5,8(a0)
    800025d0:	02f05263          	blez	a5,800025f4 <_ZN4_sem11sem_trywaitEPS_+0x38>
        return 1;
    }
    id->value--; // semafor nije zaključan, smanji vrednost semafora i vrati 0
    800025d4:	fff78793          	addi	a5,a5,-1
    800025d8:	00f53423          	sd	a5,8(a0)
    return 0;
    800025dc:	00000513          	li	a0,0
}
    800025e0:	00813403          	ld	s0,8(sp)
    800025e4:	01010113          	addi	sp,sp,16
    800025e8:	00008067          	ret
    if (id == nullptr) return -1;
    800025ec:	fff00513          	li	a0,-1
    800025f0:	ff1ff06f          	j	800025e0 <_ZN4_sem11sem_trywaitEPS_+0x24>
        return 1;
    800025f4:	00100513          	li	a0,1
    800025f8:	fe9ff06f          	j	800025e0 <_ZN4_sem11sem_trywaitEPS_+0x24>

00000000800025fc <_ZN4_semD1Ev>:

    static int sem_signal(sem_t id);

    static int sem_trywait(sem_t id);

    virtual ~_sem() {}
    800025fc:	ff010113          	addi	sp,sp,-16
    80002600:	00813423          	sd	s0,8(sp)
    80002604:	01010413          	addi	s0,sp,16
    80002608:	00813403          	ld	s0,8(sp)
    8000260c:	01010113          	addi	sp,sp,16
    80002610:	00008067          	ret

0000000080002614 <_ZN4_semD0Ev>:
    80002614:	ff010113          	addi	sp,sp,-16
    80002618:	00113423          	sd	ra,8(sp)
    8000261c:	00813023          	sd	s0,0(sp)
    80002620:	01010413          	addi	s0,sp,16
    80002624:	fffff097          	auipc	ra,0xfffff
    80002628:	2f0080e7          	jalr	752(ra) # 80001914 <_ZdlPv>
    8000262c:	00813083          	ld	ra,8(sp)
    80002630:	00013403          	ld	s0,0(sp)
    80002634:	01010113          	addi	sp,sp,16
    80002638:	00008067          	ret

000000008000263c <_Z41__static_initialization_and_destruction_0ii>:
}


TCB *Scheduler::get() {
    return readyThreadQueue.removeFirst();
    8000263c:	ff010113          	addi	sp,sp,-16
    80002640:	00813423          	sd	s0,8(sp)
    80002644:	01010413          	addi	s0,sp,16
    80002648:	00100793          	li	a5,1
    8000264c:	00f50863          	beq	a0,a5,8000265c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002650:	00813403          	ld	s0,8(sp)
    80002654:	01010113          	addi	sp,sp,16
    80002658:	00008067          	ret
    8000265c:	000107b7          	lui	a5,0x10
    80002660:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002664:	fef596e3          	bne	a1,a5,80002650 <_Z41__static_initialization_and_destruction_0ii+0x14>
        List() : head(0), tail(0) {}
    80002668:	00009797          	auipc	a5,0x9
    8000266c:	3b878793          	addi	a5,a5,952 # 8000ba20 <_ZN9Scheduler16readyThreadQueueE>
    80002670:	0007b023          	sd	zero,0(a5)
    80002674:	0007b423          	sd	zero,8(a5)
    80002678:	fd9ff06f          	j	80002650 <_Z41__static_initialization_and_destruction_0ii+0x14>

000000008000267c <_ZN9Scheduler3putEP3TCB>:
void Scheduler::put(TCB *ccb) {
    8000267c:	fe010113          	addi	sp,sp,-32
    80002680:	00113c23          	sd	ra,24(sp)
    80002684:	00813823          	sd	s0,16(sp)
    80002688:	00913423          	sd	s1,8(sp)
    8000268c:	02010413          	addi	s0,sp,32
    80002690:	00050493          	mv	s1,a0
            Elem *elem = new Elem(data, 0);
    80002694:	01000513          	li	a0,16
    80002698:	fffff097          	auipc	ra,0xfffff
    8000269c:	22c080e7          	jalr	556(ra) # 800018c4 <_Znwm>
            Elem(T *data, Elem *next) : data(data), next(next) {}
    800026a0:	00953023          	sd	s1,0(a0)
    800026a4:	00053423          	sd	zero,8(a0)
            if (tail)
    800026a8:	00009797          	auipc	a5,0x9
    800026ac:	3807b783          	ld	a5,896(a5) # 8000ba28 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800026b0:	02078263          	beqz	a5,800026d4 <_ZN9Scheduler3putEP3TCB+0x58>
                tail->next = elem;
    800026b4:	00a7b423          	sd	a0,8(a5)
                tail = elem;
    800026b8:	00009797          	auipc	a5,0x9
    800026bc:	36a7b823          	sd	a0,880(a5) # 8000ba28 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    800026c0:	01813083          	ld	ra,24(sp)
    800026c4:	01013403          	ld	s0,16(sp)
    800026c8:	00813483          	ld	s1,8(sp)
    800026cc:	02010113          	addi	sp,sp,32
    800026d0:	00008067          	ret
                head = tail = elem;
    800026d4:	00009797          	auipc	a5,0x9
    800026d8:	34c78793          	addi	a5,a5,844 # 8000ba20 <_ZN9Scheduler16readyThreadQueueE>
    800026dc:	00a7b423          	sd	a0,8(a5)
    800026e0:	00a7b023          	sd	a0,0(a5)
    800026e4:	fddff06f          	j	800026c0 <_ZN9Scheduler3putEP3TCB+0x44>

00000000800026e8 <_ZN9Scheduler3getEv>:
TCB *Scheduler::get() {
    800026e8:	fe010113          	addi	sp,sp,-32
    800026ec:	00113c23          	sd	ra,24(sp)
    800026f0:	00813823          	sd	s0,16(sp)
    800026f4:	00913423          	sd	s1,8(sp)
    800026f8:	02010413          	addi	s0,sp,32
            if (!head) { return 0; }
    800026fc:	00009517          	auipc	a0,0x9
    80002700:	32453503          	ld	a0,804(a0) # 8000ba20 <_ZN9Scheduler16readyThreadQueueE>
    80002704:	04050263          	beqz	a0,80002748 <_ZN9Scheduler3getEv+0x60>
            head = head->next;
    80002708:	00853783          	ld	a5,8(a0)
    8000270c:	00009717          	auipc	a4,0x9
    80002710:	30f73a23          	sd	a5,788(a4) # 8000ba20 <_ZN9Scheduler16readyThreadQueueE>
            if (!head) { tail = 0; }
    80002714:	02078463          	beqz	a5,8000273c <_ZN9Scheduler3getEv+0x54>
            T *ret = elem->data;
    80002718:	00053483          	ld	s1,0(a0)
            delete elem;
    8000271c:	fffff097          	auipc	ra,0xfffff
    80002720:	1f8080e7          	jalr	504(ra) # 80001914 <_ZdlPv>
    80002724:	00048513          	mv	a0,s1
    80002728:	01813083          	ld	ra,24(sp)
    8000272c:	01013403          	ld	s0,16(sp)
    80002730:	00813483          	ld	s1,8(sp)
    80002734:	02010113          	addi	sp,sp,32
    80002738:	00008067          	ret
            if (!head) { tail = 0; }
    8000273c:	00009797          	auipc	a5,0x9
    80002740:	2e07b623          	sd	zero,748(a5) # 8000ba28 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002744:	fd5ff06f          	j	80002718 <_ZN9Scheduler3getEv+0x30>
            if (!head) { return 0; }
    80002748:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    8000274c:	fd9ff06f          	j	80002724 <_ZN9Scheduler3getEv+0x3c>

0000000080002750 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002750:	ff010113          	addi	sp,sp,-16
    80002754:	00113423          	sd	ra,8(sp)
    80002758:	00813023          	sd	s0,0(sp)
    8000275c:	01010413          	addi	s0,sp,16
    80002760:	000105b7          	lui	a1,0x10
    80002764:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002768:	00100513          	li	a0,1
    8000276c:	00000097          	auipc	ra,0x0
    80002770:	ed0080e7          	jalr	-304(ra) # 8000263c <_Z41__static_initialization_and_destruction_0ii>
    80002774:	00813083          	ld	ra,8(sp)
    80002778:	00013403          	ld	s0,0(sp)
    8000277c:	01010113          	addi	sp,sp,16
    80002780:	00008067          	ret

0000000080002784 <_ZN15MemoryAllocator4initEv>:
#include "../h/MemoryAllocator.hpp"
#include "../test/printing.hpp"

Block *MemoryAllocator::head = nullptr;

void MemoryAllocator::init() {
    80002784:	ff010113          	addi	sp,sp,-16
    80002788:	00813423          	sd	s0,8(sp)
    8000278c:	01010413          	addi	s0,sp,16
    size_t total_heap_size = (char *) HEAP_END_ADDR - (char *) HEAP_START_ADDR;
    80002790:	00009797          	auipc	a5,0x9
    80002794:	2287b783          	ld	a5,552(a5) # 8000b9b8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002798:	0007b703          	ld	a4,0(a5)
    8000279c:	00009797          	auipc	a5,0x9
    800027a0:	2047b783          	ld	a5,516(a5) # 8000b9a0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800027a4:	0007b783          	ld	a5,0(a5)
    800027a8:	40f70733          	sub	a4,a4,a5

    head = (Block *) HEAP_START_ADDR; //incijalizujemo listu blokova
    800027ac:	00009697          	auipc	a3,0x9
    800027b0:	28468693          	addi	a3,a3,644 # 8000ba30 <_ZN15MemoryAllocator4headE>
    800027b4:	00f6b023          	sd	a5,0(a3)
    head->size = total_heap_size - sizeof(Block); //velicina 1.blk
    800027b8:	fe87071b          	addiw	a4,a4,-24
    800027bc:	00e7a823          	sw	a4,16(a5)
    head->free = true;
    800027c0:	00100713          	li	a4,1
    800027c4:	00e78a23          	sb	a4,20(a5)
    head->next = nullptr; //nema sl nema prethodni
    800027c8:	0007b023          	sd	zero,0(a5)
    head->prev = nullptr;
    800027cc:	0006b783          	ld	a5,0(a3)
    800027d0:	0007b423          	sd	zero,8(a5)
}
    800027d4:	00813403          	ld	s0,8(sp)
    800027d8:	01010113          	addi	sp,sp,16
    800027dc:	00008067          	ret

00000000800027e0 <_ZN15MemoryAllocator9mem_allocEm>:

void *MemoryAllocator::mem_alloc(size_t s) {
    800027e0:	ff010113          	addi	sp,sp,-16
    800027e4:	00813423          	sd	s0,8(sp)
    800027e8:	01010413          	addi	s0,sp,16
    if (s <= 0) return nullptr;
    800027ec:	0c050463          	beqz	a0,800028b4 <_ZN15MemoryAllocator9mem_allocEm+0xd4>

    size_t size = s * MEM_BLOCK_SIZE;
    800027f0:	00651713          	slli	a4,a0,0x6
    Block *blk = head;
    800027f4:	00009517          	auipc	a0,0x9
    800027f8:	23c53503          	ld	a0,572(a0) # 8000ba30 <_ZN15MemoryAllocator4headE>
    800027fc:	0080006f          	j	80002804 <_ZN15MemoryAllocator9mem_allocEm+0x24>

    while (blk != nullptr) {
        if (blk->free && blk->size >= size) {
            break;
        }
        blk = blk->next;
    80002800:	00053503          	ld	a0,0(a0)
    while (blk != nullptr) {
    80002804:	00050a63          	beqz	a0,80002818 <_ZN15MemoryAllocator9mem_allocEm+0x38>
        if (blk->free && blk->size >= size) {
    80002808:	01454783          	lbu	a5,20(a0)
    8000280c:	fe078ae3          	beqz	a5,80002800 <_ZN15MemoryAllocator9mem_allocEm+0x20>
    80002810:	01056783          	lwu	a5,16(a0)
    80002814:	fee7e6e3          	bltu	a5,a4,80002800 <_ZN15MemoryAllocator9mem_allocEm+0x20>
    }

    if (blk == nullptr) return nullptr; // nema dovoljno velikog bloka
    80002818:	04050e63          	beqz	a0,80002874 <_ZN15MemoryAllocator9mem_allocEm+0x94>
    if (blk->size > size + sizeof(Block)) {
    8000281c:	01052683          	lw	a3,16(a0)
    80002820:	02069613          	slli	a2,a3,0x20
    80002824:	02065613          	srli	a2,a2,0x20
    80002828:	01870793          	addi	a5,a4,24
    8000282c:	04c7fa63          	bgeu	a5,a2,80002880 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
        Block *newBlock = (Block *) ((char *) blk + sizeof(Block) + size);
    80002830:	00f507b3          	add	a5,a0,a5
        newBlock->size = blk->size - size - sizeof(Block);
    80002834:	40e686bb          	subw	a3,a3,a4
    80002838:	fe86869b          	addiw	a3,a3,-24
    8000283c:	00d7a823          	sw	a3,16(a5)
        newBlock->free = true;
    80002840:	00100693          	li	a3,1
    80002844:	00d78a23          	sb	a3,20(a5)
        newBlock->next = blk->next;
    80002848:	00053683          	ld	a3,0(a0)
    8000284c:	00d7b023          	sd	a3,0(a5)
        newBlock->prev = blk->prev;
    80002850:	00853683          	ld	a3,8(a0)
    80002854:	00d7b423          	sd	a3,8(a5)

        blk->next = newBlock;
    80002858:	00f53023          	sd	a5,0(a0)
        blk->size = size;
    8000285c:	00e52823          	sw	a4,16(a0)
    } else {
        if (blk->prev) blk->prev->next = blk->next;
        if (blk->next) blk->next->prev = blk->prev;
    }
    if (blk == head) head = blk->next;
    80002860:	00009797          	auipc	a5,0x9
    80002864:	1d07b783          	ld	a5,464(a5) # 8000ba30 <_ZN15MemoryAllocator4headE>
    80002868:	02a78e63          	beq	a5,a0,800028a4 <_ZN15MemoryAllocator9mem_allocEm+0xc4>
    blk->free = false;
    8000286c:	00050a23          	sb	zero,20(a0)
    return (void *) ((char *) blk + sizeof(Block));
    80002870:	01850513          	addi	a0,a0,24
}
    80002874:	00813403          	ld	s0,8(sp)
    80002878:	01010113          	addi	sp,sp,16
    8000287c:	00008067          	ret
        if (blk->prev) blk->prev->next = blk->next;
    80002880:	00853783          	ld	a5,8(a0)
    80002884:	00078663          	beqz	a5,80002890 <_ZN15MemoryAllocator9mem_allocEm+0xb0>
    80002888:	00053703          	ld	a4,0(a0)
    8000288c:	00e7b023          	sd	a4,0(a5)
        if (blk->next) blk->next->prev = blk->prev;
    80002890:	00053783          	ld	a5,0(a0)
    80002894:	fc0786e3          	beqz	a5,80002860 <_ZN15MemoryAllocator9mem_allocEm+0x80>
    80002898:	00853703          	ld	a4,8(a0)
    8000289c:	00e7b423          	sd	a4,8(a5)
    800028a0:	fc1ff06f          	j	80002860 <_ZN15MemoryAllocator9mem_allocEm+0x80>
    if (blk == head) head = blk->next;
    800028a4:	00053783          	ld	a5,0(a0)
    800028a8:	00009717          	auipc	a4,0x9
    800028ac:	18f73423          	sd	a5,392(a4) # 8000ba30 <_ZN15MemoryAllocator4headE>
    800028b0:	fbdff06f          	j	8000286c <_ZN15MemoryAllocator9mem_allocEm+0x8c>
    if (s <= 0) return nullptr;
    800028b4:	00000513          	li	a0,0
    800028b8:	fbdff06f          	j	80002874 <_ZN15MemoryAllocator9mem_allocEm+0x94>

00000000800028bc <_ZN15MemoryAllocator5mergeEP5BlockS1_>:

    return 0;
}


void MemoryAllocator::merge(Block *prvi, Block *drugi) {
    800028bc:	ff010113          	addi	sp,sp,-16
    800028c0:	00813423          	sd	s0,8(sp)
    800028c4:	01010413          	addi	s0,sp,16
    if (prvi == nullptr || drugi == nullptr) {
    800028c8:	02050063          	beqz	a0,800028e8 <_ZN15MemoryAllocator5mergeEP5BlockS1_+0x2c>
    800028cc:	00058e63          	beqz	a1,800028e8 <_ZN15MemoryAllocator5mergeEP5BlockS1_+0x2c>
        return;
    }
    if ((char *) prvi + prvi->size + sizeof(Block) != (char *) drugi) {
    800028d0:	01052703          	lw	a4,16(a0)
    800028d4:	02071793          	slli	a5,a4,0x20
    800028d8:	0207d793          	srli	a5,a5,0x20
    800028dc:	01878793          	addi	a5,a5,24
    800028e0:	00f507b3          	add	a5,a0,a5
    800028e4:	00b78863          	beq	a5,a1,800028f4 <_ZN15MemoryAllocator5mergeEP5BlockS1_+0x38>
    prvi->next = drugi->next;
    if (prvi->next != nullptr) {
        prvi->next->prev = prvi;
    }

}
    800028e8:	00813403          	ld	s0,8(sp)
    800028ec:	01010113          	addi	sp,sp,16
    800028f0:	00008067          	ret
    prvi->size += drugi->size + sizeof(Block);
    800028f4:	0105a783          	lw	a5,16(a1)
    800028f8:	00f7073b          	addw	a4,a4,a5
    800028fc:	0187071b          	addiw	a4,a4,24
    80002900:	00e52823          	sw	a4,16(a0)
    prvi->next = drugi->next;
    80002904:	0005b783          	ld	a5,0(a1)
    80002908:	00f53023          	sd	a5,0(a0)
    if (prvi->next != nullptr) {
    8000290c:	fc078ee3          	beqz	a5,800028e8 <_ZN15MemoryAllocator5mergeEP5BlockS1_+0x2c>
        prvi->next->prev = prvi;
    80002910:	00a7b423          	sd	a0,8(a5)
    80002914:	fd5ff06f          	j	800028e8 <_ZN15MemoryAllocator5mergeEP5BlockS1_+0x2c>

0000000080002918 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (addr == nullptr || addr > HEAP_END_ADDR || addr < HEAP_START_ADDR) return -1;
    80002918:	0e050463          	beqz	a0,80002a00 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    8000291c:	00009797          	auipc	a5,0x9
    80002920:	09c7b783          	ld	a5,156(a5) # 8000b9b8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002924:	0007b783          	ld	a5,0(a5)
    80002928:	0ea7e063          	bltu	a5,a0,80002a08 <_ZN15MemoryAllocator8mem_freeEPv+0xf0>
    8000292c:	00009797          	auipc	a5,0x9
    80002930:	0747b783          	ld	a5,116(a5) # 8000b9a0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002934:	0007b783          	ld	a5,0(a5)
    80002938:	0cf56c63          	bltu	a0,a5,80002a10 <_ZN15MemoryAllocator8mem_freeEPv+0xf8>
int MemoryAllocator::mem_free(void *addr) {
    8000293c:	fe010113          	addi	sp,sp,-32
    80002940:	00113c23          	sd	ra,24(sp)
    80002944:	00813823          	sd	s0,16(sp)
    80002948:	00913423          	sd	s1,8(sp)
    8000294c:	01213023          	sd	s2,0(sp)
    80002950:	02010413          	addi	s0,sp,32
    Block *trenutni = (Block *) ((char *) addr - sizeof(Block)); // predji na blok
    80002954:	fe850493          	addi	s1,a0,-24
    if (trenutni->free) return -2; //slobodan
    80002958:	ffc54783          	lbu	a5,-4(a0)
    8000295c:	0a079e63          	bnez	a5,80002a18 <_ZN15MemoryAllocator8mem_freeEPv+0x100>
    trenutni->free = true;
    80002960:	00100793          	li	a5,1
    80002964:	fef50e23          	sb	a5,-4(a0)
    for (sledeci = head; sledeci->next; sledeci = sledeci->next) {
    80002968:	00009797          	auipc	a5,0x9
    8000296c:	0c87b783          	ld	a5,200(a5) # 8000ba30 <_ZN15MemoryAllocator4headE>
    80002970:	00078593          	mv	a1,a5
    80002974:	0007b783          	ld	a5,0(a5)
    80002978:	00078463          	beqz	a5,80002980 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
        if (sledeci > trenutni) break;
    8000297c:	feb4fae3          	bgeu	s1,a1,80002970 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    if (!sledeci->next and trenutni > sledeci) {
    80002980:	06078263          	beqz	a5,800029e4 <_ZN15MemoryAllocator8mem_freeEPv+0xcc>
    else predhodni = sledeci->prev;
    80002984:	0085b903          	ld	s2,8(a1)
    if (predhodni) predhodni->next = trenutni;
    80002988:	00090463          	beqz	s2,80002990 <_ZN15MemoryAllocator8mem_freeEPv+0x78>
    8000298c:	00993023          	sd	s1,0(s2)
    trenutni->prev = predhodni;
    80002990:	ff253823          	sd	s2,-16(a0)
    if (sledeci) sledeci->prev = trenutni;
    80002994:	00058463          	beqz	a1,8000299c <_ZN15MemoryAllocator8mem_freeEPv+0x84>
    80002998:	0095b423          	sd	s1,8(a1)
    trenutni->next = sledeci;
    8000299c:	feb53423          	sd	a1,-24(a0)
    if (sledeci == head) head = trenutni;
    800029a0:	00009797          	auipc	a5,0x9
    800029a4:	0907b783          	ld	a5,144(a5) # 8000ba30 <_ZN15MemoryAllocator4headE>
    800029a8:	04b78663          	beq	a5,a1,800029f4 <_ZN15MemoryAllocator8mem_freeEPv+0xdc>
    merge(trenutni, sledeci); // spoji sa sl blokom ako je slobodan
    800029ac:	00048513          	mv	a0,s1
    800029b0:	00000097          	auipc	ra,0x0
    800029b4:	f0c080e7          	jalr	-244(ra) # 800028bc <_ZN15MemoryAllocator5mergeEP5BlockS1_>
    merge(predhodni, trenutni); // sa prethodnim  ako je slobodan
    800029b8:	00048593          	mv	a1,s1
    800029bc:	00090513          	mv	a0,s2
    800029c0:	00000097          	auipc	ra,0x0
    800029c4:	efc080e7          	jalr	-260(ra) # 800028bc <_ZN15MemoryAllocator5mergeEP5BlockS1_>
    return 0;
    800029c8:	00000513          	li	a0,0
}
    800029cc:	01813083          	ld	ra,24(sp)
    800029d0:	01013403          	ld	s0,16(sp)
    800029d4:	00813483          	ld	s1,8(sp)
    800029d8:	00013903          	ld	s2,0(sp)
    800029dc:	02010113          	addi	sp,sp,32
    800029e0:	00008067          	ret
    if (!sledeci->next and trenutni > sledeci) {
    800029e4:	fa95f0e3          	bgeu	a1,s1,80002984 <_ZN15MemoryAllocator8mem_freeEPv+0x6c>
        predhodni = sledeci; sledeci = nullptr;
    800029e8:	00058913          	mv	s2,a1
    800029ec:	00078593          	mv	a1,a5
    800029f0:	f99ff06f          	j	80002988 <_ZN15MemoryAllocator8mem_freeEPv+0x70>
    if (sledeci == head) head = trenutni;
    800029f4:	00009797          	auipc	a5,0x9
    800029f8:	0297be23          	sd	s1,60(a5) # 8000ba30 <_ZN15MemoryAllocator4headE>
    800029fc:	fb1ff06f          	j	800029ac <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    if (addr == nullptr || addr > HEAP_END_ADDR || addr < HEAP_START_ADDR) return -1;
    80002a00:	fff00513          	li	a0,-1
    80002a04:	00008067          	ret
    80002a08:	fff00513          	li	a0,-1
    80002a0c:	00008067          	ret
    80002a10:	fff00513          	li	a0,-1
}
    80002a14:	00008067          	ret
    if (trenutni->free) return -2; //slobodan
    80002a18:	ffe00513          	li	a0,-2
    80002a1c:	fb1ff06f          	j	800029cc <_ZN15MemoryAllocator8mem_freeEPv+0xb4>

0000000080002a20 <_ZN15MemoryAllocator5printEv>:

void MemoryAllocator::print() {
    80002a20:	fe010113          	addi	sp,sp,-32
    80002a24:	00113c23          	sd	ra,24(sp)
    80002a28:	00813823          	sd	s0,16(sp)
    80002a2c:	00913423          	sd	s1,8(sp)
    80002a30:	02010413          	addi	s0,sp,32
    printString("--------------------------------------------------\n");
    80002a34:	00006517          	auipc	a0,0x6
    80002a38:	77c50513          	addi	a0,a0,1916 # 800091b0 <CONSOLE_STATUS+0x1a0>
    80002a3c:	00002097          	auipc	ra,0x2
    80002a40:	56c080e7          	jalr	1388(ra) # 80004fa8 <_Z11printStringPKc>
    for (Block *curr = head; curr; curr = curr->next) {
    80002a44:	00009497          	auipc	s1,0x9
    80002a48:	fec4b483          	ld	s1,-20(s1) # 8000ba30 <_ZN15MemoryAllocator4headE>
    80002a4c:	0c048063          	beqz	s1,80002b0c <_ZN15MemoryAllocator5printEv+0xec>
        printInt((uint64) curr);
    80002a50:	00000613          	li	a2,0
    80002a54:	00a00593          	li	a1,10
    80002a58:	0004851b          	sext.w	a0,s1
    80002a5c:	00002097          	auipc	ra,0x2
    80002a60:	700080e7          	jalr	1792(ra) # 8000515c <_Z8printIntiii>
        printString(": ");
    80002a64:	00006517          	auipc	a0,0x6
    80002a68:	78450513          	addi	a0,a0,1924 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80002a6c:	00002097          	auipc	ra,0x2
    80002a70:	53c080e7          	jalr	1340(ra) # 80004fa8 <_Z11printStringPKc>
        printInt((uint64) curr->prev);
    80002a74:	00000613          	li	a2,0
    80002a78:	00a00593          	li	a1,10
    80002a7c:	0084a503          	lw	a0,8(s1)
    80002a80:	00002097          	auipc	ra,0x2
    80002a84:	6dc080e7          	jalr	1756(ra) # 8000515c <_Z8printIntiii>
        printString(" ");
    80002a88:	00006517          	auipc	a0,0x6
    80002a8c:	76850513          	addi	a0,a0,1896 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80002a90:	00002097          	auipc	ra,0x2
    80002a94:	518080e7          	jalr	1304(ra) # 80004fa8 <_Z11printStringPKc>
        printInt(curr->size);
    80002a98:	00000613          	li	a2,0
    80002a9c:	00a00593          	li	a1,10
    80002aa0:	0104a503          	lw	a0,16(s1)
    80002aa4:	00002097          	auipc	ra,0x2
    80002aa8:	6b8080e7          	jalr	1720(ra) # 8000515c <_Z8printIntiii>
        printString(" ");
    80002aac:	00006517          	auipc	a0,0x6
    80002ab0:	74450513          	addi	a0,a0,1860 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80002ab4:	00002097          	auipc	ra,0x2
    80002ab8:	4f4080e7          	jalr	1268(ra) # 80004fa8 <_Z11printStringPKc>
        printInt(curr->free);
    80002abc:	00000613          	li	a2,0
    80002ac0:	00a00593          	li	a1,10
    80002ac4:	0144c503          	lbu	a0,20(s1)
    80002ac8:	00002097          	auipc	ra,0x2
    80002acc:	694080e7          	jalr	1684(ra) # 8000515c <_Z8printIntiii>
        printString(" ");
    80002ad0:	00006517          	auipc	a0,0x6
    80002ad4:	72050513          	addi	a0,a0,1824 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80002ad8:	00002097          	auipc	ra,0x2
    80002adc:	4d0080e7          	jalr	1232(ra) # 80004fa8 <_Z11printStringPKc>
        printInt((uint64) curr->next);
    80002ae0:	00000613          	li	a2,0
    80002ae4:	00a00593          	li	a1,10
    80002ae8:	0004a503          	lw	a0,0(s1)
    80002aec:	00002097          	auipc	ra,0x2
    80002af0:	670080e7          	jalr	1648(ra) # 8000515c <_Z8printIntiii>
        printString("\n");
    80002af4:	00007517          	auipc	a0,0x7
    80002af8:	b1450513          	addi	a0,a0,-1260 # 80009608 <CONSOLE_STATUS+0x5f8>
    80002afc:	00002097          	auipc	ra,0x2
    80002b00:	4ac080e7          	jalr	1196(ra) # 80004fa8 <_Z11printStringPKc>
    for (Block *curr = head; curr; curr = curr->next) {
    80002b04:	0004b483          	ld	s1,0(s1)
    80002b08:	f45ff06f          	j	80002a4c <_ZN15MemoryAllocator5printEv+0x2c>
    }
    printString("__________________________________________________\n");
    80002b0c:	00006517          	auipc	a0,0x6
    80002b10:	6ec50513          	addi	a0,a0,1772 # 800091f8 <CONSOLE_STATUS+0x1e8>
    80002b14:	00002097          	auipc	ra,0x2
    80002b18:	494080e7          	jalr	1172(ra) # 80004fa8 <_Z11printStringPKc>
}
    80002b1c:	01813083          	ld	ra,24(sp)
    80002b20:	01013403          	ld	s0,16(sp)
    80002b24:	00813483          	ld	s1,8(sp)
    80002b28:	02010113          	addi	sp,sp,32
    80002b2c:	00008067          	ret

0000000080002b30 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002b30:	fe010113          	addi	sp,sp,-32
    80002b34:	00113c23          	sd	ra,24(sp)
    80002b38:	00813823          	sd	s0,16(sp)
    80002b3c:	00913423          	sd	s1,8(sp)
    80002b40:	01213023          	sd	s2,0(sp)
    80002b44:	02010413          	addi	s0,sp,32
    80002b48:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002b4c:	00000913          	li	s2,0
    80002b50:	00c0006f          	j	80002b5c <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002b54:	fffff097          	auipc	ra,0xfffff
    80002b58:	8e0080e7          	jalr	-1824(ra) # 80001434 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80002b5c:	fffff097          	auipc	ra,0xfffff
    80002b60:	b88080e7          	jalr	-1144(ra) # 800016e4 <_Z4getcv>
    80002b64:	0005059b          	sext.w	a1,a0
    80002b68:	01b00793          	li	a5,27
    80002b6c:	02f58a63          	beq	a1,a5,80002ba0 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002b70:	0084b503          	ld	a0,8(s1)
    80002b74:	00003097          	auipc	ra,0x3
    80002b78:	788080e7          	jalr	1928(ra) # 800062fc <_ZN6Buffer3putEi>
        i++;
    80002b7c:	0019071b          	addiw	a4,s2,1
    80002b80:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002b84:	0004a683          	lw	a3,0(s1)
    80002b88:	0026979b          	slliw	a5,a3,0x2
    80002b8c:	00d787bb          	addw	a5,a5,a3
    80002b90:	0017979b          	slliw	a5,a5,0x1
    80002b94:	02f767bb          	remw	a5,a4,a5
    80002b98:	fc0792e3          	bnez	a5,80002b5c <_ZL16producerKeyboardPv+0x2c>
    80002b9c:	fb9ff06f          	j	80002b54 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002ba0:	00100793          	li	a5,1
    80002ba4:	00009717          	auipc	a4,0x9
    80002ba8:	e8f72a23          	sw	a5,-364(a4) # 8000ba38 <_ZL9threadEnd>
    data->buffer->put('!');
    80002bac:	02100593          	li	a1,33
    80002bb0:	0084b503          	ld	a0,8(s1)
    80002bb4:	00003097          	auipc	ra,0x3
    80002bb8:	748080e7          	jalr	1864(ra) # 800062fc <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002bbc:	0104b503          	ld	a0,16(s1)
    80002bc0:	fffff097          	auipc	ra,0xfffff
    80002bc4:	aa4080e7          	jalr	-1372(ra) # 80001664 <_Z10sem_signalP4_sem>
}
    80002bc8:	01813083          	ld	ra,24(sp)
    80002bcc:	01013403          	ld	s0,16(sp)
    80002bd0:	00813483          	ld	s1,8(sp)
    80002bd4:	00013903          	ld	s2,0(sp)
    80002bd8:	02010113          	addi	sp,sp,32
    80002bdc:	00008067          	ret

0000000080002be0 <_ZL8producerPv>:

static void producer(void *arg) {
    80002be0:	fe010113          	addi	sp,sp,-32
    80002be4:	00113c23          	sd	ra,24(sp)
    80002be8:	00813823          	sd	s0,16(sp)
    80002bec:	00913423          	sd	s1,8(sp)
    80002bf0:	01213023          	sd	s2,0(sp)
    80002bf4:	02010413          	addi	s0,sp,32
    80002bf8:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002bfc:	00000913          	li	s2,0
    80002c00:	00c0006f          	j	80002c0c <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002c04:	fffff097          	auipc	ra,0xfffff
    80002c08:	830080e7          	jalr	-2000(ra) # 80001434 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002c0c:	00009797          	auipc	a5,0x9
    80002c10:	e2c7a783          	lw	a5,-468(a5) # 8000ba38 <_ZL9threadEnd>
    80002c14:	02079e63          	bnez	a5,80002c50 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002c18:	0004a583          	lw	a1,0(s1)
    80002c1c:	0305859b          	addiw	a1,a1,48
    80002c20:	0084b503          	ld	a0,8(s1)
    80002c24:	00003097          	auipc	ra,0x3
    80002c28:	6d8080e7          	jalr	1752(ra) # 800062fc <_ZN6Buffer3putEi>
        i++;
    80002c2c:	0019071b          	addiw	a4,s2,1
    80002c30:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002c34:	0004a683          	lw	a3,0(s1)
    80002c38:	0026979b          	slliw	a5,a3,0x2
    80002c3c:	00d787bb          	addw	a5,a5,a3
    80002c40:	0017979b          	slliw	a5,a5,0x1
    80002c44:	02f767bb          	remw	a5,a4,a5
    80002c48:	fc0792e3          	bnez	a5,80002c0c <_ZL8producerPv+0x2c>
    80002c4c:	fb9ff06f          	j	80002c04 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002c50:	0104b503          	ld	a0,16(s1)
    80002c54:	fffff097          	auipc	ra,0xfffff
    80002c58:	a10080e7          	jalr	-1520(ra) # 80001664 <_Z10sem_signalP4_sem>
}
    80002c5c:	01813083          	ld	ra,24(sp)
    80002c60:	01013403          	ld	s0,16(sp)
    80002c64:	00813483          	ld	s1,8(sp)
    80002c68:	00013903          	ld	s2,0(sp)
    80002c6c:	02010113          	addi	sp,sp,32
    80002c70:	00008067          	ret

0000000080002c74 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002c74:	fd010113          	addi	sp,sp,-48
    80002c78:	02113423          	sd	ra,40(sp)
    80002c7c:	02813023          	sd	s0,32(sp)
    80002c80:	00913c23          	sd	s1,24(sp)
    80002c84:	01213823          	sd	s2,16(sp)
    80002c88:	01313423          	sd	s3,8(sp)
    80002c8c:	03010413          	addi	s0,sp,48
    80002c90:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002c94:	00000993          	li	s3,0
    80002c98:	01c0006f          	j	80002cb4 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002c9c:	ffffe097          	auipc	ra,0xffffe
    80002ca0:	798080e7          	jalr	1944(ra) # 80001434 <_Z15thread_dispatchv>
    80002ca4:	0500006f          	j	80002cf4 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002ca8:	00a00513          	li	a0,10
    80002cac:	fffff097          	auipc	ra,0xfffff
    80002cb0:	a78080e7          	jalr	-1416(ra) # 80001724 <_Z4putcc>
    while (!threadEnd) {
    80002cb4:	00009797          	auipc	a5,0x9
    80002cb8:	d847a783          	lw	a5,-636(a5) # 8000ba38 <_ZL9threadEnd>
    80002cbc:	06079063          	bnez	a5,80002d1c <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002cc0:	00893503          	ld	a0,8(s2)
    80002cc4:	00003097          	auipc	ra,0x3
    80002cc8:	6c8080e7          	jalr	1736(ra) # 8000638c <_ZN6Buffer3getEv>
        i++;
    80002ccc:	0019849b          	addiw	s1,s3,1
    80002cd0:	0004899b          	sext.w	s3,s1
        putc(key);
    80002cd4:	0ff57513          	andi	a0,a0,255
    80002cd8:	fffff097          	auipc	ra,0xfffff
    80002cdc:	a4c080e7          	jalr	-1460(ra) # 80001724 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002ce0:	00092703          	lw	a4,0(s2)
    80002ce4:	0027179b          	slliw	a5,a4,0x2
    80002ce8:	00e787bb          	addw	a5,a5,a4
    80002cec:	02f4e7bb          	remw	a5,s1,a5
    80002cf0:	fa0786e3          	beqz	a5,80002c9c <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002cf4:	05000793          	li	a5,80
    80002cf8:	02f4e4bb          	remw	s1,s1,a5
    80002cfc:	fa049ce3          	bnez	s1,80002cb4 <_ZL8consumerPv+0x40>
    80002d00:	fa9ff06f          	j	80002ca8 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002d04:	00893503          	ld	a0,8(s2)
    80002d08:	00003097          	auipc	ra,0x3
    80002d0c:	684080e7          	jalr	1668(ra) # 8000638c <_ZN6Buffer3getEv>
        putc(key);
    80002d10:	0ff57513          	andi	a0,a0,255
    80002d14:	fffff097          	auipc	ra,0xfffff
    80002d18:	a10080e7          	jalr	-1520(ra) # 80001724 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002d1c:	00893503          	ld	a0,8(s2)
    80002d20:	00003097          	auipc	ra,0x3
    80002d24:	6f8080e7          	jalr	1784(ra) # 80006418 <_ZN6Buffer6getCntEv>
    80002d28:	fca04ee3          	bgtz	a0,80002d04 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002d2c:	01093503          	ld	a0,16(s2)
    80002d30:	fffff097          	auipc	ra,0xfffff
    80002d34:	934080e7          	jalr	-1740(ra) # 80001664 <_Z10sem_signalP4_sem>
}
    80002d38:	02813083          	ld	ra,40(sp)
    80002d3c:	02013403          	ld	s0,32(sp)
    80002d40:	01813483          	ld	s1,24(sp)
    80002d44:	01013903          	ld	s2,16(sp)
    80002d48:	00813983          	ld	s3,8(sp)
    80002d4c:	03010113          	addi	sp,sp,48
    80002d50:	00008067          	ret

0000000080002d54 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002d54:	f9010113          	addi	sp,sp,-112
    80002d58:	06113423          	sd	ra,104(sp)
    80002d5c:	06813023          	sd	s0,96(sp)
    80002d60:	04913c23          	sd	s1,88(sp)
    80002d64:	05213823          	sd	s2,80(sp)
    80002d68:	05313423          	sd	s3,72(sp)
    80002d6c:	05413023          	sd	s4,64(sp)
    80002d70:	03513c23          	sd	s5,56(sp)
    80002d74:	03613823          	sd	s6,48(sp)
    80002d78:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80002d7c:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80002d80:	00006517          	auipc	a0,0x6
    80002d84:	4b050513          	addi	a0,a0,1200 # 80009230 <CONSOLE_STATUS+0x220>
    80002d88:	00002097          	auipc	ra,0x2
    80002d8c:	220080e7          	jalr	544(ra) # 80004fa8 <_Z11printStringPKc>
    getString(input, 30);
    80002d90:	01e00593          	li	a1,30
    80002d94:	fa040493          	addi	s1,s0,-96
    80002d98:	00048513          	mv	a0,s1
    80002d9c:	00002097          	auipc	ra,0x2
    80002da0:	298080e7          	jalr	664(ra) # 80005034 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80002da4:	00048513          	mv	a0,s1
    80002da8:	00002097          	auipc	ra,0x2
    80002dac:	364080e7          	jalr	868(ra) # 8000510c <_Z11stringToIntPKc>
    80002db0:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80002db4:	00006517          	auipc	a0,0x6
    80002db8:	49c50513          	addi	a0,a0,1180 # 80009250 <CONSOLE_STATUS+0x240>
    80002dbc:	00002097          	auipc	ra,0x2
    80002dc0:	1ec080e7          	jalr	492(ra) # 80004fa8 <_Z11printStringPKc>
    getString(input, 30);
    80002dc4:	01e00593          	li	a1,30
    80002dc8:	00048513          	mv	a0,s1
    80002dcc:	00002097          	auipc	ra,0x2
    80002dd0:	268080e7          	jalr	616(ra) # 80005034 <_Z9getStringPci>
    n = stringToInt(input);
    80002dd4:	00048513          	mv	a0,s1
    80002dd8:	00002097          	auipc	ra,0x2
    80002ddc:	334080e7          	jalr	820(ra) # 8000510c <_Z11stringToIntPKc>
    80002de0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80002de4:	00006517          	auipc	a0,0x6
    80002de8:	48c50513          	addi	a0,a0,1164 # 80009270 <CONSOLE_STATUS+0x260>
    80002dec:	00002097          	auipc	ra,0x2
    80002df0:	1bc080e7          	jalr	444(ra) # 80004fa8 <_Z11printStringPKc>
    80002df4:	00000613          	li	a2,0
    80002df8:	00a00593          	li	a1,10
    80002dfc:	00090513          	mv	a0,s2
    80002e00:	00002097          	auipc	ra,0x2
    80002e04:	35c080e7          	jalr	860(ra) # 8000515c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80002e08:	00006517          	auipc	a0,0x6
    80002e0c:	48050513          	addi	a0,a0,1152 # 80009288 <CONSOLE_STATUS+0x278>
    80002e10:	00002097          	auipc	ra,0x2
    80002e14:	198080e7          	jalr	408(ra) # 80004fa8 <_Z11printStringPKc>
    80002e18:	00000613          	li	a2,0
    80002e1c:	00a00593          	li	a1,10
    80002e20:	00048513          	mv	a0,s1
    80002e24:	00002097          	auipc	ra,0x2
    80002e28:	338080e7          	jalr	824(ra) # 8000515c <_Z8printIntiii>
    printString(".\n");
    80002e2c:	00006517          	auipc	a0,0x6
    80002e30:	47450513          	addi	a0,a0,1140 # 800092a0 <CONSOLE_STATUS+0x290>
    80002e34:	00002097          	auipc	ra,0x2
    80002e38:	174080e7          	jalr	372(ra) # 80004fa8 <_Z11printStringPKc>
    if(threadNum > n) {
    80002e3c:	0324c463          	blt	s1,s2,80002e64 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80002e40:	03205c63          	blez	s2,80002e78 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80002e44:	03800513          	li	a0,56
    80002e48:	fffff097          	auipc	ra,0xfffff
    80002e4c:	a7c080e7          	jalr	-1412(ra) # 800018c4 <_Znwm>
    80002e50:	00050a13          	mv	s4,a0
    80002e54:	00048593          	mv	a1,s1
    80002e58:	00003097          	auipc	ra,0x3
    80002e5c:	408080e7          	jalr	1032(ra) # 80006260 <_ZN6BufferC1Ei>
    80002e60:	0300006f          	j	80002e90 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80002e64:	00006517          	auipc	a0,0x6
    80002e68:	44450513          	addi	a0,a0,1092 # 800092a8 <CONSOLE_STATUS+0x298>
    80002e6c:	00002097          	auipc	ra,0x2
    80002e70:	13c080e7          	jalr	316(ra) # 80004fa8 <_Z11printStringPKc>
        return;
    80002e74:	0140006f          	j	80002e88 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80002e78:	00006517          	auipc	a0,0x6
    80002e7c:	47050513          	addi	a0,a0,1136 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80002e80:	00002097          	auipc	ra,0x2
    80002e84:	128080e7          	jalr	296(ra) # 80004fa8 <_Z11printStringPKc>
        return;
    80002e88:	000b0113          	mv	sp,s6
    80002e8c:	1500006f          	j	80002fdc <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80002e90:	00000593          	li	a1,0
    80002e94:	00009517          	auipc	a0,0x9
    80002e98:	bac50513          	addi	a0,a0,-1108 # 8000ba40 <_ZL10waitForAll>
    80002e9c:	ffffe097          	auipc	ra,0xffffe
    80002ea0:	704080e7          	jalr	1796(ra) # 800015a0 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    80002ea4:	00391793          	slli	a5,s2,0x3
    80002ea8:	00f78793          	addi	a5,a5,15
    80002eac:	ff07f793          	andi	a5,a5,-16
    80002eb0:	40f10133          	sub	sp,sp,a5
    80002eb4:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80002eb8:	0019071b          	addiw	a4,s2,1
    80002ebc:	00171793          	slli	a5,a4,0x1
    80002ec0:	00e787b3          	add	a5,a5,a4
    80002ec4:	00379793          	slli	a5,a5,0x3
    80002ec8:	00f78793          	addi	a5,a5,15
    80002ecc:	ff07f793          	andi	a5,a5,-16
    80002ed0:	40f10133          	sub	sp,sp,a5
    80002ed4:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80002ed8:	00191613          	slli	a2,s2,0x1
    80002edc:	012607b3          	add	a5,a2,s2
    80002ee0:	00379793          	slli	a5,a5,0x3
    80002ee4:	00f987b3          	add	a5,s3,a5
    80002ee8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80002eec:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80002ef0:	00009717          	auipc	a4,0x9
    80002ef4:	b5073703          	ld	a4,-1200(a4) # 8000ba40 <_ZL10waitForAll>
    80002ef8:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80002efc:	00078613          	mv	a2,a5
    80002f00:	00000597          	auipc	a1,0x0
    80002f04:	d7458593          	addi	a1,a1,-652 # 80002c74 <_ZL8consumerPv>
    80002f08:	f9840513          	addi	a0,s0,-104
    80002f0c:	ffffe097          	auipc	ra,0xffffe
    80002f10:	46c080e7          	jalr	1132(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002f14:	00000493          	li	s1,0
    80002f18:	0280006f          	j	80002f40 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80002f1c:	00000597          	auipc	a1,0x0
    80002f20:	c1458593          	addi	a1,a1,-1004 # 80002b30 <_ZL16producerKeyboardPv>
                      data + i);
    80002f24:	00179613          	slli	a2,a5,0x1
    80002f28:	00f60633          	add	a2,a2,a5
    80002f2c:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80002f30:	00c98633          	add	a2,s3,a2
    80002f34:	ffffe097          	auipc	ra,0xffffe
    80002f38:	444080e7          	jalr	1092(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002f3c:	0014849b          	addiw	s1,s1,1
    80002f40:	0524d263          	bge	s1,s2,80002f84 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80002f44:	00149793          	slli	a5,s1,0x1
    80002f48:	009787b3          	add	a5,a5,s1
    80002f4c:	00379793          	slli	a5,a5,0x3
    80002f50:	00f987b3          	add	a5,s3,a5
    80002f54:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80002f58:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80002f5c:	00009717          	auipc	a4,0x9
    80002f60:	ae473703          	ld	a4,-1308(a4) # 8000ba40 <_ZL10waitForAll>
    80002f64:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80002f68:	00048793          	mv	a5,s1
    80002f6c:	00349513          	slli	a0,s1,0x3
    80002f70:	00aa8533          	add	a0,s5,a0
    80002f74:	fa9054e3          	blez	s1,80002f1c <_Z22producerConsumer_C_APIv+0x1c8>
    80002f78:	00000597          	auipc	a1,0x0
    80002f7c:	c6858593          	addi	a1,a1,-920 # 80002be0 <_ZL8producerPv>
    80002f80:	fa5ff06f          	j	80002f24 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80002f84:	ffffe097          	auipc	ra,0xffffe
    80002f88:	4b0080e7          	jalr	1200(ra) # 80001434 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80002f8c:	00000493          	li	s1,0
    80002f90:	00994e63          	blt	s2,s1,80002fac <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80002f94:	00009517          	auipc	a0,0x9
    80002f98:	aac53503          	ld	a0,-1364(a0) # 8000ba40 <_ZL10waitForAll>
    80002f9c:	ffffe097          	auipc	ra,0xffffe
    80002fa0:	688080e7          	jalr	1672(ra) # 80001624 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    80002fa4:	0014849b          	addiw	s1,s1,1
    80002fa8:	fe9ff06f          	j	80002f90 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80002fac:	00009517          	auipc	a0,0x9
    80002fb0:	a9453503          	ld	a0,-1388(a0) # 8000ba40 <_ZL10waitForAll>
    80002fb4:	ffffe097          	auipc	ra,0xffffe
    80002fb8:	630080e7          	jalr	1584(ra) # 800015e4 <_Z9sem_closeP4_sem>
    delete buffer;
    80002fbc:	000a0e63          	beqz	s4,80002fd8 <_Z22producerConsumer_C_APIv+0x284>
    80002fc0:	000a0513          	mv	a0,s4
    80002fc4:	00003097          	auipc	ra,0x3
    80002fc8:	4dc080e7          	jalr	1244(ra) # 800064a0 <_ZN6BufferD1Ev>
    80002fcc:	000a0513          	mv	a0,s4
    80002fd0:	fffff097          	auipc	ra,0xfffff
    80002fd4:	944080e7          	jalr	-1724(ra) # 80001914 <_ZdlPv>
    80002fd8:	000b0113          	mv	sp,s6

}
    80002fdc:	f9040113          	addi	sp,s0,-112
    80002fe0:	06813083          	ld	ra,104(sp)
    80002fe4:	06013403          	ld	s0,96(sp)
    80002fe8:	05813483          	ld	s1,88(sp)
    80002fec:	05013903          	ld	s2,80(sp)
    80002ff0:	04813983          	ld	s3,72(sp)
    80002ff4:	04013a03          	ld	s4,64(sp)
    80002ff8:	03813a83          	ld	s5,56(sp)
    80002ffc:	03013b03          	ld	s6,48(sp)
    80003000:	07010113          	addi	sp,sp,112
    80003004:	00008067          	ret
    80003008:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    8000300c:	000a0513          	mv	a0,s4
    80003010:	fffff097          	auipc	ra,0xfffff
    80003014:	904080e7          	jalr	-1788(ra) # 80001914 <_ZdlPv>
    80003018:	00048513          	mv	a0,s1
    8000301c:	0000a097          	auipc	ra,0xa
    80003020:	b4c080e7          	jalr	-1204(ra) # 8000cb68 <_Unwind_Resume>

0000000080003024 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003024:	fe010113          	addi	sp,sp,-32
    80003028:	00113c23          	sd	ra,24(sp)
    8000302c:	00813823          	sd	s0,16(sp)
    80003030:	00913423          	sd	s1,8(sp)
    80003034:	01213023          	sd	s2,0(sp)
    80003038:	02010413          	addi	s0,sp,32
    8000303c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003040:	00100793          	li	a5,1
    80003044:	02a7f863          	bgeu	a5,a0,80003074 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003048:	00a00793          	li	a5,10
    8000304c:	02f577b3          	remu	a5,a0,a5
    80003050:	02078e63          	beqz	a5,8000308c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003054:	fff48513          	addi	a0,s1,-1
    80003058:	00000097          	auipc	ra,0x0
    8000305c:	fcc080e7          	jalr	-52(ra) # 80003024 <_ZL9fibonaccim>
    80003060:	00050913          	mv	s2,a0
    80003064:	ffe48513          	addi	a0,s1,-2
    80003068:	00000097          	auipc	ra,0x0
    8000306c:	fbc080e7          	jalr	-68(ra) # 80003024 <_ZL9fibonaccim>
    80003070:	00a90533          	add	a0,s2,a0
}
    80003074:	01813083          	ld	ra,24(sp)
    80003078:	01013403          	ld	s0,16(sp)
    8000307c:	00813483          	ld	s1,8(sp)
    80003080:	00013903          	ld	s2,0(sp)
    80003084:	02010113          	addi	sp,sp,32
    80003088:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000308c:	ffffe097          	auipc	ra,0xffffe
    80003090:	3a8080e7          	jalr	936(ra) # 80001434 <_Z15thread_dispatchv>
    80003094:	fc1ff06f          	j	80003054 <_ZL9fibonaccim+0x30>

0000000080003098 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003098:	fe010113          	addi	sp,sp,-32
    8000309c:	00113c23          	sd	ra,24(sp)
    800030a0:	00813823          	sd	s0,16(sp)
    800030a4:	00913423          	sd	s1,8(sp)
    800030a8:	01213023          	sd	s2,0(sp)
    800030ac:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800030b0:	00000913          	li	s2,0
    800030b4:	0380006f          	j	800030ec <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800030b8:	ffffe097          	auipc	ra,0xffffe
    800030bc:	37c080e7          	jalr	892(ra) # 80001434 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800030c0:	00148493          	addi	s1,s1,1
    800030c4:	000027b7          	lui	a5,0x2
    800030c8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800030cc:	0097ee63          	bltu	a5,s1,800030e8 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800030d0:	00000713          	li	a4,0
    800030d4:	000077b7          	lui	a5,0x7
    800030d8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800030dc:	fce7eee3          	bltu	a5,a4,800030b8 <_ZN7WorkerA11workerBodyAEPv+0x20>
    800030e0:	00170713          	addi	a4,a4,1
    800030e4:	ff1ff06f          	j	800030d4 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800030e8:	00190913          	addi	s2,s2,1
    800030ec:	00900793          	li	a5,9
    800030f0:	0527e063          	bltu	a5,s2,80003130 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800030f4:	00006517          	auipc	a0,0x6
    800030f8:	22450513          	addi	a0,a0,548 # 80009318 <CONSOLE_STATUS+0x308>
    800030fc:	00002097          	auipc	ra,0x2
    80003100:	eac080e7          	jalr	-340(ra) # 80004fa8 <_Z11printStringPKc>
    80003104:	00000613          	li	a2,0
    80003108:	00a00593          	li	a1,10
    8000310c:	0009051b          	sext.w	a0,s2
    80003110:	00002097          	auipc	ra,0x2
    80003114:	04c080e7          	jalr	76(ra) # 8000515c <_Z8printIntiii>
    80003118:	00006517          	auipc	a0,0x6
    8000311c:	4f050513          	addi	a0,a0,1264 # 80009608 <CONSOLE_STATUS+0x5f8>
    80003120:	00002097          	auipc	ra,0x2
    80003124:	e88080e7          	jalr	-376(ra) # 80004fa8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003128:	00000493          	li	s1,0
    8000312c:	f99ff06f          	j	800030c4 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003130:	00006517          	auipc	a0,0x6
    80003134:	1f050513          	addi	a0,a0,496 # 80009320 <CONSOLE_STATUS+0x310>
    80003138:	00002097          	auipc	ra,0x2
    8000313c:	e70080e7          	jalr	-400(ra) # 80004fa8 <_Z11printStringPKc>
    finishedA = true;
    80003140:	00100793          	li	a5,1
    80003144:	00009717          	auipc	a4,0x9
    80003148:	90f70223          	sb	a5,-1788(a4) # 8000ba48 <_ZL9finishedA>
}
    8000314c:	01813083          	ld	ra,24(sp)
    80003150:	01013403          	ld	s0,16(sp)
    80003154:	00813483          	ld	s1,8(sp)
    80003158:	00013903          	ld	s2,0(sp)
    8000315c:	02010113          	addi	sp,sp,32
    80003160:	00008067          	ret

0000000080003164 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003164:	fe010113          	addi	sp,sp,-32
    80003168:	00113c23          	sd	ra,24(sp)
    8000316c:	00813823          	sd	s0,16(sp)
    80003170:	00913423          	sd	s1,8(sp)
    80003174:	01213023          	sd	s2,0(sp)
    80003178:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000317c:	00000913          	li	s2,0
    80003180:	0380006f          	j	800031b8 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003184:	ffffe097          	auipc	ra,0xffffe
    80003188:	2b0080e7          	jalr	688(ra) # 80001434 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000318c:	00148493          	addi	s1,s1,1
    80003190:	000027b7          	lui	a5,0x2
    80003194:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003198:	0097ee63          	bltu	a5,s1,800031b4 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000319c:	00000713          	li	a4,0
    800031a0:	000077b7          	lui	a5,0x7
    800031a4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800031a8:	fce7eee3          	bltu	a5,a4,80003184 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800031ac:	00170713          	addi	a4,a4,1
    800031b0:	ff1ff06f          	j	800031a0 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800031b4:	00190913          	addi	s2,s2,1
    800031b8:	00f00793          	li	a5,15
    800031bc:	0527e063          	bltu	a5,s2,800031fc <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800031c0:	00006517          	auipc	a0,0x6
    800031c4:	17050513          	addi	a0,a0,368 # 80009330 <CONSOLE_STATUS+0x320>
    800031c8:	00002097          	auipc	ra,0x2
    800031cc:	de0080e7          	jalr	-544(ra) # 80004fa8 <_Z11printStringPKc>
    800031d0:	00000613          	li	a2,0
    800031d4:	00a00593          	li	a1,10
    800031d8:	0009051b          	sext.w	a0,s2
    800031dc:	00002097          	auipc	ra,0x2
    800031e0:	f80080e7          	jalr	-128(ra) # 8000515c <_Z8printIntiii>
    800031e4:	00006517          	auipc	a0,0x6
    800031e8:	42450513          	addi	a0,a0,1060 # 80009608 <CONSOLE_STATUS+0x5f8>
    800031ec:	00002097          	auipc	ra,0x2
    800031f0:	dbc080e7          	jalr	-580(ra) # 80004fa8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800031f4:	00000493          	li	s1,0
    800031f8:	f99ff06f          	j	80003190 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    800031fc:	00006517          	auipc	a0,0x6
    80003200:	13c50513          	addi	a0,a0,316 # 80009338 <CONSOLE_STATUS+0x328>
    80003204:	00002097          	auipc	ra,0x2
    80003208:	da4080e7          	jalr	-604(ra) # 80004fa8 <_Z11printStringPKc>
    finishedB = true;
    8000320c:	00100793          	li	a5,1
    80003210:	00009717          	auipc	a4,0x9
    80003214:	82f70ca3          	sb	a5,-1991(a4) # 8000ba49 <_ZL9finishedB>
    thread_dispatch();
    80003218:	ffffe097          	auipc	ra,0xffffe
    8000321c:	21c080e7          	jalr	540(ra) # 80001434 <_Z15thread_dispatchv>
}
    80003220:	01813083          	ld	ra,24(sp)
    80003224:	01013403          	ld	s0,16(sp)
    80003228:	00813483          	ld	s1,8(sp)
    8000322c:	00013903          	ld	s2,0(sp)
    80003230:	02010113          	addi	sp,sp,32
    80003234:	00008067          	ret

0000000080003238 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003238:	fe010113          	addi	sp,sp,-32
    8000323c:	00113c23          	sd	ra,24(sp)
    80003240:	00813823          	sd	s0,16(sp)
    80003244:	00913423          	sd	s1,8(sp)
    80003248:	01213023          	sd	s2,0(sp)
    8000324c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003250:	00000493          	li	s1,0
    80003254:	0400006f          	j	80003294 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003258:	00006517          	auipc	a0,0x6
    8000325c:	0f050513          	addi	a0,a0,240 # 80009348 <CONSOLE_STATUS+0x338>
    80003260:	00002097          	auipc	ra,0x2
    80003264:	d48080e7          	jalr	-696(ra) # 80004fa8 <_Z11printStringPKc>
    80003268:	00000613          	li	a2,0
    8000326c:	00a00593          	li	a1,10
    80003270:	00048513          	mv	a0,s1
    80003274:	00002097          	auipc	ra,0x2
    80003278:	ee8080e7          	jalr	-280(ra) # 8000515c <_Z8printIntiii>
    8000327c:	00006517          	auipc	a0,0x6
    80003280:	38c50513          	addi	a0,a0,908 # 80009608 <CONSOLE_STATUS+0x5f8>
    80003284:	00002097          	auipc	ra,0x2
    80003288:	d24080e7          	jalr	-732(ra) # 80004fa8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000328c:	0014849b          	addiw	s1,s1,1
    80003290:	0ff4f493          	andi	s1,s1,255
    80003294:	00200793          	li	a5,2
    80003298:	fc97f0e3          	bgeu	a5,s1,80003258 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    8000329c:	00006517          	auipc	a0,0x6
    800032a0:	0b450513          	addi	a0,a0,180 # 80009350 <CONSOLE_STATUS+0x340>
    800032a4:	00002097          	auipc	ra,0x2
    800032a8:	d04080e7          	jalr	-764(ra) # 80004fa8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800032ac:	00700313          	li	t1,7
    thread_dispatch();
    800032b0:	ffffe097          	auipc	ra,0xffffe
    800032b4:	184080e7          	jalr	388(ra) # 80001434 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800032b8:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800032bc:	00006517          	auipc	a0,0x6
    800032c0:	0a450513          	addi	a0,a0,164 # 80009360 <CONSOLE_STATUS+0x350>
    800032c4:	00002097          	auipc	ra,0x2
    800032c8:	ce4080e7          	jalr	-796(ra) # 80004fa8 <_Z11printStringPKc>
    800032cc:	00000613          	li	a2,0
    800032d0:	00a00593          	li	a1,10
    800032d4:	0009051b          	sext.w	a0,s2
    800032d8:	00002097          	auipc	ra,0x2
    800032dc:	e84080e7          	jalr	-380(ra) # 8000515c <_Z8printIntiii>
    800032e0:	00006517          	auipc	a0,0x6
    800032e4:	32850513          	addi	a0,a0,808 # 80009608 <CONSOLE_STATUS+0x5f8>
    800032e8:	00002097          	auipc	ra,0x2
    800032ec:	cc0080e7          	jalr	-832(ra) # 80004fa8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800032f0:	00c00513          	li	a0,12
    800032f4:	00000097          	auipc	ra,0x0
    800032f8:	d30080e7          	jalr	-720(ra) # 80003024 <_ZL9fibonaccim>
    800032fc:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003300:	00006517          	auipc	a0,0x6
    80003304:	06850513          	addi	a0,a0,104 # 80009368 <CONSOLE_STATUS+0x358>
    80003308:	00002097          	auipc	ra,0x2
    8000330c:	ca0080e7          	jalr	-864(ra) # 80004fa8 <_Z11printStringPKc>
    80003310:	00000613          	li	a2,0
    80003314:	00a00593          	li	a1,10
    80003318:	0009051b          	sext.w	a0,s2
    8000331c:	00002097          	auipc	ra,0x2
    80003320:	e40080e7          	jalr	-448(ra) # 8000515c <_Z8printIntiii>
    80003324:	00006517          	auipc	a0,0x6
    80003328:	2e450513          	addi	a0,a0,740 # 80009608 <CONSOLE_STATUS+0x5f8>
    8000332c:	00002097          	auipc	ra,0x2
    80003330:	c7c080e7          	jalr	-900(ra) # 80004fa8 <_Z11printStringPKc>
    80003334:	0400006f          	j	80003374 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003338:	00006517          	auipc	a0,0x6
    8000333c:	01050513          	addi	a0,a0,16 # 80009348 <CONSOLE_STATUS+0x338>
    80003340:	00002097          	auipc	ra,0x2
    80003344:	c68080e7          	jalr	-920(ra) # 80004fa8 <_Z11printStringPKc>
    80003348:	00000613          	li	a2,0
    8000334c:	00a00593          	li	a1,10
    80003350:	00048513          	mv	a0,s1
    80003354:	00002097          	auipc	ra,0x2
    80003358:	e08080e7          	jalr	-504(ra) # 8000515c <_Z8printIntiii>
    8000335c:	00006517          	auipc	a0,0x6
    80003360:	2ac50513          	addi	a0,a0,684 # 80009608 <CONSOLE_STATUS+0x5f8>
    80003364:	00002097          	auipc	ra,0x2
    80003368:	c44080e7          	jalr	-956(ra) # 80004fa8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000336c:	0014849b          	addiw	s1,s1,1
    80003370:	0ff4f493          	andi	s1,s1,255
    80003374:	00500793          	li	a5,5
    80003378:	fc97f0e3          	bgeu	a5,s1,80003338 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    8000337c:	00006517          	auipc	a0,0x6
    80003380:	fa450513          	addi	a0,a0,-92 # 80009320 <CONSOLE_STATUS+0x310>
    80003384:	00002097          	auipc	ra,0x2
    80003388:	c24080e7          	jalr	-988(ra) # 80004fa8 <_Z11printStringPKc>
    finishedC = true;
    8000338c:	00100793          	li	a5,1
    80003390:	00008717          	auipc	a4,0x8
    80003394:	6af70d23          	sb	a5,1722(a4) # 8000ba4a <_ZL9finishedC>
    thread_dispatch();
    80003398:	ffffe097          	auipc	ra,0xffffe
    8000339c:	09c080e7          	jalr	156(ra) # 80001434 <_Z15thread_dispatchv>
}
    800033a0:	01813083          	ld	ra,24(sp)
    800033a4:	01013403          	ld	s0,16(sp)
    800033a8:	00813483          	ld	s1,8(sp)
    800033ac:	00013903          	ld	s2,0(sp)
    800033b0:	02010113          	addi	sp,sp,32
    800033b4:	00008067          	ret

00000000800033b8 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800033b8:	fe010113          	addi	sp,sp,-32
    800033bc:	00113c23          	sd	ra,24(sp)
    800033c0:	00813823          	sd	s0,16(sp)
    800033c4:	00913423          	sd	s1,8(sp)
    800033c8:	01213023          	sd	s2,0(sp)
    800033cc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800033d0:	00a00493          	li	s1,10
    800033d4:	0400006f          	j	80003414 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800033d8:	00006517          	auipc	a0,0x6
    800033dc:	fa050513          	addi	a0,a0,-96 # 80009378 <CONSOLE_STATUS+0x368>
    800033e0:	00002097          	auipc	ra,0x2
    800033e4:	bc8080e7          	jalr	-1080(ra) # 80004fa8 <_Z11printStringPKc>
    800033e8:	00000613          	li	a2,0
    800033ec:	00a00593          	li	a1,10
    800033f0:	00048513          	mv	a0,s1
    800033f4:	00002097          	auipc	ra,0x2
    800033f8:	d68080e7          	jalr	-664(ra) # 8000515c <_Z8printIntiii>
    800033fc:	00006517          	auipc	a0,0x6
    80003400:	20c50513          	addi	a0,a0,524 # 80009608 <CONSOLE_STATUS+0x5f8>
    80003404:	00002097          	auipc	ra,0x2
    80003408:	ba4080e7          	jalr	-1116(ra) # 80004fa8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000340c:	0014849b          	addiw	s1,s1,1
    80003410:	0ff4f493          	andi	s1,s1,255
    80003414:	00c00793          	li	a5,12
    80003418:	fc97f0e3          	bgeu	a5,s1,800033d8 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    8000341c:	00006517          	auipc	a0,0x6
    80003420:	f6450513          	addi	a0,a0,-156 # 80009380 <CONSOLE_STATUS+0x370>
    80003424:	00002097          	auipc	ra,0x2
    80003428:	b84080e7          	jalr	-1148(ra) # 80004fa8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000342c:	00500313          	li	t1,5
    thread_dispatch();
    80003430:	ffffe097          	auipc	ra,0xffffe
    80003434:	004080e7          	jalr	4(ra) # 80001434 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003438:	01000513          	li	a0,16
    8000343c:	00000097          	auipc	ra,0x0
    80003440:	be8080e7          	jalr	-1048(ra) # 80003024 <_ZL9fibonaccim>
    80003444:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003448:	00006517          	auipc	a0,0x6
    8000344c:	f4850513          	addi	a0,a0,-184 # 80009390 <CONSOLE_STATUS+0x380>
    80003450:	00002097          	auipc	ra,0x2
    80003454:	b58080e7          	jalr	-1192(ra) # 80004fa8 <_Z11printStringPKc>
    80003458:	00000613          	li	a2,0
    8000345c:	00a00593          	li	a1,10
    80003460:	0009051b          	sext.w	a0,s2
    80003464:	00002097          	auipc	ra,0x2
    80003468:	cf8080e7          	jalr	-776(ra) # 8000515c <_Z8printIntiii>
    8000346c:	00006517          	auipc	a0,0x6
    80003470:	19c50513          	addi	a0,a0,412 # 80009608 <CONSOLE_STATUS+0x5f8>
    80003474:	00002097          	auipc	ra,0x2
    80003478:	b34080e7          	jalr	-1228(ra) # 80004fa8 <_Z11printStringPKc>
    8000347c:	0400006f          	j	800034bc <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003480:	00006517          	auipc	a0,0x6
    80003484:	ef850513          	addi	a0,a0,-264 # 80009378 <CONSOLE_STATUS+0x368>
    80003488:	00002097          	auipc	ra,0x2
    8000348c:	b20080e7          	jalr	-1248(ra) # 80004fa8 <_Z11printStringPKc>
    80003490:	00000613          	li	a2,0
    80003494:	00a00593          	li	a1,10
    80003498:	00048513          	mv	a0,s1
    8000349c:	00002097          	auipc	ra,0x2
    800034a0:	cc0080e7          	jalr	-832(ra) # 8000515c <_Z8printIntiii>
    800034a4:	00006517          	auipc	a0,0x6
    800034a8:	16450513          	addi	a0,a0,356 # 80009608 <CONSOLE_STATUS+0x5f8>
    800034ac:	00002097          	auipc	ra,0x2
    800034b0:	afc080e7          	jalr	-1284(ra) # 80004fa8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800034b4:	0014849b          	addiw	s1,s1,1
    800034b8:	0ff4f493          	andi	s1,s1,255
    800034bc:	00f00793          	li	a5,15
    800034c0:	fc97f0e3          	bgeu	a5,s1,80003480 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800034c4:	00006517          	auipc	a0,0x6
    800034c8:	edc50513          	addi	a0,a0,-292 # 800093a0 <CONSOLE_STATUS+0x390>
    800034cc:	00002097          	auipc	ra,0x2
    800034d0:	adc080e7          	jalr	-1316(ra) # 80004fa8 <_Z11printStringPKc>
    finishedD = true;
    800034d4:	00100793          	li	a5,1
    800034d8:	00008717          	auipc	a4,0x8
    800034dc:	56f709a3          	sb	a5,1395(a4) # 8000ba4b <_ZL9finishedD>
    thread_dispatch();
    800034e0:	ffffe097          	auipc	ra,0xffffe
    800034e4:	f54080e7          	jalr	-172(ra) # 80001434 <_Z15thread_dispatchv>
}
    800034e8:	01813083          	ld	ra,24(sp)
    800034ec:	01013403          	ld	s0,16(sp)
    800034f0:	00813483          	ld	s1,8(sp)
    800034f4:	00013903          	ld	s2,0(sp)
    800034f8:	02010113          	addi	sp,sp,32
    800034fc:	00008067          	ret

0000000080003500 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003500:	fc010113          	addi	sp,sp,-64
    80003504:	02113c23          	sd	ra,56(sp)
    80003508:	02813823          	sd	s0,48(sp)
    8000350c:	02913423          	sd	s1,40(sp)
    80003510:	03213023          	sd	s2,32(sp)
    80003514:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003518:	02000513          	li	a0,32
    8000351c:	ffffe097          	auipc	ra,0xffffe
    80003520:	3a8080e7          	jalr	936(ra) # 800018c4 <_Znwm>
    80003524:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003528:	ffffe097          	auipc	ra,0xffffe
    8000352c:	4e8080e7          	jalr	1256(ra) # 80001a10 <_ZN6ThreadC1Ev>
    80003530:	00008797          	auipc	a5,0x8
    80003534:	29878793          	addi	a5,a5,664 # 8000b7c8 <_ZTV7WorkerA+0x10>
    80003538:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    8000353c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003540:	00006517          	auipc	a0,0x6
    80003544:	e7050513          	addi	a0,a0,-400 # 800093b0 <CONSOLE_STATUS+0x3a0>
    80003548:	00002097          	auipc	ra,0x2
    8000354c:	a60080e7          	jalr	-1440(ra) # 80004fa8 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003550:	02000513          	li	a0,32
    80003554:	ffffe097          	auipc	ra,0xffffe
    80003558:	370080e7          	jalr	880(ra) # 800018c4 <_Znwm>
    8000355c:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003560:	ffffe097          	auipc	ra,0xffffe
    80003564:	4b0080e7          	jalr	1200(ra) # 80001a10 <_ZN6ThreadC1Ev>
    80003568:	00008797          	auipc	a5,0x8
    8000356c:	28878793          	addi	a5,a5,648 # 8000b7f0 <_ZTV7WorkerB+0x10>
    80003570:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003574:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003578:	00006517          	auipc	a0,0x6
    8000357c:	e5050513          	addi	a0,a0,-432 # 800093c8 <CONSOLE_STATUS+0x3b8>
    80003580:	00002097          	auipc	ra,0x2
    80003584:	a28080e7          	jalr	-1496(ra) # 80004fa8 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003588:	02000513          	li	a0,32
    8000358c:	ffffe097          	auipc	ra,0xffffe
    80003590:	338080e7          	jalr	824(ra) # 800018c4 <_Znwm>
    80003594:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003598:	ffffe097          	auipc	ra,0xffffe
    8000359c:	478080e7          	jalr	1144(ra) # 80001a10 <_ZN6ThreadC1Ev>
    800035a0:	00008797          	auipc	a5,0x8
    800035a4:	27878793          	addi	a5,a5,632 # 8000b818 <_ZTV7WorkerC+0x10>
    800035a8:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800035ac:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800035b0:	00006517          	auipc	a0,0x6
    800035b4:	e3050513          	addi	a0,a0,-464 # 800093e0 <CONSOLE_STATUS+0x3d0>
    800035b8:	00002097          	auipc	ra,0x2
    800035bc:	9f0080e7          	jalr	-1552(ra) # 80004fa8 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800035c0:	02000513          	li	a0,32
    800035c4:	ffffe097          	auipc	ra,0xffffe
    800035c8:	300080e7          	jalr	768(ra) # 800018c4 <_Znwm>
    800035cc:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    800035d0:	ffffe097          	auipc	ra,0xffffe
    800035d4:	440080e7          	jalr	1088(ra) # 80001a10 <_ZN6ThreadC1Ev>
    800035d8:	00008797          	auipc	a5,0x8
    800035dc:	26878793          	addi	a5,a5,616 # 8000b840 <_ZTV7WorkerD+0x10>
    800035e0:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    800035e4:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800035e8:	00006517          	auipc	a0,0x6
    800035ec:	e1050513          	addi	a0,a0,-496 # 800093f8 <CONSOLE_STATUS+0x3e8>
    800035f0:	00002097          	auipc	ra,0x2
    800035f4:	9b8080e7          	jalr	-1608(ra) # 80004fa8 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800035f8:	00000493          	li	s1,0
    800035fc:	00300793          	li	a5,3
    80003600:	0297c663          	blt	a5,s1,8000362c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003604:	00349793          	slli	a5,s1,0x3
    80003608:	fe040713          	addi	a4,s0,-32
    8000360c:	00f707b3          	add	a5,a4,a5
    80003610:	fe07b503          	ld	a0,-32(a5)
    80003614:	ffffe097          	auipc	ra,0xffffe
    80003618:	468080e7          	jalr	1128(ra) # 80001a7c <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    8000361c:	0014849b          	addiw	s1,s1,1
    80003620:	fddff06f          	j	800035fc <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003624:	ffffe097          	auipc	ra,0xffffe
    80003628:	414080e7          	jalr	1044(ra) # 80001a38 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000362c:	00008797          	auipc	a5,0x8
    80003630:	41c7c783          	lbu	a5,1052(a5) # 8000ba48 <_ZL9finishedA>
    80003634:	fe0788e3          	beqz	a5,80003624 <_Z20Threads_CPP_API_testv+0x124>
    80003638:	00008797          	auipc	a5,0x8
    8000363c:	4117c783          	lbu	a5,1041(a5) # 8000ba49 <_ZL9finishedB>
    80003640:	fe0782e3          	beqz	a5,80003624 <_Z20Threads_CPP_API_testv+0x124>
    80003644:	00008797          	auipc	a5,0x8
    80003648:	4067c783          	lbu	a5,1030(a5) # 8000ba4a <_ZL9finishedC>
    8000364c:	fc078ce3          	beqz	a5,80003624 <_Z20Threads_CPP_API_testv+0x124>
    80003650:	00008797          	auipc	a5,0x8
    80003654:	3fb7c783          	lbu	a5,1019(a5) # 8000ba4b <_ZL9finishedD>
    80003658:	fc0786e3          	beqz	a5,80003624 <_Z20Threads_CPP_API_testv+0x124>
    8000365c:	fc040493          	addi	s1,s0,-64
    80003660:	0080006f          	j	80003668 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003664:	00848493          	addi	s1,s1,8
    80003668:	fe040793          	addi	a5,s0,-32
    8000366c:	08f48663          	beq	s1,a5,800036f8 <_Z20Threads_CPP_API_testv+0x1f8>
    80003670:	0004b503          	ld	a0,0(s1)
    80003674:	fe0508e3          	beqz	a0,80003664 <_Z20Threads_CPP_API_testv+0x164>
    80003678:	00053783          	ld	a5,0(a0)
    8000367c:	0087b783          	ld	a5,8(a5)
    80003680:	000780e7          	jalr	a5
    80003684:	fe1ff06f          	j	80003664 <_Z20Threads_CPP_API_testv+0x164>
    80003688:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    8000368c:	00048513          	mv	a0,s1
    80003690:	ffffe097          	auipc	ra,0xffffe
    80003694:	284080e7          	jalr	644(ra) # 80001914 <_ZdlPv>
    80003698:	00090513          	mv	a0,s2
    8000369c:	00009097          	auipc	ra,0x9
    800036a0:	4cc080e7          	jalr	1228(ra) # 8000cb68 <_Unwind_Resume>
    800036a4:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800036a8:	00048513          	mv	a0,s1
    800036ac:	ffffe097          	auipc	ra,0xffffe
    800036b0:	268080e7          	jalr	616(ra) # 80001914 <_ZdlPv>
    800036b4:	00090513          	mv	a0,s2
    800036b8:	00009097          	auipc	ra,0x9
    800036bc:	4b0080e7          	jalr	1200(ra) # 8000cb68 <_Unwind_Resume>
    800036c0:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800036c4:	00048513          	mv	a0,s1
    800036c8:	ffffe097          	auipc	ra,0xffffe
    800036cc:	24c080e7          	jalr	588(ra) # 80001914 <_ZdlPv>
    800036d0:	00090513          	mv	a0,s2
    800036d4:	00009097          	auipc	ra,0x9
    800036d8:	494080e7          	jalr	1172(ra) # 8000cb68 <_Unwind_Resume>
    800036dc:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800036e0:	00048513          	mv	a0,s1
    800036e4:	ffffe097          	auipc	ra,0xffffe
    800036e8:	230080e7          	jalr	560(ra) # 80001914 <_ZdlPv>
    800036ec:	00090513          	mv	a0,s2
    800036f0:	00009097          	auipc	ra,0x9
    800036f4:	478080e7          	jalr	1144(ra) # 8000cb68 <_Unwind_Resume>
}
    800036f8:	03813083          	ld	ra,56(sp)
    800036fc:	03013403          	ld	s0,48(sp)
    80003700:	02813483          	ld	s1,40(sp)
    80003704:	02013903          	ld	s2,32(sp)
    80003708:	04010113          	addi	sp,sp,64
    8000370c:	00008067          	ret

0000000080003710 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003710:	ff010113          	addi	sp,sp,-16
    80003714:	00113423          	sd	ra,8(sp)
    80003718:	00813023          	sd	s0,0(sp)
    8000371c:	01010413          	addi	s0,sp,16
    80003720:	00008797          	auipc	a5,0x8
    80003724:	0a878793          	addi	a5,a5,168 # 8000b7c8 <_ZTV7WorkerA+0x10>
    80003728:	00f53023          	sd	a5,0(a0)
    8000372c:	ffffe097          	auipc	ra,0xffffe
    80003730:	128080e7          	jalr	296(ra) # 80001854 <_ZN6ThreadD1Ev>
    80003734:	00813083          	ld	ra,8(sp)
    80003738:	00013403          	ld	s0,0(sp)
    8000373c:	01010113          	addi	sp,sp,16
    80003740:	00008067          	ret

0000000080003744 <_ZN7WorkerAD0Ev>:
    80003744:	fe010113          	addi	sp,sp,-32
    80003748:	00113c23          	sd	ra,24(sp)
    8000374c:	00813823          	sd	s0,16(sp)
    80003750:	00913423          	sd	s1,8(sp)
    80003754:	02010413          	addi	s0,sp,32
    80003758:	00050493          	mv	s1,a0
    8000375c:	00008797          	auipc	a5,0x8
    80003760:	06c78793          	addi	a5,a5,108 # 8000b7c8 <_ZTV7WorkerA+0x10>
    80003764:	00f53023          	sd	a5,0(a0)
    80003768:	ffffe097          	auipc	ra,0xffffe
    8000376c:	0ec080e7          	jalr	236(ra) # 80001854 <_ZN6ThreadD1Ev>
    80003770:	00048513          	mv	a0,s1
    80003774:	ffffe097          	auipc	ra,0xffffe
    80003778:	1a0080e7          	jalr	416(ra) # 80001914 <_ZdlPv>
    8000377c:	01813083          	ld	ra,24(sp)
    80003780:	01013403          	ld	s0,16(sp)
    80003784:	00813483          	ld	s1,8(sp)
    80003788:	02010113          	addi	sp,sp,32
    8000378c:	00008067          	ret

0000000080003790 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003790:	ff010113          	addi	sp,sp,-16
    80003794:	00113423          	sd	ra,8(sp)
    80003798:	00813023          	sd	s0,0(sp)
    8000379c:	01010413          	addi	s0,sp,16
    800037a0:	00008797          	auipc	a5,0x8
    800037a4:	05078793          	addi	a5,a5,80 # 8000b7f0 <_ZTV7WorkerB+0x10>
    800037a8:	00f53023          	sd	a5,0(a0)
    800037ac:	ffffe097          	auipc	ra,0xffffe
    800037b0:	0a8080e7          	jalr	168(ra) # 80001854 <_ZN6ThreadD1Ev>
    800037b4:	00813083          	ld	ra,8(sp)
    800037b8:	00013403          	ld	s0,0(sp)
    800037bc:	01010113          	addi	sp,sp,16
    800037c0:	00008067          	ret

00000000800037c4 <_ZN7WorkerBD0Ev>:
    800037c4:	fe010113          	addi	sp,sp,-32
    800037c8:	00113c23          	sd	ra,24(sp)
    800037cc:	00813823          	sd	s0,16(sp)
    800037d0:	00913423          	sd	s1,8(sp)
    800037d4:	02010413          	addi	s0,sp,32
    800037d8:	00050493          	mv	s1,a0
    800037dc:	00008797          	auipc	a5,0x8
    800037e0:	01478793          	addi	a5,a5,20 # 8000b7f0 <_ZTV7WorkerB+0x10>
    800037e4:	00f53023          	sd	a5,0(a0)
    800037e8:	ffffe097          	auipc	ra,0xffffe
    800037ec:	06c080e7          	jalr	108(ra) # 80001854 <_ZN6ThreadD1Ev>
    800037f0:	00048513          	mv	a0,s1
    800037f4:	ffffe097          	auipc	ra,0xffffe
    800037f8:	120080e7          	jalr	288(ra) # 80001914 <_ZdlPv>
    800037fc:	01813083          	ld	ra,24(sp)
    80003800:	01013403          	ld	s0,16(sp)
    80003804:	00813483          	ld	s1,8(sp)
    80003808:	02010113          	addi	sp,sp,32
    8000380c:	00008067          	ret

0000000080003810 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003810:	ff010113          	addi	sp,sp,-16
    80003814:	00113423          	sd	ra,8(sp)
    80003818:	00813023          	sd	s0,0(sp)
    8000381c:	01010413          	addi	s0,sp,16
    80003820:	00008797          	auipc	a5,0x8
    80003824:	ff878793          	addi	a5,a5,-8 # 8000b818 <_ZTV7WorkerC+0x10>
    80003828:	00f53023          	sd	a5,0(a0)
    8000382c:	ffffe097          	auipc	ra,0xffffe
    80003830:	028080e7          	jalr	40(ra) # 80001854 <_ZN6ThreadD1Ev>
    80003834:	00813083          	ld	ra,8(sp)
    80003838:	00013403          	ld	s0,0(sp)
    8000383c:	01010113          	addi	sp,sp,16
    80003840:	00008067          	ret

0000000080003844 <_ZN7WorkerCD0Ev>:
    80003844:	fe010113          	addi	sp,sp,-32
    80003848:	00113c23          	sd	ra,24(sp)
    8000384c:	00813823          	sd	s0,16(sp)
    80003850:	00913423          	sd	s1,8(sp)
    80003854:	02010413          	addi	s0,sp,32
    80003858:	00050493          	mv	s1,a0
    8000385c:	00008797          	auipc	a5,0x8
    80003860:	fbc78793          	addi	a5,a5,-68 # 8000b818 <_ZTV7WorkerC+0x10>
    80003864:	00f53023          	sd	a5,0(a0)
    80003868:	ffffe097          	auipc	ra,0xffffe
    8000386c:	fec080e7          	jalr	-20(ra) # 80001854 <_ZN6ThreadD1Ev>
    80003870:	00048513          	mv	a0,s1
    80003874:	ffffe097          	auipc	ra,0xffffe
    80003878:	0a0080e7          	jalr	160(ra) # 80001914 <_ZdlPv>
    8000387c:	01813083          	ld	ra,24(sp)
    80003880:	01013403          	ld	s0,16(sp)
    80003884:	00813483          	ld	s1,8(sp)
    80003888:	02010113          	addi	sp,sp,32
    8000388c:	00008067          	ret

0000000080003890 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003890:	ff010113          	addi	sp,sp,-16
    80003894:	00113423          	sd	ra,8(sp)
    80003898:	00813023          	sd	s0,0(sp)
    8000389c:	01010413          	addi	s0,sp,16
    800038a0:	00008797          	auipc	a5,0x8
    800038a4:	fa078793          	addi	a5,a5,-96 # 8000b840 <_ZTV7WorkerD+0x10>
    800038a8:	00f53023          	sd	a5,0(a0)
    800038ac:	ffffe097          	auipc	ra,0xffffe
    800038b0:	fa8080e7          	jalr	-88(ra) # 80001854 <_ZN6ThreadD1Ev>
    800038b4:	00813083          	ld	ra,8(sp)
    800038b8:	00013403          	ld	s0,0(sp)
    800038bc:	01010113          	addi	sp,sp,16
    800038c0:	00008067          	ret

00000000800038c4 <_ZN7WorkerDD0Ev>:
    800038c4:	fe010113          	addi	sp,sp,-32
    800038c8:	00113c23          	sd	ra,24(sp)
    800038cc:	00813823          	sd	s0,16(sp)
    800038d0:	00913423          	sd	s1,8(sp)
    800038d4:	02010413          	addi	s0,sp,32
    800038d8:	00050493          	mv	s1,a0
    800038dc:	00008797          	auipc	a5,0x8
    800038e0:	f6478793          	addi	a5,a5,-156 # 8000b840 <_ZTV7WorkerD+0x10>
    800038e4:	00f53023          	sd	a5,0(a0)
    800038e8:	ffffe097          	auipc	ra,0xffffe
    800038ec:	f6c080e7          	jalr	-148(ra) # 80001854 <_ZN6ThreadD1Ev>
    800038f0:	00048513          	mv	a0,s1
    800038f4:	ffffe097          	auipc	ra,0xffffe
    800038f8:	020080e7          	jalr	32(ra) # 80001914 <_ZdlPv>
    800038fc:	01813083          	ld	ra,24(sp)
    80003900:	01013403          	ld	s0,16(sp)
    80003904:	00813483          	ld	s1,8(sp)
    80003908:	02010113          	addi	sp,sp,32
    8000390c:	00008067          	ret

0000000080003910 <_ZN7WorkerA3runEv>:
    void run() override {
    80003910:	ff010113          	addi	sp,sp,-16
    80003914:	00113423          	sd	ra,8(sp)
    80003918:	00813023          	sd	s0,0(sp)
    8000391c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003920:	00000593          	li	a1,0
    80003924:	fffff097          	auipc	ra,0xfffff
    80003928:	774080e7          	jalr	1908(ra) # 80003098 <_ZN7WorkerA11workerBodyAEPv>
    }
    8000392c:	00813083          	ld	ra,8(sp)
    80003930:	00013403          	ld	s0,0(sp)
    80003934:	01010113          	addi	sp,sp,16
    80003938:	00008067          	ret

000000008000393c <_ZN7WorkerB3runEv>:
    void run() override {
    8000393c:	ff010113          	addi	sp,sp,-16
    80003940:	00113423          	sd	ra,8(sp)
    80003944:	00813023          	sd	s0,0(sp)
    80003948:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    8000394c:	00000593          	li	a1,0
    80003950:	00000097          	auipc	ra,0x0
    80003954:	814080e7          	jalr	-2028(ra) # 80003164 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003958:	00813083          	ld	ra,8(sp)
    8000395c:	00013403          	ld	s0,0(sp)
    80003960:	01010113          	addi	sp,sp,16
    80003964:	00008067          	ret

0000000080003968 <_ZN7WorkerC3runEv>:
    void run() override {
    80003968:	ff010113          	addi	sp,sp,-16
    8000396c:	00113423          	sd	ra,8(sp)
    80003970:	00813023          	sd	s0,0(sp)
    80003974:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003978:	00000593          	li	a1,0
    8000397c:	00000097          	auipc	ra,0x0
    80003980:	8bc080e7          	jalr	-1860(ra) # 80003238 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003984:	00813083          	ld	ra,8(sp)
    80003988:	00013403          	ld	s0,0(sp)
    8000398c:	01010113          	addi	sp,sp,16
    80003990:	00008067          	ret

0000000080003994 <_ZN7WorkerD3runEv>:
    void run() override {
    80003994:	ff010113          	addi	sp,sp,-16
    80003998:	00113423          	sd	ra,8(sp)
    8000399c:	00813023          	sd	s0,0(sp)
    800039a0:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800039a4:	00000593          	li	a1,0
    800039a8:	00000097          	auipc	ra,0x0
    800039ac:	a10080e7          	jalr	-1520(ra) # 800033b8 <_ZN7WorkerD11workerBodyDEPv>
    }
    800039b0:	00813083          	ld	ra,8(sp)
    800039b4:	00013403          	ld	s0,0(sp)
    800039b8:	01010113          	addi	sp,sp,16
    800039bc:	00008067          	ret

00000000800039c0 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    800039c0:	f8010113          	addi	sp,sp,-128
    800039c4:	06113c23          	sd	ra,120(sp)
    800039c8:	06813823          	sd	s0,112(sp)
    800039cc:	06913423          	sd	s1,104(sp)
    800039d0:	07213023          	sd	s2,96(sp)
    800039d4:	05313c23          	sd	s3,88(sp)
    800039d8:	05413823          	sd	s4,80(sp)
    800039dc:	05513423          	sd	s5,72(sp)
    800039e0:	05613023          	sd	s6,64(sp)
    800039e4:	03713c23          	sd	s7,56(sp)
    800039e8:	03813823          	sd	s8,48(sp)
    800039ec:	03913423          	sd	s9,40(sp)
    800039f0:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800039f4:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800039f8:	00006517          	auipc	a0,0x6
    800039fc:	83850513          	addi	a0,a0,-1992 # 80009230 <CONSOLE_STATUS+0x220>
    80003a00:	00001097          	auipc	ra,0x1
    80003a04:	5a8080e7          	jalr	1448(ra) # 80004fa8 <_Z11printStringPKc>
    getString(input, 30);
    80003a08:	01e00593          	li	a1,30
    80003a0c:	f8040493          	addi	s1,s0,-128
    80003a10:	00048513          	mv	a0,s1
    80003a14:	00001097          	auipc	ra,0x1
    80003a18:	620080e7          	jalr	1568(ra) # 80005034 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003a1c:	00048513          	mv	a0,s1
    80003a20:	00001097          	auipc	ra,0x1
    80003a24:	6ec080e7          	jalr	1772(ra) # 8000510c <_Z11stringToIntPKc>
    80003a28:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003a2c:	00006517          	auipc	a0,0x6
    80003a30:	82450513          	addi	a0,a0,-2012 # 80009250 <CONSOLE_STATUS+0x240>
    80003a34:	00001097          	auipc	ra,0x1
    80003a38:	574080e7          	jalr	1396(ra) # 80004fa8 <_Z11printStringPKc>
    getString(input, 30);
    80003a3c:	01e00593          	li	a1,30
    80003a40:	00048513          	mv	a0,s1
    80003a44:	00001097          	auipc	ra,0x1
    80003a48:	5f0080e7          	jalr	1520(ra) # 80005034 <_Z9getStringPci>
    n = stringToInt(input);
    80003a4c:	00048513          	mv	a0,s1
    80003a50:	00001097          	auipc	ra,0x1
    80003a54:	6bc080e7          	jalr	1724(ra) # 8000510c <_Z11stringToIntPKc>
    80003a58:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003a5c:	00006517          	auipc	a0,0x6
    80003a60:	81450513          	addi	a0,a0,-2028 # 80009270 <CONSOLE_STATUS+0x260>
    80003a64:	00001097          	auipc	ra,0x1
    80003a68:	544080e7          	jalr	1348(ra) # 80004fa8 <_Z11printStringPKc>
    printInt(threadNum);
    80003a6c:	00000613          	li	a2,0
    80003a70:	00a00593          	li	a1,10
    80003a74:	00098513          	mv	a0,s3
    80003a78:	00001097          	auipc	ra,0x1
    80003a7c:	6e4080e7          	jalr	1764(ra) # 8000515c <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003a80:	00006517          	auipc	a0,0x6
    80003a84:	80850513          	addi	a0,a0,-2040 # 80009288 <CONSOLE_STATUS+0x278>
    80003a88:	00001097          	auipc	ra,0x1
    80003a8c:	520080e7          	jalr	1312(ra) # 80004fa8 <_Z11printStringPKc>
    printInt(n);
    80003a90:	00000613          	li	a2,0
    80003a94:	00a00593          	li	a1,10
    80003a98:	00048513          	mv	a0,s1
    80003a9c:	00001097          	auipc	ra,0x1
    80003aa0:	6c0080e7          	jalr	1728(ra) # 8000515c <_Z8printIntiii>
    printString(".\n");
    80003aa4:	00005517          	auipc	a0,0x5
    80003aa8:	7fc50513          	addi	a0,a0,2044 # 800092a0 <CONSOLE_STATUS+0x290>
    80003aac:	00001097          	auipc	ra,0x1
    80003ab0:	4fc080e7          	jalr	1276(ra) # 80004fa8 <_Z11printStringPKc>
    if (threadNum > n) {
    80003ab4:	0334c463          	blt	s1,s3,80003adc <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003ab8:	03305c63          	blez	s3,80003af0 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003abc:	03800513          	li	a0,56
    80003ac0:	ffffe097          	auipc	ra,0xffffe
    80003ac4:	e04080e7          	jalr	-508(ra) # 800018c4 <_Znwm>
    80003ac8:	00050a93          	mv	s5,a0
    80003acc:	00048593          	mv	a1,s1
    80003ad0:	00001097          	auipc	ra,0x1
    80003ad4:	7ac080e7          	jalr	1964(ra) # 8000527c <_ZN9BufferCPPC1Ei>
    80003ad8:	0300006f          	j	80003b08 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003adc:	00005517          	auipc	a0,0x5
    80003ae0:	7cc50513          	addi	a0,a0,1996 # 800092a8 <CONSOLE_STATUS+0x298>
    80003ae4:	00001097          	auipc	ra,0x1
    80003ae8:	4c4080e7          	jalr	1220(ra) # 80004fa8 <_Z11printStringPKc>
        return;
    80003aec:	0140006f          	j	80003b00 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003af0:	00005517          	auipc	a0,0x5
    80003af4:	7f850513          	addi	a0,a0,2040 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80003af8:	00001097          	auipc	ra,0x1
    80003afc:	4b0080e7          	jalr	1200(ra) # 80004fa8 <_Z11printStringPKc>
        return;
    80003b00:	000c0113          	mv	sp,s8
    80003b04:	2140006f          	j	80003d18 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003b08:	01000513          	li	a0,16
    80003b0c:	ffffe097          	auipc	ra,0xffffe
    80003b10:	db8080e7          	jalr	-584(ra) # 800018c4 <_Znwm>
    80003b14:	00050913          	mv	s2,a0
    80003b18:	00000593          	li	a1,0
    80003b1c:	ffffe097          	auipc	ra,0xffffe
    80003b20:	f98080e7          	jalr	-104(ra) # 80001ab4 <_ZN9SemaphoreC1Ej>
    80003b24:	00008797          	auipc	a5,0x8
    80003b28:	f327ba23          	sd	s2,-204(a5) # 8000ba58 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003b2c:	00399793          	slli	a5,s3,0x3
    80003b30:	00f78793          	addi	a5,a5,15
    80003b34:	ff07f793          	andi	a5,a5,-16
    80003b38:	40f10133          	sub	sp,sp,a5
    80003b3c:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003b40:	0019871b          	addiw	a4,s3,1
    80003b44:	00171793          	slli	a5,a4,0x1
    80003b48:	00e787b3          	add	a5,a5,a4
    80003b4c:	00379793          	slli	a5,a5,0x3
    80003b50:	00f78793          	addi	a5,a5,15
    80003b54:	ff07f793          	andi	a5,a5,-16
    80003b58:	40f10133          	sub	sp,sp,a5
    80003b5c:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003b60:	00199493          	slli	s1,s3,0x1
    80003b64:	013484b3          	add	s1,s1,s3
    80003b68:	00349493          	slli	s1,s1,0x3
    80003b6c:	009b04b3          	add	s1,s6,s1
    80003b70:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80003b74:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003b78:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003b7c:	02800513          	li	a0,40
    80003b80:	ffffe097          	auipc	ra,0xffffe
    80003b84:	d44080e7          	jalr	-700(ra) # 800018c4 <_Znwm>
    80003b88:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003b8c:	ffffe097          	auipc	ra,0xffffe
    80003b90:	e84080e7          	jalr	-380(ra) # 80001a10 <_ZN6ThreadC1Ev>
    80003b94:	00008797          	auipc	a5,0x8
    80003b98:	d2478793          	addi	a5,a5,-732 # 8000b8b8 <_ZTV8Consumer+0x10>
    80003b9c:	00fbb023          	sd	a5,0(s7)
    80003ba0:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80003ba4:	000b8513          	mv	a0,s7
    80003ba8:	ffffe097          	auipc	ra,0xffffe
    80003bac:	ed4080e7          	jalr	-300(ra) # 80001a7c <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003bb0:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80003bb4:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003bb8:	00008797          	auipc	a5,0x8
    80003bbc:	ea07b783          	ld	a5,-352(a5) # 8000ba58 <_ZL10waitForAll>
    80003bc0:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003bc4:	02800513          	li	a0,40
    80003bc8:	ffffe097          	auipc	ra,0xffffe
    80003bcc:	cfc080e7          	jalr	-772(ra) # 800018c4 <_Znwm>
    80003bd0:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003bd4:	ffffe097          	auipc	ra,0xffffe
    80003bd8:	e3c080e7          	jalr	-452(ra) # 80001a10 <_ZN6ThreadC1Ev>
    80003bdc:	00008797          	auipc	a5,0x8
    80003be0:	c8c78793          	addi	a5,a5,-884 # 8000b868 <_ZTV16ProducerKeyborad+0x10>
    80003be4:	00f4b023          	sd	a5,0(s1)
    80003be8:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003bec:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003bf0:	00048513          	mv	a0,s1
    80003bf4:	ffffe097          	auipc	ra,0xffffe
    80003bf8:	e88080e7          	jalr	-376(ra) # 80001a7c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003bfc:	00100913          	li	s2,1
    80003c00:	0300006f          	j	80003c30 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003c04:	00008797          	auipc	a5,0x8
    80003c08:	c8c78793          	addi	a5,a5,-884 # 8000b890 <_ZTV8Producer+0x10>
    80003c0c:	00fcb023          	sd	a5,0(s9)
    80003c10:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003c14:	00391793          	slli	a5,s2,0x3
    80003c18:	00fa07b3          	add	a5,s4,a5
    80003c1c:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003c20:	000c8513          	mv	a0,s9
    80003c24:	ffffe097          	auipc	ra,0xffffe
    80003c28:	e58080e7          	jalr	-424(ra) # 80001a7c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003c2c:	0019091b          	addiw	s2,s2,1
    80003c30:	05395263          	bge	s2,s3,80003c74 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003c34:	00191493          	slli	s1,s2,0x1
    80003c38:	012484b3          	add	s1,s1,s2
    80003c3c:	00349493          	slli	s1,s1,0x3
    80003c40:	009b04b3          	add	s1,s6,s1
    80003c44:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003c48:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003c4c:	00008797          	auipc	a5,0x8
    80003c50:	e0c7b783          	ld	a5,-500(a5) # 8000ba58 <_ZL10waitForAll>
    80003c54:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003c58:	02800513          	li	a0,40
    80003c5c:	ffffe097          	auipc	ra,0xffffe
    80003c60:	c68080e7          	jalr	-920(ra) # 800018c4 <_Znwm>
    80003c64:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003c68:	ffffe097          	auipc	ra,0xffffe
    80003c6c:	da8080e7          	jalr	-600(ra) # 80001a10 <_ZN6ThreadC1Ev>
    80003c70:	f95ff06f          	j	80003c04 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80003c74:	ffffe097          	auipc	ra,0xffffe
    80003c78:	dc4080e7          	jalr	-572(ra) # 80001a38 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003c7c:	00000493          	li	s1,0
    80003c80:	0099ce63          	blt	s3,s1,80003c9c <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80003c84:	00008517          	auipc	a0,0x8
    80003c88:	dd453503          	ld	a0,-556(a0) # 8000ba58 <_ZL10waitForAll>
    80003c8c:	ffffe097          	auipc	ra,0xffffe
    80003c90:	e98080e7          	jalr	-360(ra) # 80001b24 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003c94:	0014849b          	addiw	s1,s1,1
    80003c98:	fe9ff06f          	j	80003c80 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80003c9c:	00008517          	auipc	a0,0x8
    80003ca0:	dbc53503          	ld	a0,-580(a0) # 8000ba58 <_ZL10waitForAll>
    80003ca4:	00050863          	beqz	a0,80003cb4 <_Z20testConsumerProducerv+0x2f4>
    80003ca8:	00053783          	ld	a5,0(a0)
    80003cac:	0087b783          	ld	a5,8(a5)
    80003cb0:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80003cb4:	00000493          	li	s1,0
    80003cb8:	0080006f          	j	80003cc0 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80003cbc:	0014849b          	addiw	s1,s1,1
    80003cc0:	0334d263          	bge	s1,s3,80003ce4 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80003cc4:	00349793          	slli	a5,s1,0x3
    80003cc8:	00fa07b3          	add	a5,s4,a5
    80003ccc:	0007b503          	ld	a0,0(a5)
    80003cd0:	fe0506e3          	beqz	a0,80003cbc <_Z20testConsumerProducerv+0x2fc>
    80003cd4:	00053783          	ld	a5,0(a0)
    80003cd8:	0087b783          	ld	a5,8(a5)
    80003cdc:	000780e7          	jalr	a5
    80003ce0:	fddff06f          	j	80003cbc <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80003ce4:	000b8a63          	beqz	s7,80003cf8 <_Z20testConsumerProducerv+0x338>
    80003ce8:	000bb783          	ld	a5,0(s7)
    80003cec:	0087b783          	ld	a5,8(a5)
    80003cf0:	000b8513          	mv	a0,s7
    80003cf4:	000780e7          	jalr	a5
    delete buffer;
    80003cf8:	000a8e63          	beqz	s5,80003d14 <_Z20testConsumerProducerv+0x354>
    80003cfc:	000a8513          	mv	a0,s5
    80003d00:	00002097          	auipc	ra,0x2
    80003d04:	874080e7          	jalr	-1932(ra) # 80005574 <_ZN9BufferCPPD1Ev>
    80003d08:	000a8513          	mv	a0,s5
    80003d0c:	ffffe097          	auipc	ra,0xffffe
    80003d10:	c08080e7          	jalr	-1016(ra) # 80001914 <_ZdlPv>
    80003d14:	000c0113          	mv	sp,s8
}
    80003d18:	f8040113          	addi	sp,s0,-128
    80003d1c:	07813083          	ld	ra,120(sp)
    80003d20:	07013403          	ld	s0,112(sp)
    80003d24:	06813483          	ld	s1,104(sp)
    80003d28:	06013903          	ld	s2,96(sp)
    80003d2c:	05813983          	ld	s3,88(sp)
    80003d30:	05013a03          	ld	s4,80(sp)
    80003d34:	04813a83          	ld	s5,72(sp)
    80003d38:	04013b03          	ld	s6,64(sp)
    80003d3c:	03813b83          	ld	s7,56(sp)
    80003d40:	03013c03          	ld	s8,48(sp)
    80003d44:	02813c83          	ld	s9,40(sp)
    80003d48:	08010113          	addi	sp,sp,128
    80003d4c:	00008067          	ret
    80003d50:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003d54:	000a8513          	mv	a0,s5
    80003d58:	ffffe097          	auipc	ra,0xffffe
    80003d5c:	bbc080e7          	jalr	-1092(ra) # 80001914 <_ZdlPv>
    80003d60:	00048513          	mv	a0,s1
    80003d64:	00009097          	auipc	ra,0x9
    80003d68:	e04080e7          	jalr	-508(ra) # 8000cb68 <_Unwind_Resume>
    80003d6c:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80003d70:	00090513          	mv	a0,s2
    80003d74:	ffffe097          	auipc	ra,0xffffe
    80003d78:	ba0080e7          	jalr	-1120(ra) # 80001914 <_ZdlPv>
    80003d7c:	00048513          	mv	a0,s1
    80003d80:	00009097          	auipc	ra,0x9
    80003d84:	de8080e7          	jalr	-536(ra) # 8000cb68 <_Unwind_Resume>
    80003d88:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003d8c:	000b8513          	mv	a0,s7
    80003d90:	ffffe097          	auipc	ra,0xffffe
    80003d94:	b84080e7          	jalr	-1148(ra) # 80001914 <_ZdlPv>
    80003d98:	00048513          	mv	a0,s1
    80003d9c:	00009097          	auipc	ra,0x9
    80003da0:	dcc080e7          	jalr	-564(ra) # 8000cb68 <_Unwind_Resume>
    80003da4:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003da8:	00048513          	mv	a0,s1
    80003dac:	ffffe097          	auipc	ra,0xffffe
    80003db0:	b68080e7          	jalr	-1176(ra) # 80001914 <_ZdlPv>
    80003db4:	00090513          	mv	a0,s2
    80003db8:	00009097          	auipc	ra,0x9
    80003dbc:	db0080e7          	jalr	-592(ra) # 8000cb68 <_Unwind_Resume>
    80003dc0:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80003dc4:	000c8513          	mv	a0,s9
    80003dc8:	ffffe097          	auipc	ra,0xffffe
    80003dcc:	b4c080e7          	jalr	-1204(ra) # 80001914 <_ZdlPv>
    80003dd0:	00048513          	mv	a0,s1
    80003dd4:	00009097          	auipc	ra,0x9
    80003dd8:	d94080e7          	jalr	-620(ra) # 8000cb68 <_Unwind_Resume>

0000000080003ddc <_ZN8Consumer3runEv>:
    void run() override {
    80003ddc:	fd010113          	addi	sp,sp,-48
    80003de0:	02113423          	sd	ra,40(sp)
    80003de4:	02813023          	sd	s0,32(sp)
    80003de8:	00913c23          	sd	s1,24(sp)
    80003dec:	01213823          	sd	s2,16(sp)
    80003df0:	01313423          	sd	s3,8(sp)
    80003df4:	03010413          	addi	s0,sp,48
    80003df8:	00050913          	mv	s2,a0
        int i = 0;
    80003dfc:	00000993          	li	s3,0
    80003e00:	0100006f          	j	80003e10 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80003e04:	00a00513          	li	a0,10
    80003e08:	ffffe097          	auipc	ra,0xffffe
    80003e0c:	db4080e7          	jalr	-588(ra) # 80001bbc <_ZN7Console4putcEc>
        while (!threadEnd) {
    80003e10:	00008797          	auipc	a5,0x8
    80003e14:	c407a783          	lw	a5,-960(a5) # 8000ba50 <_ZL9threadEnd>
    80003e18:	04079a63          	bnez	a5,80003e6c <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80003e1c:	02093783          	ld	a5,32(s2)
    80003e20:	0087b503          	ld	a0,8(a5)
    80003e24:	00001097          	auipc	ra,0x1
    80003e28:	63c080e7          	jalr	1596(ra) # 80005460 <_ZN9BufferCPP3getEv>
            i++;
    80003e2c:	0019849b          	addiw	s1,s3,1
    80003e30:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80003e34:	0ff57513          	andi	a0,a0,255
    80003e38:	ffffe097          	auipc	ra,0xffffe
    80003e3c:	d84080e7          	jalr	-636(ra) # 80001bbc <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80003e40:	05000793          	li	a5,80
    80003e44:	02f4e4bb          	remw	s1,s1,a5
    80003e48:	fc0494e3          	bnez	s1,80003e10 <_ZN8Consumer3runEv+0x34>
    80003e4c:	fb9ff06f          	j	80003e04 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80003e50:	02093783          	ld	a5,32(s2)
    80003e54:	0087b503          	ld	a0,8(a5)
    80003e58:	00001097          	auipc	ra,0x1
    80003e5c:	608080e7          	jalr	1544(ra) # 80005460 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80003e60:	0ff57513          	andi	a0,a0,255
    80003e64:	ffffe097          	auipc	ra,0xffffe
    80003e68:	d58080e7          	jalr	-680(ra) # 80001bbc <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80003e6c:	02093783          	ld	a5,32(s2)
    80003e70:	0087b503          	ld	a0,8(a5)
    80003e74:	00001097          	auipc	ra,0x1
    80003e78:	678080e7          	jalr	1656(ra) # 800054ec <_ZN9BufferCPP6getCntEv>
    80003e7c:	fca04ae3          	bgtz	a0,80003e50 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80003e80:	02093783          	ld	a5,32(s2)
    80003e84:	0107b503          	ld	a0,16(a5)
    80003e88:	ffffe097          	auipc	ra,0xffffe
    80003e8c:	c64080e7          	jalr	-924(ra) # 80001aec <_ZN9Semaphore6signalEv>
    }
    80003e90:	02813083          	ld	ra,40(sp)
    80003e94:	02013403          	ld	s0,32(sp)
    80003e98:	01813483          	ld	s1,24(sp)
    80003e9c:	01013903          	ld	s2,16(sp)
    80003ea0:	00813983          	ld	s3,8(sp)
    80003ea4:	03010113          	addi	sp,sp,48
    80003ea8:	00008067          	ret

0000000080003eac <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80003eac:	ff010113          	addi	sp,sp,-16
    80003eb0:	00113423          	sd	ra,8(sp)
    80003eb4:	00813023          	sd	s0,0(sp)
    80003eb8:	01010413          	addi	s0,sp,16
    80003ebc:	00008797          	auipc	a5,0x8
    80003ec0:	9fc78793          	addi	a5,a5,-1540 # 8000b8b8 <_ZTV8Consumer+0x10>
    80003ec4:	00f53023          	sd	a5,0(a0)
    80003ec8:	ffffe097          	auipc	ra,0xffffe
    80003ecc:	98c080e7          	jalr	-1652(ra) # 80001854 <_ZN6ThreadD1Ev>
    80003ed0:	00813083          	ld	ra,8(sp)
    80003ed4:	00013403          	ld	s0,0(sp)
    80003ed8:	01010113          	addi	sp,sp,16
    80003edc:	00008067          	ret

0000000080003ee0 <_ZN8ConsumerD0Ev>:
    80003ee0:	fe010113          	addi	sp,sp,-32
    80003ee4:	00113c23          	sd	ra,24(sp)
    80003ee8:	00813823          	sd	s0,16(sp)
    80003eec:	00913423          	sd	s1,8(sp)
    80003ef0:	02010413          	addi	s0,sp,32
    80003ef4:	00050493          	mv	s1,a0
    80003ef8:	00008797          	auipc	a5,0x8
    80003efc:	9c078793          	addi	a5,a5,-1600 # 8000b8b8 <_ZTV8Consumer+0x10>
    80003f00:	00f53023          	sd	a5,0(a0)
    80003f04:	ffffe097          	auipc	ra,0xffffe
    80003f08:	950080e7          	jalr	-1712(ra) # 80001854 <_ZN6ThreadD1Ev>
    80003f0c:	00048513          	mv	a0,s1
    80003f10:	ffffe097          	auipc	ra,0xffffe
    80003f14:	a04080e7          	jalr	-1532(ra) # 80001914 <_ZdlPv>
    80003f18:	01813083          	ld	ra,24(sp)
    80003f1c:	01013403          	ld	s0,16(sp)
    80003f20:	00813483          	ld	s1,8(sp)
    80003f24:	02010113          	addi	sp,sp,32
    80003f28:	00008067          	ret

0000000080003f2c <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80003f2c:	ff010113          	addi	sp,sp,-16
    80003f30:	00113423          	sd	ra,8(sp)
    80003f34:	00813023          	sd	s0,0(sp)
    80003f38:	01010413          	addi	s0,sp,16
    80003f3c:	00008797          	auipc	a5,0x8
    80003f40:	92c78793          	addi	a5,a5,-1748 # 8000b868 <_ZTV16ProducerKeyborad+0x10>
    80003f44:	00f53023          	sd	a5,0(a0)
    80003f48:	ffffe097          	auipc	ra,0xffffe
    80003f4c:	90c080e7          	jalr	-1780(ra) # 80001854 <_ZN6ThreadD1Ev>
    80003f50:	00813083          	ld	ra,8(sp)
    80003f54:	00013403          	ld	s0,0(sp)
    80003f58:	01010113          	addi	sp,sp,16
    80003f5c:	00008067          	ret

0000000080003f60 <_ZN16ProducerKeyboradD0Ev>:
    80003f60:	fe010113          	addi	sp,sp,-32
    80003f64:	00113c23          	sd	ra,24(sp)
    80003f68:	00813823          	sd	s0,16(sp)
    80003f6c:	00913423          	sd	s1,8(sp)
    80003f70:	02010413          	addi	s0,sp,32
    80003f74:	00050493          	mv	s1,a0
    80003f78:	00008797          	auipc	a5,0x8
    80003f7c:	8f078793          	addi	a5,a5,-1808 # 8000b868 <_ZTV16ProducerKeyborad+0x10>
    80003f80:	00f53023          	sd	a5,0(a0)
    80003f84:	ffffe097          	auipc	ra,0xffffe
    80003f88:	8d0080e7          	jalr	-1840(ra) # 80001854 <_ZN6ThreadD1Ev>
    80003f8c:	00048513          	mv	a0,s1
    80003f90:	ffffe097          	auipc	ra,0xffffe
    80003f94:	984080e7          	jalr	-1660(ra) # 80001914 <_ZdlPv>
    80003f98:	01813083          	ld	ra,24(sp)
    80003f9c:	01013403          	ld	s0,16(sp)
    80003fa0:	00813483          	ld	s1,8(sp)
    80003fa4:	02010113          	addi	sp,sp,32
    80003fa8:	00008067          	ret

0000000080003fac <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80003fac:	ff010113          	addi	sp,sp,-16
    80003fb0:	00113423          	sd	ra,8(sp)
    80003fb4:	00813023          	sd	s0,0(sp)
    80003fb8:	01010413          	addi	s0,sp,16
    80003fbc:	00008797          	auipc	a5,0x8
    80003fc0:	8d478793          	addi	a5,a5,-1836 # 8000b890 <_ZTV8Producer+0x10>
    80003fc4:	00f53023          	sd	a5,0(a0)
    80003fc8:	ffffe097          	auipc	ra,0xffffe
    80003fcc:	88c080e7          	jalr	-1908(ra) # 80001854 <_ZN6ThreadD1Ev>
    80003fd0:	00813083          	ld	ra,8(sp)
    80003fd4:	00013403          	ld	s0,0(sp)
    80003fd8:	01010113          	addi	sp,sp,16
    80003fdc:	00008067          	ret

0000000080003fe0 <_ZN8ProducerD0Ev>:
    80003fe0:	fe010113          	addi	sp,sp,-32
    80003fe4:	00113c23          	sd	ra,24(sp)
    80003fe8:	00813823          	sd	s0,16(sp)
    80003fec:	00913423          	sd	s1,8(sp)
    80003ff0:	02010413          	addi	s0,sp,32
    80003ff4:	00050493          	mv	s1,a0
    80003ff8:	00008797          	auipc	a5,0x8
    80003ffc:	89878793          	addi	a5,a5,-1896 # 8000b890 <_ZTV8Producer+0x10>
    80004000:	00f53023          	sd	a5,0(a0)
    80004004:	ffffe097          	auipc	ra,0xffffe
    80004008:	850080e7          	jalr	-1968(ra) # 80001854 <_ZN6ThreadD1Ev>
    8000400c:	00048513          	mv	a0,s1
    80004010:	ffffe097          	auipc	ra,0xffffe
    80004014:	904080e7          	jalr	-1788(ra) # 80001914 <_ZdlPv>
    80004018:	01813083          	ld	ra,24(sp)
    8000401c:	01013403          	ld	s0,16(sp)
    80004020:	00813483          	ld	s1,8(sp)
    80004024:	02010113          	addi	sp,sp,32
    80004028:	00008067          	ret

000000008000402c <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    8000402c:	fe010113          	addi	sp,sp,-32
    80004030:	00113c23          	sd	ra,24(sp)
    80004034:	00813823          	sd	s0,16(sp)
    80004038:	00913423          	sd	s1,8(sp)
    8000403c:	02010413          	addi	s0,sp,32
    80004040:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004044:	ffffd097          	auipc	ra,0xffffd
    80004048:	6a0080e7          	jalr	1696(ra) # 800016e4 <_Z4getcv>
    8000404c:	0005059b          	sext.w	a1,a0
    80004050:	01b00793          	li	a5,27
    80004054:	00f58c63          	beq	a1,a5,8000406c <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004058:	0204b783          	ld	a5,32(s1)
    8000405c:	0087b503          	ld	a0,8(a5)
    80004060:	00001097          	auipc	ra,0x1
    80004064:	370080e7          	jalr	880(ra) # 800053d0 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004068:	fddff06f          	j	80004044 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    8000406c:	00100793          	li	a5,1
    80004070:	00008717          	auipc	a4,0x8
    80004074:	9ef72023          	sw	a5,-1568(a4) # 8000ba50 <_ZL9threadEnd>
        td->buffer->put('!');
    80004078:	0204b783          	ld	a5,32(s1)
    8000407c:	02100593          	li	a1,33
    80004080:	0087b503          	ld	a0,8(a5)
    80004084:	00001097          	auipc	ra,0x1
    80004088:	34c080e7          	jalr	844(ra) # 800053d0 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    8000408c:	0204b783          	ld	a5,32(s1)
    80004090:	0107b503          	ld	a0,16(a5)
    80004094:	ffffe097          	auipc	ra,0xffffe
    80004098:	a58080e7          	jalr	-1448(ra) # 80001aec <_ZN9Semaphore6signalEv>
    }
    8000409c:	01813083          	ld	ra,24(sp)
    800040a0:	01013403          	ld	s0,16(sp)
    800040a4:	00813483          	ld	s1,8(sp)
    800040a8:	02010113          	addi	sp,sp,32
    800040ac:	00008067          	ret

00000000800040b0 <_ZN8Producer3runEv>:
    void run() override {
    800040b0:	fe010113          	addi	sp,sp,-32
    800040b4:	00113c23          	sd	ra,24(sp)
    800040b8:	00813823          	sd	s0,16(sp)
    800040bc:	00913423          	sd	s1,8(sp)
    800040c0:	01213023          	sd	s2,0(sp)
    800040c4:	02010413          	addi	s0,sp,32
    800040c8:	00050493          	mv	s1,a0
        int i = 0;
    800040cc:	00000913          	li	s2,0
        while (!threadEnd) {
    800040d0:	00008797          	auipc	a5,0x8
    800040d4:	9807a783          	lw	a5,-1664(a5) # 8000ba50 <_ZL9threadEnd>
    800040d8:	04079263          	bnez	a5,8000411c <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    800040dc:	0204b783          	ld	a5,32(s1)
    800040e0:	0007a583          	lw	a1,0(a5)
    800040e4:	0305859b          	addiw	a1,a1,48
    800040e8:	0087b503          	ld	a0,8(a5)
    800040ec:	00001097          	auipc	ra,0x1
    800040f0:	2e4080e7          	jalr	740(ra) # 800053d0 <_ZN9BufferCPP3putEi>
            i++;
    800040f4:	0019071b          	addiw	a4,s2,1
    800040f8:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    800040fc:	0204b783          	ld	a5,32(s1)
    80004100:	0007a783          	lw	a5,0(a5)
    80004104:	00e787bb          	addw	a5,a5,a4
    80004108:	00500513          	li	a0,5
    8000410c:	02a7e53b          	remw	a0,a5,a0
    80004110:	ffffe097          	auipc	ra,0xffffe
    80004114:	950080e7          	jalr	-1712(ra) # 80001a60 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004118:	fb9ff06f          	j	800040d0 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    8000411c:	0204b783          	ld	a5,32(s1)
    80004120:	0107b503          	ld	a0,16(a5)
    80004124:	ffffe097          	auipc	ra,0xffffe
    80004128:	9c8080e7          	jalr	-1592(ra) # 80001aec <_ZN9Semaphore6signalEv>
    }
    8000412c:	01813083          	ld	ra,24(sp)
    80004130:	01013403          	ld	s0,16(sp)
    80004134:	00813483          	ld	s1,8(sp)
    80004138:	00013903          	ld	s2,0(sp)
    8000413c:	02010113          	addi	sp,sp,32
    80004140:	00008067          	ret

0000000080004144 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004144:	fe010113          	addi	sp,sp,-32
    80004148:	00113c23          	sd	ra,24(sp)
    8000414c:	00813823          	sd	s0,16(sp)
    80004150:	00913423          	sd	s1,8(sp)
    80004154:	01213023          	sd	s2,0(sp)
    80004158:	02010413          	addi	s0,sp,32
    8000415c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004160:	00100793          	li	a5,1
    80004164:	02a7f863          	bgeu	a5,a0,80004194 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004168:	00a00793          	li	a5,10
    8000416c:	02f577b3          	remu	a5,a0,a5
    80004170:	02078e63          	beqz	a5,800041ac <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004174:	fff48513          	addi	a0,s1,-1
    80004178:	00000097          	auipc	ra,0x0
    8000417c:	fcc080e7          	jalr	-52(ra) # 80004144 <_ZL9fibonaccim>
    80004180:	00050913          	mv	s2,a0
    80004184:	ffe48513          	addi	a0,s1,-2
    80004188:	00000097          	auipc	ra,0x0
    8000418c:	fbc080e7          	jalr	-68(ra) # 80004144 <_ZL9fibonaccim>
    80004190:	00a90533          	add	a0,s2,a0
}
    80004194:	01813083          	ld	ra,24(sp)
    80004198:	01013403          	ld	s0,16(sp)
    8000419c:	00813483          	ld	s1,8(sp)
    800041a0:	00013903          	ld	s2,0(sp)
    800041a4:	02010113          	addi	sp,sp,32
    800041a8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800041ac:	ffffd097          	auipc	ra,0xffffd
    800041b0:	288080e7          	jalr	648(ra) # 80001434 <_Z15thread_dispatchv>
    800041b4:	fc1ff06f          	j	80004174 <_ZL9fibonaccim+0x30>

00000000800041b8 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800041b8:	fe010113          	addi	sp,sp,-32
    800041bc:	00113c23          	sd	ra,24(sp)
    800041c0:	00813823          	sd	s0,16(sp)
    800041c4:	00913423          	sd	s1,8(sp)
    800041c8:	01213023          	sd	s2,0(sp)
    800041cc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800041d0:	00a00493          	li	s1,10
    800041d4:	0400006f          	j	80004214 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800041d8:	00005517          	auipc	a0,0x5
    800041dc:	1a050513          	addi	a0,a0,416 # 80009378 <CONSOLE_STATUS+0x368>
    800041e0:	00001097          	auipc	ra,0x1
    800041e4:	dc8080e7          	jalr	-568(ra) # 80004fa8 <_Z11printStringPKc>
    800041e8:	00000613          	li	a2,0
    800041ec:	00a00593          	li	a1,10
    800041f0:	00048513          	mv	a0,s1
    800041f4:	00001097          	auipc	ra,0x1
    800041f8:	f68080e7          	jalr	-152(ra) # 8000515c <_Z8printIntiii>
    800041fc:	00005517          	auipc	a0,0x5
    80004200:	40c50513          	addi	a0,a0,1036 # 80009608 <CONSOLE_STATUS+0x5f8>
    80004204:	00001097          	auipc	ra,0x1
    80004208:	da4080e7          	jalr	-604(ra) # 80004fa8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000420c:	0014849b          	addiw	s1,s1,1
    80004210:	0ff4f493          	andi	s1,s1,255
    80004214:	00c00793          	li	a5,12
    80004218:	fc97f0e3          	bgeu	a5,s1,800041d8 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000421c:	00005517          	auipc	a0,0x5
    80004220:	16450513          	addi	a0,a0,356 # 80009380 <CONSOLE_STATUS+0x370>
    80004224:	00001097          	auipc	ra,0x1
    80004228:	d84080e7          	jalr	-636(ra) # 80004fa8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000422c:	00500313          	li	t1,5
    thread_dispatch();
    80004230:	ffffd097          	auipc	ra,0xffffd
    80004234:	204080e7          	jalr	516(ra) # 80001434 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004238:	01000513          	li	a0,16
    8000423c:	00000097          	auipc	ra,0x0
    80004240:	f08080e7          	jalr	-248(ra) # 80004144 <_ZL9fibonaccim>
    80004244:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004248:	00005517          	auipc	a0,0x5
    8000424c:	14850513          	addi	a0,a0,328 # 80009390 <CONSOLE_STATUS+0x380>
    80004250:	00001097          	auipc	ra,0x1
    80004254:	d58080e7          	jalr	-680(ra) # 80004fa8 <_Z11printStringPKc>
    80004258:	00000613          	li	a2,0
    8000425c:	00a00593          	li	a1,10
    80004260:	0009051b          	sext.w	a0,s2
    80004264:	00001097          	auipc	ra,0x1
    80004268:	ef8080e7          	jalr	-264(ra) # 8000515c <_Z8printIntiii>
    8000426c:	00005517          	auipc	a0,0x5
    80004270:	39c50513          	addi	a0,a0,924 # 80009608 <CONSOLE_STATUS+0x5f8>
    80004274:	00001097          	auipc	ra,0x1
    80004278:	d34080e7          	jalr	-716(ra) # 80004fa8 <_Z11printStringPKc>
    8000427c:	0400006f          	j	800042bc <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004280:	00005517          	auipc	a0,0x5
    80004284:	0f850513          	addi	a0,a0,248 # 80009378 <CONSOLE_STATUS+0x368>
    80004288:	00001097          	auipc	ra,0x1
    8000428c:	d20080e7          	jalr	-736(ra) # 80004fa8 <_Z11printStringPKc>
    80004290:	00000613          	li	a2,0
    80004294:	00a00593          	li	a1,10
    80004298:	00048513          	mv	a0,s1
    8000429c:	00001097          	auipc	ra,0x1
    800042a0:	ec0080e7          	jalr	-320(ra) # 8000515c <_Z8printIntiii>
    800042a4:	00005517          	auipc	a0,0x5
    800042a8:	36450513          	addi	a0,a0,868 # 80009608 <CONSOLE_STATUS+0x5f8>
    800042ac:	00001097          	auipc	ra,0x1
    800042b0:	cfc080e7          	jalr	-772(ra) # 80004fa8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800042b4:	0014849b          	addiw	s1,s1,1
    800042b8:	0ff4f493          	andi	s1,s1,255
    800042bc:	00f00793          	li	a5,15
    800042c0:	fc97f0e3          	bgeu	a5,s1,80004280 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800042c4:	00005517          	auipc	a0,0x5
    800042c8:	0dc50513          	addi	a0,a0,220 # 800093a0 <CONSOLE_STATUS+0x390>
    800042cc:	00001097          	auipc	ra,0x1
    800042d0:	cdc080e7          	jalr	-804(ra) # 80004fa8 <_Z11printStringPKc>
    finishedD = true;
    800042d4:	00100793          	li	a5,1
    800042d8:	00007717          	auipc	a4,0x7
    800042dc:	78f70423          	sb	a5,1928(a4) # 8000ba60 <_ZL9finishedD>
    thread_dispatch();
    800042e0:	ffffd097          	auipc	ra,0xffffd
    800042e4:	154080e7          	jalr	340(ra) # 80001434 <_Z15thread_dispatchv>
}
    800042e8:	01813083          	ld	ra,24(sp)
    800042ec:	01013403          	ld	s0,16(sp)
    800042f0:	00813483          	ld	s1,8(sp)
    800042f4:	00013903          	ld	s2,0(sp)
    800042f8:	02010113          	addi	sp,sp,32
    800042fc:	00008067          	ret

0000000080004300 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004300:	fe010113          	addi	sp,sp,-32
    80004304:	00113c23          	sd	ra,24(sp)
    80004308:	00813823          	sd	s0,16(sp)
    8000430c:	00913423          	sd	s1,8(sp)
    80004310:	01213023          	sd	s2,0(sp)
    80004314:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004318:	00000493          	li	s1,0
    8000431c:	0400006f          	j	8000435c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004320:	00005517          	auipc	a0,0x5
    80004324:	02850513          	addi	a0,a0,40 # 80009348 <CONSOLE_STATUS+0x338>
    80004328:	00001097          	auipc	ra,0x1
    8000432c:	c80080e7          	jalr	-896(ra) # 80004fa8 <_Z11printStringPKc>
    80004330:	00000613          	li	a2,0
    80004334:	00a00593          	li	a1,10
    80004338:	00048513          	mv	a0,s1
    8000433c:	00001097          	auipc	ra,0x1
    80004340:	e20080e7          	jalr	-480(ra) # 8000515c <_Z8printIntiii>
    80004344:	00005517          	auipc	a0,0x5
    80004348:	2c450513          	addi	a0,a0,708 # 80009608 <CONSOLE_STATUS+0x5f8>
    8000434c:	00001097          	auipc	ra,0x1
    80004350:	c5c080e7          	jalr	-932(ra) # 80004fa8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004354:	0014849b          	addiw	s1,s1,1
    80004358:	0ff4f493          	andi	s1,s1,255
    8000435c:	00200793          	li	a5,2
    80004360:	fc97f0e3          	bgeu	a5,s1,80004320 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004364:	00005517          	auipc	a0,0x5
    80004368:	fec50513          	addi	a0,a0,-20 # 80009350 <CONSOLE_STATUS+0x340>
    8000436c:	00001097          	auipc	ra,0x1
    80004370:	c3c080e7          	jalr	-964(ra) # 80004fa8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004374:	00700313          	li	t1,7
    thread_dispatch();
    80004378:	ffffd097          	auipc	ra,0xffffd
    8000437c:	0bc080e7          	jalr	188(ra) # 80001434 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004380:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004384:	00005517          	auipc	a0,0x5
    80004388:	fdc50513          	addi	a0,a0,-36 # 80009360 <CONSOLE_STATUS+0x350>
    8000438c:	00001097          	auipc	ra,0x1
    80004390:	c1c080e7          	jalr	-996(ra) # 80004fa8 <_Z11printStringPKc>
    80004394:	00000613          	li	a2,0
    80004398:	00a00593          	li	a1,10
    8000439c:	0009051b          	sext.w	a0,s2
    800043a0:	00001097          	auipc	ra,0x1
    800043a4:	dbc080e7          	jalr	-580(ra) # 8000515c <_Z8printIntiii>
    800043a8:	00005517          	auipc	a0,0x5
    800043ac:	26050513          	addi	a0,a0,608 # 80009608 <CONSOLE_STATUS+0x5f8>
    800043b0:	00001097          	auipc	ra,0x1
    800043b4:	bf8080e7          	jalr	-1032(ra) # 80004fa8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800043b8:	00c00513          	li	a0,12
    800043bc:	00000097          	auipc	ra,0x0
    800043c0:	d88080e7          	jalr	-632(ra) # 80004144 <_ZL9fibonaccim>
    800043c4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800043c8:	00005517          	auipc	a0,0x5
    800043cc:	fa050513          	addi	a0,a0,-96 # 80009368 <CONSOLE_STATUS+0x358>
    800043d0:	00001097          	auipc	ra,0x1
    800043d4:	bd8080e7          	jalr	-1064(ra) # 80004fa8 <_Z11printStringPKc>
    800043d8:	00000613          	li	a2,0
    800043dc:	00a00593          	li	a1,10
    800043e0:	0009051b          	sext.w	a0,s2
    800043e4:	00001097          	auipc	ra,0x1
    800043e8:	d78080e7          	jalr	-648(ra) # 8000515c <_Z8printIntiii>
    800043ec:	00005517          	auipc	a0,0x5
    800043f0:	21c50513          	addi	a0,a0,540 # 80009608 <CONSOLE_STATUS+0x5f8>
    800043f4:	00001097          	auipc	ra,0x1
    800043f8:	bb4080e7          	jalr	-1100(ra) # 80004fa8 <_Z11printStringPKc>
    800043fc:	0400006f          	j	8000443c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004400:	00005517          	auipc	a0,0x5
    80004404:	f4850513          	addi	a0,a0,-184 # 80009348 <CONSOLE_STATUS+0x338>
    80004408:	00001097          	auipc	ra,0x1
    8000440c:	ba0080e7          	jalr	-1120(ra) # 80004fa8 <_Z11printStringPKc>
    80004410:	00000613          	li	a2,0
    80004414:	00a00593          	li	a1,10
    80004418:	00048513          	mv	a0,s1
    8000441c:	00001097          	auipc	ra,0x1
    80004420:	d40080e7          	jalr	-704(ra) # 8000515c <_Z8printIntiii>
    80004424:	00005517          	auipc	a0,0x5
    80004428:	1e450513          	addi	a0,a0,484 # 80009608 <CONSOLE_STATUS+0x5f8>
    8000442c:	00001097          	auipc	ra,0x1
    80004430:	b7c080e7          	jalr	-1156(ra) # 80004fa8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004434:	0014849b          	addiw	s1,s1,1
    80004438:	0ff4f493          	andi	s1,s1,255
    8000443c:	00500793          	li	a5,5
    80004440:	fc97f0e3          	bgeu	a5,s1,80004400 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004444:	00005517          	auipc	a0,0x5
    80004448:	edc50513          	addi	a0,a0,-292 # 80009320 <CONSOLE_STATUS+0x310>
    8000444c:	00001097          	auipc	ra,0x1
    80004450:	b5c080e7          	jalr	-1188(ra) # 80004fa8 <_Z11printStringPKc>
    finishedC = true;
    80004454:	00100793          	li	a5,1
    80004458:	00007717          	auipc	a4,0x7
    8000445c:	60f704a3          	sb	a5,1545(a4) # 8000ba61 <_ZL9finishedC>
    thread_dispatch();
    80004460:	ffffd097          	auipc	ra,0xffffd
    80004464:	fd4080e7          	jalr	-44(ra) # 80001434 <_Z15thread_dispatchv>
}
    80004468:	01813083          	ld	ra,24(sp)
    8000446c:	01013403          	ld	s0,16(sp)
    80004470:	00813483          	ld	s1,8(sp)
    80004474:	00013903          	ld	s2,0(sp)
    80004478:	02010113          	addi	sp,sp,32
    8000447c:	00008067          	ret

0000000080004480 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004480:	fe010113          	addi	sp,sp,-32
    80004484:	00113c23          	sd	ra,24(sp)
    80004488:	00813823          	sd	s0,16(sp)
    8000448c:	00913423          	sd	s1,8(sp)
    80004490:	01213023          	sd	s2,0(sp)
    80004494:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004498:	00000913          	li	s2,0
    8000449c:	0380006f          	j	800044d4 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800044a0:	ffffd097          	auipc	ra,0xffffd
    800044a4:	f94080e7          	jalr	-108(ra) # 80001434 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800044a8:	00148493          	addi	s1,s1,1
    800044ac:	000027b7          	lui	a5,0x2
    800044b0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800044b4:	0097ee63          	bltu	a5,s1,800044d0 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800044b8:	00000713          	li	a4,0
    800044bc:	000077b7          	lui	a5,0x7
    800044c0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800044c4:	fce7eee3          	bltu	a5,a4,800044a0 <_ZL11workerBodyBPv+0x20>
    800044c8:	00170713          	addi	a4,a4,1
    800044cc:	ff1ff06f          	j	800044bc <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800044d0:	00190913          	addi	s2,s2,1
    800044d4:	00f00793          	li	a5,15
    800044d8:	0527e063          	bltu	a5,s2,80004518 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800044dc:	00005517          	auipc	a0,0x5
    800044e0:	e5450513          	addi	a0,a0,-428 # 80009330 <CONSOLE_STATUS+0x320>
    800044e4:	00001097          	auipc	ra,0x1
    800044e8:	ac4080e7          	jalr	-1340(ra) # 80004fa8 <_Z11printStringPKc>
    800044ec:	00000613          	li	a2,0
    800044f0:	00a00593          	li	a1,10
    800044f4:	0009051b          	sext.w	a0,s2
    800044f8:	00001097          	auipc	ra,0x1
    800044fc:	c64080e7          	jalr	-924(ra) # 8000515c <_Z8printIntiii>
    80004500:	00005517          	auipc	a0,0x5
    80004504:	10850513          	addi	a0,a0,264 # 80009608 <CONSOLE_STATUS+0x5f8>
    80004508:	00001097          	auipc	ra,0x1
    8000450c:	aa0080e7          	jalr	-1376(ra) # 80004fa8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004510:	00000493          	li	s1,0
    80004514:	f99ff06f          	j	800044ac <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004518:	00005517          	auipc	a0,0x5
    8000451c:	e2050513          	addi	a0,a0,-480 # 80009338 <CONSOLE_STATUS+0x328>
    80004520:	00001097          	auipc	ra,0x1
    80004524:	a88080e7          	jalr	-1400(ra) # 80004fa8 <_Z11printStringPKc>
    finishedB = true;
    80004528:	00100793          	li	a5,1
    8000452c:	00007717          	auipc	a4,0x7
    80004530:	52f70b23          	sb	a5,1334(a4) # 8000ba62 <_ZL9finishedB>
    thread_dispatch();
    80004534:	ffffd097          	auipc	ra,0xffffd
    80004538:	f00080e7          	jalr	-256(ra) # 80001434 <_Z15thread_dispatchv>
}
    8000453c:	01813083          	ld	ra,24(sp)
    80004540:	01013403          	ld	s0,16(sp)
    80004544:	00813483          	ld	s1,8(sp)
    80004548:	00013903          	ld	s2,0(sp)
    8000454c:	02010113          	addi	sp,sp,32
    80004550:	00008067          	ret

0000000080004554 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004554:	fe010113          	addi	sp,sp,-32
    80004558:	00113c23          	sd	ra,24(sp)
    8000455c:	00813823          	sd	s0,16(sp)
    80004560:	00913423          	sd	s1,8(sp)
    80004564:	01213023          	sd	s2,0(sp)
    80004568:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000456c:	00000913          	li	s2,0
    80004570:	0380006f          	j	800045a8 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004574:	ffffd097          	auipc	ra,0xffffd
    80004578:	ec0080e7          	jalr	-320(ra) # 80001434 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000457c:	00148493          	addi	s1,s1,1
    80004580:	000027b7          	lui	a5,0x2
    80004584:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004588:	0097ee63          	bltu	a5,s1,800045a4 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000458c:	00000713          	li	a4,0
    80004590:	000077b7          	lui	a5,0x7
    80004594:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004598:	fce7eee3          	bltu	a5,a4,80004574 <_ZL11workerBodyAPv+0x20>
    8000459c:	00170713          	addi	a4,a4,1
    800045a0:	ff1ff06f          	j	80004590 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800045a4:	00190913          	addi	s2,s2,1
    800045a8:	00900793          	li	a5,9
    800045ac:	0527e063          	bltu	a5,s2,800045ec <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800045b0:	00005517          	auipc	a0,0x5
    800045b4:	d6850513          	addi	a0,a0,-664 # 80009318 <CONSOLE_STATUS+0x308>
    800045b8:	00001097          	auipc	ra,0x1
    800045bc:	9f0080e7          	jalr	-1552(ra) # 80004fa8 <_Z11printStringPKc>
    800045c0:	00000613          	li	a2,0
    800045c4:	00a00593          	li	a1,10
    800045c8:	0009051b          	sext.w	a0,s2
    800045cc:	00001097          	auipc	ra,0x1
    800045d0:	b90080e7          	jalr	-1136(ra) # 8000515c <_Z8printIntiii>
    800045d4:	00005517          	auipc	a0,0x5
    800045d8:	03450513          	addi	a0,a0,52 # 80009608 <CONSOLE_STATUS+0x5f8>
    800045dc:	00001097          	auipc	ra,0x1
    800045e0:	9cc080e7          	jalr	-1588(ra) # 80004fa8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800045e4:	00000493          	li	s1,0
    800045e8:	f99ff06f          	j	80004580 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800045ec:	00005517          	auipc	a0,0x5
    800045f0:	d3450513          	addi	a0,a0,-716 # 80009320 <CONSOLE_STATUS+0x310>
    800045f4:	00001097          	auipc	ra,0x1
    800045f8:	9b4080e7          	jalr	-1612(ra) # 80004fa8 <_Z11printStringPKc>
    finishedA = true;
    800045fc:	00100793          	li	a5,1
    80004600:	00007717          	auipc	a4,0x7
    80004604:	46f701a3          	sb	a5,1123(a4) # 8000ba63 <_ZL9finishedA>
}
    80004608:	01813083          	ld	ra,24(sp)
    8000460c:	01013403          	ld	s0,16(sp)
    80004610:	00813483          	ld	s1,8(sp)
    80004614:	00013903          	ld	s2,0(sp)
    80004618:	02010113          	addi	sp,sp,32
    8000461c:	00008067          	ret

0000000080004620 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004620:	fd010113          	addi	sp,sp,-48
    80004624:	02113423          	sd	ra,40(sp)
    80004628:	02813023          	sd	s0,32(sp)
    8000462c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004630:	00000613          	li	a2,0
    80004634:	00000597          	auipc	a1,0x0
    80004638:	f2058593          	addi	a1,a1,-224 # 80004554 <_ZL11workerBodyAPv>
    8000463c:	fd040513          	addi	a0,s0,-48
    80004640:	ffffd097          	auipc	ra,0xffffd
    80004644:	d38080e7          	jalr	-712(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004648:	00005517          	auipc	a0,0x5
    8000464c:	d6850513          	addi	a0,a0,-664 # 800093b0 <CONSOLE_STATUS+0x3a0>
    80004650:	00001097          	auipc	ra,0x1
    80004654:	958080e7          	jalr	-1704(ra) # 80004fa8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004658:	00000613          	li	a2,0
    8000465c:	00000597          	auipc	a1,0x0
    80004660:	e2458593          	addi	a1,a1,-476 # 80004480 <_ZL11workerBodyBPv>
    80004664:	fd840513          	addi	a0,s0,-40
    80004668:	ffffd097          	auipc	ra,0xffffd
    8000466c:	d10080e7          	jalr	-752(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004670:	00005517          	auipc	a0,0x5
    80004674:	d5850513          	addi	a0,a0,-680 # 800093c8 <CONSOLE_STATUS+0x3b8>
    80004678:	00001097          	auipc	ra,0x1
    8000467c:	930080e7          	jalr	-1744(ra) # 80004fa8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004680:	00000613          	li	a2,0
    80004684:	00000597          	auipc	a1,0x0
    80004688:	c7c58593          	addi	a1,a1,-900 # 80004300 <_ZL11workerBodyCPv>
    8000468c:	fe040513          	addi	a0,s0,-32
    80004690:	ffffd097          	auipc	ra,0xffffd
    80004694:	ce8080e7          	jalr	-792(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004698:	00005517          	auipc	a0,0x5
    8000469c:	d4850513          	addi	a0,a0,-696 # 800093e0 <CONSOLE_STATUS+0x3d0>
    800046a0:	00001097          	auipc	ra,0x1
    800046a4:	908080e7          	jalr	-1784(ra) # 80004fa8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800046a8:	00000613          	li	a2,0
    800046ac:	00000597          	auipc	a1,0x0
    800046b0:	b0c58593          	addi	a1,a1,-1268 # 800041b8 <_ZL11workerBodyDPv>
    800046b4:	fe840513          	addi	a0,s0,-24
    800046b8:	ffffd097          	auipc	ra,0xffffd
    800046bc:	cc0080e7          	jalr	-832(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800046c0:	00005517          	auipc	a0,0x5
    800046c4:	d3850513          	addi	a0,a0,-712 # 800093f8 <CONSOLE_STATUS+0x3e8>
    800046c8:	00001097          	auipc	ra,0x1
    800046cc:	8e0080e7          	jalr	-1824(ra) # 80004fa8 <_Z11printStringPKc>
    800046d0:	00c0006f          	j	800046dc <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800046d4:	ffffd097          	auipc	ra,0xffffd
    800046d8:	d60080e7          	jalr	-672(ra) # 80001434 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800046dc:	00007797          	auipc	a5,0x7
    800046e0:	3877c783          	lbu	a5,903(a5) # 8000ba63 <_ZL9finishedA>
    800046e4:	fe0788e3          	beqz	a5,800046d4 <_Z18Threads_C_API_testv+0xb4>
    800046e8:	00007797          	auipc	a5,0x7
    800046ec:	37a7c783          	lbu	a5,890(a5) # 8000ba62 <_ZL9finishedB>
    800046f0:	fe0782e3          	beqz	a5,800046d4 <_Z18Threads_C_API_testv+0xb4>
    800046f4:	00007797          	auipc	a5,0x7
    800046f8:	36d7c783          	lbu	a5,877(a5) # 8000ba61 <_ZL9finishedC>
    800046fc:	fc078ce3          	beqz	a5,800046d4 <_Z18Threads_C_API_testv+0xb4>
    80004700:	00007797          	auipc	a5,0x7
    80004704:	3607c783          	lbu	a5,864(a5) # 8000ba60 <_ZL9finishedD>
    80004708:	fc0786e3          	beqz	a5,800046d4 <_Z18Threads_C_API_testv+0xb4>
    }

}
    8000470c:	02813083          	ld	ra,40(sp)
    80004710:	02013403          	ld	s0,32(sp)
    80004714:	03010113          	addi	sp,sp,48
    80004718:	00008067          	ret

000000008000471c <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    8000471c:	fd010113          	addi	sp,sp,-48
    80004720:	02113423          	sd	ra,40(sp)
    80004724:	02813023          	sd	s0,32(sp)
    80004728:	00913c23          	sd	s1,24(sp)
    8000472c:	01213823          	sd	s2,16(sp)
    80004730:	01313423          	sd	s3,8(sp)
    80004734:	03010413          	addi	s0,sp,48
    80004738:	00050993          	mv	s3,a0
    8000473c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004740:	00000913          	li	s2,0
    80004744:	00c0006f          	j	80004750 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004748:	ffffd097          	auipc	ra,0xffffd
    8000474c:	2f0080e7          	jalr	752(ra) # 80001a38 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004750:	ffffd097          	auipc	ra,0xffffd
    80004754:	f94080e7          	jalr	-108(ra) # 800016e4 <_Z4getcv>
    80004758:	0005059b          	sext.w	a1,a0
    8000475c:	01b00793          	li	a5,27
    80004760:	02f58a63          	beq	a1,a5,80004794 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004764:	0084b503          	ld	a0,8(s1)
    80004768:	00001097          	auipc	ra,0x1
    8000476c:	c68080e7          	jalr	-920(ra) # 800053d0 <_ZN9BufferCPP3putEi>
        i++;
    80004770:	0019071b          	addiw	a4,s2,1
    80004774:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004778:	0004a683          	lw	a3,0(s1)
    8000477c:	0026979b          	slliw	a5,a3,0x2
    80004780:	00d787bb          	addw	a5,a5,a3
    80004784:	0017979b          	slliw	a5,a5,0x1
    80004788:	02f767bb          	remw	a5,a4,a5
    8000478c:	fc0792e3          	bnez	a5,80004750 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004790:	fb9ff06f          	j	80004748 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004794:	00100793          	li	a5,1
    80004798:	00007717          	auipc	a4,0x7
    8000479c:	2cf72823          	sw	a5,720(a4) # 8000ba68 <_ZL9threadEnd>
    td->buffer->put('!');
    800047a0:	0209b783          	ld	a5,32(s3)
    800047a4:	02100593          	li	a1,33
    800047a8:	0087b503          	ld	a0,8(a5)
    800047ac:	00001097          	auipc	ra,0x1
    800047b0:	c24080e7          	jalr	-988(ra) # 800053d0 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    800047b4:	0104b503          	ld	a0,16(s1)
    800047b8:	ffffd097          	auipc	ra,0xffffd
    800047bc:	334080e7          	jalr	820(ra) # 80001aec <_ZN9Semaphore6signalEv>
}
    800047c0:	02813083          	ld	ra,40(sp)
    800047c4:	02013403          	ld	s0,32(sp)
    800047c8:	01813483          	ld	s1,24(sp)
    800047cc:	01013903          	ld	s2,16(sp)
    800047d0:	00813983          	ld	s3,8(sp)
    800047d4:	03010113          	addi	sp,sp,48
    800047d8:	00008067          	ret

00000000800047dc <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800047dc:	fe010113          	addi	sp,sp,-32
    800047e0:	00113c23          	sd	ra,24(sp)
    800047e4:	00813823          	sd	s0,16(sp)
    800047e8:	00913423          	sd	s1,8(sp)
    800047ec:	01213023          	sd	s2,0(sp)
    800047f0:	02010413          	addi	s0,sp,32
    800047f4:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800047f8:	00000913          	li	s2,0
    800047fc:	00c0006f          	j	80004808 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004800:	ffffd097          	auipc	ra,0xffffd
    80004804:	238080e7          	jalr	568(ra) # 80001a38 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004808:	00007797          	auipc	a5,0x7
    8000480c:	2607a783          	lw	a5,608(a5) # 8000ba68 <_ZL9threadEnd>
    80004810:	02079e63          	bnez	a5,8000484c <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004814:	0004a583          	lw	a1,0(s1)
    80004818:	0305859b          	addiw	a1,a1,48
    8000481c:	0084b503          	ld	a0,8(s1)
    80004820:	00001097          	auipc	ra,0x1
    80004824:	bb0080e7          	jalr	-1104(ra) # 800053d0 <_ZN9BufferCPP3putEi>
        i++;
    80004828:	0019071b          	addiw	a4,s2,1
    8000482c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004830:	0004a683          	lw	a3,0(s1)
    80004834:	0026979b          	slliw	a5,a3,0x2
    80004838:	00d787bb          	addw	a5,a5,a3
    8000483c:	0017979b          	slliw	a5,a5,0x1
    80004840:	02f767bb          	remw	a5,a4,a5
    80004844:	fc0792e3          	bnez	a5,80004808 <_ZN12ProducerSync8producerEPv+0x2c>
    80004848:	fb9ff06f          	j	80004800 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    8000484c:	0104b503          	ld	a0,16(s1)
    80004850:	ffffd097          	auipc	ra,0xffffd
    80004854:	29c080e7          	jalr	668(ra) # 80001aec <_ZN9Semaphore6signalEv>
}
    80004858:	01813083          	ld	ra,24(sp)
    8000485c:	01013403          	ld	s0,16(sp)
    80004860:	00813483          	ld	s1,8(sp)
    80004864:	00013903          	ld	s2,0(sp)
    80004868:	02010113          	addi	sp,sp,32
    8000486c:	00008067          	ret

0000000080004870 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004870:	fd010113          	addi	sp,sp,-48
    80004874:	02113423          	sd	ra,40(sp)
    80004878:	02813023          	sd	s0,32(sp)
    8000487c:	00913c23          	sd	s1,24(sp)
    80004880:	01213823          	sd	s2,16(sp)
    80004884:	01313423          	sd	s3,8(sp)
    80004888:	01413023          	sd	s4,0(sp)
    8000488c:	03010413          	addi	s0,sp,48
    80004890:	00050993          	mv	s3,a0
    80004894:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004898:	00000a13          	li	s4,0
    8000489c:	01c0006f          	j	800048b8 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    800048a0:	ffffd097          	auipc	ra,0xffffd
    800048a4:	198080e7          	jalr	408(ra) # 80001a38 <_ZN6Thread8dispatchEv>
    800048a8:	0500006f          	j	800048f8 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    800048ac:	00a00513          	li	a0,10
    800048b0:	ffffd097          	auipc	ra,0xffffd
    800048b4:	e74080e7          	jalr	-396(ra) # 80001724 <_Z4putcc>
    while (!threadEnd) {
    800048b8:	00007797          	auipc	a5,0x7
    800048bc:	1b07a783          	lw	a5,432(a5) # 8000ba68 <_ZL9threadEnd>
    800048c0:	06079263          	bnez	a5,80004924 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800048c4:	00893503          	ld	a0,8(s2)
    800048c8:	00001097          	auipc	ra,0x1
    800048cc:	b98080e7          	jalr	-1128(ra) # 80005460 <_ZN9BufferCPP3getEv>
        i++;
    800048d0:	001a049b          	addiw	s1,s4,1
    800048d4:	00048a1b          	sext.w	s4,s1
        putc(key);
    800048d8:	0ff57513          	andi	a0,a0,255
    800048dc:	ffffd097          	auipc	ra,0xffffd
    800048e0:	e48080e7          	jalr	-440(ra) # 80001724 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800048e4:	00092703          	lw	a4,0(s2)
    800048e8:	0027179b          	slliw	a5,a4,0x2
    800048ec:	00e787bb          	addw	a5,a5,a4
    800048f0:	02f4e7bb          	remw	a5,s1,a5
    800048f4:	fa0786e3          	beqz	a5,800048a0 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800048f8:	05000793          	li	a5,80
    800048fc:	02f4e4bb          	remw	s1,s1,a5
    80004900:	fa049ce3          	bnez	s1,800048b8 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004904:	fa9ff06f          	j	800048ac <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004908:	0209b783          	ld	a5,32(s3)
    8000490c:	0087b503          	ld	a0,8(a5)
    80004910:	00001097          	auipc	ra,0x1
    80004914:	b50080e7          	jalr	-1200(ra) # 80005460 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004918:	0ff57513          	andi	a0,a0,255
    8000491c:	ffffd097          	auipc	ra,0xffffd
    80004920:	2a0080e7          	jalr	672(ra) # 80001bbc <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004924:	0209b783          	ld	a5,32(s3)
    80004928:	0087b503          	ld	a0,8(a5)
    8000492c:	00001097          	auipc	ra,0x1
    80004930:	bc0080e7          	jalr	-1088(ra) # 800054ec <_ZN9BufferCPP6getCntEv>
    80004934:	fca04ae3          	bgtz	a0,80004908 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004938:	01093503          	ld	a0,16(s2)
    8000493c:	ffffd097          	auipc	ra,0xffffd
    80004940:	1b0080e7          	jalr	432(ra) # 80001aec <_ZN9Semaphore6signalEv>
}
    80004944:	02813083          	ld	ra,40(sp)
    80004948:	02013403          	ld	s0,32(sp)
    8000494c:	01813483          	ld	s1,24(sp)
    80004950:	01013903          	ld	s2,16(sp)
    80004954:	00813983          	ld	s3,8(sp)
    80004958:	00013a03          	ld	s4,0(sp)
    8000495c:	03010113          	addi	sp,sp,48
    80004960:	00008067          	ret

0000000080004964 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004964:	f8010113          	addi	sp,sp,-128
    80004968:	06113c23          	sd	ra,120(sp)
    8000496c:	06813823          	sd	s0,112(sp)
    80004970:	06913423          	sd	s1,104(sp)
    80004974:	07213023          	sd	s2,96(sp)
    80004978:	05313c23          	sd	s3,88(sp)
    8000497c:	05413823          	sd	s4,80(sp)
    80004980:	05513423          	sd	s5,72(sp)
    80004984:	05613023          	sd	s6,64(sp)
    80004988:	03713c23          	sd	s7,56(sp)
    8000498c:	03813823          	sd	s8,48(sp)
    80004990:	03913423          	sd	s9,40(sp)
    80004994:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004998:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    8000499c:	00005517          	auipc	a0,0x5
    800049a0:	89450513          	addi	a0,a0,-1900 # 80009230 <CONSOLE_STATUS+0x220>
    800049a4:	00000097          	auipc	ra,0x0
    800049a8:	604080e7          	jalr	1540(ra) # 80004fa8 <_Z11printStringPKc>
    getString(input, 30);
    800049ac:	01e00593          	li	a1,30
    800049b0:	f8040493          	addi	s1,s0,-128
    800049b4:	00048513          	mv	a0,s1
    800049b8:	00000097          	auipc	ra,0x0
    800049bc:	67c080e7          	jalr	1660(ra) # 80005034 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800049c0:	00048513          	mv	a0,s1
    800049c4:	00000097          	auipc	ra,0x0
    800049c8:	748080e7          	jalr	1864(ra) # 8000510c <_Z11stringToIntPKc>
    800049cc:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800049d0:	00005517          	auipc	a0,0x5
    800049d4:	88050513          	addi	a0,a0,-1920 # 80009250 <CONSOLE_STATUS+0x240>
    800049d8:	00000097          	auipc	ra,0x0
    800049dc:	5d0080e7          	jalr	1488(ra) # 80004fa8 <_Z11printStringPKc>
    getString(input, 30);
    800049e0:	01e00593          	li	a1,30
    800049e4:	00048513          	mv	a0,s1
    800049e8:	00000097          	auipc	ra,0x0
    800049ec:	64c080e7          	jalr	1612(ra) # 80005034 <_Z9getStringPci>
    n = stringToInt(input);
    800049f0:	00048513          	mv	a0,s1
    800049f4:	00000097          	auipc	ra,0x0
    800049f8:	718080e7          	jalr	1816(ra) # 8000510c <_Z11stringToIntPKc>
    800049fc:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004a00:	00005517          	auipc	a0,0x5
    80004a04:	87050513          	addi	a0,a0,-1936 # 80009270 <CONSOLE_STATUS+0x260>
    80004a08:	00000097          	auipc	ra,0x0
    80004a0c:	5a0080e7          	jalr	1440(ra) # 80004fa8 <_Z11printStringPKc>
    80004a10:	00000613          	li	a2,0
    80004a14:	00a00593          	li	a1,10
    80004a18:	00090513          	mv	a0,s2
    80004a1c:	00000097          	auipc	ra,0x0
    80004a20:	740080e7          	jalr	1856(ra) # 8000515c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004a24:	00005517          	auipc	a0,0x5
    80004a28:	86450513          	addi	a0,a0,-1948 # 80009288 <CONSOLE_STATUS+0x278>
    80004a2c:	00000097          	auipc	ra,0x0
    80004a30:	57c080e7          	jalr	1404(ra) # 80004fa8 <_Z11printStringPKc>
    80004a34:	00000613          	li	a2,0
    80004a38:	00a00593          	li	a1,10
    80004a3c:	00048513          	mv	a0,s1
    80004a40:	00000097          	auipc	ra,0x0
    80004a44:	71c080e7          	jalr	1820(ra) # 8000515c <_Z8printIntiii>
    printString(".\n");
    80004a48:	00005517          	auipc	a0,0x5
    80004a4c:	85850513          	addi	a0,a0,-1960 # 800092a0 <CONSOLE_STATUS+0x290>
    80004a50:	00000097          	auipc	ra,0x0
    80004a54:	558080e7          	jalr	1368(ra) # 80004fa8 <_Z11printStringPKc>
    if(threadNum > n) {
    80004a58:	0324c463          	blt	s1,s2,80004a80 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004a5c:	03205c63          	blez	s2,80004a94 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004a60:	03800513          	li	a0,56
    80004a64:	ffffd097          	auipc	ra,0xffffd
    80004a68:	e60080e7          	jalr	-416(ra) # 800018c4 <_Znwm>
    80004a6c:	00050a93          	mv	s5,a0
    80004a70:	00048593          	mv	a1,s1
    80004a74:	00001097          	auipc	ra,0x1
    80004a78:	808080e7          	jalr	-2040(ra) # 8000527c <_ZN9BufferCPPC1Ei>
    80004a7c:	0300006f          	j	80004aac <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004a80:	00005517          	auipc	a0,0x5
    80004a84:	82850513          	addi	a0,a0,-2008 # 800092a8 <CONSOLE_STATUS+0x298>
    80004a88:	00000097          	auipc	ra,0x0
    80004a8c:	520080e7          	jalr	1312(ra) # 80004fa8 <_Z11printStringPKc>
        return;
    80004a90:	0140006f          	j	80004aa4 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004a94:	00005517          	auipc	a0,0x5
    80004a98:	85450513          	addi	a0,a0,-1964 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80004a9c:	00000097          	auipc	ra,0x0
    80004aa0:	50c080e7          	jalr	1292(ra) # 80004fa8 <_Z11printStringPKc>
        return;
    80004aa4:	000b8113          	mv	sp,s7
    80004aa8:	2380006f          	j	80004ce0 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004aac:	01000513          	li	a0,16
    80004ab0:	ffffd097          	auipc	ra,0xffffd
    80004ab4:	e14080e7          	jalr	-492(ra) # 800018c4 <_Znwm>
    80004ab8:	00050493          	mv	s1,a0
    80004abc:	00000593          	li	a1,0
    80004ac0:	ffffd097          	auipc	ra,0xffffd
    80004ac4:	ff4080e7          	jalr	-12(ra) # 80001ab4 <_ZN9SemaphoreC1Ej>
    80004ac8:	00007797          	auipc	a5,0x7
    80004acc:	fa97b423          	sd	s1,-88(a5) # 8000ba70 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004ad0:	00391793          	slli	a5,s2,0x3
    80004ad4:	00f78793          	addi	a5,a5,15
    80004ad8:	ff07f793          	andi	a5,a5,-16
    80004adc:	40f10133          	sub	sp,sp,a5
    80004ae0:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004ae4:	0019071b          	addiw	a4,s2,1
    80004ae8:	00171793          	slli	a5,a4,0x1
    80004aec:	00e787b3          	add	a5,a5,a4
    80004af0:	00379793          	slli	a5,a5,0x3
    80004af4:	00f78793          	addi	a5,a5,15
    80004af8:	ff07f793          	andi	a5,a5,-16
    80004afc:	40f10133          	sub	sp,sp,a5
    80004b00:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004b04:	00191c13          	slli	s8,s2,0x1
    80004b08:	012c07b3          	add	a5,s8,s2
    80004b0c:	00379793          	slli	a5,a5,0x3
    80004b10:	00fa07b3          	add	a5,s4,a5
    80004b14:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004b18:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004b1c:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004b20:	02800513          	li	a0,40
    80004b24:	ffffd097          	auipc	ra,0xffffd
    80004b28:	da0080e7          	jalr	-608(ra) # 800018c4 <_Znwm>
    80004b2c:	00050b13          	mv	s6,a0
    80004b30:	012c0c33          	add	s8,s8,s2
    80004b34:	003c1c13          	slli	s8,s8,0x3
    80004b38:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004b3c:	ffffd097          	auipc	ra,0xffffd
    80004b40:	ed4080e7          	jalr	-300(ra) # 80001a10 <_ZN6ThreadC1Ev>
    80004b44:	00007797          	auipc	a5,0x7
    80004b48:	dec78793          	addi	a5,a5,-532 # 8000b930 <_ZTV12ConsumerSync+0x10>
    80004b4c:	00fb3023          	sd	a5,0(s6)
    80004b50:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004b54:	000b0513          	mv	a0,s6
    80004b58:	ffffd097          	auipc	ra,0xffffd
    80004b5c:	f24080e7          	jalr	-220(ra) # 80001a7c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004b60:	00000493          	li	s1,0
    80004b64:	0380006f          	j	80004b9c <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004b68:	00007797          	auipc	a5,0x7
    80004b6c:	da078793          	addi	a5,a5,-608 # 8000b908 <_ZTV12ProducerSync+0x10>
    80004b70:	00fcb023          	sd	a5,0(s9)
    80004b74:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004b78:	00349793          	slli	a5,s1,0x3
    80004b7c:	00f987b3          	add	a5,s3,a5
    80004b80:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004b84:	00349793          	slli	a5,s1,0x3
    80004b88:	00f987b3          	add	a5,s3,a5
    80004b8c:	0007b503          	ld	a0,0(a5)
    80004b90:	ffffd097          	auipc	ra,0xffffd
    80004b94:	eec080e7          	jalr	-276(ra) # 80001a7c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004b98:	0014849b          	addiw	s1,s1,1
    80004b9c:	0b24d063          	bge	s1,s2,80004c3c <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004ba0:	00149793          	slli	a5,s1,0x1
    80004ba4:	009787b3          	add	a5,a5,s1
    80004ba8:	00379793          	slli	a5,a5,0x3
    80004bac:	00fa07b3          	add	a5,s4,a5
    80004bb0:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004bb4:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004bb8:	00007717          	auipc	a4,0x7
    80004bbc:	eb873703          	ld	a4,-328(a4) # 8000ba70 <_ZL10waitForAll>
    80004bc0:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004bc4:	02905863          	blez	s1,80004bf4 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004bc8:	02800513          	li	a0,40
    80004bcc:	ffffd097          	auipc	ra,0xffffd
    80004bd0:	cf8080e7          	jalr	-776(ra) # 800018c4 <_Znwm>
    80004bd4:	00050c93          	mv	s9,a0
    80004bd8:	00149c13          	slli	s8,s1,0x1
    80004bdc:	009c0c33          	add	s8,s8,s1
    80004be0:	003c1c13          	slli	s8,s8,0x3
    80004be4:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004be8:	ffffd097          	auipc	ra,0xffffd
    80004bec:	e28080e7          	jalr	-472(ra) # 80001a10 <_ZN6ThreadC1Ev>
    80004bf0:	f79ff06f          	j	80004b68 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004bf4:	02800513          	li	a0,40
    80004bf8:	ffffd097          	auipc	ra,0xffffd
    80004bfc:	ccc080e7          	jalr	-820(ra) # 800018c4 <_Znwm>
    80004c00:	00050c93          	mv	s9,a0
    80004c04:	00149c13          	slli	s8,s1,0x1
    80004c08:	009c0c33          	add	s8,s8,s1
    80004c0c:	003c1c13          	slli	s8,s8,0x3
    80004c10:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004c14:	ffffd097          	auipc	ra,0xffffd
    80004c18:	dfc080e7          	jalr	-516(ra) # 80001a10 <_ZN6ThreadC1Ev>
    80004c1c:	00007797          	auipc	a5,0x7
    80004c20:	cc478793          	addi	a5,a5,-828 # 8000b8e0 <_ZTV16ProducerKeyboard+0x10>
    80004c24:	00fcb023          	sd	a5,0(s9)
    80004c28:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004c2c:	00349793          	slli	a5,s1,0x3
    80004c30:	00f987b3          	add	a5,s3,a5
    80004c34:	0197b023          	sd	s9,0(a5)
    80004c38:	f4dff06f          	j	80004b84 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004c3c:	ffffd097          	auipc	ra,0xffffd
    80004c40:	dfc080e7          	jalr	-516(ra) # 80001a38 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004c44:	00000493          	li	s1,0
    80004c48:	00994e63          	blt	s2,s1,80004c64 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004c4c:	00007517          	auipc	a0,0x7
    80004c50:	e2453503          	ld	a0,-476(a0) # 8000ba70 <_ZL10waitForAll>
    80004c54:	ffffd097          	auipc	ra,0xffffd
    80004c58:	ed0080e7          	jalr	-304(ra) # 80001b24 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004c5c:	0014849b          	addiw	s1,s1,1
    80004c60:	fe9ff06f          	j	80004c48 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004c64:	00000493          	li	s1,0
    80004c68:	0080006f          	j	80004c70 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004c6c:	0014849b          	addiw	s1,s1,1
    80004c70:	0324d263          	bge	s1,s2,80004c94 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004c74:	00349793          	slli	a5,s1,0x3
    80004c78:	00f987b3          	add	a5,s3,a5
    80004c7c:	0007b503          	ld	a0,0(a5)
    80004c80:	fe0506e3          	beqz	a0,80004c6c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004c84:	00053783          	ld	a5,0(a0)
    80004c88:	0087b783          	ld	a5,8(a5)
    80004c8c:	000780e7          	jalr	a5
    80004c90:	fddff06f          	j	80004c6c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004c94:	000b0a63          	beqz	s6,80004ca8 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004c98:	000b3783          	ld	a5,0(s6)
    80004c9c:	0087b783          	ld	a5,8(a5)
    80004ca0:	000b0513          	mv	a0,s6
    80004ca4:	000780e7          	jalr	a5
    delete waitForAll;
    80004ca8:	00007517          	auipc	a0,0x7
    80004cac:	dc853503          	ld	a0,-568(a0) # 8000ba70 <_ZL10waitForAll>
    80004cb0:	00050863          	beqz	a0,80004cc0 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004cb4:	00053783          	ld	a5,0(a0)
    80004cb8:	0087b783          	ld	a5,8(a5)
    80004cbc:	000780e7          	jalr	a5
    delete buffer;
    80004cc0:	000a8e63          	beqz	s5,80004cdc <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004cc4:	000a8513          	mv	a0,s5
    80004cc8:	00001097          	auipc	ra,0x1
    80004ccc:	8ac080e7          	jalr	-1876(ra) # 80005574 <_ZN9BufferCPPD1Ev>
    80004cd0:	000a8513          	mv	a0,s5
    80004cd4:	ffffd097          	auipc	ra,0xffffd
    80004cd8:	c40080e7          	jalr	-960(ra) # 80001914 <_ZdlPv>
    80004cdc:	000b8113          	mv	sp,s7

}
    80004ce0:	f8040113          	addi	sp,s0,-128
    80004ce4:	07813083          	ld	ra,120(sp)
    80004ce8:	07013403          	ld	s0,112(sp)
    80004cec:	06813483          	ld	s1,104(sp)
    80004cf0:	06013903          	ld	s2,96(sp)
    80004cf4:	05813983          	ld	s3,88(sp)
    80004cf8:	05013a03          	ld	s4,80(sp)
    80004cfc:	04813a83          	ld	s5,72(sp)
    80004d00:	04013b03          	ld	s6,64(sp)
    80004d04:	03813b83          	ld	s7,56(sp)
    80004d08:	03013c03          	ld	s8,48(sp)
    80004d0c:	02813c83          	ld	s9,40(sp)
    80004d10:	08010113          	addi	sp,sp,128
    80004d14:	00008067          	ret
    80004d18:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004d1c:	000a8513          	mv	a0,s5
    80004d20:	ffffd097          	auipc	ra,0xffffd
    80004d24:	bf4080e7          	jalr	-1036(ra) # 80001914 <_ZdlPv>
    80004d28:	00048513          	mv	a0,s1
    80004d2c:	00008097          	auipc	ra,0x8
    80004d30:	e3c080e7          	jalr	-452(ra) # 8000cb68 <_Unwind_Resume>
    80004d34:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004d38:	00048513          	mv	a0,s1
    80004d3c:	ffffd097          	auipc	ra,0xffffd
    80004d40:	bd8080e7          	jalr	-1064(ra) # 80001914 <_ZdlPv>
    80004d44:	00090513          	mv	a0,s2
    80004d48:	00008097          	auipc	ra,0x8
    80004d4c:	e20080e7          	jalr	-480(ra) # 8000cb68 <_Unwind_Resume>
    80004d50:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004d54:	000b0513          	mv	a0,s6
    80004d58:	ffffd097          	auipc	ra,0xffffd
    80004d5c:	bbc080e7          	jalr	-1092(ra) # 80001914 <_ZdlPv>
    80004d60:	00048513          	mv	a0,s1
    80004d64:	00008097          	auipc	ra,0x8
    80004d68:	e04080e7          	jalr	-508(ra) # 8000cb68 <_Unwind_Resume>
    80004d6c:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80004d70:	000c8513          	mv	a0,s9
    80004d74:	ffffd097          	auipc	ra,0xffffd
    80004d78:	ba0080e7          	jalr	-1120(ra) # 80001914 <_ZdlPv>
    80004d7c:	00048513          	mv	a0,s1
    80004d80:	00008097          	auipc	ra,0x8
    80004d84:	de8080e7          	jalr	-536(ra) # 8000cb68 <_Unwind_Resume>
    80004d88:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80004d8c:	000c8513          	mv	a0,s9
    80004d90:	ffffd097          	auipc	ra,0xffffd
    80004d94:	b84080e7          	jalr	-1148(ra) # 80001914 <_ZdlPv>
    80004d98:	00048513          	mv	a0,s1
    80004d9c:	00008097          	auipc	ra,0x8
    80004da0:	dcc080e7          	jalr	-564(ra) # 8000cb68 <_Unwind_Resume>

0000000080004da4 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80004da4:	ff010113          	addi	sp,sp,-16
    80004da8:	00113423          	sd	ra,8(sp)
    80004dac:	00813023          	sd	s0,0(sp)
    80004db0:	01010413          	addi	s0,sp,16
    80004db4:	00007797          	auipc	a5,0x7
    80004db8:	b7c78793          	addi	a5,a5,-1156 # 8000b930 <_ZTV12ConsumerSync+0x10>
    80004dbc:	00f53023          	sd	a5,0(a0)
    80004dc0:	ffffd097          	auipc	ra,0xffffd
    80004dc4:	a94080e7          	jalr	-1388(ra) # 80001854 <_ZN6ThreadD1Ev>
    80004dc8:	00813083          	ld	ra,8(sp)
    80004dcc:	00013403          	ld	s0,0(sp)
    80004dd0:	01010113          	addi	sp,sp,16
    80004dd4:	00008067          	ret

0000000080004dd8 <_ZN12ConsumerSyncD0Ev>:
    80004dd8:	fe010113          	addi	sp,sp,-32
    80004ddc:	00113c23          	sd	ra,24(sp)
    80004de0:	00813823          	sd	s0,16(sp)
    80004de4:	00913423          	sd	s1,8(sp)
    80004de8:	02010413          	addi	s0,sp,32
    80004dec:	00050493          	mv	s1,a0
    80004df0:	00007797          	auipc	a5,0x7
    80004df4:	b4078793          	addi	a5,a5,-1216 # 8000b930 <_ZTV12ConsumerSync+0x10>
    80004df8:	00f53023          	sd	a5,0(a0)
    80004dfc:	ffffd097          	auipc	ra,0xffffd
    80004e00:	a58080e7          	jalr	-1448(ra) # 80001854 <_ZN6ThreadD1Ev>
    80004e04:	00048513          	mv	a0,s1
    80004e08:	ffffd097          	auipc	ra,0xffffd
    80004e0c:	b0c080e7          	jalr	-1268(ra) # 80001914 <_ZdlPv>
    80004e10:	01813083          	ld	ra,24(sp)
    80004e14:	01013403          	ld	s0,16(sp)
    80004e18:	00813483          	ld	s1,8(sp)
    80004e1c:	02010113          	addi	sp,sp,32
    80004e20:	00008067          	ret

0000000080004e24 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80004e24:	ff010113          	addi	sp,sp,-16
    80004e28:	00113423          	sd	ra,8(sp)
    80004e2c:	00813023          	sd	s0,0(sp)
    80004e30:	01010413          	addi	s0,sp,16
    80004e34:	00007797          	auipc	a5,0x7
    80004e38:	ad478793          	addi	a5,a5,-1324 # 8000b908 <_ZTV12ProducerSync+0x10>
    80004e3c:	00f53023          	sd	a5,0(a0)
    80004e40:	ffffd097          	auipc	ra,0xffffd
    80004e44:	a14080e7          	jalr	-1516(ra) # 80001854 <_ZN6ThreadD1Ev>
    80004e48:	00813083          	ld	ra,8(sp)
    80004e4c:	00013403          	ld	s0,0(sp)
    80004e50:	01010113          	addi	sp,sp,16
    80004e54:	00008067          	ret

0000000080004e58 <_ZN12ProducerSyncD0Ev>:
    80004e58:	fe010113          	addi	sp,sp,-32
    80004e5c:	00113c23          	sd	ra,24(sp)
    80004e60:	00813823          	sd	s0,16(sp)
    80004e64:	00913423          	sd	s1,8(sp)
    80004e68:	02010413          	addi	s0,sp,32
    80004e6c:	00050493          	mv	s1,a0
    80004e70:	00007797          	auipc	a5,0x7
    80004e74:	a9878793          	addi	a5,a5,-1384 # 8000b908 <_ZTV12ProducerSync+0x10>
    80004e78:	00f53023          	sd	a5,0(a0)
    80004e7c:	ffffd097          	auipc	ra,0xffffd
    80004e80:	9d8080e7          	jalr	-1576(ra) # 80001854 <_ZN6ThreadD1Ev>
    80004e84:	00048513          	mv	a0,s1
    80004e88:	ffffd097          	auipc	ra,0xffffd
    80004e8c:	a8c080e7          	jalr	-1396(ra) # 80001914 <_ZdlPv>
    80004e90:	01813083          	ld	ra,24(sp)
    80004e94:	01013403          	ld	s0,16(sp)
    80004e98:	00813483          	ld	s1,8(sp)
    80004e9c:	02010113          	addi	sp,sp,32
    80004ea0:	00008067          	ret

0000000080004ea4 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80004ea4:	ff010113          	addi	sp,sp,-16
    80004ea8:	00113423          	sd	ra,8(sp)
    80004eac:	00813023          	sd	s0,0(sp)
    80004eb0:	01010413          	addi	s0,sp,16
    80004eb4:	00007797          	auipc	a5,0x7
    80004eb8:	a2c78793          	addi	a5,a5,-1492 # 8000b8e0 <_ZTV16ProducerKeyboard+0x10>
    80004ebc:	00f53023          	sd	a5,0(a0)
    80004ec0:	ffffd097          	auipc	ra,0xffffd
    80004ec4:	994080e7          	jalr	-1644(ra) # 80001854 <_ZN6ThreadD1Ev>
    80004ec8:	00813083          	ld	ra,8(sp)
    80004ecc:	00013403          	ld	s0,0(sp)
    80004ed0:	01010113          	addi	sp,sp,16
    80004ed4:	00008067          	ret

0000000080004ed8 <_ZN16ProducerKeyboardD0Ev>:
    80004ed8:	fe010113          	addi	sp,sp,-32
    80004edc:	00113c23          	sd	ra,24(sp)
    80004ee0:	00813823          	sd	s0,16(sp)
    80004ee4:	00913423          	sd	s1,8(sp)
    80004ee8:	02010413          	addi	s0,sp,32
    80004eec:	00050493          	mv	s1,a0
    80004ef0:	00007797          	auipc	a5,0x7
    80004ef4:	9f078793          	addi	a5,a5,-1552 # 8000b8e0 <_ZTV16ProducerKeyboard+0x10>
    80004ef8:	00f53023          	sd	a5,0(a0)
    80004efc:	ffffd097          	auipc	ra,0xffffd
    80004f00:	958080e7          	jalr	-1704(ra) # 80001854 <_ZN6ThreadD1Ev>
    80004f04:	00048513          	mv	a0,s1
    80004f08:	ffffd097          	auipc	ra,0xffffd
    80004f0c:	a0c080e7          	jalr	-1524(ra) # 80001914 <_ZdlPv>
    80004f10:	01813083          	ld	ra,24(sp)
    80004f14:	01013403          	ld	s0,16(sp)
    80004f18:	00813483          	ld	s1,8(sp)
    80004f1c:	02010113          	addi	sp,sp,32
    80004f20:	00008067          	ret

0000000080004f24 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80004f24:	ff010113          	addi	sp,sp,-16
    80004f28:	00113423          	sd	ra,8(sp)
    80004f2c:	00813023          	sd	s0,0(sp)
    80004f30:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80004f34:	02053583          	ld	a1,32(a0)
    80004f38:	fffff097          	auipc	ra,0xfffff
    80004f3c:	7e4080e7          	jalr	2020(ra) # 8000471c <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80004f40:	00813083          	ld	ra,8(sp)
    80004f44:	00013403          	ld	s0,0(sp)
    80004f48:	01010113          	addi	sp,sp,16
    80004f4c:	00008067          	ret

0000000080004f50 <_ZN12ProducerSync3runEv>:
    void run() override {
    80004f50:	ff010113          	addi	sp,sp,-16
    80004f54:	00113423          	sd	ra,8(sp)
    80004f58:	00813023          	sd	s0,0(sp)
    80004f5c:	01010413          	addi	s0,sp,16
        producer(td);
    80004f60:	02053583          	ld	a1,32(a0)
    80004f64:	00000097          	auipc	ra,0x0
    80004f68:	878080e7          	jalr	-1928(ra) # 800047dc <_ZN12ProducerSync8producerEPv>
    }
    80004f6c:	00813083          	ld	ra,8(sp)
    80004f70:	00013403          	ld	s0,0(sp)
    80004f74:	01010113          	addi	sp,sp,16
    80004f78:	00008067          	ret

0000000080004f7c <_ZN12ConsumerSync3runEv>:
    void run() override {
    80004f7c:	ff010113          	addi	sp,sp,-16
    80004f80:	00113423          	sd	ra,8(sp)
    80004f84:	00813023          	sd	s0,0(sp)
    80004f88:	01010413          	addi	s0,sp,16
        consumer(td);
    80004f8c:	02053583          	ld	a1,32(a0)
    80004f90:	00000097          	auipc	ra,0x0
    80004f94:	8e0080e7          	jalr	-1824(ra) # 80004870 <_ZN12ConsumerSync8consumerEPv>
    }
    80004f98:	00813083          	ld	ra,8(sp)
    80004f9c:	00013403          	ld	s0,0(sp)
    80004fa0:	01010113          	addi	sp,sp,16
    80004fa4:	00008067          	ret

0000000080004fa8 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80004fa8:	fe010113          	addi	sp,sp,-32
    80004fac:	00113c23          	sd	ra,24(sp)
    80004fb0:	00813823          	sd	s0,16(sp)
    80004fb4:	00913423          	sd	s1,8(sp)
    80004fb8:	02010413          	addi	s0,sp,32
    80004fbc:	00050493          	mv	s1,a0
    if (string == nullptr) return;
    80004fc0:	06050063          	beqz	a0,80005020 <_Z11printStringPKc+0x78>
    LOCK();
    80004fc4:	00100613          	li	a2,1
    80004fc8:	00000593          	li	a1,0
    80004fcc:	00007517          	auipc	a0,0x7
    80004fd0:	aac50513          	addi	a0,a0,-1364 # 8000ba78 <lockPrint>
    80004fd4:	ffffc097          	auipc	ra,0xffffc
    80004fd8:	2d8080e7          	jalr	728(ra) # 800012ac <copy_and_swap>
    80004fdc:	00050863          	beqz	a0,80004fec <_Z11printStringPKc+0x44>
    80004fe0:	ffffc097          	auipc	ra,0xffffc
    80004fe4:	454080e7          	jalr	1108(ra) # 80001434 <_Z15thread_dispatchv>
    80004fe8:	fddff06f          	j	80004fc4 <_Z11printStringPKc+0x1c>
    while (*string != '\0')
    80004fec:	0004c503          	lbu	a0,0(s1)
    80004ff0:	00050a63          	beqz	a0,80005004 <_Z11printStringPKc+0x5c>
    {
        putc(*string);
    80004ff4:	ffffc097          	auipc	ra,0xffffc
    80004ff8:	730080e7          	jalr	1840(ra) # 80001724 <_Z4putcc>
        string++;
    80004ffc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005000:	fedff06f          	j	80004fec <_Z11printStringPKc+0x44>
    }
    UNLOCK();
    80005004:	00000613          	li	a2,0
    80005008:	00100593          	li	a1,1
    8000500c:	00007517          	auipc	a0,0x7
    80005010:	a6c50513          	addi	a0,a0,-1428 # 8000ba78 <lockPrint>
    80005014:	ffffc097          	auipc	ra,0xffffc
    80005018:	298080e7          	jalr	664(ra) # 800012ac <copy_and_swap>
    8000501c:	fe0514e3          	bnez	a0,80005004 <_Z11printStringPKc+0x5c>
}
    80005020:	01813083          	ld	ra,24(sp)
    80005024:	01013403          	ld	s0,16(sp)
    80005028:	00813483          	ld	s1,8(sp)
    8000502c:	02010113          	addi	sp,sp,32
    80005030:	00008067          	ret

0000000080005034 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005034:	fd010113          	addi	sp,sp,-48
    80005038:	02113423          	sd	ra,40(sp)
    8000503c:	02813023          	sd	s0,32(sp)
    80005040:	00913c23          	sd	s1,24(sp)
    80005044:	01213823          	sd	s2,16(sp)
    80005048:	01313423          	sd	s3,8(sp)
    8000504c:	01413023          	sd	s4,0(sp)
    80005050:	03010413          	addi	s0,sp,48
    80005054:	00050993          	mv	s3,a0
    80005058:	00058a13          	mv	s4,a1
    LOCK();
    8000505c:	00100613          	li	a2,1
    80005060:	00000593          	li	a1,0
    80005064:	00007517          	auipc	a0,0x7
    80005068:	a1450513          	addi	a0,a0,-1516 # 8000ba78 <lockPrint>
    8000506c:	ffffc097          	auipc	ra,0xffffc
    80005070:	240080e7          	jalr	576(ra) # 800012ac <copy_and_swap>
    80005074:	00050863          	beqz	a0,80005084 <_Z9getStringPci+0x50>
    80005078:	ffffc097          	auipc	ra,0xffffc
    8000507c:	3bc080e7          	jalr	956(ra) # 80001434 <_Z15thread_dispatchv>
    80005080:	fddff06f          	j	8000505c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005084:	00000913          	li	s2,0
    80005088:	00090493          	mv	s1,s2
    8000508c:	0019091b          	addiw	s2,s2,1
    80005090:	03495a63          	bge	s2,s4,800050c4 <_Z9getStringPci+0x90>
        cc = getc();
    80005094:	ffffc097          	auipc	ra,0xffffc
    80005098:	650080e7          	jalr	1616(ra) # 800016e4 <_Z4getcv>
        if(cc < 1)
    8000509c:	02050463          	beqz	a0,800050c4 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800050a0:	009984b3          	add	s1,s3,s1
    800050a4:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800050a8:	00a00793          	li	a5,10
    800050ac:	00f50a63          	beq	a0,a5,800050c0 <_Z9getStringPci+0x8c>
    800050b0:	00d00793          	li	a5,13
    800050b4:	fcf51ae3          	bne	a0,a5,80005088 <_Z9getStringPci+0x54>
        buf[i++] = c;
    800050b8:	00090493          	mv	s1,s2
    800050bc:	0080006f          	j	800050c4 <_Z9getStringPci+0x90>
    800050c0:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800050c4:	009984b3          	add	s1,s3,s1
    800050c8:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800050cc:	00000613          	li	a2,0
    800050d0:	00100593          	li	a1,1
    800050d4:	00007517          	auipc	a0,0x7
    800050d8:	9a450513          	addi	a0,a0,-1628 # 8000ba78 <lockPrint>
    800050dc:	ffffc097          	auipc	ra,0xffffc
    800050e0:	1d0080e7          	jalr	464(ra) # 800012ac <copy_and_swap>
    800050e4:	fe0514e3          	bnez	a0,800050cc <_Z9getStringPci+0x98>
    return buf;
}
    800050e8:	00098513          	mv	a0,s3
    800050ec:	02813083          	ld	ra,40(sp)
    800050f0:	02013403          	ld	s0,32(sp)
    800050f4:	01813483          	ld	s1,24(sp)
    800050f8:	01013903          	ld	s2,16(sp)
    800050fc:	00813983          	ld	s3,8(sp)
    80005100:	00013a03          	ld	s4,0(sp)
    80005104:	03010113          	addi	sp,sp,48
    80005108:	00008067          	ret

000000008000510c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    8000510c:	ff010113          	addi	sp,sp,-16
    80005110:	00813423          	sd	s0,8(sp)
    80005114:	01010413          	addi	s0,sp,16
    80005118:	00050693          	mv	a3,a0
    int n;

    n = 0;
    8000511c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005120:	0006c603          	lbu	a2,0(a3)
    80005124:	fd06071b          	addiw	a4,a2,-48
    80005128:	0ff77713          	andi	a4,a4,255
    8000512c:	00900793          	li	a5,9
    80005130:	02e7e063          	bltu	a5,a4,80005150 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005134:	0025179b          	slliw	a5,a0,0x2
    80005138:	00a787bb          	addw	a5,a5,a0
    8000513c:	0017979b          	slliw	a5,a5,0x1
    80005140:	00168693          	addi	a3,a3,1
    80005144:	00c787bb          	addw	a5,a5,a2
    80005148:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    8000514c:	fd5ff06f          	j	80005120 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005150:	00813403          	ld	s0,8(sp)
    80005154:	01010113          	addi	sp,sp,16
    80005158:	00008067          	ret

000000008000515c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    8000515c:	fc010113          	addi	sp,sp,-64
    80005160:	02113c23          	sd	ra,56(sp)
    80005164:	02813823          	sd	s0,48(sp)
    80005168:	02913423          	sd	s1,40(sp)
    8000516c:	03213023          	sd	s2,32(sp)
    80005170:	01313c23          	sd	s3,24(sp)
    80005174:	04010413          	addi	s0,sp,64
    80005178:	00050493          	mv	s1,a0
    8000517c:	00058913          	mv	s2,a1
    80005180:	00060993          	mv	s3,a2
    LOCK();
    80005184:	00100613          	li	a2,1
    80005188:	00000593          	li	a1,0
    8000518c:	00007517          	auipc	a0,0x7
    80005190:	8ec50513          	addi	a0,a0,-1812 # 8000ba78 <lockPrint>
    80005194:	ffffc097          	auipc	ra,0xffffc
    80005198:	118080e7          	jalr	280(ra) # 800012ac <copy_and_swap>
    8000519c:	00050863          	beqz	a0,800051ac <_Z8printIntiii+0x50>
    800051a0:	ffffc097          	auipc	ra,0xffffc
    800051a4:	294080e7          	jalr	660(ra) # 80001434 <_Z15thread_dispatchv>
    800051a8:	fddff06f          	j	80005184 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800051ac:	00098463          	beqz	s3,800051b4 <_Z8printIntiii+0x58>
    800051b0:	0804c463          	bltz	s1,80005238 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800051b4:	0004851b          	sext.w	a0,s1
    neg = 0;
    800051b8:	00000593          	li	a1,0
    }

    i = 0;
    800051bc:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800051c0:	0009079b          	sext.w	a5,s2
    800051c4:	0325773b          	remuw	a4,a0,s2
    800051c8:	00048613          	mv	a2,s1
    800051cc:	0014849b          	addiw	s1,s1,1
    800051d0:	02071693          	slli	a3,a4,0x20
    800051d4:	0206d693          	srli	a3,a3,0x20
    800051d8:	00006717          	auipc	a4,0x6
    800051dc:	77070713          	addi	a4,a4,1904 # 8000b948 <digits>
    800051e0:	00d70733          	add	a4,a4,a3
    800051e4:	00074683          	lbu	a3,0(a4)
    800051e8:	fd040713          	addi	a4,s0,-48
    800051ec:	00c70733          	add	a4,a4,a2
    800051f0:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800051f4:	0005071b          	sext.w	a4,a0
    800051f8:	0325553b          	divuw	a0,a0,s2
    800051fc:	fcf772e3          	bgeu	a4,a5,800051c0 <_Z8printIntiii+0x64>
    if(neg)
    80005200:	00058c63          	beqz	a1,80005218 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005204:	fd040793          	addi	a5,s0,-48
    80005208:	009784b3          	add	s1,a5,s1
    8000520c:	02d00793          	li	a5,45
    80005210:	fef48823          	sb	a5,-16(s1)
    80005214:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005218:	fff4849b          	addiw	s1,s1,-1
    8000521c:	0204c463          	bltz	s1,80005244 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005220:	fd040793          	addi	a5,s0,-48
    80005224:	009787b3          	add	a5,a5,s1
    80005228:	ff07c503          	lbu	a0,-16(a5)
    8000522c:	ffffc097          	auipc	ra,0xffffc
    80005230:	4f8080e7          	jalr	1272(ra) # 80001724 <_Z4putcc>
    80005234:	fe5ff06f          	j	80005218 <_Z8printIntiii+0xbc>
        x = -xx;
    80005238:	4090053b          	negw	a0,s1
        neg = 1;
    8000523c:	00100593          	li	a1,1
        x = -xx;
    80005240:	f7dff06f          	j	800051bc <_Z8printIntiii+0x60>

    UNLOCK();
    80005244:	00000613          	li	a2,0
    80005248:	00100593          	li	a1,1
    8000524c:	00007517          	auipc	a0,0x7
    80005250:	82c50513          	addi	a0,a0,-2004 # 8000ba78 <lockPrint>
    80005254:	ffffc097          	auipc	ra,0xffffc
    80005258:	058080e7          	jalr	88(ra) # 800012ac <copy_and_swap>
    8000525c:	fe0514e3          	bnez	a0,80005244 <_Z8printIntiii+0xe8>
    80005260:	03813083          	ld	ra,56(sp)
    80005264:	03013403          	ld	s0,48(sp)
    80005268:	02813483          	ld	s1,40(sp)
    8000526c:	02013903          	ld	s2,32(sp)
    80005270:	01813983          	ld	s3,24(sp)
    80005274:	04010113          	addi	sp,sp,64
    80005278:	00008067          	ret

000000008000527c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000527c:	fd010113          	addi	sp,sp,-48
    80005280:	02113423          	sd	ra,40(sp)
    80005284:	02813023          	sd	s0,32(sp)
    80005288:	00913c23          	sd	s1,24(sp)
    8000528c:	01213823          	sd	s2,16(sp)
    80005290:	01313423          	sd	s3,8(sp)
    80005294:	03010413          	addi	s0,sp,48
    80005298:	00050493          	mv	s1,a0
    8000529c:	00058913          	mv	s2,a1
    800052a0:	0015879b          	addiw	a5,a1,1
    800052a4:	0007851b          	sext.w	a0,a5
    800052a8:	00f4a023          	sw	a5,0(s1)
    800052ac:	0004a823          	sw	zero,16(s1)
    800052b0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800052b4:	00251513          	slli	a0,a0,0x2
    800052b8:	ffffc097          	auipc	ra,0xffffc
    800052bc:	03c080e7          	jalr	60(ra) # 800012f4 <_Z9mem_allocm>
    800052c0:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800052c4:	01000513          	li	a0,16
    800052c8:	ffffc097          	auipc	ra,0xffffc
    800052cc:	5fc080e7          	jalr	1532(ra) # 800018c4 <_Znwm>
    800052d0:	00050993          	mv	s3,a0
    800052d4:	00000593          	li	a1,0
    800052d8:	ffffc097          	auipc	ra,0xffffc
    800052dc:	7dc080e7          	jalr	2012(ra) # 80001ab4 <_ZN9SemaphoreC1Ej>
    800052e0:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800052e4:	01000513          	li	a0,16
    800052e8:	ffffc097          	auipc	ra,0xffffc
    800052ec:	5dc080e7          	jalr	1500(ra) # 800018c4 <_Znwm>
    800052f0:	00050993          	mv	s3,a0
    800052f4:	00090593          	mv	a1,s2
    800052f8:	ffffc097          	auipc	ra,0xffffc
    800052fc:	7bc080e7          	jalr	1980(ra) # 80001ab4 <_ZN9SemaphoreC1Ej>
    80005300:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005304:	01000513          	li	a0,16
    80005308:	ffffc097          	auipc	ra,0xffffc
    8000530c:	5bc080e7          	jalr	1468(ra) # 800018c4 <_Znwm>
    80005310:	00050913          	mv	s2,a0
    80005314:	00100593          	li	a1,1
    80005318:	ffffc097          	auipc	ra,0xffffc
    8000531c:	79c080e7          	jalr	1948(ra) # 80001ab4 <_ZN9SemaphoreC1Ej>
    80005320:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005324:	01000513          	li	a0,16
    80005328:	ffffc097          	auipc	ra,0xffffc
    8000532c:	59c080e7          	jalr	1436(ra) # 800018c4 <_Znwm>
    80005330:	00050913          	mv	s2,a0
    80005334:	00100593          	li	a1,1
    80005338:	ffffc097          	auipc	ra,0xffffc
    8000533c:	77c080e7          	jalr	1916(ra) # 80001ab4 <_ZN9SemaphoreC1Ej>
    80005340:	0324b823          	sd	s2,48(s1)
}
    80005344:	02813083          	ld	ra,40(sp)
    80005348:	02013403          	ld	s0,32(sp)
    8000534c:	01813483          	ld	s1,24(sp)
    80005350:	01013903          	ld	s2,16(sp)
    80005354:	00813983          	ld	s3,8(sp)
    80005358:	03010113          	addi	sp,sp,48
    8000535c:	00008067          	ret
    80005360:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005364:	00098513          	mv	a0,s3
    80005368:	ffffc097          	auipc	ra,0xffffc
    8000536c:	5ac080e7          	jalr	1452(ra) # 80001914 <_ZdlPv>
    80005370:	00048513          	mv	a0,s1
    80005374:	00007097          	auipc	ra,0x7
    80005378:	7f4080e7          	jalr	2036(ra) # 8000cb68 <_Unwind_Resume>
    8000537c:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005380:	00098513          	mv	a0,s3
    80005384:	ffffc097          	auipc	ra,0xffffc
    80005388:	590080e7          	jalr	1424(ra) # 80001914 <_ZdlPv>
    8000538c:	00048513          	mv	a0,s1
    80005390:	00007097          	auipc	ra,0x7
    80005394:	7d8080e7          	jalr	2008(ra) # 8000cb68 <_Unwind_Resume>
    80005398:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    8000539c:	00090513          	mv	a0,s2
    800053a0:	ffffc097          	auipc	ra,0xffffc
    800053a4:	574080e7          	jalr	1396(ra) # 80001914 <_ZdlPv>
    800053a8:	00048513          	mv	a0,s1
    800053ac:	00007097          	auipc	ra,0x7
    800053b0:	7bc080e7          	jalr	1980(ra) # 8000cb68 <_Unwind_Resume>
    800053b4:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800053b8:	00090513          	mv	a0,s2
    800053bc:	ffffc097          	auipc	ra,0xffffc
    800053c0:	558080e7          	jalr	1368(ra) # 80001914 <_ZdlPv>
    800053c4:	00048513          	mv	a0,s1
    800053c8:	00007097          	auipc	ra,0x7
    800053cc:	7a0080e7          	jalr	1952(ra) # 8000cb68 <_Unwind_Resume>

00000000800053d0 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800053d0:	fe010113          	addi	sp,sp,-32
    800053d4:	00113c23          	sd	ra,24(sp)
    800053d8:	00813823          	sd	s0,16(sp)
    800053dc:	00913423          	sd	s1,8(sp)
    800053e0:	01213023          	sd	s2,0(sp)
    800053e4:	02010413          	addi	s0,sp,32
    800053e8:	00050493          	mv	s1,a0
    800053ec:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800053f0:	01853503          	ld	a0,24(a0)
    800053f4:	ffffc097          	auipc	ra,0xffffc
    800053f8:	730080e7          	jalr	1840(ra) # 80001b24 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800053fc:	0304b503          	ld	a0,48(s1)
    80005400:	ffffc097          	auipc	ra,0xffffc
    80005404:	724080e7          	jalr	1828(ra) # 80001b24 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005408:	0084b783          	ld	a5,8(s1)
    8000540c:	0144a703          	lw	a4,20(s1)
    80005410:	00271713          	slli	a4,a4,0x2
    80005414:	00e787b3          	add	a5,a5,a4
    80005418:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000541c:	0144a783          	lw	a5,20(s1)
    80005420:	0017879b          	addiw	a5,a5,1
    80005424:	0004a703          	lw	a4,0(s1)
    80005428:	02e7e7bb          	remw	a5,a5,a4
    8000542c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005430:	0304b503          	ld	a0,48(s1)
    80005434:	ffffc097          	auipc	ra,0xffffc
    80005438:	6b8080e7          	jalr	1720(ra) # 80001aec <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    8000543c:	0204b503          	ld	a0,32(s1)
    80005440:	ffffc097          	auipc	ra,0xffffc
    80005444:	6ac080e7          	jalr	1708(ra) # 80001aec <_ZN9Semaphore6signalEv>

}
    80005448:	01813083          	ld	ra,24(sp)
    8000544c:	01013403          	ld	s0,16(sp)
    80005450:	00813483          	ld	s1,8(sp)
    80005454:	00013903          	ld	s2,0(sp)
    80005458:	02010113          	addi	sp,sp,32
    8000545c:	00008067          	ret

0000000080005460 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005460:	fe010113          	addi	sp,sp,-32
    80005464:	00113c23          	sd	ra,24(sp)
    80005468:	00813823          	sd	s0,16(sp)
    8000546c:	00913423          	sd	s1,8(sp)
    80005470:	01213023          	sd	s2,0(sp)
    80005474:	02010413          	addi	s0,sp,32
    80005478:	00050493          	mv	s1,a0
    itemAvailable->wait();
    8000547c:	02053503          	ld	a0,32(a0)
    80005480:	ffffc097          	auipc	ra,0xffffc
    80005484:	6a4080e7          	jalr	1700(ra) # 80001b24 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005488:	0284b503          	ld	a0,40(s1)
    8000548c:	ffffc097          	auipc	ra,0xffffc
    80005490:	698080e7          	jalr	1688(ra) # 80001b24 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005494:	0084b703          	ld	a4,8(s1)
    80005498:	0104a783          	lw	a5,16(s1)
    8000549c:	00279693          	slli	a3,a5,0x2
    800054a0:	00d70733          	add	a4,a4,a3
    800054a4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800054a8:	0017879b          	addiw	a5,a5,1
    800054ac:	0004a703          	lw	a4,0(s1)
    800054b0:	02e7e7bb          	remw	a5,a5,a4
    800054b4:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800054b8:	0284b503          	ld	a0,40(s1)
    800054bc:	ffffc097          	auipc	ra,0xffffc
    800054c0:	630080e7          	jalr	1584(ra) # 80001aec <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800054c4:	0184b503          	ld	a0,24(s1)
    800054c8:	ffffc097          	auipc	ra,0xffffc
    800054cc:	624080e7          	jalr	1572(ra) # 80001aec <_ZN9Semaphore6signalEv>

    return ret;
}
    800054d0:	00090513          	mv	a0,s2
    800054d4:	01813083          	ld	ra,24(sp)
    800054d8:	01013403          	ld	s0,16(sp)
    800054dc:	00813483          	ld	s1,8(sp)
    800054e0:	00013903          	ld	s2,0(sp)
    800054e4:	02010113          	addi	sp,sp,32
    800054e8:	00008067          	ret

00000000800054ec <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800054ec:	fe010113          	addi	sp,sp,-32
    800054f0:	00113c23          	sd	ra,24(sp)
    800054f4:	00813823          	sd	s0,16(sp)
    800054f8:	00913423          	sd	s1,8(sp)
    800054fc:	01213023          	sd	s2,0(sp)
    80005500:	02010413          	addi	s0,sp,32
    80005504:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005508:	02853503          	ld	a0,40(a0)
    8000550c:	ffffc097          	auipc	ra,0xffffc
    80005510:	618080e7          	jalr	1560(ra) # 80001b24 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005514:	0304b503          	ld	a0,48(s1)
    80005518:	ffffc097          	auipc	ra,0xffffc
    8000551c:	60c080e7          	jalr	1548(ra) # 80001b24 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005520:	0144a783          	lw	a5,20(s1)
    80005524:	0104a903          	lw	s2,16(s1)
    80005528:	0327ce63          	blt	a5,s2,80005564 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    8000552c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005530:	0304b503          	ld	a0,48(s1)
    80005534:	ffffc097          	auipc	ra,0xffffc
    80005538:	5b8080e7          	jalr	1464(ra) # 80001aec <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    8000553c:	0284b503          	ld	a0,40(s1)
    80005540:	ffffc097          	auipc	ra,0xffffc
    80005544:	5ac080e7          	jalr	1452(ra) # 80001aec <_ZN9Semaphore6signalEv>

    return ret;
}
    80005548:	00090513          	mv	a0,s2
    8000554c:	01813083          	ld	ra,24(sp)
    80005550:	01013403          	ld	s0,16(sp)
    80005554:	00813483          	ld	s1,8(sp)
    80005558:	00013903          	ld	s2,0(sp)
    8000555c:	02010113          	addi	sp,sp,32
    80005560:	00008067          	ret
        ret = cap - head + tail;
    80005564:	0004a703          	lw	a4,0(s1)
    80005568:	4127093b          	subw	s2,a4,s2
    8000556c:	00f9093b          	addw	s2,s2,a5
    80005570:	fc1ff06f          	j	80005530 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005574 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005574:	fe010113          	addi	sp,sp,-32
    80005578:	00113c23          	sd	ra,24(sp)
    8000557c:	00813823          	sd	s0,16(sp)
    80005580:	00913423          	sd	s1,8(sp)
    80005584:	02010413          	addi	s0,sp,32
    80005588:	00050493          	mv	s1,a0
    Console::putc('\n');
    8000558c:	00a00513          	li	a0,10
    80005590:	ffffc097          	auipc	ra,0xffffc
    80005594:	62c080e7          	jalr	1580(ra) # 80001bbc <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005598:	00004517          	auipc	a0,0x4
    8000559c:	e7850513          	addi	a0,a0,-392 # 80009410 <CONSOLE_STATUS+0x400>
    800055a0:	00000097          	auipc	ra,0x0
    800055a4:	a08080e7          	jalr	-1528(ra) # 80004fa8 <_Z11printStringPKc>
    while (getCnt()) {
    800055a8:	00048513          	mv	a0,s1
    800055ac:	00000097          	auipc	ra,0x0
    800055b0:	f40080e7          	jalr	-192(ra) # 800054ec <_ZN9BufferCPP6getCntEv>
    800055b4:	02050c63          	beqz	a0,800055ec <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800055b8:	0084b783          	ld	a5,8(s1)
    800055bc:	0104a703          	lw	a4,16(s1)
    800055c0:	00271713          	slli	a4,a4,0x2
    800055c4:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800055c8:	0007c503          	lbu	a0,0(a5)
    800055cc:	ffffc097          	auipc	ra,0xffffc
    800055d0:	5f0080e7          	jalr	1520(ra) # 80001bbc <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800055d4:	0104a783          	lw	a5,16(s1)
    800055d8:	0017879b          	addiw	a5,a5,1
    800055dc:	0004a703          	lw	a4,0(s1)
    800055e0:	02e7e7bb          	remw	a5,a5,a4
    800055e4:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800055e8:	fc1ff06f          	j	800055a8 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800055ec:	02100513          	li	a0,33
    800055f0:	ffffc097          	auipc	ra,0xffffc
    800055f4:	5cc080e7          	jalr	1484(ra) # 80001bbc <_ZN7Console4putcEc>
    Console::putc('\n');
    800055f8:	00a00513          	li	a0,10
    800055fc:	ffffc097          	auipc	ra,0xffffc
    80005600:	5c0080e7          	jalr	1472(ra) # 80001bbc <_ZN7Console4putcEc>
    mem_free(buffer);
    80005604:	0084b503          	ld	a0,8(s1)
    80005608:	ffffc097          	auipc	ra,0xffffc
    8000560c:	d30080e7          	jalr	-720(ra) # 80001338 <_Z8mem_freePv>
    delete itemAvailable;
    80005610:	0204b503          	ld	a0,32(s1)
    80005614:	00050863          	beqz	a0,80005624 <_ZN9BufferCPPD1Ev+0xb0>
    80005618:	00053783          	ld	a5,0(a0)
    8000561c:	0087b783          	ld	a5,8(a5)
    80005620:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005624:	0184b503          	ld	a0,24(s1)
    80005628:	00050863          	beqz	a0,80005638 <_ZN9BufferCPPD1Ev+0xc4>
    8000562c:	00053783          	ld	a5,0(a0)
    80005630:	0087b783          	ld	a5,8(a5)
    80005634:	000780e7          	jalr	a5
    delete mutexTail;
    80005638:	0304b503          	ld	a0,48(s1)
    8000563c:	00050863          	beqz	a0,8000564c <_ZN9BufferCPPD1Ev+0xd8>
    80005640:	00053783          	ld	a5,0(a0)
    80005644:	0087b783          	ld	a5,8(a5)
    80005648:	000780e7          	jalr	a5
    delete mutexHead;
    8000564c:	0284b503          	ld	a0,40(s1)
    80005650:	00050863          	beqz	a0,80005660 <_ZN9BufferCPPD1Ev+0xec>
    80005654:	00053783          	ld	a5,0(a0)
    80005658:	0087b783          	ld	a5,8(a5)
    8000565c:	000780e7          	jalr	a5
}
    80005660:	01813083          	ld	ra,24(sp)
    80005664:	01013403          	ld	s0,16(sp)
    80005668:	00813483          	ld	s1,8(sp)
    8000566c:	02010113          	addi	sp,sp,32
    80005670:	00008067          	ret

0000000080005674 <_Z5testAPv>:
    thread_waitall();
}

thread_t A, B, C;

void testA(void*) {
    80005674:	fe010113          	addi	sp,sp,-32
    80005678:	00113c23          	sd	ra,24(sp)
    8000567c:	00813823          	sd	s0,16(sp)
    80005680:	00913423          	sd	s1,8(sp)
    80005684:	02010413          	addi	s0,sp,32
    send(B, "Nit A -> Nit B\n");
    80005688:	00006497          	auipc	s1,0x6
    8000568c:	3f848493          	addi	s1,s1,1016 # 8000ba80 <B>
    80005690:	00004597          	auipc	a1,0x4
    80005694:	d9858593          	addi	a1,a1,-616 # 80009428 <CONSOLE_STATUS+0x418>
    80005698:	0004b503          	ld	a0,0(s1)
    8000569c:	ffffc097          	auipc	ra,0xffffc
    800056a0:	e8c080e7          	jalr	-372(ra) # 80001528 <_Z4sendP3TCBPKc>
    send(C, "Nit A -> Nit C\n");
    800056a4:	00004597          	auipc	a1,0x4
    800056a8:	d9458593          	addi	a1,a1,-620 # 80009438 <CONSOLE_STATUS+0x428>
    800056ac:	0084b503          	ld	a0,8(s1)
    800056b0:	ffffc097          	auipc	ra,0xffffc
    800056b4:	e78080e7          	jalr	-392(ra) # 80001528 <_Z4sendP3TCBPKc>
    printString(receive());
    800056b8:	ffffc097          	auipc	ra,0xffffc
    800056bc:	eac080e7          	jalr	-340(ra) # 80001564 <_Z7receivev>
    800056c0:	00000097          	auipc	ra,0x0
    800056c4:	8e8080e7          	jalr	-1816(ra) # 80004fa8 <_Z11printStringPKc>
}
    800056c8:	01813083          	ld	ra,24(sp)
    800056cc:	01013403          	ld	s0,16(sp)
    800056d0:	00813483          	ld	s1,8(sp)
    800056d4:	02010113          	addi	sp,sp,32
    800056d8:	00008067          	ret

00000000800056dc <_Z5testBPv>:

void testB(void*) {
    800056dc:	fe010113          	addi	sp,sp,-32
    800056e0:	00113c23          	sd	ra,24(sp)
    800056e4:	00813823          	sd	s0,16(sp)
    800056e8:	00913423          	sd	s1,8(sp)
    800056ec:	02010413          	addi	s0,sp,32
    send(C, "Nit B -> Nit C 1\n");
    800056f0:	00006497          	auipc	s1,0x6
    800056f4:	39048493          	addi	s1,s1,912 # 8000ba80 <B>
    800056f8:	00004597          	auipc	a1,0x4
    800056fc:	d5058593          	addi	a1,a1,-688 # 80009448 <CONSOLE_STATUS+0x438>
    80005700:	0084b503          	ld	a0,8(s1)
    80005704:	ffffc097          	auipc	ra,0xffffc
    80005708:	e24080e7          	jalr	-476(ra) # 80001528 <_Z4sendP3TCBPKc>
    send(C, "Nit B -> Nit C 2\n");
    8000570c:	00004597          	auipc	a1,0x4
    80005710:	d5458593          	addi	a1,a1,-684 # 80009460 <CONSOLE_STATUS+0x450>
    80005714:	0084b503          	ld	a0,8(s1)
    80005718:	ffffc097          	auipc	ra,0xffffc
    8000571c:	e10080e7          	jalr	-496(ra) # 80001528 <_Z4sendP3TCBPKc>
    printString(receive());
    80005720:	ffffc097          	auipc	ra,0xffffc
    80005724:	e44080e7          	jalr	-444(ra) # 80001564 <_Z7receivev>
    80005728:	00000097          	auipc	ra,0x0
    8000572c:	880080e7          	jalr	-1920(ra) # 80004fa8 <_Z11printStringPKc>
}
    80005730:	01813083          	ld	ra,24(sp)
    80005734:	01013403          	ld	s0,16(sp)
    80005738:	00813483          	ld	s1,8(sp)
    8000573c:	02010113          	addi	sp,sp,32
    80005740:	00008067          	ret

0000000080005744 <_Z5testCPv>:

void testC(void*) {
    80005744:	fe010113          	addi	sp,sp,-32
    80005748:	00113c23          	sd	ra,24(sp)
    8000574c:	00813823          	sd	s0,16(sp)
    80005750:	00913423          	sd	s1,8(sp)
    80005754:	02010413          	addi	s0,sp,32
    printString(receive());
    80005758:	ffffc097          	auipc	ra,0xffffc
    8000575c:	e0c080e7          	jalr	-500(ra) # 80001564 <_Z7receivev>
    80005760:	00000097          	auipc	ra,0x0
    80005764:	848080e7          	jalr	-1976(ra) # 80004fa8 <_Z11printStringPKc>
    printString(receive());
    80005768:	ffffc097          	auipc	ra,0xffffc
    8000576c:	dfc080e7          	jalr	-516(ra) # 80001564 <_Z7receivev>
    80005770:	00000097          	auipc	ra,0x0
    80005774:	838080e7          	jalr	-1992(ra) # 80004fa8 <_Z11printStringPKc>
    printString(receive());
    80005778:	ffffc097          	auipc	ra,0xffffc
    8000577c:	dec080e7          	jalr	-532(ra) # 80001564 <_Z7receivev>
    80005780:	00000097          	auipc	ra,0x0
    80005784:	828080e7          	jalr	-2008(ra) # 80004fa8 <_Z11printStringPKc>
    send(B, "Nit C -> Nit B\n");
    80005788:	00006497          	auipc	s1,0x6
    8000578c:	2f848493          	addi	s1,s1,760 # 8000ba80 <B>
    80005790:	00004597          	auipc	a1,0x4
    80005794:	ce858593          	addi	a1,a1,-792 # 80009478 <CONSOLE_STATUS+0x468>
    80005798:	0004b503          	ld	a0,0(s1)
    8000579c:	ffffc097          	auipc	ra,0xffffc
    800057a0:	d8c080e7          	jalr	-628(ra) # 80001528 <_Z4sendP3TCBPKc>
    send(A, "Nit C -> Nit A\n");
    800057a4:	00004597          	auipc	a1,0x4
    800057a8:	ce458593          	addi	a1,a1,-796 # 80009488 <CONSOLE_STATUS+0x478>
    800057ac:	0104b503          	ld	a0,16(s1)
    800057b0:	ffffc097          	auipc	ra,0xffffc
    800057b4:	d78080e7          	jalr	-648(ra) # 80001528 <_Z4sendP3TCBPKc>
}
    800057b8:	01813083          	ld	ra,24(sp)
    800057bc:	01013403          	ld	s0,16(sp)
    800057c0:	00813483          	ld	s1,8(sp)
    800057c4:	02010113          	addi	sp,sp,32
    800057c8:	00008067          	ret

00000000800057cc <_Z6myTestv>:
void myTest() {
    800057cc:	e4010113          	addi	sp,sp,-448
    800057d0:	1a113c23          	sd	ra,440(sp)
    800057d4:	1a813823          	sd	s0,432(sp)
    800057d8:	1a913423          	sd	s1,424(sp)
    800057dc:	1b213023          	sd	s2,416(sp)
    800057e0:	19313c23          	sd	s3,408(sp)
    800057e4:	1c010413          	addi	s0,sp,448
    for (int i = 0; i < 50; i++){
    800057e8:	00000913          	li	s2,0
    800057ec:	0280006f          	j	80005814 <_Z6myTestv+0x48>
    Thread1(char letter) : Thread() {
    800057f0:	00006797          	auipc	a5,0x6
    800057f4:	18078793          	addi	a5,a5,384 # 8000b970 <_ZTV7Thread1+0x10>
    800057f8:	00f4b023          	sd	a5,0(s1)
        this->letter = letter;
    800057fc:	03348023          	sb	s3,32(s1)
        threads[i] = new Thread1(i + 'A');
    80005800:	00391793          	slli	a5,s2,0x3
    80005804:	fd040713          	addi	a4,s0,-48
    80005808:	00f707b3          	add	a5,a4,a5
    8000580c:	e697b823          	sd	s1,-400(a5)
    for (int i = 0; i < 50; i++){
    80005810:	0019091b          	addiw	s2,s2,1
    80005814:	03100793          	li	a5,49
    80005818:	0327c463          	blt	a5,s2,80005840 <_Z6myTestv+0x74>
        threads[i] = new Thread1(i + 'A');
    8000581c:	02800513          	li	a0,40
    80005820:	ffffc097          	auipc	ra,0xffffc
    80005824:	0a4080e7          	jalr	164(ra) # 800018c4 <_Znwm>
    80005828:	00050493          	mv	s1,a0
    8000582c:	0419099b          	addiw	s3,s2,65
    80005830:	0ff9f993          	andi	s3,s3,255
    Thread1(char letter) : Thread() {
    80005834:	ffffc097          	auipc	ra,0xffffc
    80005838:	1dc080e7          	jalr	476(ra) # 80001a10 <_ZN6ThreadC1Ev>
    8000583c:	fb5ff06f          	j	800057f0 <_Z6myTestv+0x24>
    for (auto & thread : threads){
    80005840:	e4040493          	addi	s1,s0,-448
    80005844:	fd040793          	addi	a5,s0,-48
    80005848:	00f48c63          	beq	s1,a5,80005860 <_Z6myTestv+0x94>
        thread->start();
    8000584c:	0004b503          	ld	a0,0(s1)
    80005850:	ffffc097          	auipc	ra,0xffffc
    80005854:	22c080e7          	jalr	556(ra) # 80001a7c <_ZN6Thread5startEv>
    for (auto & thread : threads){
    80005858:	00848493          	addi	s1,s1,8
    8000585c:	fe9ff06f          	j	80005844 <_Z6myTestv+0x78>
    thread_waitall();
    80005860:	ffffc097          	auipc	ra,0xffffc
    80005864:	c8c080e7          	jalr	-884(ra) # 800014ec <_Z14thread_waitallv>
}
    80005868:	1b813083          	ld	ra,440(sp)
    8000586c:	1b013403          	ld	s0,432(sp)
    80005870:	1a813483          	ld	s1,424(sp)
    80005874:	1a013903          	ld	s2,416(sp)
    80005878:	19813983          	ld	s3,408(sp)
    8000587c:	1c010113          	addi	sp,sp,448
    80005880:	00008067          	ret
    80005884:	00050913          	mv	s2,a0
        threads[i] = new Thread1(i + 'A');
    80005888:	00048513          	mv	a0,s1
    8000588c:	ffffc097          	auipc	ra,0xffffc
    80005890:	088080e7          	jalr	136(ra) # 80001914 <_ZdlPv>
    80005894:	00090513          	mv	a0,s2
    80005898:	00007097          	auipc	ra,0x7
    8000589c:	2d0080e7          	jalr	720(ra) # 8000cb68 <_Unwind_Resume>

00000000800058a0 <_Z7myTest1v>:

void myTest1() {
    800058a0:	ff010113          	addi	sp,sp,-16
    800058a4:	00113423          	sd	ra,8(sp)
    800058a8:	00813023          	sd	s0,0(sp)
    800058ac:	01010413          	addi	s0,sp,16
    thread_create(&A, testA, nullptr);
    800058b0:	00000613          	li	a2,0
    800058b4:	00000597          	auipc	a1,0x0
    800058b8:	dc058593          	addi	a1,a1,-576 # 80005674 <_Z5testAPv>
    800058bc:	00006517          	auipc	a0,0x6
    800058c0:	1d450513          	addi	a0,a0,468 # 8000ba90 <A>
    800058c4:	ffffc097          	auipc	ra,0xffffc
    800058c8:	ab4080e7          	jalr	-1356(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&B, testB, nullptr);
    800058cc:	00000613          	li	a2,0
    800058d0:	00000597          	auipc	a1,0x0
    800058d4:	e0c58593          	addi	a1,a1,-500 # 800056dc <_Z5testBPv>
    800058d8:	00006517          	auipc	a0,0x6
    800058dc:	1a850513          	addi	a0,a0,424 # 8000ba80 <B>
    800058e0:	ffffc097          	auipc	ra,0xffffc
    800058e4:	a98080e7          	jalr	-1384(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&C, testC, nullptr);
    800058e8:	00000613          	li	a2,0
    800058ec:	00000597          	auipc	a1,0x0
    800058f0:	e5858593          	addi	a1,a1,-424 # 80005744 <_Z5testCPv>
    800058f4:	00006517          	auipc	a0,0x6
    800058f8:	19450513          	addi	a0,a0,404 # 8000ba88 <C>
    800058fc:	ffffc097          	auipc	ra,0xffffc
    80005900:	a7c080e7          	jalr	-1412(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_waitall();
    80005904:	ffffc097          	auipc	ra,0xffffc
    80005908:	be8080e7          	jalr	-1048(ra) # 800014ec <_Z14thread_waitallv>
}
    8000590c:	00813083          	ld	ra,8(sp)
    80005910:	00013403          	ld	s0,0(sp)
    80005914:	01010113          	addi	sp,sp,16
    80005918:	00008067          	ret

000000008000591c <_Z8userMainv>:

void userMain() {
    8000591c:	fe010113          	addi	sp,sp,-32
    80005920:	00113c23          	sd	ra,24(sp)
    80005924:	00813823          	sd	s0,16(sp)
    80005928:	00913423          	sd	s1,8(sp)
    8000592c:	01213023          	sd	s2,0(sp)
    80005930:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005934:	00004517          	auipc	a0,0x4
    80005938:	b6450513          	addi	a0,a0,-1180 # 80009498 <CONSOLE_STATUS+0x488>
    8000593c:	fffff097          	auipc	ra,0xfffff
    80005940:	66c080e7          	jalr	1644(ra) # 80004fa8 <_Z11printStringPKc>
    int test = getc() - '0';
    80005944:	ffffc097          	auipc	ra,0xffffc
    80005948:	da0080e7          	jalr	-608(ra) # 800016e4 <_Z4getcv>
    8000594c:	00050913          	mv	s2,a0
    80005950:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005954:	ffffc097          	auipc	ra,0xffffc
    80005958:	d90080e7          	jalr	-624(ra) # 800016e4 <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    8000595c:	fcb9091b          	addiw	s2,s2,-53
    80005960:	00100793          	li	a5,1
    80005964:	0327f463          	bgeu	a5,s2,8000598c <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005968:	00800793          	li	a5,8
    8000596c:	0e97e863          	bltu	a5,s1,80005a5c <_Z8userMainv+0x140>
    80005970:	00249493          	slli	s1,s1,0x2
    80005974:	00004717          	auipc	a4,0x4
    80005978:	d3c70713          	addi	a4,a4,-708 # 800096b0 <CONSOLE_STATUS+0x6a0>
    8000597c:	00e484b3          	add	s1,s1,a4
    80005980:	0004a783          	lw	a5,0(s1)
    80005984:	00e787b3          	add	a5,a5,a4
    80005988:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    8000598c:	00004517          	auipc	a0,0x4
    80005990:	b2c50513          	addi	a0,a0,-1236 # 800094b8 <CONSOLE_STATUS+0x4a8>
    80005994:	fffff097          	auipc	ra,0xfffff
    80005998:	614080e7          	jalr	1556(ra) # 80004fa8 <_Z11printStringPKc>
            myTest1();
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    8000599c:	01813083          	ld	ra,24(sp)
    800059a0:	01013403          	ld	s0,16(sp)
    800059a4:	00813483          	ld	s1,8(sp)
    800059a8:	00013903          	ld	s2,0(sp)
    800059ac:	02010113          	addi	sp,sp,32
    800059b0:	00008067          	ret
            Threads_C_API_test();
    800059b4:	fffff097          	auipc	ra,0xfffff
    800059b8:	c6c080e7          	jalr	-916(ra) # 80004620 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800059bc:	00004517          	auipc	a0,0x4
    800059c0:	b2c50513          	addi	a0,a0,-1236 # 800094e8 <CONSOLE_STATUS+0x4d8>
    800059c4:	fffff097          	auipc	ra,0xfffff
    800059c8:	5e4080e7          	jalr	1508(ra) # 80004fa8 <_Z11printStringPKc>
            break;
    800059cc:	fd1ff06f          	j	8000599c <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    800059d0:	ffffe097          	auipc	ra,0xffffe
    800059d4:	b30080e7          	jalr	-1232(ra) # 80003500 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800059d8:	00004517          	auipc	a0,0x4
    800059dc:	b5050513          	addi	a0,a0,-1200 # 80009528 <CONSOLE_STATUS+0x518>
    800059e0:	fffff097          	auipc	ra,0xfffff
    800059e4:	5c8080e7          	jalr	1480(ra) # 80004fa8 <_Z11printStringPKc>
            break;
    800059e8:	fb5ff06f          	j	8000599c <_Z8userMainv+0x80>
            producerConsumer_C_API();
    800059ec:	ffffd097          	auipc	ra,0xffffd
    800059f0:	368080e7          	jalr	872(ra) # 80002d54 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    800059f4:	00004517          	auipc	a0,0x4
    800059f8:	b7450513          	addi	a0,a0,-1164 # 80009568 <CONSOLE_STATUS+0x558>
    800059fc:	fffff097          	auipc	ra,0xfffff
    80005a00:	5ac080e7          	jalr	1452(ra) # 80004fa8 <_Z11printStringPKc>
            break;
    80005a04:	f99ff06f          	j	8000599c <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    80005a08:	fffff097          	auipc	ra,0xfffff
    80005a0c:	f5c080e7          	jalr	-164(ra) # 80004964 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005a10:	00004517          	auipc	a0,0x4
    80005a14:	ba850513          	addi	a0,a0,-1112 # 800095b8 <CONSOLE_STATUS+0x5a8>
    80005a18:	fffff097          	auipc	ra,0xfffff
    80005a1c:	590080e7          	jalr	1424(ra) # 80004fa8 <_Z11printStringPKc>
            break;
    80005a20:	f7dff06f          	j	8000599c <_Z8userMainv+0x80>
            System_Mode_test();
    80005a24:	00000097          	auipc	ra,0x0
    80005a28:	740080e7          	jalr	1856(ra) # 80006164 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005a2c:	00004517          	auipc	a0,0x4
    80005a30:	be450513          	addi	a0,a0,-1052 # 80009610 <CONSOLE_STATUS+0x600>
    80005a34:	fffff097          	auipc	ra,0xfffff
    80005a38:	574080e7          	jalr	1396(ra) # 80004fa8 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005a3c:	00004517          	auipc	a0,0x4
    80005a40:	bf450513          	addi	a0,a0,-1036 # 80009630 <CONSOLE_STATUS+0x620>
    80005a44:	fffff097          	auipc	ra,0xfffff
    80005a48:	564080e7          	jalr	1380(ra) # 80004fa8 <_Z11printStringPKc>
            break;
    80005a4c:	f51ff06f          	j	8000599c <_Z8userMainv+0x80>
            myTest1();
    80005a50:	00000097          	auipc	ra,0x0
    80005a54:	e50080e7          	jalr	-432(ra) # 800058a0 <_Z7myTest1v>
            break;
    80005a58:	f45ff06f          	j	8000599c <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005a5c:	00004517          	auipc	a0,0x4
    80005a60:	c2c50513          	addi	a0,a0,-980 # 80009688 <CONSOLE_STATUS+0x678>
    80005a64:	fffff097          	auipc	ra,0xfffff
    80005a68:	544080e7          	jalr	1348(ra) # 80004fa8 <_Z11printStringPKc>
    80005a6c:	f31ff06f          	j	8000599c <_Z8userMainv+0x80>

0000000080005a70 <_ZN7Thread13runEv>:
    void run() override {
    80005a70:	fe010113          	addi	sp,sp,-32
    80005a74:	00113c23          	sd	ra,24(sp)
    80005a78:	00813823          	sd	s0,16(sp)
    80005a7c:	00913423          	sd	s1,8(sp)
    80005a80:	01213023          	sd	s2,0(sp)
    80005a84:	02010413          	addi	s0,sp,32
    80005a88:	00050913          	mv	s2,a0
        for(int i = 0; i < 1000; i++) {
    80005a8c:	00000493          	li	s1,0
    80005a90:	3e700793          	li	a5,999
    80005a94:	0297c063          	blt	a5,s1,80005ab4 <_ZN7Thread13runEv+0x44>
            putc(letter);
    80005a98:	02094503          	lbu	a0,32(s2)
    80005a9c:	ffffc097          	auipc	ra,0xffffc
    80005aa0:	c88080e7          	jalr	-888(ra) # 80001724 <_Z4putcc>
            thread_dispatch();
    80005aa4:	ffffc097          	auipc	ra,0xffffc
    80005aa8:	990080e7          	jalr	-1648(ra) # 80001434 <_Z15thread_dispatchv>
        for(int i = 0; i < 1000; i++) {
    80005aac:	0014849b          	addiw	s1,s1,1
    80005ab0:	fe1ff06f          	j	80005a90 <_ZN7Thread13runEv+0x20>
    }
    80005ab4:	01813083          	ld	ra,24(sp)
    80005ab8:	01013403          	ld	s0,16(sp)
    80005abc:	00813483          	ld	s1,8(sp)
    80005ac0:	00013903          	ld	s2,0(sp)
    80005ac4:	02010113          	addi	sp,sp,32
    80005ac8:	00008067          	ret

0000000080005acc <_ZN7Thread1D1Ev>:
class Thread1 : public Thread {
    80005acc:	ff010113          	addi	sp,sp,-16
    80005ad0:	00113423          	sd	ra,8(sp)
    80005ad4:	00813023          	sd	s0,0(sp)
    80005ad8:	01010413          	addi	s0,sp,16
    80005adc:	00006797          	auipc	a5,0x6
    80005ae0:	e9478793          	addi	a5,a5,-364 # 8000b970 <_ZTV7Thread1+0x10>
    80005ae4:	00f53023          	sd	a5,0(a0)
    80005ae8:	ffffc097          	auipc	ra,0xffffc
    80005aec:	d6c080e7          	jalr	-660(ra) # 80001854 <_ZN6ThreadD1Ev>
    80005af0:	00813083          	ld	ra,8(sp)
    80005af4:	00013403          	ld	s0,0(sp)
    80005af8:	01010113          	addi	sp,sp,16
    80005afc:	00008067          	ret

0000000080005b00 <_ZN7Thread1D0Ev>:
    80005b00:	fe010113          	addi	sp,sp,-32
    80005b04:	00113c23          	sd	ra,24(sp)
    80005b08:	00813823          	sd	s0,16(sp)
    80005b0c:	00913423          	sd	s1,8(sp)
    80005b10:	02010413          	addi	s0,sp,32
    80005b14:	00050493          	mv	s1,a0
    80005b18:	00006797          	auipc	a5,0x6
    80005b1c:	e5878793          	addi	a5,a5,-424 # 8000b970 <_ZTV7Thread1+0x10>
    80005b20:	00f53023          	sd	a5,0(a0)
    80005b24:	ffffc097          	auipc	ra,0xffffc
    80005b28:	d30080e7          	jalr	-720(ra) # 80001854 <_ZN6ThreadD1Ev>
    80005b2c:	00048513          	mv	a0,s1
    80005b30:	ffffc097          	auipc	ra,0xffffc
    80005b34:	de4080e7          	jalr	-540(ra) # 80001914 <_ZdlPv>
    80005b38:	01813083          	ld	ra,24(sp)
    80005b3c:	01013403          	ld	s0,16(sp)
    80005b40:	00813483          	ld	s1,8(sp)
    80005b44:	02010113          	addi	sp,sp,32
    80005b48:	00008067          	ret

0000000080005b4c <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005b4c:	fe010113          	addi	sp,sp,-32
    80005b50:	00113c23          	sd	ra,24(sp)
    80005b54:	00813823          	sd	s0,16(sp)
    80005b58:	00913423          	sd	s1,8(sp)
    80005b5c:	01213023          	sd	s2,0(sp)
    80005b60:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005b64:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005b68:	00600493          	li	s1,6
    while (--i > 0) {
    80005b6c:	fff4849b          	addiw	s1,s1,-1
    80005b70:	04905463          	blez	s1,80005bb8 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005b74:	00004517          	auipc	a0,0x4
    80005b78:	b6450513          	addi	a0,a0,-1180 # 800096d8 <CONSOLE_STATUS+0x6c8>
    80005b7c:	fffff097          	auipc	ra,0xfffff
    80005b80:	42c080e7          	jalr	1068(ra) # 80004fa8 <_Z11printStringPKc>
        printInt(sleep_time);
    80005b84:	00000613          	li	a2,0
    80005b88:	00a00593          	li	a1,10
    80005b8c:	0009051b          	sext.w	a0,s2
    80005b90:	fffff097          	auipc	ra,0xfffff
    80005b94:	5cc080e7          	jalr	1484(ra) # 8000515c <_Z8printIntiii>
        printString(" !\n");
    80005b98:	00004517          	auipc	a0,0x4
    80005b9c:	b4850513          	addi	a0,a0,-1208 # 800096e0 <CONSOLE_STATUS+0x6d0>
    80005ba0:	fffff097          	auipc	ra,0xfffff
    80005ba4:	408080e7          	jalr	1032(ra) # 80004fa8 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005ba8:	00090513          	mv	a0,s2
    80005bac:	ffffc097          	auipc	ra,0xffffc
    80005bb0:	bd0080e7          	jalr	-1072(ra) # 8000177c <_Z10time_sleepm>
    while (--i > 0) {
    80005bb4:	fb9ff06f          	j	80005b6c <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005bb8:	00a00793          	li	a5,10
    80005bbc:	02f95933          	divu	s2,s2,a5
    80005bc0:	fff90913          	addi	s2,s2,-1
    80005bc4:	00006797          	auipc	a5,0x6
    80005bc8:	ed478793          	addi	a5,a5,-300 # 8000ba98 <_ZL8finished>
    80005bcc:	01278933          	add	s2,a5,s2
    80005bd0:	00100793          	li	a5,1
    80005bd4:	00f90023          	sb	a5,0(s2)
}
    80005bd8:	01813083          	ld	ra,24(sp)
    80005bdc:	01013403          	ld	s0,16(sp)
    80005be0:	00813483          	ld	s1,8(sp)
    80005be4:	00013903          	ld	s2,0(sp)
    80005be8:	02010113          	addi	sp,sp,32
    80005bec:	00008067          	ret

0000000080005bf0 <_Z12testSleepingv>:

void testSleeping() {
    80005bf0:	fc010113          	addi	sp,sp,-64
    80005bf4:	02113c23          	sd	ra,56(sp)
    80005bf8:	02813823          	sd	s0,48(sp)
    80005bfc:	02913423          	sd	s1,40(sp)
    80005c00:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005c04:	00a00793          	li	a5,10
    80005c08:	fcf43823          	sd	a5,-48(s0)
    80005c0c:	01400793          	li	a5,20
    80005c10:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005c14:	00000493          	li	s1,0
    80005c18:	02c0006f          	j	80005c44 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005c1c:	00349793          	slli	a5,s1,0x3
    80005c20:	fd040613          	addi	a2,s0,-48
    80005c24:	00f60633          	add	a2,a2,a5
    80005c28:	00000597          	auipc	a1,0x0
    80005c2c:	f2458593          	addi	a1,a1,-220 # 80005b4c <_ZL9sleepyRunPv>
    80005c30:	fc040513          	addi	a0,s0,-64
    80005c34:	00f50533          	add	a0,a0,a5
    80005c38:	ffffb097          	auipc	ra,0xffffb
    80005c3c:	740080e7          	jalr	1856(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005c40:	0014849b          	addiw	s1,s1,1
    80005c44:	00100793          	li	a5,1
    80005c48:	fc97dae3          	bge	a5,s1,80005c1c <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005c4c:	00006797          	auipc	a5,0x6
    80005c50:	e4c7c783          	lbu	a5,-436(a5) # 8000ba98 <_ZL8finished>
    80005c54:	fe078ce3          	beqz	a5,80005c4c <_Z12testSleepingv+0x5c>
    80005c58:	00006797          	auipc	a5,0x6
    80005c5c:	e417c783          	lbu	a5,-447(a5) # 8000ba99 <_ZL8finished+0x1>
    80005c60:	fe0786e3          	beqz	a5,80005c4c <_Z12testSleepingv+0x5c>
}
    80005c64:	03813083          	ld	ra,56(sp)
    80005c68:	03013403          	ld	s0,48(sp)
    80005c6c:	02813483          	ld	s1,40(sp)
    80005c70:	04010113          	addi	sp,sp,64
    80005c74:	00008067          	ret

0000000080005c78 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005c78:	fe010113          	addi	sp,sp,-32
    80005c7c:	00113c23          	sd	ra,24(sp)
    80005c80:	00813823          	sd	s0,16(sp)
    80005c84:	00913423          	sd	s1,8(sp)
    80005c88:	01213023          	sd	s2,0(sp)
    80005c8c:	02010413          	addi	s0,sp,32
    80005c90:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005c94:	00100793          	li	a5,1
    80005c98:	02a7f863          	bgeu	a5,a0,80005cc8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005c9c:	00a00793          	li	a5,10
    80005ca0:	02f577b3          	remu	a5,a0,a5
    80005ca4:	02078e63          	beqz	a5,80005ce0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005ca8:	fff48513          	addi	a0,s1,-1
    80005cac:	00000097          	auipc	ra,0x0
    80005cb0:	fcc080e7          	jalr	-52(ra) # 80005c78 <_ZL9fibonaccim>
    80005cb4:	00050913          	mv	s2,a0
    80005cb8:	ffe48513          	addi	a0,s1,-2
    80005cbc:	00000097          	auipc	ra,0x0
    80005cc0:	fbc080e7          	jalr	-68(ra) # 80005c78 <_ZL9fibonaccim>
    80005cc4:	00a90533          	add	a0,s2,a0
}
    80005cc8:	01813083          	ld	ra,24(sp)
    80005ccc:	01013403          	ld	s0,16(sp)
    80005cd0:	00813483          	ld	s1,8(sp)
    80005cd4:	00013903          	ld	s2,0(sp)
    80005cd8:	02010113          	addi	sp,sp,32
    80005cdc:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005ce0:	ffffb097          	auipc	ra,0xffffb
    80005ce4:	754080e7          	jalr	1876(ra) # 80001434 <_Z15thread_dispatchv>
    80005ce8:	fc1ff06f          	j	80005ca8 <_ZL9fibonaccim+0x30>

0000000080005cec <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005cec:	fe010113          	addi	sp,sp,-32
    80005cf0:	00113c23          	sd	ra,24(sp)
    80005cf4:	00813823          	sd	s0,16(sp)
    80005cf8:	00913423          	sd	s1,8(sp)
    80005cfc:	01213023          	sd	s2,0(sp)
    80005d00:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005d04:	00a00493          	li	s1,10
    80005d08:	0400006f          	j	80005d48 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005d0c:	00003517          	auipc	a0,0x3
    80005d10:	66c50513          	addi	a0,a0,1644 # 80009378 <CONSOLE_STATUS+0x368>
    80005d14:	fffff097          	auipc	ra,0xfffff
    80005d18:	294080e7          	jalr	660(ra) # 80004fa8 <_Z11printStringPKc>
    80005d1c:	00000613          	li	a2,0
    80005d20:	00a00593          	li	a1,10
    80005d24:	00048513          	mv	a0,s1
    80005d28:	fffff097          	auipc	ra,0xfffff
    80005d2c:	434080e7          	jalr	1076(ra) # 8000515c <_Z8printIntiii>
    80005d30:	00004517          	auipc	a0,0x4
    80005d34:	8d850513          	addi	a0,a0,-1832 # 80009608 <CONSOLE_STATUS+0x5f8>
    80005d38:	fffff097          	auipc	ra,0xfffff
    80005d3c:	270080e7          	jalr	624(ra) # 80004fa8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005d40:	0014849b          	addiw	s1,s1,1
    80005d44:	0ff4f493          	andi	s1,s1,255
    80005d48:	00c00793          	li	a5,12
    80005d4c:	fc97f0e3          	bgeu	a5,s1,80005d0c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005d50:	00003517          	auipc	a0,0x3
    80005d54:	63050513          	addi	a0,a0,1584 # 80009380 <CONSOLE_STATUS+0x370>
    80005d58:	fffff097          	auipc	ra,0xfffff
    80005d5c:	250080e7          	jalr	592(ra) # 80004fa8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005d60:	00500313          	li	t1,5
    thread_dispatch();
    80005d64:	ffffb097          	auipc	ra,0xffffb
    80005d68:	6d0080e7          	jalr	1744(ra) # 80001434 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005d6c:	01000513          	li	a0,16
    80005d70:	00000097          	auipc	ra,0x0
    80005d74:	f08080e7          	jalr	-248(ra) # 80005c78 <_ZL9fibonaccim>
    80005d78:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005d7c:	00003517          	auipc	a0,0x3
    80005d80:	61450513          	addi	a0,a0,1556 # 80009390 <CONSOLE_STATUS+0x380>
    80005d84:	fffff097          	auipc	ra,0xfffff
    80005d88:	224080e7          	jalr	548(ra) # 80004fa8 <_Z11printStringPKc>
    80005d8c:	00000613          	li	a2,0
    80005d90:	00a00593          	li	a1,10
    80005d94:	0009051b          	sext.w	a0,s2
    80005d98:	fffff097          	auipc	ra,0xfffff
    80005d9c:	3c4080e7          	jalr	964(ra) # 8000515c <_Z8printIntiii>
    80005da0:	00004517          	auipc	a0,0x4
    80005da4:	86850513          	addi	a0,a0,-1944 # 80009608 <CONSOLE_STATUS+0x5f8>
    80005da8:	fffff097          	auipc	ra,0xfffff
    80005dac:	200080e7          	jalr	512(ra) # 80004fa8 <_Z11printStringPKc>
    80005db0:	0400006f          	j	80005df0 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005db4:	00003517          	auipc	a0,0x3
    80005db8:	5c450513          	addi	a0,a0,1476 # 80009378 <CONSOLE_STATUS+0x368>
    80005dbc:	fffff097          	auipc	ra,0xfffff
    80005dc0:	1ec080e7          	jalr	492(ra) # 80004fa8 <_Z11printStringPKc>
    80005dc4:	00000613          	li	a2,0
    80005dc8:	00a00593          	li	a1,10
    80005dcc:	00048513          	mv	a0,s1
    80005dd0:	fffff097          	auipc	ra,0xfffff
    80005dd4:	38c080e7          	jalr	908(ra) # 8000515c <_Z8printIntiii>
    80005dd8:	00004517          	auipc	a0,0x4
    80005ddc:	83050513          	addi	a0,a0,-2000 # 80009608 <CONSOLE_STATUS+0x5f8>
    80005de0:	fffff097          	auipc	ra,0xfffff
    80005de4:	1c8080e7          	jalr	456(ra) # 80004fa8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005de8:	0014849b          	addiw	s1,s1,1
    80005dec:	0ff4f493          	andi	s1,s1,255
    80005df0:	00f00793          	li	a5,15
    80005df4:	fc97f0e3          	bgeu	a5,s1,80005db4 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005df8:	00003517          	auipc	a0,0x3
    80005dfc:	5a850513          	addi	a0,a0,1448 # 800093a0 <CONSOLE_STATUS+0x390>
    80005e00:	fffff097          	auipc	ra,0xfffff
    80005e04:	1a8080e7          	jalr	424(ra) # 80004fa8 <_Z11printStringPKc>
    finishedD = true;
    80005e08:	00100793          	li	a5,1
    80005e0c:	00006717          	auipc	a4,0x6
    80005e10:	c8f70723          	sb	a5,-882(a4) # 8000ba9a <_ZL9finishedD>
    thread_dispatch();
    80005e14:	ffffb097          	auipc	ra,0xffffb
    80005e18:	620080e7          	jalr	1568(ra) # 80001434 <_Z15thread_dispatchv>
}
    80005e1c:	01813083          	ld	ra,24(sp)
    80005e20:	01013403          	ld	s0,16(sp)
    80005e24:	00813483          	ld	s1,8(sp)
    80005e28:	00013903          	ld	s2,0(sp)
    80005e2c:	02010113          	addi	sp,sp,32
    80005e30:	00008067          	ret

0000000080005e34 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005e34:	fe010113          	addi	sp,sp,-32
    80005e38:	00113c23          	sd	ra,24(sp)
    80005e3c:	00813823          	sd	s0,16(sp)
    80005e40:	00913423          	sd	s1,8(sp)
    80005e44:	01213023          	sd	s2,0(sp)
    80005e48:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005e4c:	00000493          	li	s1,0
    80005e50:	0400006f          	j	80005e90 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005e54:	00003517          	auipc	a0,0x3
    80005e58:	4f450513          	addi	a0,a0,1268 # 80009348 <CONSOLE_STATUS+0x338>
    80005e5c:	fffff097          	auipc	ra,0xfffff
    80005e60:	14c080e7          	jalr	332(ra) # 80004fa8 <_Z11printStringPKc>
    80005e64:	00000613          	li	a2,0
    80005e68:	00a00593          	li	a1,10
    80005e6c:	00048513          	mv	a0,s1
    80005e70:	fffff097          	auipc	ra,0xfffff
    80005e74:	2ec080e7          	jalr	748(ra) # 8000515c <_Z8printIntiii>
    80005e78:	00003517          	auipc	a0,0x3
    80005e7c:	79050513          	addi	a0,a0,1936 # 80009608 <CONSOLE_STATUS+0x5f8>
    80005e80:	fffff097          	auipc	ra,0xfffff
    80005e84:	128080e7          	jalr	296(ra) # 80004fa8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005e88:	0014849b          	addiw	s1,s1,1
    80005e8c:	0ff4f493          	andi	s1,s1,255
    80005e90:	00200793          	li	a5,2
    80005e94:	fc97f0e3          	bgeu	a5,s1,80005e54 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005e98:	00003517          	auipc	a0,0x3
    80005e9c:	4b850513          	addi	a0,a0,1208 # 80009350 <CONSOLE_STATUS+0x340>
    80005ea0:	fffff097          	auipc	ra,0xfffff
    80005ea4:	108080e7          	jalr	264(ra) # 80004fa8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005ea8:	00700313          	li	t1,7
    thread_dispatch();
    80005eac:	ffffb097          	auipc	ra,0xffffb
    80005eb0:	588080e7          	jalr	1416(ra) # 80001434 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005eb4:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005eb8:	00003517          	auipc	a0,0x3
    80005ebc:	4a850513          	addi	a0,a0,1192 # 80009360 <CONSOLE_STATUS+0x350>
    80005ec0:	fffff097          	auipc	ra,0xfffff
    80005ec4:	0e8080e7          	jalr	232(ra) # 80004fa8 <_Z11printStringPKc>
    80005ec8:	00000613          	li	a2,0
    80005ecc:	00a00593          	li	a1,10
    80005ed0:	0009051b          	sext.w	a0,s2
    80005ed4:	fffff097          	auipc	ra,0xfffff
    80005ed8:	288080e7          	jalr	648(ra) # 8000515c <_Z8printIntiii>
    80005edc:	00003517          	auipc	a0,0x3
    80005ee0:	72c50513          	addi	a0,a0,1836 # 80009608 <CONSOLE_STATUS+0x5f8>
    80005ee4:	fffff097          	auipc	ra,0xfffff
    80005ee8:	0c4080e7          	jalr	196(ra) # 80004fa8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005eec:	00c00513          	li	a0,12
    80005ef0:	00000097          	auipc	ra,0x0
    80005ef4:	d88080e7          	jalr	-632(ra) # 80005c78 <_ZL9fibonaccim>
    80005ef8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005efc:	00003517          	auipc	a0,0x3
    80005f00:	46c50513          	addi	a0,a0,1132 # 80009368 <CONSOLE_STATUS+0x358>
    80005f04:	fffff097          	auipc	ra,0xfffff
    80005f08:	0a4080e7          	jalr	164(ra) # 80004fa8 <_Z11printStringPKc>
    80005f0c:	00000613          	li	a2,0
    80005f10:	00a00593          	li	a1,10
    80005f14:	0009051b          	sext.w	a0,s2
    80005f18:	fffff097          	auipc	ra,0xfffff
    80005f1c:	244080e7          	jalr	580(ra) # 8000515c <_Z8printIntiii>
    80005f20:	00003517          	auipc	a0,0x3
    80005f24:	6e850513          	addi	a0,a0,1768 # 80009608 <CONSOLE_STATUS+0x5f8>
    80005f28:	fffff097          	auipc	ra,0xfffff
    80005f2c:	080080e7          	jalr	128(ra) # 80004fa8 <_Z11printStringPKc>
    80005f30:	0400006f          	j	80005f70 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005f34:	00003517          	auipc	a0,0x3
    80005f38:	41450513          	addi	a0,a0,1044 # 80009348 <CONSOLE_STATUS+0x338>
    80005f3c:	fffff097          	auipc	ra,0xfffff
    80005f40:	06c080e7          	jalr	108(ra) # 80004fa8 <_Z11printStringPKc>
    80005f44:	00000613          	li	a2,0
    80005f48:	00a00593          	li	a1,10
    80005f4c:	00048513          	mv	a0,s1
    80005f50:	fffff097          	auipc	ra,0xfffff
    80005f54:	20c080e7          	jalr	524(ra) # 8000515c <_Z8printIntiii>
    80005f58:	00003517          	auipc	a0,0x3
    80005f5c:	6b050513          	addi	a0,a0,1712 # 80009608 <CONSOLE_STATUS+0x5f8>
    80005f60:	fffff097          	auipc	ra,0xfffff
    80005f64:	048080e7          	jalr	72(ra) # 80004fa8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005f68:	0014849b          	addiw	s1,s1,1
    80005f6c:	0ff4f493          	andi	s1,s1,255
    80005f70:	00500793          	li	a5,5
    80005f74:	fc97f0e3          	bgeu	a5,s1,80005f34 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005f78:	00003517          	auipc	a0,0x3
    80005f7c:	3a850513          	addi	a0,a0,936 # 80009320 <CONSOLE_STATUS+0x310>
    80005f80:	fffff097          	auipc	ra,0xfffff
    80005f84:	028080e7          	jalr	40(ra) # 80004fa8 <_Z11printStringPKc>
    finishedC = true;
    80005f88:	00100793          	li	a5,1
    80005f8c:	00006717          	auipc	a4,0x6
    80005f90:	b0f707a3          	sb	a5,-1265(a4) # 8000ba9b <_ZL9finishedC>
    thread_dispatch();
    80005f94:	ffffb097          	auipc	ra,0xffffb
    80005f98:	4a0080e7          	jalr	1184(ra) # 80001434 <_Z15thread_dispatchv>
}
    80005f9c:	01813083          	ld	ra,24(sp)
    80005fa0:	01013403          	ld	s0,16(sp)
    80005fa4:	00813483          	ld	s1,8(sp)
    80005fa8:	00013903          	ld	s2,0(sp)
    80005fac:	02010113          	addi	sp,sp,32
    80005fb0:	00008067          	ret

0000000080005fb4 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005fb4:	fe010113          	addi	sp,sp,-32
    80005fb8:	00113c23          	sd	ra,24(sp)
    80005fbc:	00813823          	sd	s0,16(sp)
    80005fc0:	00913423          	sd	s1,8(sp)
    80005fc4:	01213023          	sd	s2,0(sp)
    80005fc8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005fcc:	00000913          	li	s2,0
    80005fd0:	0400006f          	j	80006010 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005fd4:	ffffb097          	auipc	ra,0xffffb
    80005fd8:	460080e7          	jalr	1120(ra) # 80001434 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005fdc:	00148493          	addi	s1,s1,1
    80005fe0:	000027b7          	lui	a5,0x2
    80005fe4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005fe8:	0097ee63          	bltu	a5,s1,80006004 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005fec:	00000713          	li	a4,0
    80005ff0:	000077b7          	lui	a5,0x7
    80005ff4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005ff8:	fce7eee3          	bltu	a5,a4,80005fd4 <_ZL11workerBodyBPv+0x20>
    80005ffc:	00170713          	addi	a4,a4,1
    80006000:	ff1ff06f          	j	80005ff0 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006004:	00a00793          	li	a5,10
    80006008:	04f90663          	beq	s2,a5,80006054 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    8000600c:	00190913          	addi	s2,s2,1
    80006010:	00f00793          	li	a5,15
    80006014:	0527e463          	bltu	a5,s2,8000605c <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006018:	00003517          	auipc	a0,0x3
    8000601c:	31850513          	addi	a0,a0,792 # 80009330 <CONSOLE_STATUS+0x320>
    80006020:	fffff097          	auipc	ra,0xfffff
    80006024:	f88080e7          	jalr	-120(ra) # 80004fa8 <_Z11printStringPKc>
    80006028:	00000613          	li	a2,0
    8000602c:	00a00593          	li	a1,10
    80006030:	0009051b          	sext.w	a0,s2
    80006034:	fffff097          	auipc	ra,0xfffff
    80006038:	128080e7          	jalr	296(ra) # 8000515c <_Z8printIntiii>
    8000603c:	00003517          	auipc	a0,0x3
    80006040:	5cc50513          	addi	a0,a0,1484 # 80009608 <CONSOLE_STATUS+0x5f8>
    80006044:	fffff097          	auipc	ra,0xfffff
    80006048:	f64080e7          	jalr	-156(ra) # 80004fa8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000604c:	00000493          	li	s1,0
    80006050:	f91ff06f          	j	80005fe0 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006054:	14102ff3          	csrr	t6,sepc
    80006058:	fb5ff06f          	j	8000600c <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    8000605c:	00003517          	auipc	a0,0x3
    80006060:	2dc50513          	addi	a0,a0,732 # 80009338 <CONSOLE_STATUS+0x328>
    80006064:	fffff097          	auipc	ra,0xfffff
    80006068:	f44080e7          	jalr	-188(ra) # 80004fa8 <_Z11printStringPKc>
    finishedB = true;
    8000606c:	00100793          	li	a5,1
    80006070:	00006717          	auipc	a4,0x6
    80006074:	a2f70623          	sb	a5,-1492(a4) # 8000ba9c <_ZL9finishedB>
    thread_dispatch();
    80006078:	ffffb097          	auipc	ra,0xffffb
    8000607c:	3bc080e7          	jalr	956(ra) # 80001434 <_Z15thread_dispatchv>
}
    80006080:	01813083          	ld	ra,24(sp)
    80006084:	01013403          	ld	s0,16(sp)
    80006088:	00813483          	ld	s1,8(sp)
    8000608c:	00013903          	ld	s2,0(sp)
    80006090:	02010113          	addi	sp,sp,32
    80006094:	00008067          	ret

0000000080006098 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006098:	fe010113          	addi	sp,sp,-32
    8000609c:	00113c23          	sd	ra,24(sp)
    800060a0:	00813823          	sd	s0,16(sp)
    800060a4:	00913423          	sd	s1,8(sp)
    800060a8:	01213023          	sd	s2,0(sp)
    800060ac:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800060b0:	00000913          	li	s2,0
    800060b4:	0380006f          	j	800060ec <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800060b8:	ffffb097          	auipc	ra,0xffffb
    800060bc:	37c080e7          	jalr	892(ra) # 80001434 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800060c0:	00148493          	addi	s1,s1,1
    800060c4:	000027b7          	lui	a5,0x2
    800060c8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800060cc:	0097ee63          	bltu	a5,s1,800060e8 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800060d0:	00000713          	li	a4,0
    800060d4:	000077b7          	lui	a5,0x7
    800060d8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800060dc:	fce7eee3          	bltu	a5,a4,800060b8 <_ZL11workerBodyAPv+0x20>
    800060e0:	00170713          	addi	a4,a4,1
    800060e4:	ff1ff06f          	j	800060d4 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800060e8:	00190913          	addi	s2,s2,1
    800060ec:	00900793          	li	a5,9
    800060f0:	0527e063          	bltu	a5,s2,80006130 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800060f4:	00003517          	auipc	a0,0x3
    800060f8:	22450513          	addi	a0,a0,548 # 80009318 <CONSOLE_STATUS+0x308>
    800060fc:	fffff097          	auipc	ra,0xfffff
    80006100:	eac080e7          	jalr	-340(ra) # 80004fa8 <_Z11printStringPKc>
    80006104:	00000613          	li	a2,0
    80006108:	00a00593          	li	a1,10
    8000610c:	0009051b          	sext.w	a0,s2
    80006110:	fffff097          	auipc	ra,0xfffff
    80006114:	04c080e7          	jalr	76(ra) # 8000515c <_Z8printIntiii>
    80006118:	00003517          	auipc	a0,0x3
    8000611c:	4f050513          	addi	a0,a0,1264 # 80009608 <CONSOLE_STATUS+0x5f8>
    80006120:	fffff097          	auipc	ra,0xfffff
    80006124:	e88080e7          	jalr	-376(ra) # 80004fa8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006128:	00000493          	li	s1,0
    8000612c:	f99ff06f          	j	800060c4 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006130:	00003517          	auipc	a0,0x3
    80006134:	1f050513          	addi	a0,a0,496 # 80009320 <CONSOLE_STATUS+0x310>
    80006138:	fffff097          	auipc	ra,0xfffff
    8000613c:	e70080e7          	jalr	-400(ra) # 80004fa8 <_Z11printStringPKc>
    finishedA = true;
    80006140:	00100793          	li	a5,1
    80006144:	00006717          	auipc	a4,0x6
    80006148:	94f70ca3          	sb	a5,-1703(a4) # 8000ba9d <_ZL9finishedA>
}
    8000614c:	01813083          	ld	ra,24(sp)
    80006150:	01013403          	ld	s0,16(sp)
    80006154:	00813483          	ld	s1,8(sp)
    80006158:	00013903          	ld	s2,0(sp)
    8000615c:	02010113          	addi	sp,sp,32
    80006160:	00008067          	ret

0000000080006164 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006164:	fd010113          	addi	sp,sp,-48
    80006168:	02113423          	sd	ra,40(sp)
    8000616c:	02813023          	sd	s0,32(sp)
    80006170:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006174:	00000613          	li	a2,0
    80006178:	00000597          	auipc	a1,0x0
    8000617c:	f2058593          	addi	a1,a1,-224 # 80006098 <_ZL11workerBodyAPv>
    80006180:	fd040513          	addi	a0,s0,-48
    80006184:	ffffb097          	auipc	ra,0xffffb
    80006188:	1f4080e7          	jalr	500(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    8000618c:	00003517          	auipc	a0,0x3
    80006190:	22450513          	addi	a0,a0,548 # 800093b0 <CONSOLE_STATUS+0x3a0>
    80006194:	fffff097          	auipc	ra,0xfffff
    80006198:	e14080e7          	jalr	-492(ra) # 80004fa8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000619c:	00000613          	li	a2,0
    800061a0:	00000597          	auipc	a1,0x0
    800061a4:	e1458593          	addi	a1,a1,-492 # 80005fb4 <_ZL11workerBodyBPv>
    800061a8:	fd840513          	addi	a0,s0,-40
    800061ac:	ffffb097          	auipc	ra,0xffffb
    800061b0:	1cc080e7          	jalr	460(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800061b4:	00003517          	auipc	a0,0x3
    800061b8:	21450513          	addi	a0,a0,532 # 800093c8 <CONSOLE_STATUS+0x3b8>
    800061bc:	fffff097          	auipc	ra,0xfffff
    800061c0:	dec080e7          	jalr	-532(ra) # 80004fa8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800061c4:	00000613          	li	a2,0
    800061c8:	00000597          	auipc	a1,0x0
    800061cc:	c6c58593          	addi	a1,a1,-916 # 80005e34 <_ZL11workerBodyCPv>
    800061d0:	fe040513          	addi	a0,s0,-32
    800061d4:	ffffb097          	auipc	ra,0xffffb
    800061d8:	1a4080e7          	jalr	420(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800061dc:	00003517          	auipc	a0,0x3
    800061e0:	20450513          	addi	a0,a0,516 # 800093e0 <CONSOLE_STATUS+0x3d0>
    800061e4:	fffff097          	auipc	ra,0xfffff
    800061e8:	dc4080e7          	jalr	-572(ra) # 80004fa8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800061ec:	00000613          	li	a2,0
    800061f0:	00000597          	auipc	a1,0x0
    800061f4:	afc58593          	addi	a1,a1,-1284 # 80005cec <_ZL11workerBodyDPv>
    800061f8:	fe840513          	addi	a0,s0,-24
    800061fc:	ffffb097          	auipc	ra,0xffffb
    80006200:	17c080e7          	jalr	380(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80006204:	00003517          	auipc	a0,0x3
    80006208:	1f450513          	addi	a0,a0,500 # 800093f8 <CONSOLE_STATUS+0x3e8>
    8000620c:	fffff097          	auipc	ra,0xfffff
    80006210:	d9c080e7          	jalr	-612(ra) # 80004fa8 <_Z11printStringPKc>
    80006214:	00c0006f          	j	80006220 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006218:	ffffb097          	auipc	ra,0xffffb
    8000621c:	21c080e7          	jalr	540(ra) # 80001434 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006220:	00006797          	auipc	a5,0x6
    80006224:	87d7c783          	lbu	a5,-1923(a5) # 8000ba9d <_ZL9finishedA>
    80006228:	fe0788e3          	beqz	a5,80006218 <_Z16System_Mode_testv+0xb4>
    8000622c:	00006797          	auipc	a5,0x6
    80006230:	8707c783          	lbu	a5,-1936(a5) # 8000ba9c <_ZL9finishedB>
    80006234:	fe0782e3          	beqz	a5,80006218 <_Z16System_Mode_testv+0xb4>
    80006238:	00006797          	auipc	a5,0x6
    8000623c:	8637c783          	lbu	a5,-1949(a5) # 8000ba9b <_ZL9finishedC>
    80006240:	fc078ce3          	beqz	a5,80006218 <_Z16System_Mode_testv+0xb4>
    80006244:	00006797          	auipc	a5,0x6
    80006248:	8567c783          	lbu	a5,-1962(a5) # 8000ba9a <_ZL9finishedD>
    8000624c:	fc0786e3          	beqz	a5,80006218 <_Z16System_Mode_testv+0xb4>
    }

}
    80006250:	02813083          	ld	ra,40(sp)
    80006254:	02013403          	ld	s0,32(sp)
    80006258:	03010113          	addi	sp,sp,48
    8000625c:	00008067          	ret

0000000080006260 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006260:	fe010113          	addi	sp,sp,-32
    80006264:	00113c23          	sd	ra,24(sp)
    80006268:	00813823          	sd	s0,16(sp)
    8000626c:	00913423          	sd	s1,8(sp)
    80006270:	01213023          	sd	s2,0(sp)
    80006274:	02010413          	addi	s0,sp,32
    80006278:	00050493          	mv	s1,a0
    8000627c:	00058913          	mv	s2,a1
    80006280:	0015879b          	addiw	a5,a1,1
    80006284:	0007851b          	sext.w	a0,a5
    80006288:	00f4a023          	sw	a5,0(s1)
    8000628c:	0004a823          	sw	zero,16(s1)
    80006290:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006294:	00251513          	slli	a0,a0,0x2
    80006298:	ffffb097          	auipc	ra,0xffffb
    8000629c:	05c080e7          	jalr	92(ra) # 800012f4 <_Z9mem_allocm>
    800062a0:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800062a4:	00000593          	li	a1,0
    800062a8:	02048513          	addi	a0,s1,32
    800062ac:	ffffb097          	auipc	ra,0xffffb
    800062b0:	2f4080e7          	jalr	756(ra) # 800015a0 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    800062b4:	00090593          	mv	a1,s2
    800062b8:	01848513          	addi	a0,s1,24
    800062bc:	ffffb097          	auipc	ra,0xffffb
    800062c0:	2e4080e7          	jalr	740(ra) # 800015a0 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    800062c4:	00100593          	li	a1,1
    800062c8:	02848513          	addi	a0,s1,40
    800062cc:	ffffb097          	auipc	ra,0xffffb
    800062d0:	2d4080e7          	jalr	724(ra) # 800015a0 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    800062d4:	00100593          	li	a1,1
    800062d8:	03048513          	addi	a0,s1,48
    800062dc:	ffffb097          	auipc	ra,0xffffb
    800062e0:	2c4080e7          	jalr	708(ra) # 800015a0 <_Z8sem_openPP4_semj>
}
    800062e4:	01813083          	ld	ra,24(sp)
    800062e8:	01013403          	ld	s0,16(sp)
    800062ec:	00813483          	ld	s1,8(sp)
    800062f0:	00013903          	ld	s2,0(sp)
    800062f4:	02010113          	addi	sp,sp,32
    800062f8:	00008067          	ret

00000000800062fc <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800062fc:	fe010113          	addi	sp,sp,-32
    80006300:	00113c23          	sd	ra,24(sp)
    80006304:	00813823          	sd	s0,16(sp)
    80006308:	00913423          	sd	s1,8(sp)
    8000630c:	01213023          	sd	s2,0(sp)
    80006310:	02010413          	addi	s0,sp,32
    80006314:	00050493          	mv	s1,a0
    80006318:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    8000631c:	01853503          	ld	a0,24(a0)
    80006320:	ffffb097          	auipc	ra,0xffffb
    80006324:	304080e7          	jalr	772(ra) # 80001624 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80006328:	0304b503          	ld	a0,48(s1)
    8000632c:	ffffb097          	auipc	ra,0xffffb
    80006330:	2f8080e7          	jalr	760(ra) # 80001624 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80006334:	0084b783          	ld	a5,8(s1)
    80006338:	0144a703          	lw	a4,20(s1)
    8000633c:	00271713          	slli	a4,a4,0x2
    80006340:	00e787b3          	add	a5,a5,a4
    80006344:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006348:	0144a783          	lw	a5,20(s1)
    8000634c:	0017879b          	addiw	a5,a5,1
    80006350:	0004a703          	lw	a4,0(s1)
    80006354:	02e7e7bb          	remw	a5,a5,a4
    80006358:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    8000635c:	0304b503          	ld	a0,48(s1)
    80006360:	ffffb097          	auipc	ra,0xffffb
    80006364:	304080e7          	jalr	772(ra) # 80001664 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80006368:	0204b503          	ld	a0,32(s1)
    8000636c:	ffffb097          	auipc	ra,0xffffb
    80006370:	2f8080e7          	jalr	760(ra) # 80001664 <_Z10sem_signalP4_sem>

}
    80006374:	01813083          	ld	ra,24(sp)
    80006378:	01013403          	ld	s0,16(sp)
    8000637c:	00813483          	ld	s1,8(sp)
    80006380:	00013903          	ld	s2,0(sp)
    80006384:	02010113          	addi	sp,sp,32
    80006388:	00008067          	ret

000000008000638c <_ZN6Buffer3getEv>:

int Buffer::get() {
    8000638c:	fe010113          	addi	sp,sp,-32
    80006390:	00113c23          	sd	ra,24(sp)
    80006394:	00813823          	sd	s0,16(sp)
    80006398:	00913423          	sd	s1,8(sp)
    8000639c:	01213023          	sd	s2,0(sp)
    800063a0:	02010413          	addi	s0,sp,32
    800063a4:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800063a8:	02053503          	ld	a0,32(a0)
    800063ac:	ffffb097          	auipc	ra,0xffffb
    800063b0:	278080e7          	jalr	632(ra) # 80001624 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    800063b4:	0284b503          	ld	a0,40(s1)
    800063b8:	ffffb097          	auipc	ra,0xffffb
    800063bc:	26c080e7          	jalr	620(ra) # 80001624 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    800063c0:	0084b703          	ld	a4,8(s1)
    800063c4:	0104a783          	lw	a5,16(s1)
    800063c8:	00279693          	slli	a3,a5,0x2
    800063cc:	00d70733          	add	a4,a4,a3
    800063d0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800063d4:	0017879b          	addiw	a5,a5,1
    800063d8:	0004a703          	lw	a4,0(s1)
    800063dc:	02e7e7bb          	remw	a5,a5,a4
    800063e0:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800063e4:	0284b503          	ld	a0,40(s1)
    800063e8:	ffffb097          	auipc	ra,0xffffb
    800063ec:	27c080e7          	jalr	636(ra) # 80001664 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    800063f0:	0184b503          	ld	a0,24(s1)
    800063f4:	ffffb097          	auipc	ra,0xffffb
    800063f8:	270080e7          	jalr	624(ra) # 80001664 <_Z10sem_signalP4_sem>

    return ret;
}
    800063fc:	00090513          	mv	a0,s2
    80006400:	01813083          	ld	ra,24(sp)
    80006404:	01013403          	ld	s0,16(sp)
    80006408:	00813483          	ld	s1,8(sp)
    8000640c:	00013903          	ld	s2,0(sp)
    80006410:	02010113          	addi	sp,sp,32
    80006414:	00008067          	ret

0000000080006418 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006418:	fe010113          	addi	sp,sp,-32
    8000641c:	00113c23          	sd	ra,24(sp)
    80006420:	00813823          	sd	s0,16(sp)
    80006424:	00913423          	sd	s1,8(sp)
    80006428:	01213023          	sd	s2,0(sp)
    8000642c:	02010413          	addi	s0,sp,32
    80006430:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006434:	02853503          	ld	a0,40(a0)
    80006438:	ffffb097          	auipc	ra,0xffffb
    8000643c:	1ec080e7          	jalr	492(ra) # 80001624 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80006440:	0304b503          	ld	a0,48(s1)
    80006444:	ffffb097          	auipc	ra,0xffffb
    80006448:	1e0080e7          	jalr	480(ra) # 80001624 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    8000644c:	0144a783          	lw	a5,20(s1)
    80006450:	0104a903          	lw	s2,16(s1)
    80006454:	0327ce63          	blt	a5,s2,80006490 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006458:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    8000645c:	0304b503          	ld	a0,48(s1)
    80006460:	ffffb097          	auipc	ra,0xffffb
    80006464:	204080e7          	jalr	516(ra) # 80001664 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80006468:	0284b503          	ld	a0,40(s1)
    8000646c:	ffffb097          	auipc	ra,0xffffb
    80006470:	1f8080e7          	jalr	504(ra) # 80001664 <_Z10sem_signalP4_sem>

    return ret;
}
    80006474:	00090513          	mv	a0,s2
    80006478:	01813083          	ld	ra,24(sp)
    8000647c:	01013403          	ld	s0,16(sp)
    80006480:	00813483          	ld	s1,8(sp)
    80006484:	00013903          	ld	s2,0(sp)
    80006488:	02010113          	addi	sp,sp,32
    8000648c:	00008067          	ret
        ret = cap - head + tail;
    80006490:	0004a703          	lw	a4,0(s1)
    80006494:	4127093b          	subw	s2,a4,s2
    80006498:	00f9093b          	addw	s2,s2,a5
    8000649c:	fc1ff06f          	j	8000645c <_ZN6Buffer6getCntEv+0x44>

00000000800064a0 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800064a0:	fe010113          	addi	sp,sp,-32
    800064a4:	00113c23          	sd	ra,24(sp)
    800064a8:	00813823          	sd	s0,16(sp)
    800064ac:	00913423          	sd	s1,8(sp)
    800064b0:	02010413          	addi	s0,sp,32
    800064b4:	00050493          	mv	s1,a0
    putc('\n');
    800064b8:	00a00513          	li	a0,10
    800064bc:	ffffb097          	auipc	ra,0xffffb
    800064c0:	268080e7          	jalr	616(ra) # 80001724 <_Z4putcc>
    printString("Buffer deleted!\n");
    800064c4:	00003517          	auipc	a0,0x3
    800064c8:	f4c50513          	addi	a0,a0,-180 # 80009410 <CONSOLE_STATUS+0x400>
    800064cc:	fffff097          	auipc	ra,0xfffff
    800064d0:	adc080e7          	jalr	-1316(ra) # 80004fa8 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800064d4:	00048513          	mv	a0,s1
    800064d8:	00000097          	auipc	ra,0x0
    800064dc:	f40080e7          	jalr	-192(ra) # 80006418 <_ZN6Buffer6getCntEv>
    800064e0:	02a05c63          	blez	a0,80006518 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800064e4:	0084b783          	ld	a5,8(s1)
    800064e8:	0104a703          	lw	a4,16(s1)
    800064ec:	00271713          	slli	a4,a4,0x2
    800064f0:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800064f4:	0007c503          	lbu	a0,0(a5)
    800064f8:	ffffb097          	auipc	ra,0xffffb
    800064fc:	22c080e7          	jalr	556(ra) # 80001724 <_Z4putcc>
        head = (head + 1) % cap;
    80006500:	0104a783          	lw	a5,16(s1)
    80006504:	0017879b          	addiw	a5,a5,1
    80006508:	0004a703          	lw	a4,0(s1)
    8000650c:	02e7e7bb          	remw	a5,a5,a4
    80006510:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006514:	fc1ff06f          	j	800064d4 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006518:	02100513          	li	a0,33
    8000651c:	ffffb097          	auipc	ra,0xffffb
    80006520:	208080e7          	jalr	520(ra) # 80001724 <_Z4putcc>
    putc('\n');
    80006524:	00a00513          	li	a0,10
    80006528:	ffffb097          	auipc	ra,0xffffb
    8000652c:	1fc080e7          	jalr	508(ra) # 80001724 <_Z4putcc>
    mem_free(buffer);
    80006530:	0084b503          	ld	a0,8(s1)
    80006534:	ffffb097          	auipc	ra,0xffffb
    80006538:	e04080e7          	jalr	-508(ra) # 80001338 <_Z8mem_freePv>
    sem_close(itemAvailable);
    8000653c:	0204b503          	ld	a0,32(s1)
    80006540:	ffffb097          	auipc	ra,0xffffb
    80006544:	0a4080e7          	jalr	164(ra) # 800015e4 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80006548:	0184b503          	ld	a0,24(s1)
    8000654c:	ffffb097          	auipc	ra,0xffffb
    80006550:	098080e7          	jalr	152(ra) # 800015e4 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80006554:	0304b503          	ld	a0,48(s1)
    80006558:	ffffb097          	auipc	ra,0xffffb
    8000655c:	08c080e7          	jalr	140(ra) # 800015e4 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80006560:	0284b503          	ld	a0,40(s1)
    80006564:	ffffb097          	auipc	ra,0xffffb
    80006568:	080080e7          	jalr	128(ra) # 800015e4 <_Z9sem_closeP4_sem>
}
    8000656c:	01813083          	ld	ra,24(sp)
    80006570:	01013403          	ld	s0,16(sp)
    80006574:	00813483          	ld	s1,8(sp)
    80006578:	02010113          	addi	sp,sp,32
    8000657c:	00008067          	ret

0000000080006580 <start>:
    80006580:	ff010113          	addi	sp,sp,-16
    80006584:	00813423          	sd	s0,8(sp)
    80006588:	01010413          	addi	s0,sp,16
    8000658c:	300027f3          	csrr	a5,mstatus
    80006590:	ffffe737          	lui	a4,0xffffe
    80006594:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1aef>
    80006598:	00e7f7b3          	and	a5,a5,a4
    8000659c:	00001737          	lui	a4,0x1
    800065a0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800065a4:	00e7e7b3          	or	a5,a5,a4
    800065a8:	30079073          	csrw	mstatus,a5
    800065ac:	00000797          	auipc	a5,0x0
    800065b0:	16078793          	addi	a5,a5,352 # 8000670c <system_main>
    800065b4:	34179073          	csrw	mepc,a5
    800065b8:	00000793          	li	a5,0
    800065bc:	18079073          	csrw	satp,a5
    800065c0:	000107b7          	lui	a5,0x10
    800065c4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800065c8:	30279073          	csrw	medeleg,a5
    800065cc:	30379073          	csrw	mideleg,a5
    800065d0:	104027f3          	csrr	a5,sie
    800065d4:	2227e793          	ori	a5,a5,546
    800065d8:	10479073          	csrw	sie,a5
    800065dc:	fff00793          	li	a5,-1
    800065e0:	00a7d793          	srli	a5,a5,0xa
    800065e4:	3b079073          	csrw	pmpaddr0,a5
    800065e8:	00f00793          	li	a5,15
    800065ec:	3a079073          	csrw	pmpcfg0,a5
    800065f0:	f14027f3          	csrr	a5,mhartid
    800065f4:	0200c737          	lui	a4,0x200c
    800065f8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800065fc:	0007869b          	sext.w	a3,a5
    80006600:	00269713          	slli	a4,a3,0x2
    80006604:	000f4637          	lui	a2,0xf4
    80006608:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000660c:	00d70733          	add	a4,a4,a3
    80006610:	0037979b          	slliw	a5,a5,0x3
    80006614:	020046b7          	lui	a3,0x2004
    80006618:	00d787b3          	add	a5,a5,a3
    8000661c:	00c585b3          	add	a1,a1,a2
    80006620:	00371693          	slli	a3,a4,0x3
    80006624:	00005717          	auipc	a4,0x5
    80006628:	47c70713          	addi	a4,a4,1148 # 8000baa0 <timer_scratch>
    8000662c:	00b7b023          	sd	a1,0(a5)
    80006630:	00d70733          	add	a4,a4,a3
    80006634:	00f73c23          	sd	a5,24(a4)
    80006638:	02c73023          	sd	a2,32(a4)
    8000663c:	34071073          	csrw	mscratch,a4
    80006640:	00000797          	auipc	a5,0x0
    80006644:	6e078793          	addi	a5,a5,1760 # 80006d20 <timervec>
    80006648:	30579073          	csrw	mtvec,a5
    8000664c:	300027f3          	csrr	a5,mstatus
    80006650:	0087e793          	ori	a5,a5,8
    80006654:	30079073          	csrw	mstatus,a5
    80006658:	304027f3          	csrr	a5,mie
    8000665c:	0807e793          	ori	a5,a5,128
    80006660:	30479073          	csrw	mie,a5
    80006664:	f14027f3          	csrr	a5,mhartid
    80006668:	0007879b          	sext.w	a5,a5
    8000666c:	00078213          	mv	tp,a5
    80006670:	30200073          	mret
    80006674:	00813403          	ld	s0,8(sp)
    80006678:	01010113          	addi	sp,sp,16
    8000667c:	00008067          	ret

0000000080006680 <timerinit>:
    80006680:	ff010113          	addi	sp,sp,-16
    80006684:	00813423          	sd	s0,8(sp)
    80006688:	01010413          	addi	s0,sp,16
    8000668c:	f14027f3          	csrr	a5,mhartid
    80006690:	0200c737          	lui	a4,0x200c
    80006694:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006698:	0007869b          	sext.w	a3,a5
    8000669c:	00269713          	slli	a4,a3,0x2
    800066a0:	000f4637          	lui	a2,0xf4
    800066a4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800066a8:	00d70733          	add	a4,a4,a3
    800066ac:	0037979b          	slliw	a5,a5,0x3
    800066b0:	020046b7          	lui	a3,0x2004
    800066b4:	00d787b3          	add	a5,a5,a3
    800066b8:	00c585b3          	add	a1,a1,a2
    800066bc:	00371693          	slli	a3,a4,0x3
    800066c0:	00005717          	auipc	a4,0x5
    800066c4:	3e070713          	addi	a4,a4,992 # 8000baa0 <timer_scratch>
    800066c8:	00b7b023          	sd	a1,0(a5)
    800066cc:	00d70733          	add	a4,a4,a3
    800066d0:	00f73c23          	sd	a5,24(a4)
    800066d4:	02c73023          	sd	a2,32(a4)
    800066d8:	34071073          	csrw	mscratch,a4
    800066dc:	00000797          	auipc	a5,0x0
    800066e0:	64478793          	addi	a5,a5,1604 # 80006d20 <timervec>
    800066e4:	30579073          	csrw	mtvec,a5
    800066e8:	300027f3          	csrr	a5,mstatus
    800066ec:	0087e793          	ori	a5,a5,8
    800066f0:	30079073          	csrw	mstatus,a5
    800066f4:	304027f3          	csrr	a5,mie
    800066f8:	0807e793          	ori	a5,a5,128
    800066fc:	30479073          	csrw	mie,a5
    80006700:	00813403          	ld	s0,8(sp)
    80006704:	01010113          	addi	sp,sp,16
    80006708:	00008067          	ret

000000008000670c <system_main>:
    8000670c:	fe010113          	addi	sp,sp,-32
    80006710:	00813823          	sd	s0,16(sp)
    80006714:	00913423          	sd	s1,8(sp)
    80006718:	00113c23          	sd	ra,24(sp)
    8000671c:	02010413          	addi	s0,sp,32
    80006720:	00000097          	auipc	ra,0x0
    80006724:	0c4080e7          	jalr	196(ra) # 800067e4 <cpuid>
    80006728:	00005497          	auipc	s1,0x5
    8000672c:	2b848493          	addi	s1,s1,696 # 8000b9e0 <started>
    80006730:	02050263          	beqz	a0,80006754 <system_main+0x48>
    80006734:	0004a783          	lw	a5,0(s1)
    80006738:	0007879b          	sext.w	a5,a5
    8000673c:	fe078ce3          	beqz	a5,80006734 <system_main+0x28>
    80006740:	0ff0000f          	fence
    80006744:	00003517          	auipc	a0,0x3
    80006748:	fd450513          	addi	a0,a0,-44 # 80009718 <CONSOLE_STATUS+0x708>
    8000674c:	00001097          	auipc	ra,0x1
    80006750:	a70080e7          	jalr	-1424(ra) # 800071bc <panic>
    80006754:	00001097          	auipc	ra,0x1
    80006758:	9c4080e7          	jalr	-1596(ra) # 80007118 <consoleinit>
    8000675c:	00001097          	auipc	ra,0x1
    80006760:	150080e7          	jalr	336(ra) # 800078ac <printfinit>
    80006764:	00003517          	auipc	a0,0x3
    80006768:	ea450513          	addi	a0,a0,-348 # 80009608 <CONSOLE_STATUS+0x5f8>
    8000676c:	00001097          	auipc	ra,0x1
    80006770:	aac080e7          	jalr	-1364(ra) # 80007218 <__printf>
    80006774:	00003517          	auipc	a0,0x3
    80006778:	f7450513          	addi	a0,a0,-140 # 800096e8 <CONSOLE_STATUS+0x6d8>
    8000677c:	00001097          	auipc	ra,0x1
    80006780:	a9c080e7          	jalr	-1380(ra) # 80007218 <__printf>
    80006784:	00003517          	auipc	a0,0x3
    80006788:	e8450513          	addi	a0,a0,-380 # 80009608 <CONSOLE_STATUS+0x5f8>
    8000678c:	00001097          	auipc	ra,0x1
    80006790:	a8c080e7          	jalr	-1396(ra) # 80007218 <__printf>
    80006794:	00001097          	auipc	ra,0x1
    80006798:	4a4080e7          	jalr	1188(ra) # 80007c38 <kinit>
    8000679c:	00000097          	auipc	ra,0x0
    800067a0:	148080e7          	jalr	328(ra) # 800068e4 <trapinit>
    800067a4:	00000097          	auipc	ra,0x0
    800067a8:	16c080e7          	jalr	364(ra) # 80006910 <trapinithart>
    800067ac:	00000097          	auipc	ra,0x0
    800067b0:	5b4080e7          	jalr	1460(ra) # 80006d60 <plicinit>
    800067b4:	00000097          	auipc	ra,0x0
    800067b8:	5d4080e7          	jalr	1492(ra) # 80006d88 <plicinithart>
    800067bc:	00000097          	auipc	ra,0x0
    800067c0:	078080e7          	jalr	120(ra) # 80006834 <userinit>
    800067c4:	0ff0000f          	fence
    800067c8:	00100793          	li	a5,1
    800067cc:	00003517          	auipc	a0,0x3
    800067d0:	f3450513          	addi	a0,a0,-204 # 80009700 <CONSOLE_STATUS+0x6f0>
    800067d4:	00f4a023          	sw	a5,0(s1)
    800067d8:	00001097          	auipc	ra,0x1
    800067dc:	a40080e7          	jalr	-1472(ra) # 80007218 <__printf>
    800067e0:	0000006f          	j	800067e0 <system_main+0xd4>

00000000800067e4 <cpuid>:
    800067e4:	ff010113          	addi	sp,sp,-16
    800067e8:	00813423          	sd	s0,8(sp)
    800067ec:	01010413          	addi	s0,sp,16
    800067f0:	00020513          	mv	a0,tp
    800067f4:	00813403          	ld	s0,8(sp)
    800067f8:	0005051b          	sext.w	a0,a0
    800067fc:	01010113          	addi	sp,sp,16
    80006800:	00008067          	ret

0000000080006804 <mycpu>:
    80006804:	ff010113          	addi	sp,sp,-16
    80006808:	00813423          	sd	s0,8(sp)
    8000680c:	01010413          	addi	s0,sp,16
    80006810:	00020793          	mv	a5,tp
    80006814:	00813403          	ld	s0,8(sp)
    80006818:	0007879b          	sext.w	a5,a5
    8000681c:	00779793          	slli	a5,a5,0x7
    80006820:	00006517          	auipc	a0,0x6
    80006824:	2b050513          	addi	a0,a0,688 # 8000cad0 <cpus>
    80006828:	00f50533          	add	a0,a0,a5
    8000682c:	01010113          	addi	sp,sp,16
    80006830:	00008067          	ret

0000000080006834 <userinit>:
    80006834:	ff010113          	addi	sp,sp,-16
    80006838:	00813423          	sd	s0,8(sp)
    8000683c:	01010413          	addi	s0,sp,16
    80006840:	00813403          	ld	s0,8(sp)
    80006844:	01010113          	addi	sp,sp,16
    80006848:	ffffb317          	auipc	t1,0xffffb
    8000684c:	f5030067          	jr	-176(t1) # 80001798 <main>

0000000080006850 <either_copyout>:
    80006850:	ff010113          	addi	sp,sp,-16
    80006854:	00813023          	sd	s0,0(sp)
    80006858:	00113423          	sd	ra,8(sp)
    8000685c:	01010413          	addi	s0,sp,16
    80006860:	02051663          	bnez	a0,8000688c <either_copyout+0x3c>
    80006864:	00058513          	mv	a0,a1
    80006868:	00060593          	mv	a1,a2
    8000686c:	0006861b          	sext.w	a2,a3
    80006870:	00002097          	auipc	ra,0x2
    80006874:	c54080e7          	jalr	-940(ra) # 800084c4 <__memmove>
    80006878:	00813083          	ld	ra,8(sp)
    8000687c:	00013403          	ld	s0,0(sp)
    80006880:	00000513          	li	a0,0
    80006884:	01010113          	addi	sp,sp,16
    80006888:	00008067          	ret
    8000688c:	00003517          	auipc	a0,0x3
    80006890:	eb450513          	addi	a0,a0,-332 # 80009740 <CONSOLE_STATUS+0x730>
    80006894:	00001097          	auipc	ra,0x1
    80006898:	928080e7          	jalr	-1752(ra) # 800071bc <panic>

000000008000689c <either_copyin>:
    8000689c:	ff010113          	addi	sp,sp,-16
    800068a0:	00813023          	sd	s0,0(sp)
    800068a4:	00113423          	sd	ra,8(sp)
    800068a8:	01010413          	addi	s0,sp,16
    800068ac:	02059463          	bnez	a1,800068d4 <either_copyin+0x38>
    800068b0:	00060593          	mv	a1,a2
    800068b4:	0006861b          	sext.w	a2,a3
    800068b8:	00002097          	auipc	ra,0x2
    800068bc:	c0c080e7          	jalr	-1012(ra) # 800084c4 <__memmove>
    800068c0:	00813083          	ld	ra,8(sp)
    800068c4:	00013403          	ld	s0,0(sp)
    800068c8:	00000513          	li	a0,0
    800068cc:	01010113          	addi	sp,sp,16
    800068d0:	00008067          	ret
    800068d4:	00003517          	auipc	a0,0x3
    800068d8:	e9450513          	addi	a0,a0,-364 # 80009768 <CONSOLE_STATUS+0x758>
    800068dc:	00001097          	auipc	ra,0x1
    800068e0:	8e0080e7          	jalr	-1824(ra) # 800071bc <panic>

00000000800068e4 <trapinit>:
    800068e4:	ff010113          	addi	sp,sp,-16
    800068e8:	00813423          	sd	s0,8(sp)
    800068ec:	01010413          	addi	s0,sp,16
    800068f0:	00813403          	ld	s0,8(sp)
    800068f4:	00003597          	auipc	a1,0x3
    800068f8:	e9c58593          	addi	a1,a1,-356 # 80009790 <CONSOLE_STATUS+0x780>
    800068fc:	00006517          	auipc	a0,0x6
    80006900:	25450513          	addi	a0,a0,596 # 8000cb50 <tickslock>
    80006904:	01010113          	addi	sp,sp,16
    80006908:	00001317          	auipc	t1,0x1
    8000690c:	5c030067          	jr	1472(t1) # 80007ec8 <initlock>

0000000080006910 <trapinithart>:
    80006910:	ff010113          	addi	sp,sp,-16
    80006914:	00813423          	sd	s0,8(sp)
    80006918:	01010413          	addi	s0,sp,16
    8000691c:	00000797          	auipc	a5,0x0
    80006920:	2f478793          	addi	a5,a5,756 # 80006c10 <kernelvec>
    80006924:	10579073          	csrw	stvec,a5
    80006928:	00813403          	ld	s0,8(sp)
    8000692c:	01010113          	addi	sp,sp,16
    80006930:	00008067          	ret

0000000080006934 <usertrap>:
    80006934:	ff010113          	addi	sp,sp,-16
    80006938:	00813423          	sd	s0,8(sp)
    8000693c:	01010413          	addi	s0,sp,16
    80006940:	00813403          	ld	s0,8(sp)
    80006944:	01010113          	addi	sp,sp,16
    80006948:	00008067          	ret

000000008000694c <usertrapret>:
    8000694c:	ff010113          	addi	sp,sp,-16
    80006950:	00813423          	sd	s0,8(sp)
    80006954:	01010413          	addi	s0,sp,16
    80006958:	00813403          	ld	s0,8(sp)
    8000695c:	01010113          	addi	sp,sp,16
    80006960:	00008067          	ret

0000000080006964 <kerneltrap>:
    80006964:	fe010113          	addi	sp,sp,-32
    80006968:	00813823          	sd	s0,16(sp)
    8000696c:	00113c23          	sd	ra,24(sp)
    80006970:	00913423          	sd	s1,8(sp)
    80006974:	02010413          	addi	s0,sp,32
    80006978:	142025f3          	csrr	a1,scause
    8000697c:	100027f3          	csrr	a5,sstatus
    80006980:	0027f793          	andi	a5,a5,2
    80006984:	10079c63          	bnez	a5,80006a9c <kerneltrap+0x138>
    80006988:	142027f3          	csrr	a5,scause
    8000698c:	0207ce63          	bltz	a5,800069c8 <kerneltrap+0x64>
    80006990:	00003517          	auipc	a0,0x3
    80006994:	e4850513          	addi	a0,a0,-440 # 800097d8 <CONSOLE_STATUS+0x7c8>
    80006998:	00001097          	auipc	ra,0x1
    8000699c:	880080e7          	jalr	-1920(ra) # 80007218 <__printf>
    800069a0:	141025f3          	csrr	a1,sepc
    800069a4:	14302673          	csrr	a2,stval
    800069a8:	00003517          	auipc	a0,0x3
    800069ac:	e4050513          	addi	a0,a0,-448 # 800097e8 <CONSOLE_STATUS+0x7d8>
    800069b0:	00001097          	auipc	ra,0x1
    800069b4:	868080e7          	jalr	-1944(ra) # 80007218 <__printf>
    800069b8:	00003517          	auipc	a0,0x3
    800069bc:	e4850513          	addi	a0,a0,-440 # 80009800 <CONSOLE_STATUS+0x7f0>
    800069c0:	00000097          	auipc	ra,0x0
    800069c4:	7fc080e7          	jalr	2044(ra) # 800071bc <panic>
    800069c8:	0ff7f713          	andi	a4,a5,255
    800069cc:	00900693          	li	a3,9
    800069d0:	04d70063          	beq	a4,a3,80006a10 <kerneltrap+0xac>
    800069d4:	fff00713          	li	a4,-1
    800069d8:	03f71713          	slli	a4,a4,0x3f
    800069dc:	00170713          	addi	a4,a4,1
    800069e0:	fae798e3          	bne	a5,a4,80006990 <kerneltrap+0x2c>
    800069e4:	00000097          	auipc	ra,0x0
    800069e8:	e00080e7          	jalr	-512(ra) # 800067e4 <cpuid>
    800069ec:	06050663          	beqz	a0,80006a58 <kerneltrap+0xf4>
    800069f0:	144027f3          	csrr	a5,sip
    800069f4:	ffd7f793          	andi	a5,a5,-3
    800069f8:	14479073          	csrw	sip,a5
    800069fc:	01813083          	ld	ra,24(sp)
    80006a00:	01013403          	ld	s0,16(sp)
    80006a04:	00813483          	ld	s1,8(sp)
    80006a08:	02010113          	addi	sp,sp,32
    80006a0c:	00008067          	ret
    80006a10:	00000097          	auipc	ra,0x0
    80006a14:	3c4080e7          	jalr	964(ra) # 80006dd4 <plic_claim>
    80006a18:	00a00793          	li	a5,10
    80006a1c:	00050493          	mv	s1,a0
    80006a20:	06f50863          	beq	a0,a5,80006a90 <kerneltrap+0x12c>
    80006a24:	fc050ce3          	beqz	a0,800069fc <kerneltrap+0x98>
    80006a28:	00050593          	mv	a1,a0
    80006a2c:	00003517          	auipc	a0,0x3
    80006a30:	d8c50513          	addi	a0,a0,-628 # 800097b8 <CONSOLE_STATUS+0x7a8>
    80006a34:	00000097          	auipc	ra,0x0
    80006a38:	7e4080e7          	jalr	2020(ra) # 80007218 <__printf>
    80006a3c:	01013403          	ld	s0,16(sp)
    80006a40:	01813083          	ld	ra,24(sp)
    80006a44:	00048513          	mv	a0,s1
    80006a48:	00813483          	ld	s1,8(sp)
    80006a4c:	02010113          	addi	sp,sp,32
    80006a50:	00000317          	auipc	t1,0x0
    80006a54:	3bc30067          	jr	956(t1) # 80006e0c <plic_complete>
    80006a58:	00006517          	auipc	a0,0x6
    80006a5c:	0f850513          	addi	a0,a0,248 # 8000cb50 <tickslock>
    80006a60:	00001097          	auipc	ra,0x1
    80006a64:	48c080e7          	jalr	1164(ra) # 80007eec <acquire>
    80006a68:	00005717          	auipc	a4,0x5
    80006a6c:	f7c70713          	addi	a4,a4,-132 # 8000b9e4 <ticks>
    80006a70:	00072783          	lw	a5,0(a4)
    80006a74:	00006517          	auipc	a0,0x6
    80006a78:	0dc50513          	addi	a0,a0,220 # 8000cb50 <tickslock>
    80006a7c:	0017879b          	addiw	a5,a5,1
    80006a80:	00f72023          	sw	a5,0(a4)
    80006a84:	00001097          	auipc	ra,0x1
    80006a88:	534080e7          	jalr	1332(ra) # 80007fb8 <release>
    80006a8c:	f65ff06f          	j	800069f0 <kerneltrap+0x8c>
    80006a90:	00001097          	auipc	ra,0x1
    80006a94:	090080e7          	jalr	144(ra) # 80007b20 <uartintr>
    80006a98:	fa5ff06f          	j	80006a3c <kerneltrap+0xd8>
    80006a9c:	00003517          	auipc	a0,0x3
    80006aa0:	cfc50513          	addi	a0,a0,-772 # 80009798 <CONSOLE_STATUS+0x788>
    80006aa4:	00000097          	auipc	ra,0x0
    80006aa8:	718080e7          	jalr	1816(ra) # 800071bc <panic>

0000000080006aac <clockintr>:
    80006aac:	fe010113          	addi	sp,sp,-32
    80006ab0:	00813823          	sd	s0,16(sp)
    80006ab4:	00913423          	sd	s1,8(sp)
    80006ab8:	00113c23          	sd	ra,24(sp)
    80006abc:	02010413          	addi	s0,sp,32
    80006ac0:	00006497          	auipc	s1,0x6
    80006ac4:	09048493          	addi	s1,s1,144 # 8000cb50 <tickslock>
    80006ac8:	00048513          	mv	a0,s1
    80006acc:	00001097          	auipc	ra,0x1
    80006ad0:	420080e7          	jalr	1056(ra) # 80007eec <acquire>
    80006ad4:	00005717          	auipc	a4,0x5
    80006ad8:	f1070713          	addi	a4,a4,-240 # 8000b9e4 <ticks>
    80006adc:	00072783          	lw	a5,0(a4)
    80006ae0:	01013403          	ld	s0,16(sp)
    80006ae4:	01813083          	ld	ra,24(sp)
    80006ae8:	00048513          	mv	a0,s1
    80006aec:	0017879b          	addiw	a5,a5,1
    80006af0:	00813483          	ld	s1,8(sp)
    80006af4:	00f72023          	sw	a5,0(a4)
    80006af8:	02010113          	addi	sp,sp,32
    80006afc:	00001317          	auipc	t1,0x1
    80006b00:	4bc30067          	jr	1212(t1) # 80007fb8 <release>

0000000080006b04 <devintr>:
    80006b04:	142027f3          	csrr	a5,scause
    80006b08:	00000513          	li	a0,0
    80006b0c:	0007c463          	bltz	a5,80006b14 <devintr+0x10>
    80006b10:	00008067          	ret
    80006b14:	fe010113          	addi	sp,sp,-32
    80006b18:	00813823          	sd	s0,16(sp)
    80006b1c:	00113c23          	sd	ra,24(sp)
    80006b20:	00913423          	sd	s1,8(sp)
    80006b24:	02010413          	addi	s0,sp,32
    80006b28:	0ff7f713          	andi	a4,a5,255
    80006b2c:	00900693          	li	a3,9
    80006b30:	04d70c63          	beq	a4,a3,80006b88 <devintr+0x84>
    80006b34:	fff00713          	li	a4,-1
    80006b38:	03f71713          	slli	a4,a4,0x3f
    80006b3c:	00170713          	addi	a4,a4,1
    80006b40:	00e78c63          	beq	a5,a4,80006b58 <devintr+0x54>
    80006b44:	01813083          	ld	ra,24(sp)
    80006b48:	01013403          	ld	s0,16(sp)
    80006b4c:	00813483          	ld	s1,8(sp)
    80006b50:	02010113          	addi	sp,sp,32
    80006b54:	00008067          	ret
    80006b58:	00000097          	auipc	ra,0x0
    80006b5c:	c8c080e7          	jalr	-884(ra) # 800067e4 <cpuid>
    80006b60:	06050663          	beqz	a0,80006bcc <devintr+0xc8>
    80006b64:	144027f3          	csrr	a5,sip
    80006b68:	ffd7f793          	andi	a5,a5,-3
    80006b6c:	14479073          	csrw	sip,a5
    80006b70:	01813083          	ld	ra,24(sp)
    80006b74:	01013403          	ld	s0,16(sp)
    80006b78:	00813483          	ld	s1,8(sp)
    80006b7c:	00200513          	li	a0,2
    80006b80:	02010113          	addi	sp,sp,32
    80006b84:	00008067          	ret
    80006b88:	00000097          	auipc	ra,0x0
    80006b8c:	24c080e7          	jalr	588(ra) # 80006dd4 <plic_claim>
    80006b90:	00a00793          	li	a5,10
    80006b94:	00050493          	mv	s1,a0
    80006b98:	06f50663          	beq	a0,a5,80006c04 <devintr+0x100>
    80006b9c:	00100513          	li	a0,1
    80006ba0:	fa0482e3          	beqz	s1,80006b44 <devintr+0x40>
    80006ba4:	00048593          	mv	a1,s1
    80006ba8:	00003517          	auipc	a0,0x3
    80006bac:	c1050513          	addi	a0,a0,-1008 # 800097b8 <CONSOLE_STATUS+0x7a8>
    80006bb0:	00000097          	auipc	ra,0x0
    80006bb4:	668080e7          	jalr	1640(ra) # 80007218 <__printf>
    80006bb8:	00048513          	mv	a0,s1
    80006bbc:	00000097          	auipc	ra,0x0
    80006bc0:	250080e7          	jalr	592(ra) # 80006e0c <plic_complete>
    80006bc4:	00100513          	li	a0,1
    80006bc8:	f7dff06f          	j	80006b44 <devintr+0x40>
    80006bcc:	00006517          	auipc	a0,0x6
    80006bd0:	f8450513          	addi	a0,a0,-124 # 8000cb50 <tickslock>
    80006bd4:	00001097          	auipc	ra,0x1
    80006bd8:	318080e7          	jalr	792(ra) # 80007eec <acquire>
    80006bdc:	00005717          	auipc	a4,0x5
    80006be0:	e0870713          	addi	a4,a4,-504 # 8000b9e4 <ticks>
    80006be4:	00072783          	lw	a5,0(a4)
    80006be8:	00006517          	auipc	a0,0x6
    80006bec:	f6850513          	addi	a0,a0,-152 # 8000cb50 <tickslock>
    80006bf0:	0017879b          	addiw	a5,a5,1
    80006bf4:	00f72023          	sw	a5,0(a4)
    80006bf8:	00001097          	auipc	ra,0x1
    80006bfc:	3c0080e7          	jalr	960(ra) # 80007fb8 <release>
    80006c00:	f65ff06f          	j	80006b64 <devintr+0x60>
    80006c04:	00001097          	auipc	ra,0x1
    80006c08:	f1c080e7          	jalr	-228(ra) # 80007b20 <uartintr>
    80006c0c:	fadff06f          	j	80006bb8 <devintr+0xb4>

0000000080006c10 <kernelvec>:
    80006c10:	f0010113          	addi	sp,sp,-256
    80006c14:	00113023          	sd	ra,0(sp)
    80006c18:	00213423          	sd	sp,8(sp)
    80006c1c:	00313823          	sd	gp,16(sp)
    80006c20:	00413c23          	sd	tp,24(sp)
    80006c24:	02513023          	sd	t0,32(sp)
    80006c28:	02613423          	sd	t1,40(sp)
    80006c2c:	02713823          	sd	t2,48(sp)
    80006c30:	02813c23          	sd	s0,56(sp)
    80006c34:	04913023          	sd	s1,64(sp)
    80006c38:	04a13423          	sd	a0,72(sp)
    80006c3c:	04b13823          	sd	a1,80(sp)
    80006c40:	04c13c23          	sd	a2,88(sp)
    80006c44:	06d13023          	sd	a3,96(sp)
    80006c48:	06e13423          	sd	a4,104(sp)
    80006c4c:	06f13823          	sd	a5,112(sp)
    80006c50:	07013c23          	sd	a6,120(sp)
    80006c54:	09113023          	sd	a7,128(sp)
    80006c58:	09213423          	sd	s2,136(sp)
    80006c5c:	09313823          	sd	s3,144(sp)
    80006c60:	09413c23          	sd	s4,152(sp)
    80006c64:	0b513023          	sd	s5,160(sp)
    80006c68:	0b613423          	sd	s6,168(sp)
    80006c6c:	0b713823          	sd	s7,176(sp)
    80006c70:	0b813c23          	sd	s8,184(sp)
    80006c74:	0d913023          	sd	s9,192(sp)
    80006c78:	0da13423          	sd	s10,200(sp)
    80006c7c:	0db13823          	sd	s11,208(sp)
    80006c80:	0dc13c23          	sd	t3,216(sp)
    80006c84:	0fd13023          	sd	t4,224(sp)
    80006c88:	0fe13423          	sd	t5,232(sp)
    80006c8c:	0ff13823          	sd	t6,240(sp)
    80006c90:	cd5ff0ef          	jal	ra,80006964 <kerneltrap>
    80006c94:	00013083          	ld	ra,0(sp)
    80006c98:	00813103          	ld	sp,8(sp)
    80006c9c:	01013183          	ld	gp,16(sp)
    80006ca0:	02013283          	ld	t0,32(sp)
    80006ca4:	02813303          	ld	t1,40(sp)
    80006ca8:	03013383          	ld	t2,48(sp)
    80006cac:	03813403          	ld	s0,56(sp)
    80006cb0:	04013483          	ld	s1,64(sp)
    80006cb4:	04813503          	ld	a0,72(sp)
    80006cb8:	05013583          	ld	a1,80(sp)
    80006cbc:	05813603          	ld	a2,88(sp)
    80006cc0:	06013683          	ld	a3,96(sp)
    80006cc4:	06813703          	ld	a4,104(sp)
    80006cc8:	07013783          	ld	a5,112(sp)
    80006ccc:	07813803          	ld	a6,120(sp)
    80006cd0:	08013883          	ld	a7,128(sp)
    80006cd4:	08813903          	ld	s2,136(sp)
    80006cd8:	09013983          	ld	s3,144(sp)
    80006cdc:	09813a03          	ld	s4,152(sp)
    80006ce0:	0a013a83          	ld	s5,160(sp)
    80006ce4:	0a813b03          	ld	s6,168(sp)
    80006ce8:	0b013b83          	ld	s7,176(sp)
    80006cec:	0b813c03          	ld	s8,184(sp)
    80006cf0:	0c013c83          	ld	s9,192(sp)
    80006cf4:	0c813d03          	ld	s10,200(sp)
    80006cf8:	0d013d83          	ld	s11,208(sp)
    80006cfc:	0d813e03          	ld	t3,216(sp)
    80006d00:	0e013e83          	ld	t4,224(sp)
    80006d04:	0e813f03          	ld	t5,232(sp)
    80006d08:	0f013f83          	ld	t6,240(sp)
    80006d0c:	10010113          	addi	sp,sp,256
    80006d10:	10200073          	sret
    80006d14:	00000013          	nop
    80006d18:	00000013          	nop
    80006d1c:	00000013          	nop

0000000080006d20 <timervec>:
    80006d20:	34051573          	csrrw	a0,mscratch,a0
    80006d24:	00b53023          	sd	a1,0(a0)
    80006d28:	00c53423          	sd	a2,8(a0)
    80006d2c:	00d53823          	sd	a3,16(a0)
    80006d30:	01853583          	ld	a1,24(a0)
    80006d34:	02053603          	ld	a2,32(a0)
    80006d38:	0005b683          	ld	a3,0(a1)
    80006d3c:	00c686b3          	add	a3,a3,a2
    80006d40:	00d5b023          	sd	a3,0(a1)
    80006d44:	00200593          	li	a1,2
    80006d48:	14459073          	csrw	sip,a1
    80006d4c:	01053683          	ld	a3,16(a0)
    80006d50:	00853603          	ld	a2,8(a0)
    80006d54:	00053583          	ld	a1,0(a0)
    80006d58:	34051573          	csrrw	a0,mscratch,a0
    80006d5c:	30200073          	mret

0000000080006d60 <plicinit>:
    80006d60:	ff010113          	addi	sp,sp,-16
    80006d64:	00813423          	sd	s0,8(sp)
    80006d68:	01010413          	addi	s0,sp,16
    80006d6c:	00813403          	ld	s0,8(sp)
    80006d70:	0c0007b7          	lui	a5,0xc000
    80006d74:	00100713          	li	a4,1
    80006d78:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006d7c:	00e7a223          	sw	a4,4(a5)
    80006d80:	01010113          	addi	sp,sp,16
    80006d84:	00008067          	ret

0000000080006d88 <plicinithart>:
    80006d88:	ff010113          	addi	sp,sp,-16
    80006d8c:	00813023          	sd	s0,0(sp)
    80006d90:	00113423          	sd	ra,8(sp)
    80006d94:	01010413          	addi	s0,sp,16
    80006d98:	00000097          	auipc	ra,0x0
    80006d9c:	a4c080e7          	jalr	-1460(ra) # 800067e4 <cpuid>
    80006da0:	0085171b          	slliw	a4,a0,0x8
    80006da4:	0c0027b7          	lui	a5,0xc002
    80006da8:	00e787b3          	add	a5,a5,a4
    80006dac:	40200713          	li	a4,1026
    80006db0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006db4:	00813083          	ld	ra,8(sp)
    80006db8:	00013403          	ld	s0,0(sp)
    80006dbc:	00d5151b          	slliw	a0,a0,0xd
    80006dc0:	0c2017b7          	lui	a5,0xc201
    80006dc4:	00a78533          	add	a0,a5,a0
    80006dc8:	00052023          	sw	zero,0(a0)
    80006dcc:	01010113          	addi	sp,sp,16
    80006dd0:	00008067          	ret

0000000080006dd4 <plic_claim>:
    80006dd4:	ff010113          	addi	sp,sp,-16
    80006dd8:	00813023          	sd	s0,0(sp)
    80006ddc:	00113423          	sd	ra,8(sp)
    80006de0:	01010413          	addi	s0,sp,16
    80006de4:	00000097          	auipc	ra,0x0
    80006de8:	a00080e7          	jalr	-1536(ra) # 800067e4 <cpuid>
    80006dec:	00813083          	ld	ra,8(sp)
    80006df0:	00013403          	ld	s0,0(sp)
    80006df4:	00d5151b          	slliw	a0,a0,0xd
    80006df8:	0c2017b7          	lui	a5,0xc201
    80006dfc:	00a78533          	add	a0,a5,a0
    80006e00:	00452503          	lw	a0,4(a0)
    80006e04:	01010113          	addi	sp,sp,16
    80006e08:	00008067          	ret

0000000080006e0c <plic_complete>:
    80006e0c:	fe010113          	addi	sp,sp,-32
    80006e10:	00813823          	sd	s0,16(sp)
    80006e14:	00913423          	sd	s1,8(sp)
    80006e18:	00113c23          	sd	ra,24(sp)
    80006e1c:	02010413          	addi	s0,sp,32
    80006e20:	00050493          	mv	s1,a0
    80006e24:	00000097          	auipc	ra,0x0
    80006e28:	9c0080e7          	jalr	-1600(ra) # 800067e4 <cpuid>
    80006e2c:	01813083          	ld	ra,24(sp)
    80006e30:	01013403          	ld	s0,16(sp)
    80006e34:	00d5179b          	slliw	a5,a0,0xd
    80006e38:	0c201737          	lui	a4,0xc201
    80006e3c:	00f707b3          	add	a5,a4,a5
    80006e40:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006e44:	00813483          	ld	s1,8(sp)
    80006e48:	02010113          	addi	sp,sp,32
    80006e4c:	00008067          	ret

0000000080006e50 <consolewrite>:
    80006e50:	fb010113          	addi	sp,sp,-80
    80006e54:	04813023          	sd	s0,64(sp)
    80006e58:	04113423          	sd	ra,72(sp)
    80006e5c:	02913c23          	sd	s1,56(sp)
    80006e60:	03213823          	sd	s2,48(sp)
    80006e64:	03313423          	sd	s3,40(sp)
    80006e68:	03413023          	sd	s4,32(sp)
    80006e6c:	01513c23          	sd	s5,24(sp)
    80006e70:	05010413          	addi	s0,sp,80
    80006e74:	06c05c63          	blez	a2,80006eec <consolewrite+0x9c>
    80006e78:	00060993          	mv	s3,a2
    80006e7c:	00050a13          	mv	s4,a0
    80006e80:	00058493          	mv	s1,a1
    80006e84:	00000913          	li	s2,0
    80006e88:	fff00a93          	li	s5,-1
    80006e8c:	01c0006f          	j	80006ea8 <consolewrite+0x58>
    80006e90:	fbf44503          	lbu	a0,-65(s0)
    80006e94:	0019091b          	addiw	s2,s2,1
    80006e98:	00148493          	addi	s1,s1,1
    80006e9c:	00001097          	auipc	ra,0x1
    80006ea0:	a9c080e7          	jalr	-1380(ra) # 80007938 <uartputc>
    80006ea4:	03298063          	beq	s3,s2,80006ec4 <consolewrite+0x74>
    80006ea8:	00048613          	mv	a2,s1
    80006eac:	00100693          	li	a3,1
    80006eb0:	000a0593          	mv	a1,s4
    80006eb4:	fbf40513          	addi	a0,s0,-65
    80006eb8:	00000097          	auipc	ra,0x0
    80006ebc:	9e4080e7          	jalr	-1564(ra) # 8000689c <either_copyin>
    80006ec0:	fd5518e3          	bne	a0,s5,80006e90 <consolewrite+0x40>
    80006ec4:	04813083          	ld	ra,72(sp)
    80006ec8:	04013403          	ld	s0,64(sp)
    80006ecc:	03813483          	ld	s1,56(sp)
    80006ed0:	02813983          	ld	s3,40(sp)
    80006ed4:	02013a03          	ld	s4,32(sp)
    80006ed8:	01813a83          	ld	s5,24(sp)
    80006edc:	00090513          	mv	a0,s2
    80006ee0:	03013903          	ld	s2,48(sp)
    80006ee4:	05010113          	addi	sp,sp,80
    80006ee8:	00008067          	ret
    80006eec:	00000913          	li	s2,0
    80006ef0:	fd5ff06f          	j	80006ec4 <consolewrite+0x74>

0000000080006ef4 <consoleread>:
    80006ef4:	f9010113          	addi	sp,sp,-112
    80006ef8:	06813023          	sd	s0,96(sp)
    80006efc:	04913c23          	sd	s1,88(sp)
    80006f00:	05213823          	sd	s2,80(sp)
    80006f04:	05313423          	sd	s3,72(sp)
    80006f08:	05413023          	sd	s4,64(sp)
    80006f0c:	03513c23          	sd	s5,56(sp)
    80006f10:	03613823          	sd	s6,48(sp)
    80006f14:	03713423          	sd	s7,40(sp)
    80006f18:	03813023          	sd	s8,32(sp)
    80006f1c:	06113423          	sd	ra,104(sp)
    80006f20:	01913c23          	sd	s9,24(sp)
    80006f24:	07010413          	addi	s0,sp,112
    80006f28:	00060b93          	mv	s7,a2
    80006f2c:	00050913          	mv	s2,a0
    80006f30:	00058c13          	mv	s8,a1
    80006f34:	00060b1b          	sext.w	s6,a2
    80006f38:	00006497          	auipc	s1,0x6
    80006f3c:	c4048493          	addi	s1,s1,-960 # 8000cb78 <cons>
    80006f40:	00400993          	li	s3,4
    80006f44:	fff00a13          	li	s4,-1
    80006f48:	00a00a93          	li	s5,10
    80006f4c:	05705e63          	blez	s7,80006fa8 <consoleread+0xb4>
    80006f50:	09c4a703          	lw	a4,156(s1)
    80006f54:	0984a783          	lw	a5,152(s1)
    80006f58:	0007071b          	sext.w	a4,a4
    80006f5c:	08e78463          	beq	a5,a4,80006fe4 <consoleread+0xf0>
    80006f60:	07f7f713          	andi	a4,a5,127
    80006f64:	00e48733          	add	a4,s1,a4
    80006f68:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006f6c:	0017869b          	addiw	a3,a5,1
    80006f70:	08d4ac23          	sw	a3,152(s1)
    80006f74:	00070c9b          	sext.w	s9,a4
    80006f78:	0b370663          	beq	a4,s3,80007024 <consoleread+0x130>
    80006f7c:	00100693          	li	a3,1
    80006f80:	f9f40613          	addi	a2,s0,-97
    80006f84:	000c0593          	mv	a1,s8
    80006f88:	00090513          	mv	a0,s2
    80006f8c:	f8e40fa3          	sb	a4,-97(s0)
    80006f90:	00000097          	auipc	ra,0x0
    80006f94:	8c0080e7          	jalr	-1856(ra) # 80006850 <either_copyout>
    80006f98:	01450863          	beq	a0,s4,80006fa8 <consoleread+0xb4>
    80006f9c:	001c0c13          	addi	s8,s8,1
    80006fa0:	fffb8b9b          	addiw	s7,s7,-1
    80006fa4:	fb5c94e3          	bne	s9,s5,80006f4c <consoleread+0x58>
    80006fa8:	000b851b          	sext.w	a0,s7
    80006fac:	06813083          	ld	ra,104(sp)
    80006fb0:	06013403          	ld	s0,96(sp)
    80006fb4:	05813483          	ld	s1,88(sp)
    80006fb8:	05013903          	ld	s2,80(sp)
    80006fbc:	04813983          	ld	s3,72(sp)
    80006fc0:	04013a03          	ld	s4,64(sp)
    80006fc4:	03813a83          	ld	s5,56(sp)
    80006fc8:	02813b83          	ld	s7,40(sp)
    80006fcc:	02013c03          	ld	s8,32(sp)
    80006fd0:	01813c83          	ld	s9,24(sp)
    80006fd4:	40ab053b          	subw	a0,s6,a0
    80006fd8:	03013b03          	ld	s6,48(sp)
    80006fdc:	07010113          	addi	sp,sp,112
    80006fe0:	00008067          	ret
    80006fe4:	00001097          	auipc	ra,0x1
    80006fe8:	1d8080e7          	jalr	472(ra) # 800081bc <push_on>
    80006fec:	0984a703          	lw	a4,152(s1)
    80006ff0:	09c4a783          	lw	a5,156(s1)
    80006ff4:	0007879b          	sext.w	a5,a5
    80006ff8:	fef70ce3          	beq	a4,a5,80006ff0 <consoleread+0xfc>
    80006ffc:	00001097          	auipc	ra,0x1
    80007000:	234080e7          	jalr	564(ra) # 80008230 <pop_on>
    80007004:	0984a783          	lw	a5,152(s1)
    80007008:	07f7f713          	andi	a4,a5,127
    8000700c:	00e48733          	add	a4,s1,a4
    80007010:	01874703          	lbu	a4,24(a4)
    80007014:	0017869b          	addiw	a3,a5,1
    80007018:	08d4ac23          	sw	a3,152(s1)
    8000701c:	00070c9b          	sext.w	s9,a4
    80007020:	f5371ee3          	bne	a4,s3,80006f7c <consoleread+0x88>
    80007024:	000b851b          	sext.w	a0,s7
    80007028:	f96bf2e3          	bgeu	s7,s6,80006fac <consoleread+0xb8>
    8000702c:	08f4ac23          	sw	a5,152(s1)
    80007030:	f7dff06f          	j	80006fac <consoleread+0xb8>

0000000080007034 <consputc>:
    80007034:	10000793          	li	a5,256
    80007038:	00f50663          	beq	a0,a5,80007044 <consputc+0x10>
    8000703c:	00001317          	auipc	t1,0x1
    80007040:	9f430067          	jr	-1548(t1) # 80007a30 <uartputc_sync>
    80007044:	ff010113          	addi	sp,sp,-16
    80007048:	00113423          	sd	ra,8(sp)
    8000704c:	00813023          	sd	s0,0(sp)
    80007050:	01010413          	addi	s0,sp,16
    80007054:	00800513          	li	a0,8
    80007058:	00001097          	auipc	ra,0x1
    8000705c:	9d8080e7          	jalr	-1576(ra) # 80007a30 <uartputc_sync>
    80007060:	02000513          	li	a0,32
    80007064:	00001097          	auipc	ra,0x1
    80007068:	9cc080e7          	jalr	-1588(ra) # 80007a30 <uartputc_sync>
    8000706c:	00013403          	ld	s0,0(sp)
    80007070:	00813083          	ld	ra,8(sp)
    80007074:	00800513          	li	a0,8
    80007078:	01010113          	addi	sp,sp,16
    8000707c:	00001317          	auipc	t1,0x1
    80007080:	9b430067          	jr	-1612(t1) # 80007a30 <uartputc_sync>

0000000080007084 <consoleintr>:
    80007084:	fe010113          	addi	sp,sp,-32
    80007088:	00813823          	sd	s0,16(sp)
    8000708c:	00913423          	sd	s1,8(sp)
    80007090:	01213023          	sd	s2,0(sp)
    80007094:	00113c23          	sd	ra,24(sp)
    80007098:	02010413          	addi	s0,sp,32
    8000709c:	00006917          	auipc	s2,0x6
    800070a0:	adc90913          	addi	s2,s2,-1316 # 8000cb78 <cons>
    800070a4:	00050493          	mv	s1,a0
    800070a8:	00090513          	mv	a0,s2
    800070ac:	00001097          	auipc	ra,0x1
    800070b0:	e40080e7          	jalr	-448(ra) # 80007eec <acquire>
    800070b4:	02048c63          	beqz	s1,800070ec <consoleintr+0x68>
    800070b8:	0a092783          	lw	a5,160(s2)
    800070bc:	09892703          	lw	a4,152(s2)
    800070c0:	07f00693          	li	a3,127
    800070c4:	40e7873b          	subw	a4,a5,a4
    800070c8:	02e6e263          	bltu	a3,a4,800070ec <consoleintr+0x68>
    800070cc:	00d00713          	li	a4,13
    800070d0:	04e48063          	beq	s1,a4,80007110 <consoleintr+0x8c>
    800070d4:	07f7f713          	andi	a4,a5,127
    800070d8:	00e90733          	add	a4,s2,a4
    800070dc:	0017879b          	addiw	a5,a5,1
    800070e0:	0af92023          	sw	a5,160(s2)
    800070e4:	00970c23          	sb	s1,24(a4)
    800070e8:	08f92e23          	sw	a5,156(s2)
    800070ec:	01013403          	ld	s0,16(sp)
    800070f0:	01813083          	ld	ra,24(sp)
    800070f4:	00813483          	ld	s1,8(sp)
    800070f8:	00013903          	ld	s2,0(sp)
    800070fc:	00006517          	auipc	a0,0x6
    80007100:	a7c50513          	addi	a0,a0,-1412 # 8000cb78 <cons>
    80007104:	02010113          	addi	sp,sp,32
    80007108:	00001317          	auipc	t1,0x1
    8000710c:	eb030067          	jr	-336(t1) # 80007fb8 <release>
    80007110:	00a00493          	li	s1,10
    80007114:	fc1ff06f          	j	800070d4 <consoleintr+0x50>

0000000080007118 <consoleinit>:
    80007118:	fe010113          	addi	sp,sp,-32
    8000711c:	00113c23          	sd	ra,24(sp)
    80007120:	00813823          	sd	s0,16(sp)
    80007124:	00913423          	sd	s1,8(sp)
    80007128:	02010413          	addi	s0,sp,32
    8000712c:	00006497          	auipc	s1,0x6
    80007130:	a4c48493          	addi	s1,s1,-1460 # 8000cb78 <cons>
    80007134:	00048513          	mv	a0,s1
    80007138:	00002597          	auipc	a1,0x2
    8000713c:	6d858593          	addi	a1,a1,1752 # 80009810 <CONSOLE_STATUS+0x800>
    80007140:	00001097          	auipc	ra,0x1
    80007144:	d88080e7          	jalr	-632(ra) # 80007ec8 <initlock>
    80007148:	00000097          	auipc	ra,0x0
    8000714c:	7ac080e7          	jalr	1964(ra) # 800078f4 <uartinit>
    80007150:	01813083          	ld	ra,24(sp)
    80007154:	01013403          	ld	s0,16(sp)
    80007158:	00000797          	auipc	a5,0x0
    8000715c:	d9c78793          	addi	a5,a5,-612 # 80006ef4 <consoleread>
    80007160:	0af4bc23          	sd	a5,184(s1)
    80007164:	00000797          	auipc	a5,0x0
    80007168:	cec78793          	addi	a5,a5,-788 # 80006e50 <consolewrite>
    8000716c:	0cf4b023          	sd	a5,192(s1)
    80007170:	00813483          	ld	s1,8(sp)
    80007174:	02010113          	addi	sp,sp,32
    80007178:	00008067          	ret

000000008000717c <console_read>:
    8000717c:	ff010113          	addi	sp,sp,-16
    80007180:	00813423          	sd	s0,8(sp)
    80007184:	01010413          	addi	s0,sp,16
    80007188:	00813403          	ld	s0,8(sp)
    8000718c:	00006317          	auipc	t1,0x6
    80007190:	aa433303          	ld	t1,-1372(t1) # 8000cc30 <devsw+0x10>
    80007194:	01010113          	addi	sp,sp,16
    80007198:	00030067          	jr	t1

000000008000719c <console_write>:
    8000719c:	ff010113          	addi	sp,sp,-16
    800071a0:	00813423          	sd	s0,8(sp)
    800071a4:	01010413          	addi	s0,sp,16
    800071a8:	00813403          	ld	s0,8(sp)
    800071ac:	00006317          	auipc	t1,0x6
    800071b0:	a8c33303          	ld	t1,-1396(t1) # 8000cc38 <devsw+0x18>
    800071b4:	01010113          	addi	sp,sp,16
    800071b8:	00030067          	jr	t1

00000000800071bc <panic>:
    800071bc:	fe010113          	addi	sp,sp,-32
    800071c0:	00113c23          	sd	ra,24(sp)
    800071c4:	00813823          	sd	s0,16(sp)
    800071c8:	00913423          	sd	s1,8(sp)
    800071cc:	02010413          	addi	s0,sp,32
    800071d0:	00050493          	mv	s1,a0
    800071d4:	00002517          	auipc	a0,0x2
    800071d8:	64450513          	addi	a0,a0,1604 # 80009818 <CONSOLE_STATUS+0x808>
    800071dc:	00006797          	auipc	a5,0x6
    800071e0:	ae07ae23          	sw	zero,-1284(a5) # 8000ccd8 <pr+0x18>
    800071e4:	00000097          	auipc	ra,0x0
    800071e8:	034080e7          	jalr	52(ra) # 80007218 <__printf>
    800071ec:	00048513          	mv	a0,s1
    800071f0:	00000097          	auipc	ra,0x0
    800071f4:	028080e7          	jalr	40(ra) # 80007218 <__printf>
    800071f8:	00002517          	auipc	a0,0x2
    800071fc:	41050513          	addi	a0,a0,1040 # 80009608 <CONSOLE_STATUS+0x5f8>
    80007200:	00000097          	auipc	ra,0x0
    80007204:	018080e7          	jalr	24(ra) # 80007218 <__printf>
    80007208:	00100793          	li	a5,1
    8000720c:	00004717          	auipc	a4,0x4
    80007210:	7cf72e23          	sw	a5,2012(a4) # 8000b9e8 <panicked>
    80007214:	0000006f          	j	80007214 <panic+0x58>

0000000080007218 <__printf>:
    80007218:	f3010113          	addi	sp,sp,-208
    8000721c:	08813023          	sd	s0,128(sp)
    80007220:	07313423          	sd	s3,104(sp)
    80007224:	09010413          	addi	s0,sp,144
    80007228:	05813023          	sd	s8,64(sp)
    8000722c:	08113423          	sd	ra,136(sp)
    80007230:	06913c23          	sd	s1,120(sp)
    80007234:	07213823          	sd	s2,112(sp)
    80007238:	07413023          	sd	s4,96(sp)
    8000723c:	05513c23          	sd	s5,88(sp)
    80007240:	05613823          	sd	s6,80(sp)
    80007244:	05713423          	sd	s7,72(sp)
    80007248:	03913c23          	sd	s9,56(sp)
    8000724c:	03a13823          	sd	s10,48(sp)
    80007250:	03b13423          	sd	s11,40(sp)
    80007254:	00006317          	auipc	t1,0x6
    80007258:	a6c30313          	addi	t1,t1,-1428 # 8000ccc0 <pr>
    8000725c:	01832c03          	lw	s8,24(t1)
    80007260:	00b43423          	sd	a1,8(s0)
    80007264:	00c43823          	sd	a2,16(s0)
    80007268:	00d43c23          	sd	a3,24(s0)
    8000726c:	02e43023          	sd	a4,32(s0)
    80007270:	02f43423          	sd	a5,40(s0)
    80007274:	03043823          	sd	a6,48(s0)
    80007278:	03143c23          	sd	a7,56(s0)
    8000727c:	00050993          	mv	s3,a0
    80007280:	4a0c1663          	bnez	s8,8000772c <__printf+0x514>
    80007284:	60098c63          	beqz	s3,8000789c <__printf+0x684>
    80007288:	0009c503          	lbu	a0,0(s3)
    8000728c:	00840793          	addi	a5,s0,8
    80007290:	f6f43c23          	sd	a5,-136(s0)
    80007294:	00000493          	li	s1,0
    80007298:	22050063          	beqz	a0,800074b8 <__printf+0x2a0>
    8000729c:	00002a37          	lui	s4,0x2
    800072a0:	00018ab7          	lui	s5,0x18
    800072a4:	000f4b37          	lui	s6,0xf4
    800072a8:	00989bb7          	lui	s7,0x989
    800072ac:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800072b0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800072b4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800072b8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800072bc:	00148c9b          	addiw	s9,s1,1
    800072c0:	02500793          	li	a5,37
    800072c4:	01998933          	add	s2,s3,s9
    800072c8:	38f51263          	bne	a0,a5,8000764c <__printf+0x434>
    800072cc:	00094783          	lbu	a5,0(s2)
    800072d0:	00078c9b          	sext.w	s9,a5
    800072d4:	1e078263          	beqz	a5,800074b8 <__printf+0x2a0>
    800072d8:	0024849b          	addiw	s1,s1,2
    800072dc:	07000713          	li	a4,112
    800072e0:	00998933          	add	s2,s3,s1
    800072e4:	38e78a63          	beq	a5,a4,80007678 <__printf+0x460>
    800072e8:	20f76863          	bltu	a4,a5,800074f8 <__printf+0x2e0>
    800072ec:	42a78863          	beq	a5,a0,8000771c <__printf+0x504>
    800072f0:	06400713          	li	a4,100
    800072f4:	40e79663          	bne	a5,a4,80007700 <__printf+0x4e8>
    800072f8:	f7843783          	ld	a5,-136(s0)
    800072fc:	0007a603          	lw	a2,0(a5)
    80007300:	00878793          	addi	a5,a5,8
    80007304:	f6f43c23          	sd	a5,-136(s0)
    80007308:	42064a63          	bltz	a2,8000773c <__printf+0x524>
    8000730c:	00a00713          	li	a4,10
    80007310:	02e677bb          	remuw	a5,a2,a4
    80007314:	00002d97          	auipc	s11,0x2
    80007318:	52cd8d93          	addi	s11,s11,1324 # 80009840 <digits>
    8000731c:	00900593          	li	a1,9
    80007320:	0006051b          	sext.w	a0,a2
    80007324:	00000c93          	li	s9,0
    80007328:	02079793          	slli	a5,a5,0x20
    8000732c:	0207d793          	srli	a5,a5,0x20
    80007330:	00fd87b3          	add	a5,s11,a5
    80007334:	0007c783          	lbu	a5,0(a5)
    80007338:	02e656bb          	divuw	a3,a2,a4
    8000733c:	f8f40023          	sb	a5,-128(s0)
    80007340:	14c5d863          	bge	a1,a2,80007490 <__printf+0x278>
    80007344:	06300593          	li	a1,99
    80007348:	00100c93          	li	s9,1
    8000734c:	02e6f7bb          	remuw	a5,a3,a4
    80007350:	02079793          	slli	a5,a5,0x20
    80007354:	0207d793          	srli	a5,a5,0x20
    80007358:	00fd87b3          	add	a5,s11,a5
    8000735c:	0007c783          	lbu	a5,0(a5)
    80007360:	02e6d73b          	divuw	a4,a3,a4
    80007364:	f8f400a3          	sb	a5,-127(s0)
    80007368:	12a5f463          	bgeu	a1,a0,80007490 <__printf+0x278>
    8000736c:	00a00693          	li	a3,10
    80007370:	00900593          	li	a1,9
    80007374:	02d777bb          	remuw	a5,a4,a3
    80007378:	02079793          	slli	a5,a5,0x20
    8000737c:	0207d793          	srli	a5,a5,0x20
    80007380:	00fd87b3          	add	a5,s11,a5
    80007384:	0007c503          	lbu	a0,0(a5)
    80007388:	02d757bb          	divuw	a5,a4,a3
    8000738c:	f8a40123          	sb	a0,-126(s0)
    80007390:	48e5f263          	bgeu	a1,a4,80007814 <__printf+0x5fc>
    80007394:	06300513          	li	a0,99
    80007398:	02d7f5bb          	remuw	a1,a5,a3
    8000739c:	02059593          	slli	a1,a1,0x20
    800073a0:	0205d593          	srli	a1,a1,0x20
    800073a4:	00bd85b3          	add	a1,s11,a1
    800073a8:	0005c583          	lbu	a1,0(a1)
    800073ac:	02d7d7bb          	divuw	a5,a5,a3
    800073b0:	f8b401a3          	sb	a1,-125(s0)
    800073b4:	48e57263          	bgeu	a0,a4,80007838 <__printf+0x620>
    800073b8:	3e700513          	li	a0,999
    800073bc:	02d7f5bb          	remuw	a1,a5,a3
    800073c0:	02059593          	slli	a1,a1,0x20
    800073c4:	0205d593          	srli	a1,a1,0x20
    800073c8:	00bd85b3          	add	a1,s11,a1
    800073cc:	0005c583          	lbu	a1,0(a1)
    800073d0:	02d7d7bb          	divuw	a5,a5,a3
    800073d4:	f8b40223          	sb	a1,-124(s0)
    800073d8:	46e57663          	bgeu	a0,a4,80007844 <__printf+0x62c>
    800073dc:	02d7f5bb          	remuw	a1,a5,a3
    800073e0:	02059593          	slli	a1,a1,0x20
    800073e4:	0205d593          	srli	a1,a1,0x20
    800073e8:	00bd85b3          	add	a1,s11,a1
    800073ec:	0005c583          	lbu	a1,0(a1)
    800073f0:	02d7d7bb          	divuw	a5,a5,a3
    800073f4:	f8b402a3          	sb	a1,-123(s0)
    800073f8:	46ea7863          	bgeu	s4,a4,80007868 <__printf+0x650>
    800073fc:	02d7f5bb          	remuw	a1,a5,a3
    80007400:	02059593          	slli	a1,a1,0x20
    80007404:	0205d593          	srli	a1,a1,0x20
    80007408:	00bd85b3          	add	a1,s11,a1
    8000740c:	0005c583          	lbu	a1,0(a1)
    80007410:	02d7d7bb          	divuw	a5,a5,a3
    80007414:	f8b40323          	sb	a1,-122(s0)
    80007418:	3eeaf863          	bgeu	s5,a4,80007808 <__printf+0x5f0>
    8000741c:	02d7f5bb          	remuw	a1,a5,a3
    80007420:	02059593          	slli	a1,a1,0x20
    80007424:	0205d593          	srli	a1,a1,0x20
    80007428:	00bd85b3          	add	a1,s11,a1
    8000742c:	0005c583          	lbu	a1,0(a1)
    80007430:	02d7d7bb          	divuw	a5,a5,a3
    80007434:	f8b403a3          	sb	a1,-121(s0)
    80007438:	42eb7e63          	bgeu	s6,a4,80007874 <__printf+0x65c>
    8000743c:	02d7f5bb          	remuw	a1,a5,a3
    80007440:	02059593          	slli	a1,a1,0x20
    80007444:	0205d593          	srli	a1,a1,0x20
    80007448:	00bd85b3          	add	a1,s11,a1
    8000744c:	0005c583          	lbu	a1,0(a1)
    80007450:	02d7d7bb          	divuw	a5,a5,a3
    80007454:	f8b40423          	sb	a1,-120(s0)
    80007458:	42ebfc63          	bgeu	s7,a4,80007890 <__printf+0x678>
    8000745c:	02079793          	slli	a5,a5,0x20
    80007460:	0207d793          	srli	a5,a5,0x20
    80007464:	00fd8db3          	add	s11,s11,a5
    80007468:	000dc703          	lbu	a4,0(s11)
    8000746c:	00a00793          	li	a5,10
    80007470:	00900c93          	li	s9,9
    80007474:	f8e404a3          	sb	a4,-119(s0)
    80007478:	00065c63          	bgez	a2,80007490 <__printf+0x278>
    8000747c:	f9040713          	addi	a4,s0,-112
    80007480:	00f70733          	add	a4,a4,a5
    80007484:	02d00693          	li	a3,45
    80007488:	fed70823          	sb	a3,-16(a4)
    8000748c:	00078c93          	mv	s9,a5
    80007490:	f8040793          	addi	a5,s0,-128
    80007494:	01978cb3          	add	s9,a5,s9
    80007498:	f7f40d13          	addi	s10,s0,-129
    8000749c:	000cc503          	lbu	a0,0(s9)
    800074a0:	fffc8c93          	addi	s9,s9,-1
    800074a4:	00000097          	auipc	ra,0x0
    800074a8:	b90080e7          	jalr	-1136(ra) # 80007034 <consputc>
    800074ac:	ffac98e3          	bne	s9,s10,8000749c <__printf+0x284>
    800074b0:	00094503          	lbu	a0,0(s2)
    800074b4:	e00514e3          	bnez	a0,800072bc <__printf+0xa4>
    800074b8:	1a0c1663          	bnez	s8,80007664 <__printf+0x44c>
    800074bc:	08813083          	ld	ra,136(sp)
    800074c0:	08013403          	ld	s0,128(sp)
    800074c4:	07813483          	ld	s1,120(sp)
    800074c8:	07013903          	ld	s2,112(sp)
    800074cc:	06813983          	ld	s3,104(sp)
    800074d0:	06013a03          	ld	s4,96(sp)
    800074d4:	05813a83          	ld	s5,88(sp)
    800074d8:	05013b03          	ld	s6,80(sp)
    800074dc:	04813b83          	ld	s7,72(sp)
    800074e0:	04013c03          	ld	s8,64(sp)
    800074e4:	03813c83          	ld	s9,56(sp)
    800074e8:	03013d03          	ld	s10,48(sp)
    800074ec:	02813d83          	ld	s11,40(sp)
    800074f0:	0d010113          	addi	sp,sp,208
    800074f4:	00008067          	ret
    800074f8:	07300713          	li	a4,115
    800074fc:	1ce78a63          	beq	a5,a4,800076d0 <__printf+0x4b8>
    80007500:	07800713          	li	a4,120
    80007504:	1ee79e63          	bne	a5,a4,80007700 <__printf+0x4e8>
    80007508:	f7843783          	ld	a5,-136(s0)
    8000750c:	0007a703          	lw	a4,0(a5)
    80007510:	00878793          	addi	a5,a5,8
    80007514:	f6f43c23          	sd	a5,-136(s0)
    80007518:	28074263          	bltz	a4,8000779c <__printf+0x584>
    8000751c:	00002d97          	auipc	s11,0x2
    80007520:	324d8d93          	addi	s11,s11,804 # 80009840 <digits>
    80007524:	00f77793          	andi	a5,a4,15
    80007528:	00fd87b3          	add	a5,s11,a5
    8000752c:	0007c683          	lbu	a3,0(a5)
    80007530:	00f00613          	li	a2,15
    80007534:	0007079b          	sext.w	a5,a4
    80007538:	f8d40023          	sb	a3,-128(s0)
    8000753c:	0047559b          	srliw	a1,a4,0x4
    80007540:	0047569b          	srliw	a3,a4,0x4
    80007544:	00000c93          	li	s9,0
    80007548:	0ee65063          	bge	a2,a4,80007628 <__printf+0x410>
    8000754c:	00f6f693          	andi	a3,a3,15
    80007550:	00dd86b3          	add	a3,s11,a3
    80007554:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007558:	0087d79b          	srliw	a5,a5,0x8
    8000755c:	00100c93          	li	s9,1
    80007560:	f8d400a3          	sb	a3,-127(s0)
    80007564:	0cb67263          	bgeu	a2,a1,80007628 <__printf+0x410>
    80007568:	00f7f693          	andi	a3,a5,15
    8000756c:	00dd86b3          	add	a3,s11,a3
    80007570:	0006c583          	lbu	a1,0(a3)
    80007574:	00f00613          	li	a2,15
    80007578:	0047d69b          	srliw	a3,a5,0x4
    8000757c:	f8b40123          	sb	a1,-126(s0)
    80007580:	0047d593          	srli	a1,a5,0x4
    80007584:	28f67e63          	bgeu	a2,a5,80007820 <__printf+0x608>
    80007588:	00f6f693          	andi	a3,a3,15
    8000758c:	00dd86b3          	add	a3,s11,a3
    80007590:	0006c503          	lbu	a0,0(a3)
    80007594:	0087d813          	srli	a6,a5,0x8
    80007598:	0087d69b          	srliw	a3,a5,0x8
    8000759c:	f8a401a3          	sb	a0,-125(s0)
    800075a0:	28b67663          	bgeu	a2,a1,8000782c <__printf+0x614>
    800075a4:	00f6f693          	andi	a3,a3,15
    800075a8:	00dd86b3          	add	a3,s11,a3
    800075ac:	0006c583          	lbu	a1,0(a3)
    800075b0:	00c7d513          	srli	a0,a5,0xc
    800075b4:	00c7d69b          	srliw	a3,a5,0xc
    800075b8:	f8b40223          	sb	a1,-124(s0)
    800075bc:	29067a63          	bgeu	a2,a6,80007850 <__printf+0x638>
    800075c0:	00f6f693          	andi	a3,a3,15
    800075c4:	00dd86b3          	add	a3,s11,a3
    800075c8:	0006c583          	lbu	a1,0(a3)
    800075cc:	0107d813          	srli	a6,a5,0x10
    800075d0:	0107d69b          	srliw	a3,a5,0x10
    800075d4:	f8b402a3          	sb	a1,-123(s0)
    800075d8:	28a67263          	bgeu	a2,a0,8000785c <__printf+0x644>
    800075dc:	00f6f693          	andi	a3,a3,15
    800075e0:	00dd86b3          	add	a3,s11,a3
    800075e4:	0006c683          	lbu	a3,0(a3)
    800075e8:	0147d79b          	srliw	a5,a5,0x14
    800075ec:	f8d40323          	sb	a3,-122(s0)
    800075f0:	21067663          	bgeu	a2,a6,800077fc <__printf+0x5e4>
    800075f4:	02079793          	slli	a5,a5,0x20
    800075f8:	0207d793          	srli	a5,a5,0x20
    800075fc:	00fd8db3          	add	s11,s11,a5
    80007600:	000dc683          	lbu	a3,0(s11)
    80007604:	00800793          	li	a5,8
    80007608:	00700c93          	li	s9,7
    8000760c:	f8d403a3          	sb	a3,-121(s0)
    80007610:	00075c63          	bgez	a4,80007628 <__printf+0x410>
    80007614:	f9040713          	addi	a4,s0,-112
    80007618:	00f70733          	add	a4,a4,a5
    8000761c:	02d00693          	li	a3,45
    80007620:	fed70823          	sb	a3,-16(a4)
    80007624:	00078c93          	mv	s9,a5
    80007628:	f8040793          	addi	a5,s0,-128
    8000762c:	01978cb3          	add	s9,a5,s9
    80007630:	f7f40d13          	addi	s10,s0,-129
    80007634:	000cc503          	lbu	a0,0(s9)
    80007638:	fffc8c93          	addi	s9,s9,-1
    8000763c:	00000097          	auipc	ra,0x0
    80007640:	9f8080e7          	jalr	-1544(ra) # 80007034 <consputc>
    80007644:	ff9d18e3          	bne	s10,s9,80007634 <__printf+0x41c>
    80007648:	0100006f          	j	80007658 <__printf+0x440>
    8000764c:	00000097          	auipc	ra,0x0
    80007650:	9e8080e7          	jalr	-1560(ra) # 80007034 <consputc>
    80007654:	000c8493          	mv	s1,s9
    80007658:	00094503          	lbu	a0,0(s2)
    8000765c:	c60510e3          	bnez	a0,800072bc <__printf+0xa4>
    80007660:	e40c0ee3          	beqz	s8,800074bc <__printf+0x2a4>
    80007664:	00005517          	auipc	a0,0x5
    80007668:	65c50513          	addi	a0,a0,1628 # 8000ccc0 <pr>
    8000766c:	00001097          	auipc	ra,0x1
    80007670:	94c080e7          	jalr	-1716(ra) # 80007fb8 <release>
    80007674:	e49ff06f          	j	800074bc <__printf+0x2a4>
    80007678:	f7843783          	ld	a5,-136(s0)
    8000767c:	03000513          	li	a0,48
    80007680:	01000d13          	li	s10,16
    80007684:	00878713          	addi	a4,a5,8
    80007688:	0007bc83          	ld	s9,0(a5)
    8000768c:	f6e43c23          	sd	a4,-136(s0)
    80007690:	00000097          	auipc	ra,0x0
    80007694:	9a4080e7          	jalr	-1628(ra) # 80007034 <consputc>
    80007698:	07800513          	li	a0,120
    8000769c:	00000097          	auipc	ra,0x0
    800076a0:	998080e7          	jalr	-1640(ra) # 80007034 <consputc>
    800076a4:	00002d97          	auipc	s11,0x2
    800076a8:	19cd8d93          	addi	s11,s11,412 # 80009840 <digits>
    800076ac:	03ccd793          	srli	a5,s9,0x3c
    800076b0:	00fd87b3          	add	a5,s11,a5
    800076b4:	0007c503          	lbu	a0,0(a5)
    800076b8:	fffd0d1b          	addiw	s10,s10,-1
    800076bc:	004c9c93          	slli	s9,s9,0x4
    800076c0:	00000097          	auipc	ra,0x0
    800076c4:	974080e7          	jalr	-1676(ra) # 80007034 <consputc>
    800076c8:	fe0d12e3          	bnez	s10,800076ac <__printf+0x494>
    800076cc:	f8dff06f          	j	80007658 <__printf+0x440>
    800076d0:	f7843783          	ld	a5,-136(s0)
    800076d4:	0007bc83          	ld	s9,0(a5)
    800076d8:	00878793          	addi	a5,a5,8
    800076dc:	f6f43c23          	sd	a5,-136(s0)
    800076e0:	000c9a63          	bnez	s9,800076f4 <__printf+0x4dc>
    800076e4:	1080006f          	j	800077ec <__printf+0x5d4>
    800076e8:	001c8c93          	addi	s9,s9,1
    800076ec:	00000097          	auipc	ra,0x0
    800076f0:	948080e7          	jalr	-1720(ra) # 80007034 <consputc>
    800076f4:	000cc503          	lbu	a0,0(s9)
    800076f8:	fe0518e3          	bnez	a0,800076e8 <__printf+0x4d0>
    800076fc:	f5dff06f          	j	80007658 <__printf+0x440>
    80007700:	02500513          	li	a0,37
    80007704:	00000097          	auipc	ra,0x0
    80007708:	930080e7          	jalr	-1744(ra) # 80007034 <consputc>
    8000770c:	000c8513          	mv	a0,s9
    80007710:	00000097          	auipc	ra,0x0
    80007714:	924080e7          	jalr	-1756(ra) # 80007034 <consputc>
    80007718:	f41ff06f          	j	80007658 <__printf+0x440>
    8000771c:	02500513          	li	a0,37
    80007720:	00000097          	auipc	ra,0x0
    80007724:	914080e7          	jalr	-1772(ra) # 80007034 <consputc>
    80007728:	f31ff06f          	j	80007658 <__printf+0x440>
    8000772c:	00030513          	mv	a0,t1
    80007730:	00000097          	auipc	ra,0x0
    80007734:	7bc080e7          	jalr	1980(ra) # 80007eec <acquire>
    80007738:	b4dff06f          	j	80007284 <__printf+0x6c>
    8000773c:	40c0053b          	negw	a0,a2
    80007740:	00a00713          	li	a4,10
    80007744:	02e576bb          	remuw	a3,a0,a4
    80007748:	00002d97          	auipc	s11,0x2
    8000774c:	0f8d8d93          	addi	s11,s11,248 # 80009840 <digits>
    80007750:	ff700593          	li	a1,-9
    80007754:	02069693          	slli	a3,a3,0x20
    80007758:	0206d693          	srli	a3,a3,0x20
    8000775c:	00dd86b3          	add	a3,s11,a3
    80007760:	0006c683          	lbu	a3,0(a3)
    80007764:	02e557bb          	divuw	a5,a0,a4
    80007768:	f8d40023          	sb	a3,-128(s0)
    8000776c:	10b65e63          	bge	a2,a1,80007888 <__printf+0x670>
    80007770:	06300593          	li	a1,99
    80007774:	02e7f6bb          	remuw	a3,a5,a4
    80007778:	02069693          	slli	a3,a3,0x20
    8000777c:	0206d693          	srli	a3,a3,0x20
    80007780:	00dd86b3          	add	a3,s11,a3
    80007784:	0006c683          	lbu	a3,0(a3)
    80007788:	02e7d73b          	divuw	a4,a5,a4
    8000778c:	00200793          	li	a5,2
    80007790:	f8d400a3          	sb	a3,-127(s0)
    80007794:	bca5ece3          	bltu	a1,a0,8000736c <__printf+0x154>
    80007798:	ce5ff06f          	j	8000747c <__printf+0x264>
    8000779c:	40e007bb          	negw	a5,a4
    800077a0:	00002d97          	auipc	s11,0x2
    800077a4:	0a0d8d93          	addi	s11,s11,160 # 80009840 <digits>
    800077a8:	00f7f693          	andi	a3,a5,15
    800077ac:	00dd86b3          	add	a3,s11,a3
    800077b0:	0006c583          	lbu	a1,0(a3)
    800077b4:	ff100613          	li	a2,-15
    800077b8:	0047d69b          	srliw	a3,a5,0x4
    800077bc:	f8b40023          	sb	a1,-128(s0)
    800077c0:	0047d59b          	srliw	a1,a5,0x4
    800077c4:	0ac75e63          	bge	a4,a2,80007880 <__printf+0x668>
    800077c8:	00f6f693          	andi	a3,a3,15
    800077cc:	00dd86b3          	add	a3,s11,a3
    800077d0:	0006c603          	lbu	a2,0(a3)
    800077d4:	00f00693          	li	a3,15
    800077d8:	0087d79b          	srliw	a5,a5,0x8
    800077dc:	f8c400a3          	sb	a2,-127(s0)
    800077e0:	d8b6e4e3          	bltu	a3,a1,80007568 <__printf+0x350>
    800077e4:	00200793          	li	a5,2
    800077e8:	e2dff06f          	j	80007614 <__printf+0x3fc>
    800077ec:	00002c97          	auipc	s9,0x2
    800077f0:	034c8c93          	addi	s9,s9,52 # 80009820 <CONSOLE_STATUS+0x810>
    800077f4:	02800513          	li	a0,40
    800077f8:	ef1ff06f          	j	800076e8 <__printf+0x4d0>
    800077fc:	00700793          	li	a5,7
    80007800:	00600c93          	li	s9,6
    80007804:	e0dff06f          	j	80007610 <__printf+0x3f8>
    80007808:	00700793          	li	a5,7
    8000780c:	00600c93          	li	s9,6
    80007810:	c69ff06f          	j	80007478 <__printf+0x260>
    80007814:	00300793          	li	a5,3
    80007818:	00200c93          	li	s9,2
    8000781c:	c5dff06f          	j	80007478 <__printf+0x260>
    80007820:	00300793          	li	a5,3
    80007824:	00200c93          	li	s9,2
    80007828:	de9ff06f          	j	80007610 <__printf+0x3f8>
    8000782c:	00400793          	li	a5,4
    80007830:	00300c93          	li	s9,3
    80007834:	dddff06f          	j	80007610 <__printf+0x3f8>
    80007838:	00400793          	li	a5,4
    8000783c:	00300c93          	li	s9,3
    80007840:	c39ff06f          	j	80007478 <__printf+0x260>
    80007844:	00500793          	li	a5,5
    80007848:	00400c93          	li	s9,4
    8000784c:	c2dff06f          	j	80007478 <__printf+0x260>
    80007850:	00500793          	li	a5,5
    80007854:	00400c93          	li	s9,4
    80007858:	db9ff06f          	j	80007610 <__printf+0x3f8>
    8000785c:	00600793          	li	a5,6
    80007860:	00500c93          	li	s9,5
    80007864:	dadff06f          	j	80007610 <__printf+0x3f8>
    80007868:	00600793          	li	a5,6
    8000786c:	00500c93          	li	s9,5
    80007870:	c09ff06f          	j	80007478 <__printf+0x260>
    80007874:	00800793          	li	a5,8
    80007878:	00700c93          	li	s9,7
    8000787c:	bfdff06f          	j	80007478 <__printf+0x260>
    80007880:	00100793          	li	a5,1
    80007884:	d91ff06f          	j	80007614 <__printf+0x3fc>
    80007888:	00100793          	li	a5,1
    8000788c:	bf1ff06f          	j	8000747c <__printf+0x264>
    80007890:	00900793          	li	a5,9
    80007894:	00800c93          	li	s9,8
    80007898:	be1ff06f          	j	80007478 <__printf+0x260>
    8000789c:	00002517          	auipc	a0,0x2
    800078a0:	f8c50513          	addi	a0,a0,-116 # 80009828 <CONSOLE_STATUS+0x818>
    800078a4:	00000097          	auipc	ra,0x0
    800078a8:	918080e7          	jalr	-1768(ra) # 800071bc <panic>

00000000800078ac <printfinit>:
    800078ac:	fe010113          	addi	sp,sp,-32
    800078b0:	00813823          	sd	s0,16(sp)
    800078b4:	00913423          	sd	s1,8(sp)
    800078b8:	00113c23          	sd	ra,24(sp)
    800078bc:	02010413          	addi	s0,sp,32
    800078c0:	00005497          	auipc	s1,0x5
    800078c4:	40048493          	addi	s1,s1,1024 # 8000ccc0 <pr>
    800078c8:	00048513          	mv	a0,s1
    800078cc:	00002597          	auipc	a1,0x2
    800078d0:	f6c58593          	addi	a1,a1,-148 # 80009838 <CONSOLE_STATUS+0x828>
    800078d4:	00000097          	auipc	ra,0x0
    800078d8:	5f4080e7          	jalr	1524(ra) # 80007ec8 <initlock>
    800078dc:	01813083          	ld	ra,24(sp)
    800078e0:	01013403          	ld	s0,16(sp)
    800078e4:	0004ac23          	sw	zero,24(s1)
    800078e8:	00813483          	ld	s1,8(sp)
    800078ec:	02010113          	addi	sp,sp,32
    800078f0:	00008067          	ret

00000000800078f4 <uartinit>:
    800078f4:	ff010113          	addi	sp,sp,-16
    800078f8:	00813423          	sd	s0,8(sp)
    800078fc:	01010413          	addi	s0,sp,16
    80007900:	100007b7          	lui	a5,0x10000
    80007904:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007908:	f8000713          	li	a4,-128
    8000790c:	00e781a3          	sb	a4,3(a5)
    80007910:	00300713          	li	a4,3
    80007914:	00e78023          	sb	a4,0(a5)
    80007918:	000780a3          	sb	zero,1(a5)
    8000791c:	00e781a3          	sb	a4,3(a5)
    80007920:	00700693          	li	a3,7
    80007924:	00d78123          	sb	a3,2(a5)
    80007928:	00e780a3          	sb	a4,1(a5)
    8000792c:	00813403          	ld	s0,8(sp)
    80007930:	01010113          	addi	sp,sp,16
    80007934:	00008067          	ret

0000000080007938 <uartputc>:
    80007938:	00004797          	auipc	a5,0x4
    8000793c:	0b07a783          	lw	a5,176(a5) # 8000b9e8 <panicked>
    80007940:	00078463          	beqz	a5,80007948 <uartputc+0x10>
    80007944:	0000006f          	j	80007944 <uartputc+0xc>
    80007948:	fd010113          	addi	sp,sp,-48
    8000794c:	02813023          	sd	s0,32(sp)
    80007950:	00913c23          	sd	s1,24(sp)
    80007954:	01213823          	sd	s2,16(sp)
    80007958:	01313423          	sd	s3,8(sp)
    8000795c:	02113423          	sd	ra,40(sp)
    80007960:	03010413          	addi	s0,sp,48
    80007964:	00004917          	auipc	s2,0x4
    80007968:	08c90913          	addi	s2,s2,140 # 8000b9f0 <uart_tx_r>
    8000796c:	00093783          	ld	a5,0(s2)
    80007970:	00004497          	auipc	s1,0x4
    80007974:	08848493          	addi	s1,s1,136 # 8000b9f8 <uart_tx_w>
    80007978:	0004b703          	ld	a4,0(s1)
    8000797c:	02078693          	addi	a3,a5,32
    80007980:	00050993          	mv	s3,a0
    80007984:	02e69c63          	bne	a3,a4,800079bc <uartputc+0x84>
    80007988:	00001097          	auipc	ra,0x1
    8000798c:	834080e7          	jalr	-1996(ra) # 800081bc <push_on>
    80007990:	00093783          	ld	a5,0(s2)
    80007994:	0004b703          	ld	a4,0(s1)
    80007998:	02078793          	addi	a5,a5,32
    8000799c:	00e79463          	bne	a5,a4,800079a4 <uartputc+0x6c>
    800079a0:	0000006f          	j	800079a0 <uartputc+0x68>
    800079a4:	00001097          	auipc	ra,0x1
    800079a8:	88c080e7          	jalr	-1908(ra) # 80008230 <pop_on>
    800079ac:	00093783          	ld	a5,0(s2)
    800079b0:	0004b703          	ld	a4,0(s1)
    800079b4:	02078693          	addi	a3,a5,32
    800079b8:	fce688e3          	beq	a3,a4,80007988 <uartputc+0x50>
    800079bc:	01f77693          	andi	a3,a4,31
    800079c0:	00005597          	auipc	a1,0x5
    800079c4:	32058593          	addi	a1,a1,800 # 8000cce0 <uart_tx_buf>
    800079c8:	00d586b3          	add	a3,a1,a3
    800079cc:	00170713          	addi	a4,a4,1
    800079d0:	01368023          	sb	s3,0(a3)
    800079d4:	00e4b023          	sd	a4,0(s1)
    800079d8:	10000637          	lui	a2,0x10000
    800079dc:	02f71063          	bne	a4,a5,800079fc <uartputc+0xc4>
    800079e0:	0340006f          	j	80007a14 <uartputc+0xdc>
    800079e4:	00074703          	lbu	a4,0(a4)
    800079e8:	00f93023          	sd	a5,0(s2)
    800079ec:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800079f0:	00093783          	ld	a5,0(s2)
    800079f4:	0004b703          	ld	a4,0(s1)
    800079f8:	00f70e63          	beq	a4,a5,80007a14 <uartputc+0xdc>
    800079fc:	00564683          	lbu	a3,5(a2)
    80007a00:	01f7f713          	andi	a4,a5,31
    80007a04:	00e58733          	add	a4,a1,a4
    80007a08:	0206f693          	andi	a3,a3,32
    80007a0c:	00178793          	addi	a5,a5,1
    80007a10:	fc069ae3          	bnez	a3,800079e4 <uartputc+0xac>
    80007a14:	02813083          	ld	ra,40(sp)
    80007a18:	02013403          	ld	s0,32(sp)
    80007a1c:	01813483          	ld	s1,24(sp)
    80007a20:	01013903          	ld	s2,16(sp)
    80007a24:	00813983          	ld	s3,8(sp)
    80007a28:	03010113          	addi	sp,sp,48
    80007a2c:	00008067          	ret

0000000080007a30 <uartputc_sync>:
    80007a30:	ff010113          	addi	sp,sp,-16
    80007a34:	00813423          	sd	s0,8(sp)
    80007a38:	01010413          	addi	s0,sp,16
    80007a3c:	00004717          	auipc	a4,0x4
    80007a40:	fac72703          	lw	a4,-84(a4) # 8000b9e8 <panicked>
    80007a44:	02071663          	bnez	a4,80007a70 <uartputc_sync+0x40>
    80007a48:	00050793          	mv	a5,a0
    80007a4c:	100006b7          	lui	a3,0x10000
    80007a50:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007a54:	02077713          	andi	a4,a4,32
    80007a58:	fe070ce3          	beqz	a4,80007a50 <uartputc_sync+0x20>
    80007a5c:	0ff7f793          	andi	a5,a5,255
    80007a60:	00f68023          	sb	a5,0(a3)
    80007a64:	00813403          	ld	s0,8(sp)
    80007a68:	01010113          	addi	sp,sp,16
    80007a6c:	00008067          	ret
    80007a70:	0000006f          	j	80007a70 <uartputc_sync+0x40>

0000000080007a74 <uartstart>:
    80007a74:	ff010113          	addi	sp,sp,-16
    80007a78:	00813423          	sd	s0,8(sp)
    80007a7c:	01010413          	addi	s0,sp,16
    80007a80:	00004617          	auipc	a2,0x4
    80007a84:	f7060613          	addi	a2,a2,-144 # 8000b9f0 <uart_tx_r>
    80007a88:	00004517          	auipc	a0,0x4
    80007a8c:	f7050513          	addi	a0,a0,-144 # 8000b9f8 <uart_tx_w>
    80007a90:	00063783          	ld	a5,0(a2)
    80007a94:	00053703          	ld	a4,0(a0)
    80007a98:	04f70263          	beq	a4,a5,80007adc <uartstart+0x68>
    80007a9c:	100005b7          	lui	a1,0x10000
    80007aa0:	00005817          	auipc	a6,0x5
    80007aa4:	24080813          	addi	a6,a6,576 # 8000cce0 <uart_tx_buf>
    80007aa8:	01c0006f          	j	80007ac4 <uartstart+0x50>
    80007aac:	0006c703          	lbu	a4,0(a3)
    80007ab0:	00f63023          	sd	a5,0(a2)
    80007ab4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007ab8:	00063783          	ld	a5,0(a2)
    80007abc:	00053703          	ld	a4,0(a0)
    80007ac0:	00f70e63          	beq	a4,a5,80007adc <uartstart+0x68>
    80007ac4:	01f7f713          	andi	a4,a5,31
    80007ac8:	00e806b3          	add	a3,a6,a4
    80007acc:	0055c703          	lbu	a4,5(a1)
    80007ad0:	00178793          	addi	a5,a5,1
    80007ad4:	02077713          	andi	a4,a4,32
    80007ad8:	fc071ae3          	bnez	a4,80007aac <uartstart+0x38>
    80007adc:	00813403          	ld	s0,8(sp)
    80007ae0:	01010113          	addi	sp,sp,16
    80007ae4:	00008067          	ret

0000000080007ae8 <uartgetc>:
    80007ae8:	ff010113          	addi	sp,sp,-16
    80007aec:	00813423          	sd	s0,8(sp)
    80007af0:	01010413          	addi	s0,sp,16
    80007af4:	10000737          	lui	a4,0x10000
    80007af8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007afc:	0017f793          	andi	a5,a5,1
    80007b00:	00078c63          	beqz	a5,80007b18 <uartgetc+0x30>
    80007b04:	00074503          	lbu	a0,0(a4)
    80007b08:	0ff57513          	andi	a0,a0,255
    80007b0c:	00813403          	ld	s0,8(sp)
    80007b10:	01010113          	addi	sp,sp,16
    80007b14:	00008067          	ret
    80007b18:	fff00513          	li	a0,-1
    80007b1c:	ff1ff06f          	j	80007b0c <uartgetc+0x24>

0000000080007b20 <uartintr>:
    80007b20:	100007b7          	lui	a5,0x10000
    80007b24:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007b28:	0017f793          	andi	a5,a5,1
    80007b2c:	0a078463          	beqz	a5,80007bd4 <uartintr+0xb4>
    80007b30:	fe010113          	addi	sp,sp,-32
    80007b34:	00813823          	sd	s0,16(sp)
    80007b38:	00913423          	sd	s1,8(sp)
    80007b3c:	00113c23          	sd	ra,24(sp)
    80007b40:	02010413          	addi	s0,sp,32
    80007b44:	100004b7          	lui	s1,0x10000
    80007b48:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007b4c:	0ff57513          	andi	a0,a0,255
    80007b50:	fffff097          	auipc	ra,0xfffff
    80007b54:	534080e7          	jalr	1332(ra) # 80007084 <consoleintr>
    80007b58:	0054c783          	lbu	a5,5(s1)
    80007b5c:	0017f793          	andi	a5,a5,1
    80007b60:	fe0794e3          	bnez	a5,80007b48 <uartintr+0x28>
    80007b64:	00004617          	auipc	a2,0x4
    80007b68:	e8c60613          	addi	a2,a2,-372 # 8000b9f0 <uart_tx_r>
    80007b6c:	00004517          	auipc	a0,0x4
    80007b70:	e8c50513          	addi	a0,a0,-372 # 8000b9f8 <uart_tx_w>
    80007b74:	00063783          	ld	a5,0(a2)
    80007b78:	00053703          	ld	a4,0(a0)
    80007b7c:	04f70263          	beq	a4,a5,80007bc0 <uartintr+0xa0>
    80007b80:	100005b7          	lui	a1,0x10000
    80007b84:	00005817          	auipc	a6,0x5
    80007b88:	15c80813          	addi	a6,a6,348 # 8000cce0 <uart_tx_buf>
    80007b8c:	01c0006f          	j	80007ba8 <uartintr+0x88>
    80007b90:	0006c703          	lbu	a4,0(a3)
    80007b94:	00f63023          	sd	a5,0(a2)
    80007b98:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007b9c:	00063783          	ld	a5,0(a2)
    80007ba0:	00053703          	ld	a4,0(a0)
    80007ba4:	00f70e63          	beq	a4,a5,80007bc0 <uartintr+0xa0>
    80007ba8:	01f7f713          	andi	a4,a5,31
    80007bac:	00e806b3          	add	a3,a6,a4
    80007bb0:	0055c703          	lbu	a4,5(a1)
    80007bb4:	00178793          	addi	a5,a5,1
    80007bb8:	02077713          	andi	a4,a4,32
    80007bbc:	fc071ae3          	bnez	a4,80007b90 <uartintr+0x70>
    80007bc0:	01813083          	ld	ra,24(sp)
    80007bc4:	01013403          	ld	s0,16(sp)
    80007bc8:	00813483          	ld	s1,8(sp)
    80007bcc:	02010113          	addi	sp,sp,32
    80007bd0:	00008067          	ret
    80007bd4:	00004617          	auipc	a2,0x4
    80007bd8:	e1c60613          	addi	a2,a2,-484 # 8000b9f0 <uart_tx_r>
    80007bdc:	00004517          	auipc	a0,0x4
    80007be0:	e1c50513          	addi	a0,a0,-484 # 8000b9f8 <uart_tx_w>
    80007be4:	00063783          	ld	a5,0(a2)
    80007be8:	00053703          	ld	a4,0(a0)
    80007bec:	04f70263          	beq	a4,a5,80007c30 <uartintr+0x110>
    80007bf0:	100005b7          	lui	a1,0x10000
    80007bf4:	00005817          	auipc	a6,0x5
    80007bf8:	0ec80813          	addi	a6,a6,236 # 8000cce0 <uart_tx_buf>
    80007bfc:	01c0006f          	j	80007c18 <uartintr+0xf8>
    80007c00:	0006c703          	lbu	a4,0(a3)
    80007c04:	00f63023          	sd	a5,0(a2)
    80007c08:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007c0c:	00063783          	ld	a5,0(a2)
    80007c10:	00053703          	ld	a4,0(a0)
    80007c14:	02f70063          	beq	a4,a5,80007c34 <uartintr+0x114>
    80007c18:	01f7f713          	andi	a4,a5,31
    80007c1c:	00e806b3          	add	a3,a6,a4
    80007c20:	0055c703          	lbu	a4,5(a1)
    80007c24:	00178793          	addi	a5,a5,1
    80007c28:	02077713          	andi	a4,a4,32
    80007c2c:	fc071ae3          	bnez	a4,80007c00 <uartintr+0xe0>
    80007c30:	00008067          	ret
    80007c34:	00008067          	ret

0000000080007c38 <kinit>:
    80007c38:	fc010113          	addi	sp,sp,-64
    80007c3c:	02913423          	sd	s1,40(sp)
    80007c40:	fffff7b7          	lui	a5,0xfffff
    80007c44:	00006497          	auipc	s1,0x6
    80007c48:	0cb48493          	addi	s1,s1,203 # 8000dd0f <end+0xfff>
    80007c4c:	02813823          	sd	s0,48(sp)
    80007c50:	01313c23          	sd	s3,24(sp)
    80007c54:	00f4f4b3          	and	s1,s1,a5
    80007c58:	02113c23          	sd	ra,56(sp)
    80007c5c:	03213023          	sd	s2,32(sp)
    80007c60:	01413823          	sd	s4,16(sp)
    80007c64:	01513423          	sd	s5,8(sp)
    80007c68:	04010413          	addi	s0,sp,64
    80007c6c:	000017b7          	lui	a5,0x1
    80007c70:	01100993          	li	s3,17
    80007c74:	00f487b3          	add	a5,s1,a5
    80007c78:	01b99993          	slli	s3,s3,0x1b
    80007c7c:	06f9e063          	bltu	s3,a5,80007cdc <kinit+0xa4>
    80007c80:	00005a97          	auipc	s5,0x5
    80007c84:	090a8a93          	addi	s5,s5,144 # 8000cd10 <end>
    80007c88:	0754ec63          	bltu	s1,s5,80007d00 <kinit+0xc8>
    80007c8c:	0734fa63          	bgeu	s1,s3,80007d00 <kinit+0xc8>
    80007c90:	00088a37          	lui	s4,0x88
    80007c94:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007c98:	00004917          	auipc	s2,0x4
    80007c9c:	d6890913          	addi	s2,s2,-664 # 8000ba00 <kmem>
    80007ca0:	00ca1a13          	slli	s4,s4,0xc
    80007ca4:	0140006f          	j	80007cb8 <kinit+0x80>
    80007ca8:	000017b7          	lui	a5,0x1
    80007cac:	00f484b3          	add	s1,s1,a5
    80007cb0:	0554e863          	bltu	s1,s5,80007d00 <kinit+0xc8>
    80007cb4:	0534f663          	bgeu	s1,s3,80007d00 <kinit+0xc8>
    80007cb8:	00001637          	lui	a2,0x1
    80007cbc:	00100593          	li	a1,1
    80007cc0:	00048513          	mv	a0,s1
    80007cc4:	00000097          	auipc	ra,0x0
    80007cc8:	5e4080e7          	jalr	1508(ra) # 800082a8 <__memset>
    80007ccc:	00093783          	ld	a5,0(s2)
    80007cd0:	00f4b023          	sd	a5,0(s1)
    80007cd4:	00993023          	sd	s1,0(s2)
    80007cd8:	fd4498e3          	bne	s1,s4,80007ca8 <kinit+0x70>
    80007cdc:	03813083          	ld	ra,56(sp)
    80007ce0:	03013403          	ld	s0,48(sp)
    80007ce4:	02813483          	ld	s1,40(sp)
    80007ce8:	02013903          	ld	s2,32(sp)
    80007cec:	01813983          	ld	s3,24(sp)
    80007cf0:	01013a03          	ld	s4,16(sp)
    80007cf4:	00813a83          	ld	s5,8(sp)
    80007cf8:	04010113          	addi	sp,sp,64
    80007cfc:	00008067          	ret
    80007d00:	00002517          	auipc	a0,0x2
    80007d04:	b5850513          	addi	a0,a0,-1192 # 80009858 <digits+0x18>
    80007d08:	fffff097          	auipc	ra,0xfffff
    80007d0c:	4b4080e7          	jalr	1204(ra) # 800071bc <panic>

0000000080007d10 <freerange>:
    80007d10:	fc010113          	addi	sp,sp,-64
    80007d14:	000017b7          	lui	a5,0x1
    80007d18:	02913423          	sd	s1,40(sp)
    80007d1c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007d20:	009504b3          	add	s1,a0,s1
    80007d24:	fffff537          	lui	a0,0xfffff
    80007d28:	02813823          	sd	s0,48(sp)
    80007d2c:	02113c23          	sd	ra,56(sp)
    80007d30:	03213023          	sd	s2,32(sp)
    80007d34:	01313c23          	sd	s3,24(sp)
    80007d38:	01413823          	sd	s4,16(sp)
    80007d3c:	01513423          	sd	s5,8(sp)
    80007d40:	01613023          	sd	s6,0(sp)
    80007d44:	04010413          	addi	s0,sp,64
    80007d48:	00a4f4b3          	and	s1,s1,a0
    80007d4c:	00f487b3          	add	a5,s1,a5
    80007d50:	06f5e463          	bltu	a1,a5,80007db8 <freerange+0xa8>
    80007d54:	00005a97          	auipc	s5,0x5
    80007d58:	fbca8a93          	addi	s5,s5,-68 # 8000cd10 <end>
    80007d5c:	0954e263          	bltu	s1,s5,80007de0 <freerange+0xd0>
    80007d60:	01100993          	li	s3,17
    80007d64:	01b99993          	slli	s3,s3,0x1b
    80007d68:	0734fc63          	bgeu	s1,s3,80007de0 <freerange+0xd0>
    80007d6c:	00058a13          	mv	s4,a1
    80007d70:	00004917          	auipc	s2,0x4
    80007d74:	c9090913          	addi	s2,s2,-880 # 8000ba00 <kmem>
    80007d78:	00002b37          	lui	s6,0x2
    80007d7c:	0140006f          	j	80007d90 <freerange+0x80>
    80007d80:	000017b7          	lui	a5,0x1
    80007d84:	00f484b3          	add	s1,s1,a5
    80007d88:	0554ec63          	bltu	s1,s5,80007de0 <freerange+0xd0>
    80007d8c:	0534fa63          	bgeu	s1,s3,80007de0 <freerange+0xd0>
    80007d90:	00001637          	lui	a2,0x1
    80007d94:	00100593          	li	a1,1
    80007d98:	00048513          	mv	a0,s1
    80007d9c:	00000097          	auipc	ra,0x0
    80007da0:	50c080e7          	jalr	1292(ra) # 800082a8 <__memset>
    80007da4:	00093703          	ld	a4,0(s2)
    80007da8:	016487b3          	add	a5,s1,s6
    80007dac:	00e4b023          	sd	a4,0(s1)
    80007db0:	00993023          	sd	s1,0(s2)
    80007db4:	fcfa76e3          	bgeu	s4,a5,80007d80 <freerange+0x70>
    80007db8:	03813083          	ld	ra,56(sp)
    80007dbc:	03013403          	ld	s0,48(sp)
    80007dc0:	02813483          	ld	s1,40(sp)
    80007dc4:	02013903          	ld	s2,32(sp)
    80007dc8:	01813983          	ld	s3,24(sp)
    80007dcc:	01013a03          	ld	s4,16(sp)
    80007dd0:	00813a83          	ld	s5,8(sp)
    80007dd4:	00013b03          	ld	s6,0(sp)
    80007dd8:	04010113          	addi	sp,sp,64
    80007ddc:	00008067          	ret
    80007de0:	00002517          	auipc	a0,0x2
    80007de4:	a7850513          	addi	a0,a0,-1416 # 80009858 <digits+0x18>
    80007de8:	fffff097          	auipc	ra,0xfffff
    80007dec:	3d4080e7          	jalr	980(ra) # 800071bc <panic>

0000000080007df0 <kfree>:
    80007df0:	fe010113          	addi	sp,sp,-32
    80007df4:	00813823          	sd	s0,16(sp)
    80007df8:	00113c23          	sd	ra,24(sp)
    80007dfc:	00913423          	sd	s1,8(sp)
    80007e00:	02010413          	addi	s0,sp,32
    80007e04:	03451793          	slli	a5,a0,0x34
    80007e08:	04079c63          	bnez	a5,80007e60 <kfree+0x70>
    80007e0c:	00005797          	auipc	a5,0x5
    80007e10:	f0478793          	addi	a5,a5,-252 # 8000cd10 <end>
    80007e14:	00050493          	mv	s1,a0
    80007e18:	04f56463          	bltu	a0,a5,80007e60 <kfree+0x70>
    80007e1c:	01100793          	li	a5,17
    80007e20:	01b79793          	slli	a5,a5,0x1b
    80007e24:	02f57e63          	bgeu	a0,a5,80007e60 <kfree+0x70>
    80007e28:	00001637          	lui	a2,0x1
    80007e2c:	00100593          	li	a1,1
    80007e30:	00000097          	auipc	ra,0x0
    80007e34:	478080e7          	jalr	1144(ra) # 800082a8 <__memset>
    80007e38:	00004797          	auipc	a5,0x4
    80007e3c:	bc878793          	addi	a5,a5,-1080 # 8000ba00 <kmem>
    80007e40:	0007b703          	ld	a4,0(a5)
    80007e44:	01813083          	ld	ra,24(sp)
    80007e48:	01013403          	ld	s0,16(sp)
    80007e4c:	00e4b023          	sd	a4,0(s1)
    80007e50:	0097b023          	sd	s1,0(a5)
    80007e54:	00813483          	ld	s1,8(sp)
    80007e58:	02010113          	addi	sp,sp,32
    80007e5c:	00008067          	ret
    80007e60:	00002517          	auipc	a0,0x2
    80007e64:	9f850513          	addi	a0,a0,-1544 # 80009858 <digits+0x18>
    80007e68:	fffff097          	auipc	ra,0xfffff
    80007e6c:	354080e7          	jalr	852(ra) # 800071bc <panic>

0000000080007e70 <kalloc>:
    80007e70:	fe010113          	addi	sp,sp,-32
    80007e74:	00813823          	sd	s0,16(sp)
    80007e78:	00913423          	sd	s1,8(sp)
    80007e7c:	00113c23          	sd	ra,24(sp)
    80007e80:	02010413          	addi	s0,sp,32
    80007e84:	00004797          	auipc	a5,0x4
    80007e88:	b7c78793          	addi	a5,a5,-1156 # 8000ba00 <kmem>
    80007e8c:	0007b483          	ld	s1,0(a5)
    80007e90:	02048063          	beqz	s1,80007eb0 <kalloc+0x40>
    80007e94:	0004b703          	ld	a4,0(s1)
    80007e98:	00001637          	lui	a2,0x1
    80007e9c:	00500593          	li	a1,5
    80007ea0:	00048513          	mv	a0,s1
    80007ea4:	00e7b023          	sd	a4,0(a5)
    80007ea8:	00000097          	auipc	ra,0x0
    80007eac:	400080e7          	jalr	1024(ra) # 800082a8 <__memset>
    80007eb0:	01813083          	ld	ra,24(sp)
    80007eb4:	01013403          	ld	s0,16(sp)
    80007eb8:	00048513          	mv	a0,s1
    80007ebc:	00813483          	ld	s1,8(sp)
    80007ec0:	02010113          	addi	sp,sp,32
    80007ec4:	00008067          	ret

0000000080007ec8 <initlock>:
    80007ec8:	ff010113          	addi	sp,sp,-16
    80007ecc:	00813423          	sd	s0,8(sp)
    80007ed0:	01010413          	addi	s0,sp,16
    80007ed4:	00813403          	ld	s0,8(sp)
    80007ed8:	00b53423          	sd	a1,8(a0)
    80007edc:	00052023          	sw	zero,0(a0)
    80007ee0:	00053823          	sd	zero,16(a0)
    80007ee4:	01010113          	addi	sp,sp,16
    80007ee8:	00008067          	ret

0000000080007eec <acquire>:
    80007eec:	fe010113          	addi	sp,sp,-32
    80007ef0:	00813823          	sd	s0,16(sp)
    80007ef4:	00913423          	sd	s1,8(sp)
    80007ef8:	00113c23          	sd	ra,24(sp)
    80007efc:	01213023          	sd	s2,0(sp)
    80007f00:	02010413          	addi	s0,sp,32
    80007f04:	00050493          	mv	s1,a0
    80007f08:	10002973          	csrr	s2,sstatus
    80007f0c:	100027f3          	csrr	a5,sstatus
    80007f10:	ffd7f793          	andi	a5,a5,-3
    80007f14:	10079073          	csrw	sstatus,a5
    80007f18:	fffff097          	auipc	ra,0xfffff
    80007f1c:	8ec080e7          	jalr	-1812(ra) # 80006804 <mycpu>
    80007f20:	07852783          	lw	a5,120(a0)
    80007f24:	06078e63          	beqz	a5,80007fa0 <acquire+0xb4>
    80007f28:	fffff097          	auipc	ra,0xfffff
    80007f2c:	8dc080e7          	jalr	-1828(ra) # 80006804 <mycpu>
    80007f30:	07852783          	lw	a5,120(a0)
    80007f34:	0004a703          	lw	a4,0(s1)
    80007f38:	0017879b          	addiw	a5,a5,1
    80007f3c:	06f52c23          	sw	a5,120(a0)
    80007f40:	04071063          	bnez	a4,80007f80 <acquire+0x94>
    80007f44:	00100713          	li	a4,1
    80007f48:	00070793          	mv	a5,a4
    80007f4c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007f50:	0007879b          	sext.w	a5,a5
    80007f54:	fe079ae3          	bnez	a5,80007f48 <acquire+0x5c>
    80007f58:	0ff0000f          	fence
    80007f5c:	fffff097          	auipc	ra,0xfffff
    80007f60:	8a8080e7          	jalr	-1880(ra) # 80006804 <mycpu>
    80007f64:	01813083          	ld	ra,24(sp)
    80007f68:	01013403          	ld	s0,16(sp)
    80007f6c:	00a4b823          	sd	a0,16(s1)
    80007f70:	00013903          	ld	s2,0(sp)
    80007f74:	00813483          	ld	s1,8(sp)
    80007f78:	02010113          	addi	sp,sp,32
    80007f7c:	00008067          	ret
    80007f80:	0104b903          	ld	s2,16(s1)
    80007f84:	fffff097          	auipc	ra,0xfffff
    80007f88:	880080e7          	jalr	-1920(ra) # 80006804 <mycpu>
    80007f8c:	faa91ce3          	bne	s2,a0,80007f44 <acquire+0x58>
    80007f90:	00002517          	auipc	a0,0x2
    80007f94:	8d050513          	addi	a0,a0,-1840 # 80009860 <digits+0x20>
    80007f98:	fffff097          	auipc	ra,0xfffff
    80007f9c:	224080e7          	jalr	548(ra) # 800071bc <panic>
    80007fa0:	00195913          	srli	s2,s2,0x1
    80007fa4:	fffff097          	auipc	ra,0xfffff
    80007fa8:	860080e7          	jalr	-1952(ra) # 80006804 <mycpu>
    80007fac:	00197913          	andi	s2,s2,1
    80007fb0:	07252e23          	sw	s2,124(a0)
    80007fb4:	f75ff06f          	j	80007f28 <acquire+0x3c>

0000000080007fb8 <release>:
    80007fb8:	fe010113          	addi	sp,sp,-32
    80007fbc:	00813823          	sd	s0,16(sp)
    80007fc0:	00113c23          	sd	ra,24(sp)
    80007fc4:	00913423          	sd	s1,8(sp)
    80007fc8:	01213023          	sd	s2,0(sp)
    80007fcc:	02010413          	addi	s0,sp,32
    80007fd0:	00052783          	lw	a5,0(a0)
    80007fd4:	00079a63          	bnez	a5,80007fe8 <release+0x30>
    80007fd8:	00002517          	auipc	a0,0x2
    80007fdc:	89050513          	addi	a0,a0,-1904 # 80009868 <digits+0x28>
    80007fe0:	fffff097          	auipc	ra,0xfffff
    80007fe4:	1dc080e7          	jalr	476(ra) # 800071bc <panic>
    80007fe8:	01053903          	ld	s2,16(a0)
    80007fec:	00050493          	mv	s1,a0
    80007ff0:	fffff097          	auipc	ra,0xfffff
    80007ff4:	814080e7          	jalr	-2028(ra) # 80006804 <mycpu>
    80007ff8:	fea910e3          	bne	s2,a0,80007fd8 <release+0x20>
    80007ffc:	0004b823          	sd	zero,16(s1)
    80008000:	0ff0000f          	fence
    80008004:	0f50000f          	fence	iorw,ow
    80008008:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000800c:	ffffe097          	auipc	ra,0xffffe
    80008010:	7f8080e7          	jalr	2040(ra) # 80006804 <mycpu>
    80008014:	100027f3          	csrr	a5,sstatus
    80008018:	0027f793          	andi	a5,a5,2
    8000801c:	04079a63          	bnez	a5,80008070 <release+0xb8>
    80008020:	07852783          	lw	a5,120(a0)
    80008024:	02f05e63          	blez	a5,80008060 <release+0xa8>
    80008028:	fff7871b          	addiw	a4,a5,-1
    8000802c:	06e52c23          	sw	a4,120(a0)
    80008030:	00071c63          	bnez	a4,80008048 <release+0x90>
    80008034:	07c52783          	lw	a5,124(a0)
    80008038:	00078863          	beqz	a5,80008048 <release+0x90>
    8000803c:	100027f3          	csrr	a5,sstatus
    80008040:	0027e793          	ori	a5,a5,2
    80008044:	10079073          	csrw	sstatus,a5
    80008048:	01813083          	ld	ra,24(sp)
    8000804c:	01013403          	ld	s0,16(sp)
    80008050:	00813483          	ld	s1,8(sp)
    80008054:	00013903          	ld	s2,0(sp)
    80008058:	02010113          	addi	sp,sp,32
    8000805c:	00008067          	ret
    80008060:	00002517          	auipc	a0,0x2
    80008064:	82850513          	addi	a0,a0,-2008 # 80009888 <digits+0x48>
    80008068:	fffff097          	auipc	ra,0xfffff
    8000806c:	154080e7          	jalr	340(ra) # 800071bc <panic>
    80008070:	00002517          	auipc	a0,0x2
    80008074:	80050513          	addi	a0,a0,-2048 # 80009870 <digits+0x30>
    80008078:	fffff097          	auipc	ra,0xfffff
    8000807c:	144080e7          	jalr	324(ra) # 800071bc <panic>

0000000080008080 <holding>:
    80008080:	00052783          	lw	a5,0(a0)
    80008084:	00079663          	bnez	a5,80008090 <holding+0x10>
    80008088:	00000513          	li	a0,0
    8000808c:	00008067          	ret
    80008090:	fe010113          	addi	sp,sp,-32
    80008094:	00813823          	sd	s0,16(sp)
    80008098:	00913423          	sd	s1,8(sp)
    8000809c:	00113c23          	sd	ra,24(sp)
    800080a0:	02010413          	addi	s0,sp,32
    800080a4:	01053483          	ld	s1,16(a0)
    800080a8:	ffffe097          	auipc	ra,0xffffe
    800080ac:	75c080e7          	jalr	1884(ra) # 80006804 <mycpu>
    800080b0:	01813083          	ld	ra,24(sp)
    800080b4:	01013403          	ld	s0,16(sp)
    800080b8:	40a48533          	sub	a0,s1,a0
    800080bc:	00153513          	seqz	a0,a0
    800080c0:	00813483          	ld	s1,8(sp)
    800080c4:	02010113          	addi	sp,sp,32
    800080c8:	00008067          	ret

00000000800080cc <push_off>:
    800080cc:	fe010113          	addi	sp,sp,-32
    800080d0:	00813823          	sd	s0,16(sp)
    800080d4:	00113c23          	sd	ra,24(sp)
    800080d8:	00913423          	sd	s1,8(sp)
    800080dc:	02010413          	addi	s0,sp,32
    800080e0:	100024f3          	csrr	s1,sstatus
    800080e4:	100027f3          	csrr	a5,sstatus
    800080e8:	ffd7f793          	andi	a5,a5,-3
    800080ec:	10079073          	csrw	sstatus,a5
    800080f0:	ffffe097          	auipc	ra,0xffffe
    800080f4:	714080e7          	jalr	1812(ra) # 80006804 <mycpu>
    800080f8:	07852783          	lw	a5,120(a0)
    800080fc:	02078663          	beqz	a5,80008128 <push_off+0x5c>
    80008100:	ffffe097          	auipc	ra,0xffffe
    80008104:	704080e7          	jalr	1796(ra) # 80006804 <mycpu>
    80008108:	07852783          	lw	a5,120(a0)
    8000810c:	01813083          	ld	ra,24(sp)
    80008110:	01013403          	ld	s0,16(sp)
    80008114:	0017879b          	addiw	a5,a5,1
    80008118:	06f52c23          	sw	a5,120(a0)
    8000811c:	00813483          	ld	s1,8(sp)
    80008120:	02010113          	addi	sp,sp,32
    80008124:	00008067          	ret
    80008128:	0014d493          	srli	s1,s1,0x1
    8000812c:	ffffe097          	auipc	ra,0xffffe
    80008130:	6d8080e7          	jalr	1752(ra) # 80006804 <mycpu>
    80008134:	0014f493          	andi	s1,s1,1
    80008138:	06952e23          	sw	s1,124(a0)
    8000813c:	fc5ff06f          	j	80008100 <push_off+0x34>

0000000080008140 <pop_off>:
    80008140:	ff010113          	addi	sp,sp,-16
    80008144:	00813023          	sd	s0,0(sp)
    80008148:	00113423          	sd	ra,8(sp)
    8000814c:	01010413          	addi	s0,sp,16
    80008150:	ffffe097          	auipc	ra,0xffffe
    80008154:	6b4080e7          	jalr	1716(ra) # 80006804 <mycpu>
    80008158:	100027f3          	csrr	a5,sstatus
    8000815c:	0027f793          	andi	a5,a5,2
    80008160:	04079663          	bnez	a5,800081ac <pop_off+0x6c>
    80008164:	07852783          	lw	a5,120(a0)
    80008168:	02f05a63          	blez	a5,8000819c <pop_off+0x5c>
    8000816c:	fff7871b          	addiw	a4,a5,-1
    80008170:	06e52c23          	sw	a4,120(a0)
    80008174:	00071c63          	bnez	a4,8000818c <pop_off+0x4c>
    80008178:	07c52783          	lw	a5,124(a0)
    8000817c:	00078863          	beqz	a5,8000818c <pop_off+0x4c>
    80008180:	100027f3          	csrr	a5,sstatus
    80008184:	0027e793          	ori	a5,a5,2
    80008188:	10079073          	csrw	sstatus,a5
    8000818c:	00813083          	ld	ra,8(sp)
    80008190:	00013403          	ld	s0,0(sp)
    80008194:	01010113          	addi	sp,sp,16
    80008198:	00008067          	ret
    8000819c:	00001517          	auipc	a0,0x1
    800081a0:	6ec50513          	addi	a0,a0,1772 # 80009888 <digits+0x48>
    800081a4:	fffff097          	auipc	ra,0xfffff
    800081a8:	018080e7          	jalr	24(ra) # 800071bc <panic>
    800081ac:	00001517          	auipc	a0,0x1
    800081b0:	6c450513          	addi	a0,a0,1732 # 80009870 <digits+0x30>
    800081b4:	fffff097          	auipc	ra,0xfffff
    800081b8:	008080e7          	jalr	8(ra) # 800071bc <panic>

00000000800081bc <push_on>:
    800081bc:	fe010113          	addi	sp,sp,-32
    800081c0:	00813823          	sd	s0,16(sp)
    800081c4:	00113c23          	sd	ra,24(sp)
    800081c8:	00913423          	sd	s1,8(sp)
    800081cc:	02010413          	addi	s0,sp,32
    800081d0:	100024f3          	csrr	s1,sstatus
    800081d4:	100027f3          	csrr	a5,sstatus
    800081d8:	0027e793          	ori	a5,a5,2
    800081dc:	10079073          	csrw	sstatus,a5
    800081e0:	ffffe097          	auipc	ra,0xffffe
    800081e4:	624080e7          	jalr	1572(ra) # 80006804 <mycpu>
    800081e8:	07852783          	lw	a5,120(a0)
    800081ec:	02078663          	beqz	a5,80008218 <push_on+0x5c>
    800081f0:	ffffe097          	auipc	ra,0xffffe
    800081f4:	614080e7          	jalr	1556(ra) # 80006804 <mycpu>
    800081f8:	07852783          	lw	a5,120(a0)
    800081fc:	01813083          	ld	ra,24(sp)
    80008200:	01013403          	ld	s0,16(sp)
    80008204:	0017879b          	addiw	a5,a5,1
    80008208:	06f52c23          	sw	a5,120(a0)
    8000820c:	00813483          	ld	s1,8(sp)
    80008210:	02010113          	addi	sp,sp,32
    80008214:	00008067          	ret
    80008218:	0014d493          	srli	s1,s1,0x1
    8000821c:	ffffe097          	auipc	ra,0xffffe
    80008220:	5e8080e7          	jalr	1512(ra) # 80006804 <mycpu>
    80008224:	0014f493          	andi	s1,s1,1
    80008228:	06952e23          	sw	s1,124(a0)
    8000822c:	fc5ff06f          	j	800081f0 <push_on+0x34>

0000000080008230 <pop_on>:
    80008230:	ff010113          	addi	sp,sp,-16
    80008234:	00813023          	sd	s0,0(sp)
    80008238:	00113423          	sd	ra,8(sp)
    8000823c:	01010413          	addi	s0,sp,16
    80008240:	ffffe097          	auipc	ra,0xffffe
    80008244:	5c4080e7          	jalr	1476(ra) # 80006804 <mycpu>
    80008248:	100027f3          	csrr	a5,sstatus
    8000824c:	0027f793          	andi	a5,a5,2
    80008250:	04078463          	beqz	a5,80008298 <pop_on+0x68>
    80008254:	07852783          	lw	a5,120(a0)
    80008258:	02f05863          	blez	a5,80008288 <pop_on+0x58>
    8000825c:	fff7879b          	addiw	a5,a5,-1
    80008260:	06f52c23          	sw	a5,120(a0)
    80008264:	07853783          	ld	a5,120(a0)
    80008268:	00079863          	bnez	a5,80008278 <pop_on+0x48>
    8000826c:	100027f3          	csrr	a5,sstatus
    80008270:	ffd7f793          	andi	a5,a5,-3
    80008274:	10079073          	csrw	sstatus,a5
    80008278:	00813083          	ld	ra,8(sp)
    8000827c:	00013403          	ld	s0,0(sp)
    80008280:	01010113          	addi	sp,sp,16
    80008284:	00008067          	ret
    80008288:	00001517          	auipc	a0,0x1
    8000828c:	62850513          	addi	a0,a0,1576 # 800098b0 <digits+0x70>
    80008290:	fffff097          	auipc	ra,0xfffff
    80008294:	f2c080e7          	jalr	-212(ra) # 800071bc <panic>
    80008298:	00001517          	auipc	a0,0x1
    8000829c:	5f850513          	addi	a0,a0,1528 # 80009890 <digits+0x50>
    800082a0:	fffff097          	auipc	ra,0xfffff
    800082a4:	f1c080e7          	jalr	-228(ra) # 800071bc <panic>

00000000800082a8 <__memset>:
    800082a8:	ff010113          	addi	sp,sp,-16
    800082ac:	00813423          	sd	s0,8(sp)
    800082b0:	01010413          	addi	s0,sp,16
    800082b4:	1a060e63          	beqz	a2,80008470 <__memset+0x1c8>
    800082b8:	40a007b3          	neg	a5,a0
    800082bc:	0077f793          	andi	a5,a5,7
    800082c0:	00778693          	addi	a3,a5,7
    800082c4:	00b00813          	li	a6,11
    800082c8:	0ff5f593          	andi	a1,a1,255
    800082cc:	fff6071b          	addiw	a4,a2,-1
    800082d0:	1b06e663          	bltu	a3,a6,8000847c <__memset+0x1d4>
    800082d4:	1cd76463          	bltu	a4,a3,8000849c <__memset+0x1f4>
    800082d8:	1a078e63          	beqz	a5,80008494 <__memset+0x1ec>
    800082dc:	00b50023          	sb	a1,0(a0)
    800082e0:	00100713          	li	a4,1
    800082e4:	1ae78463          	beq	a5,a4,8000848c <__memset+0x1e4>
    800082e8:	00b500a3          	sb	a1,1(a0)
    800082ec:	00200713          	li	a4,2
    800082f0:	1ae78a63          	beq	a5,a4,800084a4 <__memset+0x1fc>
    800082f4:	00b50123          	sb	a1,2(a0)
    800082f8:	00300713          	li	a4,3
    800082fc:	18e78463          	beq	a5,a4,80008484 <__memset+0x1dc>
    80008300:	00b501a3          	sb	a1,3(a0)
    80008304:	00400713          	li	a4,4
    80008308:	1ae78263          	beq	a5,a4,800084ac <__memset+0x204>
    8000830c:	00b50223          	sb	a1,4(a0)
    80008310:	00500713          	li	a4,5
    80008314:	1ae78063          	beq	a5,a4,800084b4 <__memset+0x20c>
    80008318:	00b502a3          	sb	a1,5(a0)
    8000831c:	00700713          	li	a4,7
    80008320:	18e79e63          	bne	a5,a4,800084bc <__memset+0x214>
    80008324:	00b50323          	sb	a1,6(a0)
    80008328:	00700e93          	li	t4,7
    8000832c:	00859713          	slli	a4,a1,0x8
    80008330:	00e5e733          	or	a4,a1,a4
    80008334:	01059e13          	slli	t3,a1,0x10
    80008338:	01c76e33          	or	t3,a4,t3
    8000833c:	01859313          	slli	t1,a1,0x18
    80008340:	006e6333          	or	t1,t3,t1
    80008344:	02059893          	slli	a7,a1,0x20
    80008348:	40f60e3b          	subw	t3,a2,a5
    8000834c:	011368b3          	or	a7,t1,a7
    80008350:	02859813          	slli	a6,a1,0x28
    80008354:	0108e833          	or	a6,a7,a6
    80008358:	03059693          	slli	a3,a1,0x30
    8000835c:	003e589b          	srliw	a7,t3,0x3
    80008360:	00d866b3          	or	a3,a6,a3
    80008364:	03859713          	slli	a4,a1,0x38
    80008368:	00389813          	slli	a6,a7,0x3
    8000836c:	00f507b3          	add	a5,a0,a5
    80008370:	00e6e733          	or	a4,a3,a4
    80008374:	000e089b          	sext.w	a7,t3
    80008378:	00f806b3          	add	a3,a6,a5
    8000837c:	00e7b023          	sd	a4,0(a5)
    80008380:	00878793          	addi	a5,a5,8
    80008384:	fed79ce3          	bne	a5,a3,8000837c <__memset+0xd4>
    80008388:	ff8e7793          	andi	a5,t3,-8
    8000838c:	0007871b          	sext.w	a4,a5
    80008390:	01d787bb          	addw	a5,a5,t4
    80008394:	0ce88e63          	beq	a7,a4,80008470 <__memset+0x1c8>
    80008398:	00f50733          	add	a4,a0,a5
    8000839c:	00b70023          	sb	a1,0(a4)
    800083a0:	0017871b          	addiw	a4,a5,1
    800083a4:	0cc77663          	bgeu	a4,a2,80008470 <__memset+0x1c8>
    800083a8:	00e50733          	add	a4,a0,a4
    800083ac:	00b70023          	sb	a1,0(a4)
    800083b0:	0027871b          	addiw	a4,a5,2
    800083b4:	0ac77e63          	bgeu	a4,a2,80008470 <__memset+0x1c8>
    800083b8:	00e50733          	add	a4,a0,a4
    800083bc:	00b70023          	sb	a1,0(a4)
    800083c0:	0037871b          	addiw	a4,a5,3
    800083c4:	0ac77663          	bgeu	a4,a2,80008470 <__memset+0x1c8>
    800083c8:	00e50733          	add	a4,a0,a4
    800083cc:	00b70023          	sb	a1,0(a4)
    800083d0:	0047871b          	addiw	a4,a5,4
    800083d4:	08c77e63          	bgeu	a4,a2,80008470 <__memset+0x1c8>
    800083d8:	00e50733          	add	a4,a0,a4
    800083dc:	00b70023          	sb	a1,0(a4)
    800083e0:	0057871b          	addiw	a4,a5,5
    800083e4:	08c77663          	bgeu	a4,a2,80008470 <__memset+0x1c8>
    800083e8:	00e50733          	add	a4,a0,a4
    800083ec:	00b70023          	sb	a1,0(a4)
    800083f0:	0067871b          	addiw	a4,a5,6
    800083f4:	06c77e63          	bgeu	a4,a2,80008470 <__memset+0x1c8>
    800083f8:	00e50733          	add	a4,a0,a4
    800083fc:	00b70023          	sb	a1,0(a4)
    80008400:	0077871b          	addiw	a4,a5,7
    80008404:	06c77663          	bgeu	a4,a2,80008470 <__memset+0x1c8>
    80008408:	00e50733          	add	a4,a0,a4
    8000840c:	00b70023          	sb	a1,0(a4)
    80008410:	0087871b          	addiw	a4,a5,8
    80008414:	04c77e63          	bgeu	a4,a2,80008470 <__memset+0x1c8>
    80008418:	00e50733          	add	a4,a0,a4
    8000841c:	00b70023          	sb	a1,0(a4)
    80008420:	0097871b          	addiw	a4,a5,9
    80008424:	04c77663          	bgeu	a4,a2,80008470 <__memset+0x1c8>
    80008428:	00e50733          	add	a4,a0,a4
    8000842c:	00b70023          	sb	a1,0(a4)
    80008430:	00a7871b          	addiw	a4,a5,10
    80008434:	02c77e63          	bgeu	a4,a2,80008470 <__memset+0x1c8>
    80008438:	00e50733          	add	a4,a0,a4
    8000843c:	00b70023          	sb	a1,0(a4)
    80008440:	00b7871b          	addiw	a4,a5,11
    80008444:	02c77663          	bgeu	a4,a2,80008470 <__memset+0x1c8>
    80008448:	00e50733          	add	a4,a0,a4
    8000844c:	00b70023          	sb	a1,0(a4)
    80008450:	00c7871b          	addiw	a4,a5,12
    80008454:	00c77e63          	bgeu	a4,a2,80008470 <__memset+0x1c8>
    80008458:	00e50733          	add	a4,a0,a4
    8000845c:	00b70023          	sb	a1,0(a4)
    80008460:	00d7879b          	addiw	a5,a5,13
    80008464:	00c7f663          	bgeu	a5,a2,80008470 <__memset+0x1c8>
    80008468:	00f507b3          	add	a5,a0,a5
    8000846c:	00b78023          	sb	a1,0(a5)
    80008470:	00813403          	ld	s0,8(sp)
    80008474:	01010113          	addi	sp,sp,16
    80008478:	00008067          	ret
    8000847c:	00b00693          	li	a3,11
    80008480:	e55ff06f          	j	800082d4 <__memset+0x2c>
    80008484:	00300e93          	li	t4,3
    80008488:	ea5ff06f          	j	8000832c <__memset+0x84>
    8000848c:	00100e93          	li	t4,1
    80008490:	e9dff06f          	j	8000832c <__memset+0x84>
    80008494:	00000e93          	li	t4,0
    80008498:	e95ff06f          	j	8000832c <__memset+0x84>
    8000849c:	00000793          	li	a5,0
    800084a0:	ef9ff06f          	j	80008398 <__memset+0xf0>
    800084a4:	00200e93          	li	t4,2
    800084a8:	e85ff06f          	j	8000832c <__memset+0x84>
    800084ac:	00400e93          	li	t4,4
    800084b0:	e7dff06f          	j	8000832c <__memset+0x84>
    800084b4:	00500e93          	li	t4,5
    800084b8:	e75ff06f          	j	8000832c <__memset+0x84>
    800084bc:	00600e93          	li	t4,6
    800084c0:	e6dff06f          	j	8000832c <__memset+0x84>

00000000800084c4 <__memmove>:
    800084c4:	ff010113          	addi	sp,sp,-16
    800084c8:	00813423          	sd	s0,8(sp)
    800084cc:	01010413          	addi	s0,sp,16
    800084d0:	0e060863          	beqz	a2,800085c0 <__memmove+0xfc>
    800084d4:	fff6069b          	addiw	a3,a2,-1
    800084d8:	0006881b          	sext.w	a6,a3
    800084dc:	0ea5e863          	bltu	a1,a0,800085cc <__memmove+0x108>
    800084e0:	00758713          	addi	a4,a1,7
    800084e4:	00a5e7b3          	or	a5,a1,a0
    800084e8:	40a70733          	sub	a4,a4,a0
    800084ec:	0077f793          	andi	a5,a5,7
    800084f0:	00f73713          	sltiu	a4,a4,15
    800084f4:	00174713          	xori	a4,a4,1
    800084f8:	0017b793          	seqz	a5,a5
    800084fc:	00e7f7b3          	and	a5,a5,a4
    80008500:	10078863          	beqz	a5,80008610 <__memmove+0x14c>
    80008504:	00900793          	li	a5,9
    80008508:	1107f463          	bgeu	a5,a6,80008610 <__memmove+0x14c>
    8000850c:	0036581b          	srliw	a6,a2,0x3
    80008510:	fff8081b          	addiw	a6,a6,-1
    80008514:	02081813          	slli	a6,a6,0x20
    80008518:	01d85893          	srli	a7,a6,0x1d
    8000851c:	00858813          	addi	a6,a1,8
    80008520:	00058793          	mv	a5,a1
    80008524:	00050713          	mv	a4,a0
    80008528:	01088833          	add	a6,a7,a6
    8000852c:	0007b883          	ld	a7,0(a5)
    80008530:	00878793          	addi	a5,a5,8
    80008534:	00870713          	addi	a4,a4,8
    80008538:	ff173c23          	sd	a7,-8(a4)
    8000853c:	ff0798e3          	bne	a5,a6,8000852c <__memmove+0x68>
    80008540:	ff867713          	andi	a4,a2,-8
    80008544:	02071793          	slli	a5,a4,0x20
    80008548:	0207d793          	srli	a5,a5,0x20
    8000854c:	00f585b3          	add	a1,a1,a5
    80008550:	40e686bb          	subw	a3,a3,a4
    80008554:	00f507b3          	add	a5,a0,a5
    80008558:	06e60463          	beq	a2,a4,800085c0 <__memmove+0xfc>
    8000855c:	0005c703          	lbu	a4,0(a1)
    80008560:	00e78023          	sb	a4,0(a5)
    80008564:	04068e63          	beqz	a3,800085c0 <__memmove+0xfc>
    80008568:	0015c603          	lbu	a2,1(a1)
    8000856c:	00100713          	li	a4,1
    80008570:	00c780a3          	sb	a2,1(a5)
    80008574:	04e68663          	beq	a3,a4,800085c0 <__memmove+0xfc>
    80008578:	0025c603          	lbu	a2,2(a1)
    8000857c:	00200713          	li	a4,2
    80008580:	00c78123          	sb	a2,2(a5)
    80008584:	02e68e63          	beq	a3,a4,800085c0 <__memmove+0xfc>
    80008588:	0035c603          	lbu	a2,3(a1)
    8000858c:	00300713          	li	a4,3
    80008590:	00c781a3          	sb	a2,3(a5)
    80008594:	02e68663          	beq	a3,a4,800085c0 <__memmove+0xfc>
    80008598:	0045c603          	lbu	a2,4(a1)
    8000859c:	00400713          	li	a4,4
    800085a0:	00c78223          	sb	a2,4(a5)
    800085a4:	00e68e63          	beq	a3,a4,800085c0 <__memmove+0xfc>
    800085a8:	0055c603          	lbu	a2,5(a1)
    800085ac:	00500713          	li	a4,5
    800085b0:	00c782a3          	sb	a2,5(a5)
    800085b4:	00e68663          	beq	a3,a4,800085c0 <__memmove+0xfc>
    800085b8:	0065c703          	lbu	a4,6(a1)
    800085bc:	00e78323          	sb	a4,6(a5)
    800085c0:	00813403          	ld	s0,8(sp)
    800085c4:	01010113          	addi	sp,sp,16
    800085c8:	00008067          	ret
    800085cc:	02061713          	slli	a4,a2,0x20
    800085d0:	02075713          	srli	a4,a4,0x20
    800085d4:	00e587b3          	add	a5,a1,a4
    800085d8:	f0f574e3          	bgeu	a0,a5,800084e0 <__memmove+0x1c>
    800085dc:	02069613          	slli	a2,a3,0x20
    800085e0:	02065613          	srli	a2,a2,0x20
    800085e4:	fff64613          	not	a2,a2
    800085e8:	00e50733          	add	a4,a0,a4
    800085ec:	00c78633          	add	a2,a5,a2
    800085f0:	fff7c683          	lbu	a3,-1(a5)
    800085f4:	fff78793          	addi	a5,a5,-1
    800085f8:	fff70713          	addi	a4,a4,-1
    800085fc:	00d70023          	sb	a3,0(a4)
    80008600:	fec798e3          	bne	a5,a2,800085f0 <__memmove+0x12c>
    80008604:	00813403          	ld	s0,8(sp)
    80008608:	01010113          	addi	sp,sp,16
    8000860c:	00008067          	ret
    80008610:	02069713          	slli	a4,a3,0x20
    80008614:	02075713          	srli	a4,a4,0x20
    80008618:	00170713          	addi	a4,a4,1
    8000861c:	00e50733          	add	a4,a0,a4
    80008620:	00050793          	mv	a5,a0
    80008624:	0005c683          	lbu	a3,0(a1)
    80008628:	00178793          	addi	a5,a5,1
    8000862c:	00158593          	addi	a1,a1,1
    80008630:	fed78fa3          	sb	a3,-1(a5)
    80008634:	fee798e3          	bne	a5,a4,80008624 <__memmove+0x160>
    80008638:	f89ff06f          	j	800085c0 <__memmove+0xfc>

000000008000863c <__putc>:
    8000863c:	fe010113          	addi	sp,sp,-32
    80008640:	00813823          	sd	s0,16(sp)
    80008644:	00113c23          	sd	ra,24(sp)
    80008648:	02010413          	addi	s0,sp,32
    8000864c:	00050793          	mv	a5,a0
    80008650:	fef40593          	addi	a1,s0,-17
    80008654:	00100613          	li	a2,1
    80008658:	00000513          	li	a0,0
    8000865c:	fef407a3          	sb	a5,-17(s0)
    80008660:	fffff097          	auipc	ra,0xfffff
    80008664:	b3c080e7          	jalr	-1220(ra) # 8000719c <console_write>
    80008668:	01813083          	ld	ra,24(sp)
    8000866c:	01013403          	ld	s0,16(sp)
    80008670:	02010113          	addi	sp,sp,32
    80008674:	00008067          	ret

0000000080008678 <__getc>:
    80008678:	fe010113          	addi	sp,sp,-32
    8000867c:	00813823          	sd	s0,16(sp)
    80008680:	00113c23          	sd	ra,24(sp)
    80008684:	02010413          	addi	s0,sp,32
    80008688:	fe840593          	addi	a1,s0,-24
    8000868c:	00100613          	li	a2,1
    80008690:	00000513          	li	a0,0
    80008694:	fffff097          	auipc	ra,0xfffff
    80008698:	ae8080e7          	jalr	-1304(ra) # 8000717c <console_read>
    8000869c:	fe844503          	lbu	a0,-24(s0)
    800086a0:	01813083          	ld	ra,24(sp)
    800086a4:	01013403          	ld	s0,16(sp)
    800086a8:	02010113          	addi	sp,sp,32
    800086ac:	00008067          	ret

00000000800086b0 <console_handler>:
    800086b0:	fe010113          	addi	sp,sp,-32
    800086b4:	00813823          	sd	s0,16(sp)
    800086b8:	00113c23          	sd	ra,24(sp)
    800086bc:	00913423          	sd	s1,8(sp)
    800086c0:	02010413          	addi	s0,sp,32
    800086c4:	14202773          	csrr	a4,scause
    800086c8:	100027f3          	csrr	a5,sstatus
    800086cc:	0027f793          	andi	a5,a5,2
    800086d0:	06079e63          	bnez	a5,8000874c <console_handler+0x9c>
    800086d4:	00074c63          	bltz	a4,800086ec <console_handler+0x3c>
    800086d8:	01813083          	ld	ra,24(sp)
    800086dc:	01013403          	ld	s0,16(sp)
    800086e0:	00813483          	ld	s1,8(sp)
    800086e4:	02010113          	addi	sp,sp,32
    800086e8:	00008067          	ret
    800086ec:	0ff77713          	andi	a4,a4,255
    800086f0:	00900793          	li	a5,9
    800086f4:	fef712e3          	bne	a4,a5,800086d8 <console_handler+0x28>
    800086f8:	ffffe097          	auipc	ra,0xffffe
    800086fc:	6dc080e7          	jalr	1756(ra) # 80006dd4 <plic_claim>
    80008700:	00a00793          	li	a5,10
    80008704:	00050493          	mv	s1,a0
    80008708:	02f50c63          	beq	a0,a5,80008740 <console_handler+0x90>
    8000870c:	fc0506e3          	beqz	a0,800086d8 <console_handler+0x28>
    80008710:	00050593          	mv	a1,a0
    80008714:	00001517          	auipc	a0,0x1
    80008718:	0a450513          	addi	a0,a0,164 # 800097b8 <CONSOLE_STATUS+0x7a8>
    8000871c:	fffff097          	auipc	ra,0xfffff
    80008720:	afc080e7          	jalr	-1284(ra) # 80007218 <__printf>
    80008724:	01013403          	ld	s0,16(sp)
    80008728:	01813083          	ld	ra,24(sp)
    8000872c:	00048513          	mv	a0,s1
    80008730:	00813483          	ld	s1,8(sp)
    80008734:	02010113          	addi	sp,sp,32
    80008738:	ffffe317          	auipc	t1,0xffffe
    8000873c:	6d430067          	jr	1748(t1) # 80006e0c <plic_complete>
    80008740:	fffff097          	auipc	ra,0xfffff
    80008744:	3e0080e7          	jalr	992(ra) # 80007b20 <uartintr>
    80008748:	fddff06f          	j	80008724 <console_handler+0x74>
    8000874c:	00001517          	auipc	a0,0x1
    80008750:	16c50513          	addi	a0,a0,364 # 800098b8 <digits+0x78>
    80008754:	fffff097          	auipc	ra,0xfffff
    80008758:	a68080e7          	jalr	-1432(ra) # 800071bc <panic>

000000008000875c <__mem_free>:
    8000875c:	ff010113          	addi	sp,sp,-16
    80008760:	00813423          	sd	s0,8(sp)
    80008764:	01010413          	addi	s0,sp,16
    80008768:	00003597          	auipc	a1,0x3
    8000876c:	2a058593          	addi	a1,a1,672 # 8000ba08 <freep>
    80008770:	0005b783          	ld	a5,0(a1)
    80008774:	ff050693          	addi	a3,a0,-16
    80008778:	0007b703          	ld	a4,0(a5)
    8000877c:	00d7fc63          	bgeu	a5,a3,80008794 <__mem_free+0x38>
    80008780:	00e6ee63          	bltu	a3,a4,8000879c <__mem_free+0x40>
    80008784:	00e7fc63          	bgeu	a5,a4,8000879c <__mem_free+0x40>
    80008788:	00070793          	mv	a5,a4
    8000878c:	0007b703          	ld	a4,0(a5)
    80008790:	fed7e8e3          	bltu	a5,a3,80008780 <__mem_free+0x24>
    80008794:	fee7eae3          	bltu	a5,a4,80008788 <__mem_free+0x2c>
    80008798:	fee6f8e3          	bgeu	a3,a4,80008788 <__mem_free+0x2c>
    8000879c:	ff852803          	lw	a6,-8(a0)
    800087a0:	02081613          	slli	a2,a6,0x20
    800087a4:	01c65613          	srli	a2,a2,0x1c
    800087a8:	00c68633          	add	a2,a3,a2
    800087ac:	02c70a63          	beq	a4,a2,800087e0 <__mem_free+0x84>
    800087b0:	fee53823          	sd	a4,-16(a0)
    800087b4:	0087a503          	lw	a0,8(a5)
    800087b8:	02051613          	slli	a2,a0,0x20
    800087bc:	01c65613          	srli	a2,a2,0x1c
    800087c0:	00c78633          	add	a2,a5,a2
    800087c4:	04c68263          	beq	a3,a2,80008808 <__mem_free+0xac>
    800087c8:	00813403          	ld	s0,8(sp)
    800087cc:	00d7b023          	sd	a3,0(a5)
    800087d0:	00f5b023          	sd	a5,0(a1)
    800087d4:	00000513          	li	a0,0
    800087d8:	01010113          	addi	sp,sp,16
    800087dc:	00008067          	ret
    800087e0:	00872603          	lw	a2,8(a4)
    800087e4:	00073703          	ld	a4,0(a4)
    800087e8:	0106083b          	addw	a6,a2,a6
    800087ec:	ff052c23          	sw	a6,-8(a0)
    800087f0:	fee53823          	sd	a4,-16(a0)
    800087f4:	0087a503          	lw	a0,8(a5)
    800087f8:	02051613          	slli	a2,a0,0x20
    800087fc:	01c65613          	srli	a2,a2,0x1c
    80008800:	00c78633          	add	a2,a5,a2
    80008804:	fcc692e3          	bne	a3,a2,800087c8 <__mem_free+0x6c>
    80008808:	00813403          	ld	s0,8(sp)
    8000880c:	0105053b          	addw	a0,a0,a6
    80008810:	00a7a423          	sw	a0,8(a5)
    80008814:	00e7b023          	sd	a4,0(a5)
    80008818:	00f5b023          	sd	a5,0(a1)
    8000881c:	00000513          	li	a0,0
    80008820:	01010113          	addi	sp,sp,16
    80008824:	00008067          	ret

0000000080008828 <__mem_alloc>:
    80008828:	fc010113          	addi	sp,sp,-64
    8000882c:	02813823          	sd	s0,48(sp)
    80008830:	02913423          	sd	s1,40(sp)
    80008834:	03213023          	sd	s2,32(sp)
    80008838:	01513423          	sd	s5,8(sp)
    8000883c:	02113c23          	sd	ra,56(sp)
    80008840:	01313c23          	sd	s3,24(sp)
    80008844:	01413823          	sd	s4,16(sp)
    80008848:	01613023          	sd	s6,0(sp)
    8000884c:	04010413          	addi	s0,sp,64
    80008850:	00003a97          	auipc	s5,0x3
    80008854:	1b8a8a93          	addi	s5,s5,440 # 8000ba08 <freep>
    80008858:	00f50913          	addi	s2,a0,15
    8000885c:	000ab683          	ld	a3,0(s5)
    80008860:	00495913          	srli	s2,s2,0x4
    80008864:	0019049b          	addiw	s1,s2,1
    80008868:	00048913          	mv	s2,s1
    8000886c:	0c068c63          	beqz	a3,80008944 <__mem_alloc+0x11c>
    80008870:	0006b503          	ld	a0,0(a3)
    80008874:	00852703          	lw	a4,8(a0)
    80008878:	10977063          	bgeu	a4,s1,80008978 <__mem_alloc+0x150>
    8000887c:	000017b7          	lui	a5,0x1
    80008880:	0009099b          	sext.w	s3,s2
    80008884:	0af4e863          	bltu	s1,a5,80008934 <__mem_alloc+0x10c>
    80008888:	02099a13          	slli	s4,s3,0x20
    8000888c:	01ca5a13          	srli	s4,s4,0x1c
    80008890:	fff00b13          	li	s6,-1
    80008894:	0100006f          	j	800088a4 <__mem_alloc+0x7c>
    80008898:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000889c:	00852703          	lw	a4,8(a0)
    800088a0:	04977463          	bgeu	a4,s1,800088e8 <__mem_alloc+0xc0>
    800088a4:	00050793          	mv	a5,a0
    800088a8:	fea698e3          	bne	a3,a0,80008898 <__mem_alloc+0x70>
    800088ac:	000a0513          	mv	a0,s4
    800088b0:	00000097          	auipc	ra,0x0
    800088b4:	0d0080e7          	jalr	208(ra) # 80008980 <kvmincrease>
    800088b8:	00050793          	mv	a5,a0
    800088bc:	01050513          	addi	a0,a0,16
    800088c0:	07678e63          	beq	a5,s6,8000893c <__mem_alloc+0x114>
    800088c4:	0137a423          	sw	s3,8(a5)
    800088c8:	00000097          	auipc	ra,0x0
    800088cc:	e94080e7          	jalr	-364(ra) # 8000875c <__mem_free>
    800088d0:	000ab783          	ld	a5,0(s5)
    800088d4:	06078463          	beqz	a5,8000893c <__mem_alloc+0x114>
    800088d8:	0007b503          	ld	a0,0(a5)
    800088dc:	00078693          	mv	a3,a5
    800088e0:	00852703          	lw	a4,8(a0)
    800088e4:	fc9760e3          	bltu	a4,s1,800088a4 <__mem_alloc+0x7c>
    800088e8:	08e48263          	beq	s1,a4,8000896c <__mem_alloc+0x144>
    800088ec:	4127073b          	subw	a4,a4,s2
    800088f0:	02071693          	slli	a3,a4,0x20
    800088f4:	01c6d693          	srli	a3,a3,0x1c
    800088f8:	00e52423          	sw	a4,8(a0)
    800088fc:	00d50533          	add	a0,a0,a3
    80008900:	01252423          	sw	s2,8(a0)
    80008904:	00fab023          	sd	a5,0(s5)
    80008908:	01050513          	addi	a0,a0,16
    8000890c:	03813083          	ld	ra,56(sp)
    80008910:	03013403          	ld	s0,48(sp)
    80008914:	02813483          	ld	s1,40(sp)
    80008918:	02013903          	ld	s2,32(sp)
    8000891c:	01813983          	ld	s3,24(sp)
    80008920:	01013a03          	ld	s4,16(sp)
    80008924:	00813a83          	ld	s5,8(sp)
    80008928:	00013b03          	ld	s6,0(sp)
    8000892c:	04010113          	addi	sp,sp,64
    80008930:	00008067          	ret
    80008934:	000019b7          	lui	s3,0x1
    80008938:	f51ff06f          	j	80008888 <__mem_alloc+0x60>
    8000893c:	00000513          	li	a0,0
    80008940:	fcdff06f          	j	8000890c <__mem_alloc+0xe4>
    80008944:	00004797          	auipc	a5,0x4
    80008948:	3bc78793          	addi	a5,a5,956 # 8000cd00 <base>
    8000894c:	00078513          	mv	a0,a5
    80008950:	00fab023          	sd	a5,0(s5)
    80008954:	00f7b023          	sd	a5,0(a5)
    80008958:	00000713          	li	a4,0
    8000895c:	00004797          	auipc	a5,0x4
    80008960:	3a07a623          	sw	zero,940(a5) # 8000cd08 <base+0x8>
    80008964:	00050693          	mv	a3,a0
    80008968:	f11ff06f          	j	80008878 <__mem_alloc+0x50>
    8000896c:	00053703          	ld	a4,0(a0)
    80008970:	00e7b023          	sd	a4,0(a5)
    80008974:	f91ff06f          	j	80008904 <__mem_alloc+0xdc>
    80008978:	00068793          	mv	a5,a3
    8000897c:	f6dff06f          	j	800088e8 <__mem_alloc+0xc0>

0000000080008980 <kvmincrease>:
    80008980:	fe010113          	addi	sp,sp,-32
    80008984:	01213023          	sd	s2,0(sp)
    80008988:	00001937          	lui	s2,0x1
    8000898c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80008990:	00813823          	sd	s0,16(sp)
    80008994:	00113c23          	sd	ra,24(sp)
    80008998:	00913423          	sd	s1,8(sp)
    8000899c:	02010413          	addi	s0,sp,32
    800089a0:	01250933          	add	s2,a0,s2
    800089a4:	00c95913          	srli	s2,s2,0xc
    800089a8:	02090863          	beqz	s2,800089d8 <kvmincrease+0x58>
    800089ac:	00000493          	li	s1,0
    800089b0:	00148493          	addi	s1,s1,1
    800089b4:	fffff097          	auipc	ra,0xfffff
    800089b8:	4bc080e7          	jalr	1212(ra) # 80007e70 <kalloc>
    800089bc:	fe991ae3          	bne	s2,s1,800089b0 <kvmincrease+0x30>
    800089c0:	01813083          	ld	ra,24(sp)
    800089c4:	01013403          	ld	s0,16(sp)
    800089c8:	00813483          	ld	s1,8(sp)
    800089cc:	00013903          	ld	s2,0(sp)
    800089d0:	02010113          	addi	sp,sp,32
    800089d4:	00008067          	ret
    800089d8:	01813083          	ld	ra,24(sp)
    800089dc:	01013403          	ld	s0,16(sp)
    800089e0:	00813483          	ld	s1,8(sp)
    800089e4:	00013903          	ld	s2,0(sp)
    800089e8:	00000513          	li	a0,0
    800089ec:	02010113          	addi	sp,sp,32
    800089f0:	00008067          	ret
	...
