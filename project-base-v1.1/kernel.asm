
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	78013103          	ld	sp,1920(sp) # 8000b780 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	198060ef          	jal	ra,800061b4 <start>

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
    80001088:	469000ef          	jal	ra,80001cf0 <_ZN5Riscv13obradaprekidaEmmmmm>

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

0000000080001528 <_Z8sem_openPP4_semj>:

//-------------------------semafori
int sem_open(sem_t *handle, unsigned int init) {
    80001528:	ff010113          	addi	sp,sp,-16
    8000152c:	00113423          	sd	ra,8(sp)
    80001530:	00813023          	sd	s0,0(sp)
    80001534:	01010413          	addi	s0,sp,16
    return (int) syscall(SEM_OPEN, (uint64) handle, init);
    80001538:	00000713          	li	a4,0
    8000153c:	00000693          	li	a3,0
    80001540:	02059613          	slli	a2,a1,0x20
    80001544:	02065613          	srli	a2,a2,0x20
    80001548:	00050593          	mv	a1,a0
    8000154c:	02100513          	li	a0,33
    80001550:	00000097          	auipc	ra,0x0
    80001554:	d7c080e7          	jalr	-644(ra) # 800012cc <_Z7syscallmmmmm>
}
    80001558:	0005051b          	sext.w	a0,a0
    8000155c:	00813083          	ld	ra,8(sp)
    80001560:	00013403          	ld	s0,0(sp)
    80001564:	01010113          	addi	sp,sp,16
    80001568:	00008067          	ret

000000008000156c <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle) {
    8000156c:	ff010113          	addi	sp,sp,-16
    80001570:	00113423          	sd	ra,8(sp)
    80001574:	00813023          	sd	s0,0(sp)
    80001578:	01010413          	addi	s0,sp,16
    8000157c:	00050593          	mv	a1,a0
    return (int) syscall(SEM_OPEN, (uint64) handle);
    80001580:	00000713          	li	a4,0
    80001584:	00000693          	li	a3,0
    80001588:	00000613          	li	a2,0
    8000158c:	02100513          	li	a0,33
    80001590:	00000097          	auipc	ra,0x0
    80001594:	d3c080e7          	jalr	-708(ra) # 800012cc <_Z7syscallmmmmm>
}
    80001598:	0005051b          	sext.w	a0,a0
    8000159c:	00813083          	ld	ra,8(sp)
    800015a0:	00013403          	ld	s0,0(sp)
    800015a4:	01010113          	addi	sp,sp,16
    800015a8:	00008067          	ret

00000000800015ac <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id) {
    800015ac:	ff010113          	addi	sp,sp,-16
    800015b0:	00113423          	sd	ra,8(sp)
    800015b4:	00813023          	sd	s0,0(sp)
    800015b8:	01010413          	addi	s0,sp,16
    800015bc:	00050593          	mv	a1,a0
    return (int) syscall(SEM_WAIT, (uint64) id);
    800015c0:	00000713          	li	a4,0
    800015c4:	00000693          	li	a3,0
    800015c8:	00000613          	li	a2,0
    800015cc:	02300513          	li	a0,35
    800015d0:	00000097          	auipc	ra,0x0
    800015d4:	cfc080e7          	jalr	-772(ra) # 800012cc <_Z7syscallmmmmm>
}
    800015d8:	0005051b          	sext.w	a0,a0
    800015dc:	00813083          	ld	ra,8(sp)
    800015e0:	00013403          	ld	s0,0(sp)
    800015e4:	01010113          	addi	sp,sp,16
    800015e8:	00008067          	ret

00000000800015ec <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id) {
    800015ec:	ff010113          	addi	sp,sp,-16
    800015f0:	00113423          	sd	ra,8(sp)
    800015f4:	00813023          	sd	s0,0(sp)
    800015f8:	01010413          	addi	s0,sp,16
    800015fc:	00050593          	mv	a1,a0
    return (int) syscall(SEM_SIGNAL, (uint64) id);
    80001600:	00000713          	li	a4,0
    80001604:	00000693          	li	a3,0
    80001608:	00000613          	li	a2,0
    8000160c:	02400513          	li	a0,36
    80001610:	00000097          	auipc	ra,0x0
    80001614:	cbc080e7          	jalr	-836(ra) # 800012cc <_Z7syscallmmmmm>
}
    80001618:	0005051b          	sext.w	a0,a0
    8000161c:	00813083          	ld	ra,8(sp)
    80001620:	00013403          	ld	s0,0(sp)
    80001624:	01010113          	addi	sp,sp,16
    80001628:	00008067          	ret

000000008000162c <_Z11sem_trywaitP4_sem>:

int sem_trywait(sem_t id) {
    8000162c:	ff010113          	addi	sp,sp,-16
    80001630:	00113423          	sd	ra,8(sp)
    80001634:	00813023          	sd	s0,0(sp)
    80001638:	01010413          	addi	s0,sp,16
    8000163c:	00050593          	mv	a1,a0
    return (int) syscall(SEM_TRYWAIT, (uint64) id);
    80001640:	00000713          	li	a4,0
    80001644:	00000693          	li	a3,0
    80001648:	00000613          	li	a2,0
    8000164c:	02600513          	li	a0,38
    80001650:	00000097          	auipc	ra,0x0
    80001654:	c7c080e7          	jalr	-900(ra) # 800012cc <_Z7syscallmmmmm>
}
    80001658:	0005051b          	sext.w	a0,a0
    8000165c:	00813083          	ld	ra,8(sp)
    80001660:	00013403          	ld	s0,0(sp)
    80001664:	01010113          	addi	sp,sp,16
    80001668:	00008067          	ret

000000008000166c <_Z4getcv>:

//-------------------------------------
char getc() {
    8000166c:	ff010113          	addi	sp,sp,-16
    80001670:	00113423          	sd	ra,8(sp)
    80001674:	00813023          	sd	s0,0(sp)
    80001678:	01010413          	addi	s0,sp,16
    return syscall(GETC);
    8000167c:	00000713          	li	a4,0
    80001680:	00000693          	li	a3,0
    80001684:	00000613          	li	a2,0
    80001688:	00000593          	li	a1,0
    8000168c:	04100513          	li	a0,65
    80001690:	00000097          	auipc	ra,0x0
    80001694:	c3c080e7          	jalr	-964(ra) # 800012cc <_Z7syscallmmmmm>
}
    80001698:	0ff57513          	andi	a0,a0,255
    8000169c:	00813083          	ld	ra,8(sp)
    800016a0:	00013403          	ld	s0,0(sp)
    800016a4:	01010113          	addi	sp,sp,16
    800016a8:	00008067          	ret

00000000800016ac <_Z4putcc>:

void putc(char c) {
    800016ac:	ff010113          	addi	sp,sp,-16
    800016b0:	00113423          	sd	ra,8(sp)
    800016b4:	00813023          	sd	s0,0(sp)
    800016b8:	01010413          	addi	s0,sp,16
    800016bc:	00050593          	mv	a1,a0
    syscall(PUTC, c);
    800016c0:	00000713          	li	a4,0
    800016c4:	00000693          	li	a3,0
    800016c8:	00000613          	li	a2,0
    800016cc:	04200513          	li	a0,66
    800016d0:	00000097          	auipc	ra,0x0
    800016d4:	bfc080e7          	jalr	-1028(ra) # 800012cc <_Z7syscallmmmmm>
}
    800016d8:	00813083          	ld	ra,8(sp)
    800016dc:	00013403          	ld	s0,0(sp)
    800016e0:	01010113          	addi	sp,sp,16
    800016e4:	00008067          	ret

00000000800016e8 <_Z13sem_timedwaitP4_semm>:


int sem_timedwait(sem_t, time_t) {
    800016e8:	ff010113          	addi	sp,sp,-16
    800016ec:	00813423          	sd	s0,8(sp)
    800016f0:	01010413          	addi	s0,sp,16
    return 0;
}
    800016f4:	00000513          	li	a0,0
    800016f8:	00813403          	ld	s0,8(sp)
    800016fc:	01010113          	addi	sp,sp,16
    80001700:	00008067          	ret

0000000080001704 <_Z10time_sleepm>:

int time_sleep(time_t) {
    80001704:	ff010113          	addi	sp,sp,-16
    80001708:	00813423          	sd	s0,8(sp)
    8000170c:	01010413          	addi	s0,sp,16
    return 0;
    80001710:	00000513          	li	a0,0
    80001714:	00813403          	ld	s0,8(sp)
    80001718:	01010113          	addi	sp,sp,16
    8000171c:	00008067          	ret

0000000080001720 <main>:
    }
private:
    char letter;
};

int main() {
    80001720:	e3010113          	addi	sp,sp,-464
    80001724:	1c113423          	sd	ra,456(sp)
    80001728:	1c813023          	sd	s0,448(sp)
    8000172c:	1a913c23          	sd	s1,440(sp)
    80001730:	1b213823          	sd	s2,432(sp)
    80001734:	1b313423          	sd	s3,424(sp)
    80001738:	1d010413          	addi	s0,sp,464
    MemoryAllocator::init();
    8000173c:	00001097          	auipc	ra,0x1
    80001740:	010080e7          	jalr	16(ra) # 8000274c <_ZN15MemoryAllocator4initEv>
    Riscv::w_stvec((uint64) rutina);// upis adrese prekidne rutinina
    80001744:	0000a797          	auipc	a5,0xa
    80001748:	02c7b783          	ld	a5,44(a5) # 8000b770 <_GLOBAL_OFFSET_TABLE_+0x8>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    8000174c:	10579073          	csrw	stvec,a5
    thread_t main_handle;
    setMaxThreads(2);
    80001750:	00200513          	li	a0,2
    80001754:	00000097          	auipc	ra,0x0
    80001758:	d5c080e7          	jalr	-676(ra) # 800014b0 <_Z13setMaxThreadsi>
    thread_create(&main_handle, nullptr, nullptr);
    8000175c:	00000613          	li	a2,0
    80001760:	00000593          	li	a1,0
    80001764:	fc840513          	addi	a0,s0,-56
    80001768:	00000097          	auipc	ra,0x0
    8000176c:	c10080e7          	jalr	-1008(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
//    thread_t um_handle;
//    thread_create(&um_handle, reinterpret_cast<void (*)(void *)>(userMain), nullptr);
//    thread_join(um_handle);
    Thread* thr[50];
    for (int i = 0; i < 50; i++) {
    80001770:	00000913          	li	s2,0
    80001774:	0280006f          	j	8000179c <main+0x7c>
    Thread1(char letter) : Thread() {
    80001778:	0000a797          	auipc	a5,0xa
    8000177c:	db878793          	addi	a5,a5,-584 # 8000b530 <_ZTV7Thread1+0x10>
    80001780:	00f4b023          	sd	a5,0(s1)
        this->letter = letter;
    80001784:	03348023          	sb	s3,32(s1)
        thr[i] = new Thread1('A' + i);
    80001788:	00391793          	slli	a5,s2,0x3
    8000178c:	fd040713          	addi	a4,s0,-48
    80001790:	00f707b3          	add	a5,a4,a5
    80001794:	e697b423          	sd	s1,-408(a5)
    for (int i = 0; i < 50; i++) {
    80001798:	0019091b          	addiw	s2,s2,1
    8000179c:	03100793          	li	a5,49
    800017a0:	0327c463          	blt	a5,s2,800017c8 <main+0xa8>
        thr[i] = new Thread1('A' + i);
    800017a4:	02800513          	li	a0,40
    800017a8:	00000097          	auipc	ra,0x0
    800017ac:	210080e7          	jalr	528(ra) # 800019b8 <_Znwm>
    800017b0:	00050493          	mv	s1,a0
    800017b4:	0419099b          	addiw	s3,s2,65
    800017b8:	0ff9f993          	andi	s3,s3,255
    Thread1(char letter) : Thread() {
    800017bc:	00000097          	auipc	ra,0x0
    800017c0:	348080e7          	jalr	840(ra) # 80001b04 <_ZN6ThreadC1Ev>
    800017c4:	fb5ff06f          	j	80001778 <main+0x58>
    }
    for (auto t: thr) t->start();
    800017c8:	e3840493          	addi	s1,s0,-456
    800017cc:	fc840793          	addi	a5,s0,-56
    800017d0:	02f48a63          	beq	s1,a5,80001804 <main+0xe4>
    800017d4:	0004b503          	ld	a0,0(s1)
    800017d8:	00000097          	auipc	ra,0x0
    800017dc:	398080e7          	jalr	920(ra) # 80001b70 <_ZN6Thread5startEv>
    800017e0:	00848493          	addi	s1,s1,8
    800017e4:	fe9ff06f          	j	800017cc <main+0xac>
    800017e8:	00050913          	mv	s2,a0
        thr[i] = new Thread1('A' + i);
    800017ec:	00048513          	mv	a0,s1
    800017f0:	00000097          	auipc	ra,0x0
    800017f4:	218080e7          	jalr	536(ra) # 80001a08 <_ZdlPv>
    800017f8:	00090513          	mv	a0,s2
    800017fc:	0000b097          	auipc	ra,0xb
    80001800:	12c080e7          	jalr	300(ra) # 8000c928 <_Unwind_Resume>
    thread_waitall();
    80001804:	00000097          	auipc	ra,0x0
    80001808:	ce8080e7          	jalr	-792(ra) # 800014ec <_Z14thread_waitallv>
    return 0;
}
    8000180c:	00000513          	li	a0,0
    80001810:	1c813083          	ld	ra,456(sp)
    80001814:	1c013403          	ld	s0,448(sp)
    80001818:	1b813483          	ld	s1,440(sp)
    8000181c:	1b013903          	ld	s2,432(sp)
    80001820:	1a813983          	ld	s3,424(sp)
    80001824:	1d010113          	addi	sp,sp,464
    80001828:	00008067          	ret

000000008000182c <_ZN7Thread13runEv>:
    void run() override {
    8000182c:	fe010113          	addi	sp,sp,-32
    80001830:	00113c23          	sd	ra,24(sp)
    80001834:	00813823          	sd	s0,16(sp)
    80001838:	00913423          	sd	s1,8(sp)
    8000183c:	01213023          	sd	s2,0(sp)
    80001840:	02010413          	addi	s0,sp,32
    80001844:	00050913          	mv	s2,a0
        for(int i = 0; i < 1000; i++) {
    80001848:	00000493          	li	s1,0
    8000184c:	3e700793          	li	a5,999
    80001850:	0297c063          	blt	a5,s1,80001870 <_ZN7Thread13runEv+0x44>
            putc(letter);
    80001854:	02094503          	lbu	a0,32(s2)
    80001858:	00000097          	auipc	ra,0x0
    8000185c:	e54080e7          	jalr	-428(ra) # 800016ac <_Z4putcc>
            thread_dispatch();
    80001860:	00000097          	auipc	ra,0x0
    80001864:	bd4080e7          	jalr	-1068(ra) # 80001434 <_Z15thread_dispatchv>
        for(int i = 0; i < 1000; i++) {
    80001868:	0014849b          	addiw	s1,s1,1
    8000186c:	fe1ff06f          	j	8000184c <_ZN7Thread13runEv+0x20>
    }
    80001870:	01813083          	ld	ra,24(sp)
    80001874:	01013403          	ld	s0,16(sp)
    80001878:	00813483          	ld	s1,8(sp)
    8000187c:	00013903          	ld	s2,0(sp)
    80001880:	02010113          	addi	sp,sp,32
    80001884:	00008067          	ret

0000000080001888 <_ZN7Thread1D1Ev>:
class Thread1 : public Thread {
    80001888:	ff010113          	addi	sp,sp,-16
    8000188c:	00113423          	sd	ra,8(sp)
    80001890:	00813023          	sd	s0,0(sp)
    80001894:	01010413          	addi	s0,sp,16
    80001898:	0000a797          	auipc	a5,0xa
    8000189c:	c9878793          	addi	a5,a5,-872 # 8000b530 <_ZTV7Thread1+0x10>
    800018a0:	00f53023          	sd	a5,0(a0) # 1000 <_entry-0x7ffff000>
    800018a4:	00000097          	auipc	ra,0x0
    800018a8:	0a4080e7          	jalr	164(ra) # 80001948 <_ZN6ThreadD1Ev>
    800018ac:	00813083          	ld	ra,8(sp)
    800018b0:	00013403          	ld	s0,0(sp)
    800018b4:	01010113          	addi	sp,sp,16
    800018b8:	00008067          	ret

00000000800018bc <_ZN7Thread1D0Ev>:
    800018bc:	fe010113          	addi	sp,sp,-32
    800018c0:	00113c23          	sd	ra,24(sp)
    800018c4:	00813823          	sd	s0,16(sp)
    800018c8:	00913423          	sd	s1,8(sp)
    800018cc:	02010413          	addi	s0,sp,32
    800018d0:	00050493          	mv	s1,a0
    800018d4:	0000a797          	auipc	a5,0xa
    800018d8:	c5c78793          	addi	a5,a5,-932 # 8000b530 <_ZTV7Thread1+0x10>
    800018dc:	00f53023          	sd	a5,0(a0)
    800018e0:	00000097          	auipc	ra,0x0
    800018e4:	068080e7          	jalr	104(ra) # 80001948 <_ZN6ThreadD1Ev>
    800018e8:	00048513          	mv	a0,s1
    800018ec:	00000097          	auipc	ra,0x0
    800018f0:	11c080e7          	jalr	284(ra) # 80001a08 <_ZdlPv>
    800018f4:	01813083          	ld	ra,24(sp)
    800018f8:	01013403          	ld	s0,16(sp)
    800018fc:	00813483          	ld	s1,8(sp)
    80001900:	02010113          	addi	sp,sp,32
    80001904:	00008067          	ret

0000000080001908 <_ZN6Thread10wrapperRunEPv>:

int Thread::start() {
    return thread_create(&myHandle, wrapperRun, this);
}

void Thread::wrapperRun(void *arg) {
    80001908:	ff010113          	addi	sp,sp,-16
    8000190c:	00113423          	sd	ra,8(sp)
    80001910:	00813023          	sd	s0,0(sp)
    80001914:	01010413          	addi	s0,sp,16
    auto thread = (Thread *) arg;
    if (thread->body == nullptr)
    80001918:	01053783          	ld	a5,16(a0)
    8000191c:	00078e63          	beqz	a5,80001938 <_ZN6Thread10wrapperRunEPv+0x30>
        thread->run();
    else
        thread->body(thread->arg);
    80001920:	01853503          	ld	a0,24(a0)
    80001924:	000780e7          	jalr	a5
}
    80001928:	00813083          	ld	ra,8(sp)
    8000192c:	00013403          	ld	s0,0(sp)
    80001930:	01010113          	addi	sp,sp,16
    80001934:	00008067          	ret
        thread->run();
    80001938:	00053783          	ld	a5,0(a0)
    8000193c:	0107b783          	ld	a5,16(a5)
    80001940:	000780e7          	jalr	a5
    80001944:	fe5ff06f          	j	80001928 <_ZN6Thread10wrapperRunEPv+0x20>

0000000080001948 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80001948:	ff010113          	addi	sp,sp,-16
    8000194c:	00113423          	sd	ra,8(sp)
    80001950:	00813023          	sd	s0,0(sp)
    80001954:	01010413          	addi	s0,sp,16
    80001958:	0000a797          	auipc	a5,0xa
    8000195c:	c0878793          	addi	a5,a5,-1016 # 8000b560 <_ZTV6Thread+0x10>
    80001960:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    80001964:	00853503          	ld	a0,8(a0)
    80001968:	00000097          	auipc	ra,0x0
    8000196c:	9d0080e7          	jalr	-1584(ra) # 80001338 <_Z8mem_freePv>
}
    80001970:	00813083          	ld	ra,8(sp)
    80001974:	00013403          	ld	s0,0(sp)
    80001978:	01010113          	addi	sp,sp,16
    8000197c:	00008067          	ret

0000000080001980 <_ZN9SemaphoreD1Ev>:
        return -1;
    }
    return sem_trywait(myHandle);
}

Semaphore::~Semaphore() {
    80001980:	ff010113          	addi	sp,sp,-16
    80001984:	00113423          	sd	ra,8(sp)
    80001988:	00813023          	sd	s0,0(sp)
    8000198c:	01010413          	addi	s0,sp,16
    80001990:	0000a797          	auipc	a5,0xa
    80001994:	bf878793          	addi	a5,a5,-1032 # 8000b588 <_ZTV9Semaphore+0x10>
    80001998:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    8000199c:	00853503          	ld	a0,8(a0)
    800019a0:	00000097          	auipc	ra,0x0
    800019a4:	bcc080e7          	jalr	-1076(ra) # 8000156c <_Z9sem_closeP4_sem>
}
    800019a8:	00813083          	ld	ra,8(sp)
    800019ac:	00013403          	ld	s0,0(sp)
    800019b0:	01010113          	addi	sp,sp,16
    800019b4:	00008067          	ret

00000000800019b8 <_Znwm>:
void *operator new(size_t size) {
    800019b8:	ff010113          	addi	sp,sp,-16
    800019bc:	00113423          	sd	ra,8(sp)
    800019c0:	00813023          	sd	s0,0(sp)
    800019c4:	01010413          	addi	s0,sp,16
    return mem_alloc(size);//MemoryAllocator::mem_alloc(size);
    800019c8:	00000097          	auipc	ra,0x0
    800019cc:	92c080e7          	jalr	-1748(ra) # 800012f4 <_Z9mem_allocm>
}
    800019d0:	00813083          	ld	ra,8(sp)
    800019d4:	00013403          	ld	s0,0(sp)
    800019d8:	01010113          	addi	sp,sp,16
    800019dc:	00008067          	ret

00000000800019e0 <_Znam>:
void *operator new[](size_t size) {
    800019e0:	ff010113          	addi	sp,sp,-16
    800019e4:	00113423          	sd	ra,8(sp)
    800019e8:	00813023          	sd	s0,0(sp)
    800019ec:	01010413          	addi	s0,sp,16
    return mem_alloc(size);//)MemoryAllocator::mem_alloc(size);
    800019f0:	00000097          	auipc	ra,0x0
    800019f4:	904080e7          	jalr	-1788(ra) # 800012f4 <_Z9mem_allocm>
}
    800019f8:	00813083          	ld	ra,8(sp)
    800019fc:	00013403          	ld	s0,0(sp)
    80001a00:	01010113          	addi	sp,sp,16
    80001a04:	00008067          	ret

0000000080001a08 <_ZdlPv>:
void operator delete(void *p) noexcept {
    80001a08:	ff010113          	addi	sp,sp,-16
    80001a0c:	00113423          	sd	ra,8(sp)
    80001a10:	00813023          	sd	s0,0(sp)
    80001a14:	01010413          	addi	s0,sp,16
    mem_free(p);//MemoryAllocator::mem_free(p);
    80001a18:	00000097          	auipc	ra,0x0
    80001a1c:	920080e7          	jalr	-1760(ra) # 80001338 <_Z8mem_freePv>
}
    80001a20:	00813083          	ld	ra,8(sp)
    80001a24:	00013403          	ld	s0,0(sp)
    80001a28:	01010113          	addi	sp,sp,16
    80001a2c:	00008067          	ret

0000000080001a30 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001a30:	fe010113          	addi	sp,sp,-32
    80001a34:	00113c23          	sd	ra,24(sp)
    80001a38:	00813823          	sd	s0,16(sp)
    80001a3c:	00913423          	sd	s1,8(sp)
    80001a40:	02010413          	addi	s0,sp,32
    80001a44:	00050493          	mv	s1,a0
}
    80001a48:	00000097          	auipc	ra,0x0
    80001a4c:	f00080e7          	jalr	-256(ra) # 80001948 <_ZN6ThreadD1Ev>
    80001a50:	00048513          	mv	a0,s1
    80001a54:	00000097          	auipc	ra,0x0
    80001a58:	fb4080e7          	jalr	-76(ra) # 80001a08 <_ZdlPv>
    80001a5c:	01813083          	ld	ra,24(sp)
    80001a60:	01013403          	ld	s0,16(sp)
    80001a64:	00813483          	ld	s1,8(sp)
    80001a68:	02010113          	addi	sp,sp,32
    80001a6c:	00008067          	ret

0000000080001a70 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001a70:	fe010113          	addi	sp,sp,-32
    80001a74:	00113c23          	sd	ra,24(sp)
    80001a78:	00813823          	sd	s0,16(sp)
    80001a7c:	00913423          	sd	s1,8(sp)
    80001a80:	02010413          	addi	s0,sp,32
    80001a84:	00050493          	mv	s1,a0
}
    80001a88:	00000097          	auipc	ra,0x0
    80001a8c:	ef8080e7          	jalr	-264(ra) # 80001980 <_ZN9SemaphoreD1Ev>
    80001a90:	00048513          	mv	a0,s1
    80001a94:	00000097          	auipc	ra,0x0
    80001a98:	f74080e7          	jalr	-140(ra) # 80001a08 <_ZdlPv>
    80001a9c:	01813083          	ld	ra,24(sp)
    80001aa0:	01013403          	ld	s0,16(sp)
    80001aa4:	00813483          	ld	s1,8(sp)
    80001aa8:	02010113          	addi	sp,sp,32
    80001aac:	00008067          	ret

0000000080001ab0 <_ZdaPv>:
void operator delete[](void *p) noexcept {
    80001ab0:	ff010113          	addi	sp,sp,-16
    80001ab4:	00113423          	sd	ra,8(sp)
    80001ab8:	00813023          	sd	s0,0(sp)
    80001abc:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001ac0:	00000097          	auipc	ra,0x0
    80001ac4:	878080e7          	jalr	-1928(ra) # 80001338 <_Z8mem_freePv>
}
    80001ac8:	00813083          	ld	ra,8(sp)
    80001acc:	00013403          	ld	s0,0(sp)
    80001ad0:	01010113          	addi	sp,sp,16
    80001ad4:	00008067          	ret

0000000080001ad8 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80001ad8:	ff010113          	addi	sp,sp,-16
    80001adc:	00813423          	sd	s0,8(sp)
    80001ae0:	01010413          	addi	s0,sp,16
    80001ae4:	0000a797          	auipc	a5,0xa
    80001ae8:	a7c78793          	addi	a5,a5,-1412 # 8000b560 <_ZTV6Thread+0x10>
    80001aec:	00f53023          	sd	a5,0(a0)
    this->body = body;
    80001af0:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    80001af4:	00c53c23          	sd	a2,24(a0)
}
    80001af8:	00813403          	ld	s0,8(sp)
    80001afc:	01010113          	addi	sp,sp,16
    80001b00:	00008067          	ret

0000000080001b04 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001b04:	ff010113          	addi	sp,sp,-16
    80001b08:	00813423          	sd	s0,8(sp)
    80001b0c:	01010413          	addi	s0,sp,16
    80001b10:	0000a797          	auipc	a5,0xa
    80001b14:	a5078793          	addi	a5,a5,-1456 # 8000b560 <_ZTV6Thread+0x10>
    80001b18:	00f53023          	sd	a5,0(a0)
    this->body = nullptr;
    80001b1c:	00053823          	sd	zero,16(a0)
}
    80001b20:	00813403          	ld	s0,8(sp)
    80001b24:	01010113          	addi	sp,sp,16
    80001b28:	00008067          	ret

0000000080001b2c <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001b2c:	ff010113          	addi	sp,sp,-16
    80001b30:	00113423          	sd	ra,8(sp)
    80001b34:	00813023          	sd	s0,0(sp)
    80001b38:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001b3c:	00000097          	auipc	ra,0x0
    80001b40:	8f8080e7          	jalr	-1800(ra) # 80001434 <_Z15thread_dispatchv>
}
    80001b44:	00813083          	ld	ra,8(sp)
    80001b48:	00013403          	ld	s0,0(sp)
    80001b4c:	01010113          	addi	sp,sp,16
    80001b50:	00008067          	ret

0000000080001b54 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t t) {
    80001b54:	ff010113          	addi	sp,sp,-16
    80001b58:	00813423          	sd	s0,8(sp)
    80001b5c:	01010413          	addi	s0,sp,16
}
    80001b60:	00000513          	li	a0,0
    80001b64:	00813403          	ld	s0,8(sp)
    80001b68:	01010113          	addi	sp,sp,16
    80001b6c:	00008067          	ret

0000000080001b70 <_ZN6Thread5startEv>:
int Thread::start() {
    80001b70:	ff010113          	addi	sp,sp,-16
    80001b74:	00113423          	sd	ra,8(sp)
    80001b78:	00813023          	sd	s0,0(sp)
    80001b7c:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, wrapperRun, this);
    80001b80:	00050613          	mv	a2,a0
    80001b84:	00000597          	auipc	a1,0x0
    80001b88:	d8458593          	addi	a1,a1,-636 # 80001908 <_ZN6Thread10wrapperRunEPv>
    80001b8c:	00850513          	addi	a0,a0,8
    80001b90:	fffff097          	auipc	ra,0xfffff
    80001b94:	7e8080e7          	jalr	2024(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001b98:	00813083          	ld	ra,8(sp)
    80001b9c:	00013403          	ld	s0,0(sp)
    80001ba0:	01010113          	addi	sp,sp,16
    80001ba4:	00008067          	ret

0000000080001ba8 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80001ba8:	ff010113          	addi	sp,sp,-16
    80001bac:	00113423          	sd	ra,8(sp)
    80001bb0:	00813023          	sd	s0,0(sp)
    80001bb4:	01010413          	addi	s0,sp,16
    80001bb8:	0000a797          	auipc	a5,0xa
    80001bbc:	9d078793          	addi	a5,a5,-1584 # 8000b588 <_ZTV9Semaphore+0x10>
    80001bc0:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80001bc4:	00850513          	addi	a0,a0,8
    80001bc8:	00000097          	auipc	ra,0x0
    80001bcc:	960080e7          	jalr	-1696(ra) # 80001528 <_Z8sem_openPP4_semj>
}
    80001bd0:	00813083          	ld	ra,8(sp)
    80001bd4:	00013403          	ld	s0,0(sp)
    80001bd8:	01010113          	addi	sp,sp,16
    80001bdc:	00008067          	ret

0000000080001be0 <_ZN9Semaphore6signalEv>:
    if (myHandle == nullptr) {
    80001be0:	00853503          	ld	a0,8(a0)
    80001be4:	02050663          	beqz	a0,80001c10 <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    80001be8:	ff010113          	addi	sp,sp,-16
    80001bec:	00113423          	sd	ra,8(sp)
    80001bf0:	00813023          	sd	s0,0(sp)
    80001bf4:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001bf8:	00000097          	auipc	ra,0x0
    80001bfc:	9f4080e7          	jalr	-1548(ra) # 800015ec <_Z10sem_signalP4_sem>
}
    80001c00:	00813083          	ld	ra,8(sp)
    80001c04:	00013403          	ld	s0,0(sp)
    80001c08:	01010113          	addi	sp,sp,16
    80001c0c:	00008067          	ret
        return -1;
    80001c10:	fff00513          	li	a0,-1
}
    80001c14:	00008067          	ret

0000000080001c18 <_ZN9Semaphore4waitEv>:
    if (myHandle == nullptr) {
    80001c18:	00853503          	ld	a0,8(a0)
    80001c1c:	02050663          	beqz	a0,80001c48 <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    80001c20:	ff010113          	addi	sp,sp,-16
    80001c24:	00113423          	sd	ra,8(sp)
    80001c28:	00813023          	sd	s0,0(sp)
    80001c2c:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001c30:	00000097          	auipc	ra,0x0
    80001c34:	97c080e7          	jalr	-1668(ra) # 800015ac <_Z8sem_waitP4_sem>
}
    80001c38:	00813083          	ld	ra,8(sp)
    80001c3c:	00013403          	ld	s0,0(sp)
    80001c40:	01010113          	addi	sp,sp,16
    80001c44:	00008067          	ret
        return -1;
    80001c48:	fff00513          	li	a0,-1
}
    80001c4c:	00008067          	ret

0000000080001c50 <_ZN9Semaphore7trywaitEv>:
    if (myHandle == nullptr) {
    80001c50:	00853503          	ld	a0,8(a0)
    80001c54:	02050663          	beqz	a0,80001c80 <_ZN9Semaphore7trywaitEv+0x30>
int Semaphore::trywait() {
    80001c58:	ff010113          	addi	sp,sp,-16
    80001c5c:	00113423          	sd	ra,8(sp)
    80001c60:	00813023          	sd	s0,0(sp)
    80001c64:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    80001c68:	00000097          	auipc	ra,0x0
    80001c6c:	9c4080e7          	jalr	-1596(ra) # 8000162c <_Z11sem_trywaitP4_sem>
}
    80001c70:	00813083          	ld	ra,8(sp)
    80001c74:	00013403          	ld	s0,0(sp)
    80001c78:	01010113          	addi	sp,sp,16
    80001c7c:	00008067          	ret
        return -1;
    80001c80:	fff00513          	li	a0,-1
}
    80001c84:	00008067          	ret

0000000080001c88 <_ZN7Console4getcEv>:


char Console::getc() {
    80001c88:	ff010113          	addi	sp,sp,-16
    80001c8c:	00113423          	sd	ra,8(sp)
    80001c90:	00813023          	sd	s0,0(sp)
    80001c94:	01010413          	addi	s0,sp,16
    return ::getc();
    80001c98:	00000097          	auipc	ra,0x0
    80001c9c:	9d4080e7          	jalr	-1580(ra) # 8000166c <_Z4getcv>
}
    80001ca0:	00813083          	ld	ra,8(sp)
    80001ca4:	00013403          	ld	s0,0(sp)
    80001ca8:	01010113          	addi	sp,sp,16
    80001cac:	00008067          	ret

0000000080001cb0 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80001cb0:	ff010113          	addi	sp,sp,-16
    80001cb4:	00113423          	sd	ra,8(sp)
    80001cb8:	00813023          	sd	s0,0(sp)
    80001cbc:	01010413          	addi	s0,sp,16
    ::putc(c);
    80001cc0:	00000097          	auipc	ra,0x0
    80001cc4:	9ec080e7          	jalr	-1556(ra) # 800016ac <_Z4putcc>
    80001cc8:	00813083          	ld	ra,8(sp)
    80001ccc:	00013403          	ld	s0,0(sp)
    80001cd0:	01010113          	addi	sp,sp,16
    80001cd4:	00008067          	ret

0000000080001cd8 <_ZN6Thread3runEv>:
    static void wrapperRun(void *arg);

protected:
    Thread();

    virtual void run() {}
    80001cd8:	ff010113          	addi	sp,sp,-16
    80001cdc:	00813423          	sd	s0,8(sp)
    80001ce0:	01010413          	addi	s0,sp,16
    80001ce4:	00813403          	ld	s0,8(sp)
    80001ce8:	01010113          	addi	sp,sp,16
    80001cec:	00008067          	ret

0000000080001cf0 <_ZN5Riscv13obradaprekidaEmmmmm>:
    ILLEGAL_INSTRTUCION = 2,
    ILLEGAL_READ_ADDRESS = 5,
    ILLEGAL_WRITE_ADDRESS = 7,
};

void Riscv::obradaprekida(uint64 code, uint64 arg1, uint64 arg2, uint64 arg3, uint64 arg4) {
    80001cf0:	fc010113          	addi	sp,sp,-64
    80001cf4:	02113c23          	sd	ra,56(sp)
    80001cf8:	02813823          	sd	s0,48(sp)
    80001cfc:	02913423          	sd	s1,40(sp)
    80001d00:	03213023          	sd	s2,32(sp)
    80001d04:	04010413          	addi	s0,sp,64
    80001d08:	00050793          	mv	a5,a0
    80001d0c:	00058513          	mv	a0,a1
    80001d10:	00060593          	mv	a1,a2
    80001d14:	00068613          	mv	a2,a3
    80001d18:	00070693          	mv	a3,a4
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001d1c:	14202773          	csrr	a4,scause
    80001d20:	fce43c23          	sd	a4,-40(s0)
    return scause;
    80001d24:	fd843703          	ld	a4,-40(s0)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001d28:	14102873          	csrr	a6,sepc
    80001d2c:	fd043823          	sd	a6,-48(s0)
    return sepc;
    80001d30:	fd043483          	ld	s1,-48(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001d34:	10002873          	csrr	a6,sstatus
    80001d38:	fd043423          	sd	a6,-56(s0)
    return sstatus;
    80001d3c:	fc843903          	ld	s2,-56(s0)
    uint64 scause = r_scause();
    uint64 sepc = r_sepc(); //cita pc
    uint64 sstatus = r_sstatus();//cita status registar

    if (scause == SYSCALL_S or scause == SYSCALL_U) {
    80001d40:	ff870893          	addi	a7,a4,-8
    80001d44:	00100813          	li	a6,1
    80001d48:	05187863          	bgeu	a6,a7,80001d98 <_ZN5Riscv13obradaprekidaEmmmmm+0xa8>
                _sem::sem_trywait((sem_t) arg1);
                break;
        }
        w_sstatus(sstatus);
        w_sepc(sepc + 4);
    } else if (scause == TIMER) {
    80001d4c:	fff00793          	li	a5,-1
    80001d50:	03f79793          	slli	a5,a5,0x3f
    80001d54:	00178793          	addi	a5,a5,1
    80001d58:	14f70063          	beq	a4,a5,80001e98 <_ZN5Riscv13obradaprekidaEmmmmm+0x1a8>
        mc_sip(SIP_SSIE);
    } else if (scause == CONSOLE) {
    80001d5c:	fff00793          	li	a5,-1
    80001d60:	03f79793          	slli	a5,a5,0x3f
    80001d64:	00978793          	addi	a5,a5,9
    80001d68:	12f70e63          	beq	a4,a5,80001ea4 <_ZN5Riscv13obradaprekidaEmmmmm+0x1b4>
        console_handler();
    } else if (scause == ILLEGAL_INSTRTUCION) {
    80001d6c:	00200793          	li	a5,2
    80001d70:	14f70063          	beq	a4,a5,80001eb0 <_ZN5Riscv13obradaprekidaEmmmmm+0x1c0>
        printString("ILLEGAL INSTRUCTION");
        while (true);
    } else if (scause == ILLEGAL_READ_ADDRESS) {
    80001d74:	00500793          	li	a5,5
    80001d78:	14f70663          	beq	a4,a5,80001ec4 <_ZN5Riscv13obradaprekidaEmmmmm+0x1d4>
        printString("ILLEGAL READ ADDRESS");
        while (true);
    } else if (scause == ILLEGAL_WRITE_ADDRESS) {
    80001d7c:	00700793          	li	a5,7
    80001d80:	04f71863          	bne	a4,a5,80001dd0 <_ZN5Riscv13obradaprekidaEmmmmm+0xe0>
        printString("ILLEGAL WRITE ADDRESS");
    80001d84:	00007517          	auipc	a0,0x7
    80001d88:	2cc50513          	addi	a0,a0,716 # 80009050 <CONSOLE_STATUS+0x40>
    80001d8c:	00003097          	auipc	ra,0x3
    80001d90:	1e4080e7          	jalr	484(ra) # 80004f70 <_Z11printStringPKc>
        while (true);
    80001d94:	0000006f          	j	80001d94 <_ZN5Riscv13obradaprekidaEmmmmm+0xa4>
        switch (code) {
    80001d98:	04200713          	li	a4,66
    80001d9c:	02f76463          	bltu	a4,a5,80001dc4 <_ZN5Riscv13obradaprekidaEmmmmm+0xd4>
    80001da0:	00279793          	slli	a5,a5,0x2
    80001da4:	00007717          	auipc	a4,0x7
    80001da8:	2c470713          	addi	a4,a4,708 # 80009068 <CONSOLE_STATUS+0x58>
    80001dac:	00e787b3          	add	a5,a5,a4
    80001db0:	0007a783          	lw	a5,0(a5)
    80001db4:	00e787b3          	add	a5,a5,a4
    80001db8:	00078067          	jr	a5
                MemoryAllocator::mem_alloc(arg1);
    80001dbc:	00001097          	auipc	ra,0x1
    80001dc0:	9ec080e7          	jalr	-1556(ra) # 800027a8 <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001dc4:	10091073          	csrw	sstatus,s2
        w_sepc(sepc + 4);
    80001dc8:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001dcc:	14149073          	csrw	sepc,s1
    }
}
    80001dd0:	03813083          	ld	ra,56(sp)
    80001dd4:	03013403          	ld	s0,48(sp)
    80001dd8:	02813483          	ld	s1,40(sp)
    80001ddc:	02013903          	ld	s2,32(sp)
    80001de0:	04010113          	addi	sp,sp,64
    80001de4:	00008067          	ret
                MemoryAllocator::mem_free((void *) arg1);
    80001de8:	00001097          	auipc	ra,0x1
    80001dec:	af8080e7          	jalr	-1288(ra) # 800028e0 <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    80001df0:	fd5ff06f          	j	80001dc4 <_ZN5Riscv13obradaprekidaEmmmmm+0xd4>
                __getc();
    80001df4:	00006097          	auipc	ra,0x6
    80001df8:	4c4080e7          	jalr	1220(ra) # 800082b8 <__getc>
                break;
    80001dfc:	fc9ff06f          	j	80001dc4 <_ZN5Riscv13obradaprekidaEmmmmm+0xd4>
                __putc(arg1);
    80001e00:	0ff57513          	andi	a0,a0,255
    80001e04:	00006097          	auipc	ra,0x6
    80001e08:	478080e7          	jalr	1144(ra) # 8000827c <__putc>
                break;
    80001e0c:	fb9ff06f          	j	80001dc4 <_ZN5Riscv13obradaprekidaEmmmmm+0xd4>
                TCB::createThread((thread_t *) arg1, (TCB::Body) arg2, (void *) arg3, (void *) arg4);
    80001e10:	00000097          	auipc	ra,0x0
    80001e14:	2fc080e7          	jalr	764(ra) # 8000210c <_ZN3TCB12createThreadEPPS_PFvPvES2_S2_>
                break;
    80001e18:	fadff06f          	j	80001dc4 <_ZN5Riscv13obradaprekidaEmmmmm+0xd4>
                TCB::thread_exit();
    80001e1c:	00000097          	auipc	ra,0x0
    80001e20:	39c080e7          	jalr	924(ra) # 800021b8 <_ZN3TCB11thread_exitEv>
                break;
    80001e24:	fa1ff06f          	j	80001dc4 <_ZN5Riscv13obradaprekidaEmmmmm+0xd4>
                TCB::dispatch();
    80001e28:	00000097          	auipc	ra,0x0
    80001e2c:	134080e7          	jalr	308(ra) # 80001f5c <_ZN3TCB8dispatchEv>
                break;
    80001e30:	f95ff06f          	j	80001dc4 <_ZN5Riscv13obradaprekidaEmmmmm+0xd4>
                ((thread_t) arg1)->join();
    80001e34:	00000097          	auipc	ra,0x0
    80001e38:	404080e7          	jalr	1028(ra) # 80002238 <_ZN3TCB4joinEv>
                break;
    80001e3c:	f89ff06f          	j	80001dc4 <_ZN5Riscv13obradaprekidaEmmmmm+0xd4>
                TCB::waitForAll();
    80001e40:	00000097          	auipc	ra,0x0
    80001e44:	438080e7          	jalr	1080(ra) # 80002278 <_ZN3TCB10waitForAllEv>
                break;
    80001e48:	f7dff06f          	j	80001dc4 <_ZN5Riscv13obradaprekidaEmmmmm+0xd4>
                TCB::setMaxThread(arg1);
    80001e4c:	0005051b          	sext.w	a0,a0
    80001e50:	00000097          	auipc	ra,0x0
    80001e54:	474080e7          	jalr	1140(ra) # 800022c4 <_ZN3TCB12setMaxThreadEi>
                break;
    80001e58:	f6dff06f          	j	80001dc4 <_ZN5Riscv13obradaprekidaEmmmmm+0xd4>
                _sem::sem_open((sem_t *) arg1, (long) arg2);
    80001e5c:	00000097          	auipc	ra,0x0
    80001e60:	488080e7          	jalr	1160(ra) # 800022e4 <_ZN4_sem8sem_openEPPS_l>
                break;
    80001e64:	f61ff06f          	j	80001dc4 <_ZN5Riscv13obradaprekidaEmmmmm+0xd4>
                _sem::sem_close((sem_t) arg1);
    80001e68:	00000097          	auipc	ra,0x0
    80001e6c:	4fc080e7          	jalr	1276(ra) # 80002364 <_ZN4_sem9sem_closeEPS_>
                break;
    80001e70:	f55ff06f          	j	80001dc4 <_ZN5Riscv13obradaprekidaEmmmmm+0xd4>
                _sem::sem_wait((sem_t) arg1);
    80001e74:	00000097          	auipc	ra,0x0
    80001e78:	5a8080e7          	jalr	1448(ra) # 8000241c <_ZN4_sem8sem_waitEPS_>
                break;
    80001e7c:	f49ff06f          	j	80001dc4 <_ZN5Riscv13obradaprekidaEmmmmm+0xd4>
                _sem::sem_signal((sem_t) arg1);
    80001e80:	00000097          	auipc	ra,0x0
    80001e84:	660080e7          	jalr	1632(ra) # 800024e0 <_ZN4_sem10sem_signalEPS_>
                break;
    80001e88:	f3dff06f          	j	80001dc4 <_ZN5Riscv13obradaprekidaEmmmmm+0xd4>
                _sem::sem_trywait((sem_t) arg1);
    80001e8c:	00000097          	auipc	ra,0x0
    80001e90:	6f8080e7          	jalr	1784(ra) # 80002584 <_ZN4_sem11sem_trywaitEPS_>
                break;
    80001e94:	f31ff06f          	j	80001dc4 <_ZN5Riscv13obradaprekidaEmmmmm+0xd4>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001e98:	00200793          	li	a5,2
    80001e9c:	1447b073          	csrc	sip,a5
}
    80001ea0:	f31ff06f          	j	80001dd0 <_ZN5Riscv13obradaprekidaEmmmmm+0xe0>
        console_handler();
    80001ea4:	00006097          	auipc	ra,0x6
    80001ea8:	44c080e7          	jalr	1100(ra) # 800082f0 <console_handler>
    80001eac:	f25ff06f          	j	80001dd0 <_ZN5Riscv13obradaprekidaEmmmmm+0xe0>
        printString("ILLEGAL INSTRUCTION");
    80001eb0:	00007517          	auipc	a0,0x7
    80001eb4:	17050513          	addi	a0,a0,368 # 80009020 <CONSOLE_STATUS+0x10>
    80001eb8:	00003097          	auipc	ra,0x3
    80001ebc:	0b8080e7          	jalr	184(ra) # 80004f70 <_Z11printStringPKc>
        while (true);
    80001ec0:	0000006f          	j	80001ec0 <_ZN5Riscv13obradaprekidaEmmmmm+0x1d0>
        printString("ILLEGAL READ ADDRESS");
    80001ec4:	00007517          	auipc	a0,0x7
    80001ec8:	17450513          	addi	a0,a0,372 # 80009038 <CONSOLE_STATUS+0x28>
    80001ecc:	00003097          	auipc	ra,0x3
    80001ed0:	0a4080e7          	jalr	164(ra) # 80004f70 <_Z11printStringPKc>
        while (true);
    80001ed4:	0000006f          	j	80001ed4 <_ZN5Riscv13obradaprekidaEmmmmm+0x1e4>

0000000080001ed8 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie() {
    80001ed8:	ff010113          	addi	sp,sp,-16
    80001edc:	00813423          	sd	s0,8(sp)
    80001ee0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001ee4:	10000793          	li	a5,256
    80001ee8:	1007b073          	csrc	sstatus,a5
    Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    __asm__ volatile("csrw sepc, ra");
    80001eec:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001ef0:	10200073          	sret
    80001ef4:	00813403          	ld	s0,8(sp)
    80001ef8:	01010113          	addi	sp,sp,16
    80001efc:	00008067          	ret

0000000080001f00 <_ZN3TCB14thread_wrapperEv>:
    _sem::sem_signal(max_sem);
    TCB::dispatch();
    return 0;
}

void TCB::thread_wrapper() {
    80001f00:	fe010113          	addi	sp,sp,-32
    80001f04:	00113c23          	sd	ra,24(sp)
    80001f08:	00813823          	sd	s0,16(sp)
    80001f0c:	00913423          	sd	s1,8(sp)
    80001f10:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001f14:	00000097          	auipc	ra,0x0
    80001f18:	fc4080e7          	jalr	-60(ra) # 80001ed8 <_ZN5Riscv10popSppSpieEv>
    sem_wait(max_sem);
    80001f1c:	0000a497          	auipc	s1,0xa
    80001f20:	8c448493          	addi	s1,s1,-1852 # 8000b7e0 <_ZN3TCB7max_semE>
    80001f24:	0004b503          	ld	a0,0(s1)
    80001f28:	fffff097          	auipc	ra,0xfffff
    80001f2c:	684080e7          	jalr	1668(ra) # 800015ac <_Z8sem_waitP4_sem>
    running->body(running->arg);
    80001f30:	0084b783          	ld	a5,8(s1)
    80001f34:	0007b703          	ld	a4,0(a5)
    80001f38:	0087b503          	ld	a0,8(a5)
    80001f3c:	000700e7          	jalr	a4
    ::thread_exit();
    80001f40:	fffff097          	auipc	ra,0xfffff
    80001f44:	4b4080e7          	jalr	1204(ra) # 800013f4 <_Z11thread_exitv>
}
    80001f48:	01813083          	ld	ra,24(sp)
    80001f4c:	01013403          	ld	s0,16(sp)
    80001f50:	00813483          	ld	s1,8(sp)
    80001f54:	02010113          	addi	sp,sp,32
    80001f58:	00008067          	ret

0000000080001f5c <_ZN3TCB8dispatchEv>:
void TCB::dispatch() { //promena konteksta, trenutnu zavrsenu zameni nekom drugom
    80001f5c:	fe010113          	addi	sp,sp,-32
    80001f60:	00113c23          	sd	ra,24(sp)
    80001f64:	00813823          	sd	s0,16(sp)
    80001f68:	00913423          	sd	s1,8(sp)
    80001f6c:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001f70:	0000a497          	auipc	s1,0xa
    80001f74:	8784b483          	ld	s1,-1928(s1) # 8000b7e8 <_ZN3TCB7runningE>
    if (old != nullptr && !old->isFinished() && !old->isBlocked()) {
    80001f78:	00048a63          	beqz	s1,80001f8c <_ZN3TCB8dispatchEv+0x30>

class TCB {
public:
    using Body = void (*)(void *);

    bool isFinished() const { return finished; }
    80001f7c:	0284c783          	lbu	a5,40(s1)
    80001f80:	00079663          	bnez	a5,80001f8c <_ZN3TCB8dispatchEv+0x30>

    void setFinished(bool value) { finished = value; }

    bool isBlocked() const { return blocked; }
    80001f84:	0294c783          	lbu	a5,41(s1)
    80001f88:	02078c63          	beqz	a5,80001fc0 <_ZN3TCB8dispatchEv+0x64>
    running = Scheduler::get();
    80001f8c:	00000097          	auipc	ra,0x0
    80001f90:	724080e7          	jalr	1828(ra) # 800026b0 <_ZN9Scheduler3getEv>
    80001f94:	0000a797          	auipc	a5,0xa
    80001f98:	84a7ba23          	sd	a0,-1964(a5) # 8000b7e8 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001f9c:	01850593          	addi	a1,a0,24
    80001fa0:	01848513          	addi	a0,s1,24
    80001fa4:	fffff097          	auipc	ra,0xfffff
    80001fa8:	1fc080e7          	jalr	508(ra) # 800011a0 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001fac:	01813083          	ld	ra,24(sp)
    80001fb0:	01013403          	ld	s0,16(sp)
    80001fb4:	00813483          	ld	s1,8(sp)
    80001fb8:	02010113          	addi	sp,sp,32
    80001fbc:	00008067          	ret
        Scheduler::put(old);
    80001fc0:	00048513          	mv	a0,s1
    80001fc4:	00000097          	auipc	ra,0x0
    80001fc8:	680080e7          	jalr	1664(ra) # 80002644 <_ZN9Scheduler3putEP3TCB>
    80001fcc:	fc1ff06f          	j	80001f8c <_ZN3TCB8dispatchEv+0x30>

0000000080001fd0 <_ZN3TCB5yieldEv>:
void TCB::yield() {
    80001fd0:	ff010113          	addi	sp,sp,-16
    80001fd4:	00113423          	sd	ra,8(sp)
    80001fd8:	00813023          	sd	s0,0(sp)
    80001fdc:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    80001fe0:	fffff097          	auipc	ra,0xfffff
    80001fe4:	1d4080e7          	jalr	468(ra) # 800011b4 <_ZN5Riscv13pushRegistersEv>
    TCB::dispatch();
    80001fe8:	00000097          	auipc	ra,0x0
    80001fec:	f74080e7          	jalr	-140(ra) # 80001f5c <_ZN3TCB8dispatchEv>
    Riscv::popRegisters();
    80001ff0:	fffff097          	auipc	ra,0xfffff
    80001ff4:	240080e7          	jalr	576(ra) # 80001230 <_ZN5Riscv12popRegistersEv>
}
    80001ff8:	00813083          	ld	ra,8(sp)
    80001ffc:	00013403          	ld	s0,0(sp)
    80002000:	01010113          	addi	sp,sp,16
    80002004:	00008067          	ret

0000000080002008 <_ZN3TCBC1EPFvPvES0_S0_>:
TCB::TCB(Body body, void *arg, void *stack_space) : body(body), arg(arg), finished(false),
    80002008:	fe010113          	addi	sp,sp,-32
    8000200c:	00113c23          	sd	ra,24(sp)
    80002010:	00813823          	sd	s0,16(sp)
    80002014:	00913423          	sd	s1,8(sp)
    80002018:	01213023          	sd	s2,0(sp)
    8000201c:	02010413          	addi	s0,sp,32
    80002020:	00050493          	mv	s1,a0
    80002024:	00058913          	mv	s2,a1
                                                    blocked(false) {// da li moze drugacije
    80002028:	00b53023          	sd	a1,0(a0)
    8000202c:	00c53423          	sd	a2,8(a0)
    80002030:	02050423          	sb	zero,40(a0)
    80002034:	020504a3          	sb	zero,41(a0)
        };

        public:

        Elem *head, *tail;
        List() : head(0), tail(0) {}
    80002038:	02053c23          	sd	zero,56(a0)
    8000203c:	04053023          	sd	zero,64(a0)
    if (stack_space) {
    80002040:	08068663          	beqz	a3,800020cc <_ZN3TCBC1EPFvPvES0_S0_+0xc4>
        stack = static_cast<uint64 *>(stack_space);
    80002044:	00d53823          	sd	a3,16(a0)
    if (body) {
    80002048:	0a090263          	beqz	s2,800020ec <_ZN3TCBC1EPFvPvES0_S0_+0xe4>
        Scheduler::put(this);
    8000204c:	00048513          	mv	a0,s1
    80002050:	00000097          	auipc	ra,0x0
    80002054:	5f4080e7          	jalr	1524(ra) # 80002644 <_ZN9Scheduler3putEP3TCB>
        running->children.addLast(this);
    80002058:	00009917          	auipc	s2,0x9
    8000205c:	79093903          	ld	s2,1936(s2) # 8000b7e8 <_ZN3TCB7runningE>
            if (!tail) { tail = head; }
        }

        void addLast(T *data)
        {
            Elem *elem = new Elem(data, 0);
    80002060:	01000513          	li	a0,16
    80002064:	00000097          	auipc	ra,0x0
    80002068:	954080e7          	jalr	-1708(ra) # 800019b8 <_Znwm>
            Elem(T *data, Elem *next) : data(data), next(next) {}
    8000206c:	00953023          	sd	s1,0(a0)
    80002070:	00053423          	sd	zero,8(a0)
            if (tail)
    80002074:	04093783          	ld	a5,64(s2)
    80002078:	06078463          	beqz	a5,800020e0 <_ZN3TCBC1EPFvPvES0_S0_+0xd8>
            {
                tail->next = elem;
    8000207c:	00a7b423          	sd	a0,8(a5)
                tail = elem;
    80002080:	04a93023          	sd	a0,64(s2)
    sem_open(&this->joiner, 0);
    80002084:	00000593          	li	a1,0
    80002088:	03048513          	addi	a0,s1,48
    8000208c:	fffff097          	auipc	ra,0xfffff
    80002090:	49c080e7          	jalr	1180(ra) # 80001528 <_Z8sem_openPP4_semj>
    context.ra = (uint64) &thread_wrapper;
    80002094:	00000797          	auipc	a5,0x0
    80002098:	e6c78793          	addi	a5,a5,-404 # 80001f00 <_ZN3TCB14thread_wrapperEv>
    8000209c:	00f4bc23          	sd	a5,24(s1)
    context.sp = (uint64) ((char *) stack + DEFAULT_STACK_SIZE - 1);
    800020a0:	0104b783          	ld	a5,16(s1)
    800020a4:	00001737          	lui	a4,0x1
    800020a8:	fff70713          	addi	a4,a4,-1 # fff <_entry-0x7ffff001>
    800020ac:	00e787b3          	add	a5,a5,a4
    800020b0:	02f4b023          	sd	a5,32(s1)
}
    800020b4:	01813083          	ld	ra,24(sp)
    800020b8:	01013403          	ld	s0,16(sp)
    800020bc:	00813483          	ld	s1,8(sp)
    800020c0:	00013903          	ld	s2,0(sp)
    800020c4:	02010113          	addi	sp,sp,32
    800020c8:	00008067          	ret
        stack = static_cast<uint64 *>(MemoryAllocator::mem_alloc(stack_size_in_blocks * MEM_BLOCK_SIZE));
    800020cc:	00008537          	lui	a0,0x8
    800020d0:	00000097          	auipc	ra,0x0
    800020d4:	6d8080e7          	jalr	1752(ra) # 800027a8 <_ZN15MemoryAllocator9mem_allocEm>
    800020d8:	00a4b823          	sd	a0,16(s1)
    800020dc:	f6dff06f          	j	80002048 <_ZN3TCBC1EPFvPvES0_S0_+0x40>
            } else
            {
                head = tail = elem;
    800020e0:	04a93023          	sd	a0,64(s2)
    800020e4:	02a93c23          	sd	a0,56(s2)
    800020e8:	f9dff06f          	j	80002084 <_ZN3TCBC1EPFvPvES0_S0_+0x7c>
        TCB::running = this;
    800020ec:	00009517          	auipc	a0,0x9
    800020f0:	6f450513          	addi	a0,a0,1780 # 8000b7e0 <_ZN3TCB7max_semE>
    800020f4:	00953423          	sd	s1,8(a0)
        _sem::sem_open(&max_sem, max_threads);
    800020f8:	00009597          	auipc	a1,0x9
    800020fc:	4a05b583          	ld	a1,1184(a1) # 8000b598 <_ZN3TCB11max_threadsE>
    80002100:	00000097          	auipc	ra,0x0
    80002104:	1e4080e7          	jalr	484(ra) # 800022e4 <_ZN4_sem8sem_openEPPS_l>
    80002108:	f7dff06f          	j	80002084 <_ZN3TCBC1EPFvPvES0_S0_+0x7c>

000000008000210c <_ZN3TCB12createThreadEPPS_PFvPvES2_S2_>:
    if (!handle) {
    8000210c:	08050463          	beqz	a0,80002194 <_ZN3TCB12createThreadEPPS_PFvPvES2_S2_+0x88>
int TCB::createThread(thread_t *handle, Body body, void *arg, void *stack_space) {
    80002110:	fc010113          	addi	sp,sp,-64
    80002114:	02113c23          	sd	ra,56(sp)
    80002118:	02813823          	sd	s0,48(sp)
    8000211c:	02913423          	sd	s1,40(sp)
    80002120:	03213023          	sd	s2,32(sp)
    80002124:	01313c23          	sd	s3,24(sp)
    80002128:	01413823          	sd	s4,16(sp)
    8000212c:	01513423          	sd	s5,8(sp)
    80002130:	04010413          	addi	s0,sp,64
    80002134:	00050493          	mv	s1,a0
    80002138:	00058913          	mv	s2,a1
    8000213c:	00060993          	mv	s3,a2
    80002140:	00068a13          	mv	s4,a3
    TCB *new_thread = new TCB(body, arg, stack_space); //drugi konstruktor da li imati odma samo jedan ili je ovako ok
    80002144:	04800513          	li	a0,72
    80002148:	00000097          	auipc	ra,0x0
    8000214c:	870080e7          	jalr	-1936(ra) # 800019b8 <_Znwm>
    80002150:	00050a93          	mv	s5,a0
    80002154:	000a0693          	mv	a3,s4
    80002158:	00098613          	mv	a2,s3
    8000215c:	00090593          	mv	a1,s2
    80002160:	00000097          	auipc	ra,0x0
    80002164:	ea8080e7          	jalr	-344(ra) # 80002008 <_ZN3TCBC1EPFvPvES0_S0_>
    *handle = new_thread;
    80002168:	0154b023          	sd	s5,0(s1)
    return 0;
    8000216c:	00000513          	li	a0,0
}
    80002170:	03813083          	ld	ra,56(sp)
    80002174:	03013403          	ld	s0,48(sp)
    80002178:	02813483          	ld	s1,40(sp)
    8000217c:	02013903          	ld	s2,32(sp)
    80002180:	01813983          	ld	s3,24(sp)
    80002184:	01013a03          	ld	s4,16(sp)
    80002188:	00813a83          	ld	s5,8(sp)
    8000218c:	04010113          	addi	sp,sp,64
    80002190:	00008067          	ret
        return -1;
    80002194:	fff00513          	li	a0,-1
}
    80002198:	00008067          	ret
    8000219c:	00050493          	mv	s1,a0
    TCB *new_thread = new TCB(body, arg, stack_space); //drugi konstruktor da li imati odma samo jedan ili je ovako ok
    800021a0:	000a8513          	mv	a0,s5
    800021a4:	00000097          	auipc	ra,0x0
    800021a8:	864080e7          	jalr	-1948(ra) # 80001a08 <_ZdlPv>
    800021ac:	00048513          	mv	a0,s1
    800021b0:	0000a097          	auipc	ra,0xa
    800021b4:	778080e7          	jalr	1912(ra) # 8000c928 <_Unwind_Resume>

00000000800021b8 <_ZN3TCB11thread_exitEv>:
    if (running == nullptr) {
    800021b8:	00009797          	auipc	a5,0x9
    800021bc:	6307b783          	ld	a5,1584(a5) # 8000b7e8 <_ZN3TCB7runningE>
    800021c0:	06078863          	beqz	a5,80002230 <_ZN3TCB11thread_exitEv+0x78>
int TCB::thread_exit() { // da li treba jos nesto
    800021c4:	fe010113          	addi	sp,sp,-32
    800021c8:	00113c23          	sd	ra,24(sp)
    800021cc:	00813823          	sd	s0,16(sp)
    800021d0:	00913423          	sd	s1,8(sp)
    800021d4:	02010413          	addi	s0,sp,32
    void setFinished(bool value) { finished = value; }
    800021d8:	00100713          	li	a4,1
    800021dc:	02e78423          	sb	a4,40(a5)
    MemoryAllocator::mem_free(running->stack);
    800021e0:	0107b503          	ld	a0,16(a5)
    800021e4:	00000097          	auipc	ra,0x0
    800021e8:	6fc080e7          	jalr	1788(ra) # 800028e0 <_ZN15MemoryAllocator8mem_freeEPv>
    _sem::sem_close(running->joiner);
    800021ec:	00009497          	auipc	s1,0x9
    800021f0:	5f448493          	addi	s1,s1,1524 # 8000b7e0 <_ZN3TCB7max_semE>
    800021f4:	0084b783          	ld	a5,8(s1)
    800021f8:	0307b503          	ld	a0,48(a5)
    800021fc:	00000097          	auipc	ra,0x0
    80002200:	168080e7          	jalr	360(ra) # 80002364 <_ZN4_sem9sem_closeEPS_>
    _sem::sem_signal(max_sem);
    80002204:	0004b503          	ld	a0,0(s1)
    80002208:	00000097          	auipc	ra,0x0
    8000220c:	2d8080e7          	jalr	728(ra) # 800024e0 <_ZN4_sem10sem_signalEPS_>
    TCB::dispatch();
    80002210:	00000097          	auipc	ra,0x0
    80002214:	d4c080e7          	jalr	-692(ra) # 80001f5c <_ZN3TCB8dispatchEv>
    return 0;
    80002218:	00000513          	li	a0,0
}
    8000221c:	01813083          	ld	ra,24(sp)
    80002220:	01013403          	ld	s0,16(sp)
    80002224:	00813483          	ld	s1,8(sp)
    80002228:	02010113          	addi	sp,sp,32
    8000222c:	00008067          	ret
        return -1;
    80002230:	fff00513          	li	a0,-1
}
    80002234:	00008067          	ret

0000000080002238 <_ZN3TCB4joinEv>:
    bool isFinished() const { return finished; }
    80002238:	02854783          	lbu	a5,40(a0)

int TCB::join() {
    if (this->isFinished()) return -1;
    8000223c:	02079a63          	bnez	a5,80002270 <_ZN3TCB4joinEv+0x38>
int TCB::join() {
    80002240:	ff010113          	addi	sp,sp,-16
    80002244:	00113423          	sd	ra,8(sp)
    80002248:	00813023          	sd	s0,0(sp)
    8000224c:	01010413          	addi	s0,sp,16
    sem_wait(this->joiner);
    80002250:	03053503          	ld	a0,48(a0)
    80002254:	fffff097          	auipc	ra,0xfffff
    80002258:	358080e7          	jalr	856(ra) # 800015ac <_Z8sem_waitP4_sem>
    return 0;
    8000225c:	00000513          	li	a0,0
}
    80002260:	00813083          	ld	ra,8(sp)
    80002264:	00013403          	ld	s0,0(sp)
    80002268:	01010113          	addi	sp,sp,16
    8000226c:	00008067          	ret
    if (this->isFinished()) return -1;
    80002270:	fff00513          	li	a0,-1
}
    80002274:	00008067          	ret

0000000080002278 <_ZN3TCB10waitForAllEv>:

void TCB::waitForAll() {
    80002278:	fe010113          	addi	sp,sp,-32
    8000227c:	00113c23          	sd	ra,24(sp)
    80002280:	00813823          	sd	s0,16(sp)
    80002284:	00913423          	sd	s1,8(sp)
    80002288:	02010413          	addi	s0,sp,32
    for (auto curr = running->children.head; curr; curr = curr->next) {
    8000228c:	00009797          	auipc	a5,0x9
    80002290:	55c7b783          	ld	a5,1372(a5) # 8000b7e8 <_ZN3TCB7runningE>
    80002294:	0387b483          	ld	s1,56(a5)
    80002298:	00048c63          	beqz	s1,800022b0 <_ZN3TCB10waitForAllEv+0x38>
        thread_join(curr->data);
    8000229c:	0004b503          	ld	a0,0(s1)
    800022a0:	fffff097          	auipc	ra,0xfffff
    800022a4:	1d0080e7          	jalr	464(ra) # 80001470 <_Z11thread_joinP3TCB>
    for (auto curr = running->children.head; curr; curr = curr->next) {
    800022a8:	0084b483          	ld	s1,8(s1)
    800022ac:	fedff06f          	j	80002298 <_ZN3TCB10waitForAllEv+0x20>
    }
}
    800022b0:	01813083          	ld	ra,24(sp)
    800022b4:	01013403          	ld	s0,16(sp)
    800022b8:	00813483          	ld	s1,8(sp)
    800022bc:	02010113          	addi	sp,sp,32
    800022c0:	00008067          	ret

00000000800022c4 <_ZN3TCB12setMaxThreadEi>:

void TCB::setMaxThread(int number) {
    800022c4:	ff010113          	addi	sp,sp,-16
    800022c8:	00813423          	sd	s0,8(sp)
    800022cc:	01010413          	addi	s0,sp,16
    max_threads = number;
    800022d0:	00009797          	auipc	a5,0x9
    800022d4:	2ca7b423          	sd	a0,712(a5) # 8000b598 <_ZN3TCB11max_threadsE>
}
    800022d8:	00813403          	ld	s0,8(sp)
    800022dc:	01010113          	addi	sp,sp,16
    800022e0:	00008067          	ret

00000000800022e4 <_ZN4_sem8sem_openEPPS_l>:
#include "../h/_sem.hpp"
#include "../h/scheduler.hpp"
#include "../test/printing.hpp"

int _sem::sem_open(sem_t *handle, long init) {
    if (handle == nullptr) {
    800022e4:	06050863          	beqz	a0,80002354 <_ZN4_sem8sem_openEPPS_l+0x70>
int _sem::sem_open(sem_t *handle, long init) {
    800022e8:	fe010113          	addi	sp,sp,-32
    800022ec:	00113c23          	sd	ra,24(sp)
    800022f0:	00813823          	sd	s0,16(sp)
    800022f4:	00913423          	sd	s1,8(sp)
    800022f8:	01213023          	sd	s2,0(sp)
    800022fc:	02010413          	addi	s0,sp,32
    80002300:	00050493          	mv	s1,a0
    80002304:	00058913          	mv	s2,a1
        return -1;
    }
    sem_t semaphore = new _sem();
    80002308:	02800513          	li	a0,40
    8000230c:	fffff097          	auipc	ra,0xfffff
    80002310:	6ac080e7          	jalr	1708(ra) # 800019b8 <_Znwm>

typedef TCB *thread_t;

class _sem {
public:
    _sem(unsigned init = 1) : value(init), closed(false) {}
    80002314:	00009797          	auipc	a5,0x9
    80002318:	29c78793          	addi	a5,a5,668 # 8000b5b0 <_ZTV4_sem+0x10>
    8000231c:	00f53023          	sd	a5,0(a0)
    80002320:	00050823          	sb	zero,16(a0)
        List() : head(0), tail(0) {}
    80002324:	00053c23          	sd	zero,24(a0)
    80002328:	02053023          	sd	zero,32(a0)
    semaphore->value = init;
    8000232c:	01253423          	sd	s2,8(a0)
    semaphore->closed = false;
    *handle = semaphore;
    80002330:	00a4b023          	sd	a0,0(s1)

    if (*handle == nullptr) {
    80002334:	02050463          	beqz	a0,8000235c <_ZN4_sem8sem_openEPPS_l+0x78>
        return -2;
    }
    return 0;
    80002338:	00000513          	li	a0,0
}
    8000233c:	01813083          	ld	ra,24(sp)
    80002340:	01013403          	ld	s0,16(sp)
    80002344:	00813483          	ld	s1,8(sp)
    80002348:	00013903          	ld	s2,0(sp)
    8000234c:	02010113          	addi	sp,sp,32
    80002350:	00008067          	ret
        return -1;
    80002354:	fff00513          	li	a0,-1
}
    80002358:	00008067          	ret
        return -2;
    8000235c:	ffe00513          	li	a0,-2
    80002360:	fddff06f          	j	8000233c <_ZN4_sem8sem_openEPPS_l+0x58>

0000000080002364 <_ZN4_sem9sem_closeEPS_>:


int _sem::sem_close(sem_t handle) {
    if (handle == nullptr || handle->closed) {
    80002364:	0a050063          	beqz	a0,80002404 <_ZN4_sem9sem_closeEPS_+0xa0>
int _sem::sem_close(sem_t handle) {
    80002368:	fe010113          	addi	sp,sp,-32
    8000236c:	00113c23          	sd	ra,24(sp)
    80002370:	00813823          	sd	s0,16(sp)
    80002374:	00913423          	sd	s1,8(sp)
    80002378:	02010413          	addi	s0,sp,32
    8000237c:	00050493          	mv	s1,a0
    if (handle == nullptr || handle->closed) {
    80002380:	01054783          	lbu	a5,16(a0)
    80002384:	08079463          	bnez	a5,8000240c <_ZN4_sem9sem_closeEPS_+0xa8>
        return -1;
    }
    handle->closed = true;
    80002388:	00100793          	li	a5,1
    8000238c:	00f50823          	sb	a5,16(a0)
            return ret;
        }

        T *peekFirst()
        {
            if (!head) { return 0; }
    80002390:	01853503          	ld	a0,24(a0)
    80002394:	02050263          	beqz	a0,800023b8 <_ZN4_sem9sem_closeEPS_+0x54>
            return head->data;
    80002398:	00053503          	ld	a0,0(a0)
    8000239c:	01c0006f          	j	800023b8 <_ZN4_sem9sem_closeEPS_+0x54>
            if (!head) { tail = 0; }
    800023a0:	0204b023          	sd	zero,32(s1)
            delete elem;
    800023a4:	fffff097          	auipc	ra,0xfffff
    800023a8:	664080e7          	jalr	1636(ra) # 80001a08 <_ZdlPv>
            if (!head) { return 0; }
    800023ac:	0184b783          	ld	a5,24(s1)
    800023b0:	02078863          	beqz	a5,800023e0 <_ZN4_sem9sem_closeEPS_+0x7c>
            return head->data;
    800023b4:	0007b503          	ld	a0,0(a5)
    for (TCB *thread = handle->blokiraneNiti.peekFirst();
         thread != nullptr; thread = handle->blokiraneNiti.peekFirst()) {
    800023b8:	02050463          	beqz	a0,800023e0 <_ZN4_sem9sem_closeEPS_+0x7c>

    void setBlocked(bool value) { blocked = value; }
    800023bc:	020504a3          	sb	zero,41(a0)
        thread->setBlocked(false);  // Oznaci nit kao deblokiranu
        Scheduler::put(thread);     //
    800023c0:	00000097          	auipc	ra,0x0
    800023c4:	284080e7          	jalr	644(ra) # 80002644 <_ZN9Scheduler3putEP3TCB>
            if (!head) { return 0; }
    800023c8:	0184b503          	ld	a0,24(s1)
    800023cc:	fe0500e3          	beqz	a0,800023ac <_ZN4_sem9sem_closeEPS_+0x48>
            head = head->next;
    800023d0:	00853783          	ld	a5,8(a0)
    800023d4:	00f4bc23          	sd	a5,24(s1)
            if (!head) { tail = 0; }
    800023d8:	fc0796e3          	bnez	a5,800023a4 <_ZN4_sem9sem_closeEPS_+0x40>
    800023dc:	fc5ff06f          	j	800023a0 <_ZN4_sem9sem_closeEPS_+0x3c>
        handle->blokiraneNiti.removeFirst();  // ukloni  nit iz liste
    }

    if (MemoryAllocator::mem_free(handle)) {
    800023e0:	00048513          	mv	a0,s1
    800023e4:	00000097          	auipc	ra,0x0
    800023e8:	4fc080e7          	jalr	1276(ra) # 800028e0 <_ZN15MemoryAllocator8mem_freeEPv>
    800023ec:	02051463          	bnez	a0,80002414 <_ZN4_sem9sem_closeEPS_+0xb0>
        return -2;
    }

    return 0;
}
    800023f0:	01813083          	ld	ra,24(sp)
    800023f4:	01013403          	ld	s0,16(sp)
    800023f8:	00813483          	ld	s1,8(sp)
    800023fc:	02010113          	addi	sp,sp,32
    80002400:	00008067          	ret
        return -1;
    80002404:	fff00513          	li	a0,-1
}
    80002408:	00008067          	ret
        return -1;
    8000240c:	fff00513          	li	a0,-1
    80002410:	fe1ff06f          	j	800023f0 <_ZN4_sem9sem_closeEPS_+0x8c>
        return -2;
    80002414:	ffe00513          	li	a0,-2
    80002418:	fd9ff06f          	j	800023f0 <_ZN4_sem9sem_closeEPS_+0x8c>

000000008000241c <_ZN4_sem8sem_waitEPS_>:


int _sem::sem_wait(sem_t id) {
    if (id == nullptr || id->closed) {
    8000241c:	0a050a63          	beqz	a0,800024d0 <_ZN4_sem8sem_waitEPS_+0xb4>
int _sem::sem_wait(sem_t id) {
    80002420:	fe010113          	addi	sp,sp,-32
    80002424:	00113c23          	sd	ra,24(sp)
    80002428:	00813823          	sd	s0,16(sp)
    8000242c:	00913423          	sd	s1,8(sp)
    80002430:	01213023          	sd	s2,0(sp)
    80002434:	02010413          	addi	s0,sp,32
    80002438:	00050493          	mv	s1,a0
    if (id == nullptr || id->closed) {
    8000243c:	01054783          	lbu	a5,16(a0)
    80002440:	08079c63          	bnez	a5,800024d8 <_ZN4_sem8sem_waitEPS_+0xbc>
        return -1;
    }

    if (id->value-- <= 0) {//ako je semafor nula ili manji, blokiraj nit
    80002444:	00853783          	ld	a5,8(a0)
    80002448:	fff78713          	addi	a4,a5,-1
    8000244c:	00e53423          	sd	a4,8(a0)
    80002450:	02f05463          	blez	a5,80002478 <_ZN4_sem8sem_waitEPS_+0x5c>
        TCB::running->setBlocked(true);  //  nit blokirana
        id->blokiraneNiti.addLast(TCB::running);  // Dodaj nit na listu blokiranih
        TCB::yield();
    }
    if (id->closed)
    80002454:	0104c783          	lbu	a5,16(s1)
    80002458:	06079863          	bnez	a5,800024c8 <_ZN4_sem8sem_waitEPS_+0xac>
        return -1;
    else
        return 0;
    8000245c:	00000513          	li	a0,0
}
    80002460:	01813083          	ld	ra,24(sp)
    80002464:	01013403          	ld	s0,16(sp)
    80002468:	00813483          	ld	s1,8(sp)
    8000246c:	00013903          	ld	s2,0(sp)
    80002470:	02010113          	addi	sp,sp,32
    80002474:	00008067          	ret
        TCB::running->setBlocked(true);  //  nit blokirana
    80002478:	00009797          	auipc	a5,0x9
    8000247c:	3107b783          	ld	a5,784(a5) # 8000b788 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002480:	0007b903          	ld	s2,0(a5)
    80002484:	00100793          	li	a5,1
    80002488:	02f904a3          	sb	a5,41(s2)
            Elem *elem = new Elem(data, 0);
    8000248c:	01000513          	li	a0,16
    80002490:	fffff097          	auipc	ra,0xfffff
    80002494:	528080e7          	jalr	1320(ra) # 800019b8 <_Znwm>
            Elem(T *data, Elem *next) : data(data), next(next) {}
    80002498:	01253023          	sd	s2,0(a0)
    8000249c:	00053423          	sd	zero,8(a0)
            if (tail)
    800024a0:	0204b783          	ld	a5,32(s1)
    800024a4:	00078c63          	beqz	a5,800024bc <_ZN4_sem8sem_waitEPS_+0xa0>
                tail->next = elem;
    800024a8:	00a7b423          	sd	a0,8(a5)
                tail = elem;
    800024ac:	02a4b023          	sd	a0,32(s1)
        TCB::yield();
    800024b0:	00000097          	auipc	ra,0x0
    800024b4:	b20080e7          	jalr	-1248(ra) # 80001fd0 <_ZN3TCB5yieldEv>
    800024b8:	f9dff06f          	j	80002454 <_ZN4_sem8sem_waitEPS_+0x38>
                head = tail = elem;
    800024bc:	02a4b023          	sd	a0,32(s1)
    800024c0:	00a4bc23          	sd	a0,24(s1)
    800024c4:	fedff06f          	j	800024b0 <_ZN4_sem8sem_waitEPS_+0x94>
        return -1;
    800024c8:	fff00513          	li	a0,-1
    800024cc:	f95ff06f          	j	80002460 <_ZN4_sem8sem_waitEPS_+0x44>
        return -1;
    800024d0:	fff00513          	li	a0,-1
}
    800024d4:	00008067          	ret
        return -1;
    800024d8:	fff00513          	li	a0,-1
    800024dc:	f85ff06f          	j	80002460 <_ZN4_sem8sem_waitEPS_+0x44>

00000000800024e0 <_ZN4_sem10sem_signalEPS_>:


int _sem::sem_signal(sem_t id) {
    if (id == nullptr) {
    800024e0:	08050a63          	beqz	a0,80002574 <_ZN4_sem10sem_signalEPS_+0x94>
int _sem::sem_signal(sem_t id) {
    800024e4:	fe010113          	addi	sp,sp,-32
    800024e8:	00113c23          	sd	ra,24(sp)
    800024ec:	00813823          	sd	s0,16(sp)
    800024f0:	00913423          	sd	s1,8(sp)
    800024f4:	01213023          	sd	s2,0(sp)
    800024f8:	02010413          	addi	s0,sp,32
    800024fc:	00050493          	mv	s1,a0
        return -1;
    }

    if (id->closed) {
    80002500:	01054783          	lbu	a5,16(a0)
    80002504:	06079c63          	bnez	a5,8000257c <_ZN4_sem10sem_signalEPS_+0x9c>
            if (!tail) { return 0; }
            return tail->data;
        }

        bool isEmpty() const {
            return head == nullptr or tail == nullptr;
    80002508:	01853503          	ld	a0,24(a0)
    8000250c:	02050c63          	beqz	a0,80002544 <_ZN4_sem10sem_signalEPS_+0x64>
    80002510:	0204b783          	ld	a5,32(s1)
    80002514:	02078863          	beqz	a5,80002544 <_ZN4_sem10sem_signalEPS_+0x64>
            head = head->next;
    80002518:	00853783          	ld	a5,8(a0)
    8000251c:	00f4bc23          	sd	a5,24(s1)
            if (!head) { tail = 0; }
    80002520:	04078663          	beqz	a5,8000256c <_ZN4_sem10sem_signalEPS_+0x8c>
            T *ret = elem->data;
    80002524:	00053903          	ld	s2,0(a0)
            delete elem;
    80002528:	fffff097          	auipc	ra,0xfffff
    8000252c:	4e0080e7          	jalr	1248(ra) # 80001a08 <_ZdlPv>

    // da li postoji neka blokirana nit

    if (!id->blokiraneNiti.isEmpty()) {
        TCB *thread = id->blokiraneNiti.removeFirst();  // ako da  deblokiraj prvu
        if (thread != nullptr) {
    80002530:	00090a63          	beqz	s2,80002544 <_ZN4_sem10sem_signalEPS_+0x64>
    80002534:	020904a3          	sb	zero,41(s2)

            thread->setBlocked(false);  // nije blokirana
            Scheduler::put(thread);  // ubaci
    80002538:	00090513          	mv	a0,s2
    8000253c:	00000097          	auipc	ra,0x0
    80002540:	108080e7          	jalr	264(ra) # 80002644 <_ZN9Scheduler3putEP3TCB>
        }
    }
    id->value++;
    80002544:	0084b783          	ld	a5,8(s1)
    80002548:	00178793          	addi	a5,a5,1
    8000254c:	00f4b423          	sd	a5,8(s1)
    return 0;
    80002550:	00000513          	li	a0,0
}
    80002554:	01813083          	ld	ra,24(sp)
    80002558:	01013403          	ld	s0,16(sp)
    8000255c:	00813483          	ld	s1,8(sp)
    80002560:	00013903          	ld	s2,0(sp)
    80002564:	02010113          	addi	sp,sp,32
    80002568:	00008067          	ret
            if (!head) { tail = 0; }
    8000256c:	0204b023          	sd	zero,32(s1)
    80002570:	fb5ff06f          	j	80002524 <_ZN4_sem10sem_signalEPS_+0x44>
        return -1;
    80002574:	fff00513          	li	a0,-1
}
    80002578:	00008067          	ret
        return -2;
    8000257c:	ffe00513          	li	a0,-2
    80002580:	fd5ff06f          	j	80002554 <_ZN4_sem10sem_signalEPS_+0x74>

0000000080002584 <_ZN4_sem11sem_trywaitEPS_>:

int _sem::sem_trywait(sem_t id) {
    80002584:	ff010113          	addi	sp,sp,-16
    80002588:	00813423          	sd	s0,8(sp)
    8000258c:	01010413          	addi	s0,sp,16
    if (id == nullptr) return -1;
    80002590:	02050263          	beqz	a0,800025b4 <_ZN4_sem11sem_trywaitEPS_+0x30>
    if (id->value <= 0) { // Ako je semafor vec zaključan, vraca 1
    80002594:	00853783          	ld	a5,8(a0)
    80002598:	02f05263          	blez	a5,800025bc <_ZN4_sem11sem_trywaitEPS_+0x38>
        return 1;
    }
    id->value--; // semafor nije zaključan, smanji vrednost semafora i vrati 0
    8000259c:	fff78793          	addi	a5,a5,-1
    800025a0:	00f53423          	sd	a5,8(a0)
    return 0;
    800025a4:	00000513          	li	a0,0
}
    800025a8:	00813403          	ld	s0,8(sp)
    800025ac:	01010113          	addi	sp,sp,16
    800025b0:	00008067          	ret
    if (id == nullptr) return -1;
    800025b4:	fff00513          	li	a0,-1
    800025b8:	ff1ff06f          	j	800025a8 <_ZN4_sem11sem_trywaitEPS_+0x24>
        return 1;
    800025bc:	00100513          	li	a0,1
    800025c0:	fe9ff06f          	j	800025a8 <_ZN4_sem11sem_trywaitEPS_+0x24>

00000000800025c4 <_ZN4_semD1Ev>:

    static int sem_signal(sem_t id);

    static int sem_trywait(sem_t id);

    virtual ~_sem() {}
    800025c4:	ff010113          	addi	sp,sp,-16
    800025c8:	00813423          	sd	s0,8(sp)
    800025cc:	01010413          	addi	s0,sp,16
    800025d0:	00813403          	ld	s0,8(sp)
    800025d4:	01010113          	addi	sp,sp,16
    800025d8:	00008067          	ret

00000000800025dc <_ZN4_semD0Ev>:
    800025dc:	ff010113          	addi	sp,sp,-16
    800025e0:	00113423          	sd	ra,8(sp)
    800025e4:	00813023          	sd	s0,0(sp)
    800025e8:	01010413          	addi	s0,sp,16
    800025ec:	fffff097          	auipc	ra,0xfffff
    800025f0:	41c080e7          	jalr	1052(ra) # 80001a08 <_ZdlPv>
    800025f4:	00813083          	ld	ra,8(sp)
    800025f8:	00013403          	ld	s0,0(sp)
    800025fc:	01010113          	addi	sp,sp,16
    80002600:	00008067          	ret

0000000080002604 <_Z41__static_initialization_and_destruction_0ii>:
}


TCB *Scheduler::get() {
    return readyThreadQueue.removeFirst();
    80002604:	ff010113          	addi	sp,sp,-16
    80002608:	00813423          	sd	s0,8(sp)
    8000260c:	01010413          	addi	s0,sp,16
    80002610:	00100793          	li	a5,1
    80002614:	00f50863          	beq	a0,a5,80002624 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002618:	00813403          	ld	s0,8(sp)
    8000261c:	01010113          	addi	sp,sp,16
    80002620:	00008067          	ret
    80002624:	000107b7          	lui	a5,0x10
    80002628:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000262c:	fef596e3          	bne	a1,a5,80002618 <_Z41__static_initialization_and_destruction_0ii+0x14>
        List() : head(0), tail(0) {}
    80002630:	00009797          	auipc	a5,0x9
    80002634:	1c078793          	addi	a5,a5,448 # 8000b7f0 <_ZN9Scheduler16readyThreadQueueE>
    80002638:	0007b023          	sd	zero,0(a5)
    8000263c:	0007b423          	sd	zero,8(a5)
    80002640:	fd9ff06f          	j	80002618 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002644 <_ZN9Scheduler3putEP3TCB>:
void Scheduler::put(TCB *ccb) {
    80002644:	fe010113          	addi	sp,sp,-32
    80002648:	00113c23          	sd	ra,24(sp)
    8000264c:	00813823          	sd	s0,16(sp)
    80002650:	00913423          	sd	s1,8(sp)
    80002654:	02010413          	addi	s0,sp,32
    80002658:	00050493          	mv	s1,a0
            Elem *elem = new Elem(data, 0);
    8000265c:	01000513          	li	a0,16
    80002660:	fffff097          	auipc	ra,0xfffff
    80002664:	358080e7          	jalr	856(ra) # 800019b8 <_Znwm>
            Elem(T *data, Elem *next) : data(data), next(next) {}
    80002668:	00953023          	sd	s1,0(a0)
    8000266c:	00053423          	sd	zero,8(a0)
            if (tail)
    80002670:	00009797          	auipc	a5,0x9
    80002674:	1887b783          	ld	a5,392(a5) # 8000b7f8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002678:	02078263          	beqz	a5,8000269c <_ZN9Scheduler3putEP3TCB+0x58>
                tail->next = elem;
    8000267c:	00a7b423          	sd	a0,8(a5)
                tail = elem;
    80002680:	00009797          	auipc	a5,0x9
    80002684:	16a7bc23          	sd	a0,376(a5) # 8000b7f8 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    80002688:	01813083          	ld	ra,24(sp)
    8000268c:	01013403          	ld	s0,16(sp)
    80002690:	00813483          	ld	s1,8(sp)
    80002694:	02010113          	addi	sp,sp,32
    80002698:	00008067          	ret
                head = tail = elem;
    8000269c:	00009797          	auipc	a5,0x9
    800026a0:	15478793          	addi	a5,a5,340 # 8000b7f0 <_ZN9Scheduler16readyThreadQueueE>
    800026a4:	00a7b423          	sd	a0,8(a5)
    800026a8:	00a7b023          	sd	a0,0(a5)
    800026ac:	fddff06f          	j	80002688 <_ZN9Scheduler3putEP3TCB+0x44>

00000000800026b0 <_ZN9Scheduler3getEv>:
TCB *Scheduler::get() {
    800026b0:	fe010113          	addi	sp,sp,-32
    800026b4:	00113c23          	sd	ra,24(sp)
    800026b8:	00813823          	sd	s0,16(sp)
    800026bc:	00913423          	sd	s1,8(sp)
    800026c0:	02010413          	addi	s0,sp,32
            if (!head) { return 0; }
    800026c4:	00009517          	auipc	a0,0x9
    800026c8:	12c53503          	ld	a0,300(a0) # 8000b7f0 <_ZN9Scheduler16readyThreadQueueE>
    800026cc:	04050263          	beqz	a0,80002710 <_ZN9Scheduler3getEv+0x60>
            head = head->next;
    800026d0:	00853783          	ld	a5,8(a0)
    800026d4:	00009717          	auipc	a4,0x9
    800026d8:	10f73e23          	sd	a5,284(a4) # 8000b7f0 <_ZN9Scheduler16readyThreadQueueE>
            if (!head) { tail = 0; }
    800026dc:	02078463          	beqz	a5,80002704 <_ZN9Scheduler3getEv+0x54>
            T *ret = elem->data;
    800026e0:	00053483          	ld	s1,0(a0)
            delete elem;
    800026e4:	fffff097          	auipc	ra,0xfffff
    800026e8:	324080e7          	jalr	804(ra) # 80001a08 <_ZdlPv>
    800026ec:	00048513          	mv	a0,s1
    800026f0:	01813083          	ld	ra,24(sp)
    800026f4:	01013403          	ld	s0,16(sp)
    800026f8:	00813483          	ld	s1,8(sp)
    800026fc:	02010113          	addi	sp,sp,32
    80002700:	00008067          	ret
            if (!head) { tail = 0; }
    80002704:	00009797          	auipc	a5,0x9
    80002708:	0e07ba23          	sd	zero,244(a5) # 8000b7f8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    8000270c:	fd5ff06f          	j	800026e0 <_ZN9Scheduler3getEv+0x30>
            if (!head) { return 0; }
    80002710:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80002714:	fd9ff06f          	j	800026ec <_ZN9Scheduler3getEv+0x3c>

0000000080002718 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002718:	ff010113          	addi	sp,sp,-16
    8000271c:	00113423          	sd	ra,8(sp)
    80002720:	00813023          	sd	s0,0(sp)
    80002724:	01010413          	addi	s0,sp,16
    80002728:	000105b7          	lui	a1,0x10
    8000272c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002730:	00100513          	li	a0,1
    80002734:	00000097          	auipc	ra,0x0
    80002738:	ed0080e7          	jalr	-304(ra) # 80002604 <_Z41__static_initialization_and_destruction_0ii>
    8000273c:	00813083          	ld	ra,8(sp)
    80002740:	00013403          	ld	s0,0(sp)
    80002744:	01010113          	addi	sp,sp,16
    80002748:	00008067          	ret

000000008000274c <_ZN15MemoryAllocator4initEv>:
#include "../h/MemoryAllocator.hpp"
#include "../test/printing.hpp"

Block *MemoryAllocator::head = nullptr;

void MemoryAllocator::init() {
    8000274c:	ff010113          	addi	sp,sp,-16
    80002750:	00813423          	sd	s0,8(sp)
    80002754:	01010413          	addi	s0,sp,16
    size_t total_heap_size = (char *) HEAP_END_ADDR - (char *) HEAP_START_ADDR;
    80002758:	00009797          	auipc	a5,0x9
    8000275c:	0387b783          	ld	a5,56(a5) # 8000b790 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002760:	0007b703          	ld	a4,0(a5)
    80002764:	00009797          	auipc	a5,0x9
    80002768:	0147b783          	ld	a5,20(a5) # 8000b778 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000276c:	0007b783          	ld	a5,0(a5)
    80002770:	40f70733          	sub	a4,a4,a5

    head = (Block *) HEAP_START_ADDR; //incijalizujemo listu blokova
    80002774:	00009697          	auipc	a3,0x9
    80002778:	08c68693          	addi	a3,a3,140 # 8000b800 <_ZN15MemoryAllocator4headE>
    8000277c:	00f6b023          	sd	a5,0(a3)
    head->size = total_heap_size - sizeof(Block); //velicina 1.blk
    80002780:	fe87071b          	addiw	a4,a4,-24
    80002784:	00e7a823          	sw	a4,16(a5)
    head->free = true;
    80002788:	00100713          	li	a4,1
    8000278c:	00e78a23          	sb	a4,20(a5)
    head->next = nullptr; //nema sl nema prethodni
    80002790:	0007b023          	sd	zero,0(a5)
    head->prev = nullptr;
    80002794:	0006b783          	ld	a5,0(a3)
    80002798:	0007b423          	sd	zero,8(a5)
}
    8000279c:	00813403          	ld	s0,8(sp)
    800027a0:	01010113          	addi	sp,sp,16
    800027a4:	00008067          	ret

00000000800027a8 <_ZN15MemoryAllocator9mem_allocEm>:

void *MemoryAllocator::mem_alloc(size_t s) {
    800027a8:	ff010113          	addi	sp,sp,-16
    800027ac:	00813423          	sd	s0,8(sp)
    800027b0:	01010413          	addi	s0,sp,16
    if (s <= 0) return nullptr;
    800027b4:	0c050463          	beqz	a0,8000287c <_ZN15MemoryAllocator9mem_allocEm+0xd4>

    size_t size = s * MEM_BLOCK_SIZE;
    800027b8:	00651713          	slli	a4,a0,0x6
    Block *blk = head;
    800027bc:	00009517          	auipc	a0,0x9
    800027c0:	04453503          	ld	a0,68(a0) # 8000b800 <_ZN15MemoryAllocator4headE>
    800027c4:	0080006f          	j	800027cc <_ZN15MemoryAllocator9mem_allocEm+0x24>

    while (blk != nullptr) {
        if (blk->free && blk->size >= size) {
            break;
        }
        blk = blk->next;
    800027c8:	00053503          	ld	a0,0(a0)
    while (blk != nullptr) {
    800027cc:	00050a63          	beqz	a0,800027e0 <_ZN15MemoryAllocator9mem_allocEm+0x38>
        if (blk->free && blk->size >= size) {
    800027d0:	01454783          	lbu	a5,20(a0)
    800027d4:	fe078ae3          	beqz	a5,800027c8 <_ZN15MemoryAllocator9mem_allocEm+0x20>
    800027d8:	01056783          	lwu	a5,16(a0)
    800027dc:	fee7e6e3          	bltu	a5,a4,800027c8 <_ZN15MemoryAllocator9mem_allocEm+0x20>
    }

    if (blk == nullptr) return nullptr; // nema dovoljno velikog bloka
    800027e0:	04050e63          	beqz	a0,8000283c <_ZN15MemoryAllocator9mem_allocEm+0x94>
    if (blk->size > size + sizeof(Block)) {
    800027e4:	01052683          	lw	a3,16(a0)
    800027e8:	02069613          	slli	a2,a3,0x20
    800027ec:	02065613          	srli	a2,a2,0x20
    800027f0:	01870793          	addi	a5,a4,24
    800027f4:	04c7fa63          	bgeu	a5,a2,80002848 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
        Block *newBlock = (Block *) ((char *) blk + sizeof(Block) + size);
    800027f8:	00f507b3          	add	a5,a0,a5
        newBlock->size = blk->size - size - sizeof(Block);
    800027fc:	40e686bb          	subw	a3,a3,a4
    80002800:	fe86869b          	addiw	a3,a3,-24
    80002804:	00d7a823          	sw	a3,16(a5)
        newBlock->free = true;
    80002808:	00100693          	li	a3,1
    8000280c:	00d78a23          	sb	a3,20(a5)
        newBlock->next = blk->next;
    80002810:	00053683          	ld	a3,0(a0)
    80002814:	00d7b023          	sd	a3,0(a5)
        newBlock->prev = blk->prev;
    80002818:	00853683          	ld	a3,8(a0)
    8000281c:	00d7b423          	sd	a3,8(a5)

        blk->next = newBlock;
    80002820:	00f53023          	sd	a5,0(a0)
        blk->size = size;
    80002824:	00e52823          	sw	a4,16(a0)
    } else {
        if (blk->prev) blk->prev->next = blk->next;
        if (blk->next) blk->next->prev = blk->prev;
    }
    if (blk == head) head = blk->next;
    80002828:	00009797          	auipc	a5,0x9
    8000282c:	fd87b783          	ld	a5,-40(a5) # 8000b800 <_ZN15MemoryAllocator4headE>
    80002830:	02a78e63          	beq	a5,a0,8000286c <_ZN15MemoryAllocator9mem_allocEm+0xc4>
    blk->free = false;
    80002834:	00050a23          	sb	zero,20(a0)
    return (void *) ((char *) blk + sizeof(Block));
    80002838:	01850513          	addi	a0,a0,24
}
    8000283c:	00813403          	ld	s0,8(sp)
    80002840:	01010113          	addi	sp,sp,16
    80002844:	00008067          	ret
        if (blk->prev) blk->prev->next = blk->next;
    80002848:	00853783          	ld	a5,8(a0)
    8000284c:	00078663          	beqz	a5,80002858 <_ZN15MemoryAllocator9mem_allocEm+0xb0>
    80002850:	00053703          	ld	a4,0(a0)
    80002854:	00e7b023          	sd	a4,0(a5)
        if (blk->next) blk->next->prev = blk->prev;
    80002858:	00053783          	ld	a5,0(a0)
    8000285c:	fc0786e3          	beqz	a5,80002828 <_ZN15MemoryAllocator9mem_allocEm+0x80>
    80002860:	00853703          	ld	a4,8(a0)
    80002864:	00e7b423          	sd	a4,8(a5)
    80002868:	fc1ff06f          	j	80002828 <_ZN15MemoryAllocator9mem_allocEm+0x80>
    if (blk == head) head = blk->next;
    8000286c:	00053783          	ld	a5,0(a0)
    80002870:	00009717          	auipc	a4,0x9
    80002874:	f8f73823          	sd	a5,-112(a4) # 8000b800 <_ZN15MemoryAllocator4headE>
    80002878:	fbdff06f          	j	80002834 <_ZN15MemoryAllocator9mem_allocEm+0x8c>
    if (s <= 0) return nullptr;
    8000287c:	00000513          	li	a0,0
    80002880:	fbdff06f          	j	8000283c <_ZN15MemoryAllocator9mem_allocEm+0x94>

0000000080002884 <_ZN15MemoryAllocator5mergeEP5BlockS1_>:

    return 0;
}


void MemoryAllocator::merge(Block *prvi, Block *drugi) {
    80002884:	ff010113          	addi	sp,sp,-16
    80002888:	00813423          	sd	s0,8(sp)
    8000288c:	01010413          	addi	s0,sp,16
    if (prvi == nullptr || drugi == nullptr) {
    80002890:	02050063          	beqz	a0,800028b0 <_ZN15MemoryAllocator5mergeEP5BlockS1_+0x2c>
    80002894:	00058e63          	beqz	a1,800028b0 <_ZN15MemoryAllocator5mergeEP5BlockS1_+0x2c>
        return;
    }
    if ((char *) prvi + prvi->size + sizeof(Block) != (char *) drugi) {
    80002898:	01052703          	lw	a4,16(a0)
    8000289c:	02071793          	slli	a5,a4,0x20
    800028a0:	0207d793          	srli	a5,a5,0x20
    800028a4:	01878793          	addi	a5,a5,24
    800028a8:	00f507b3          	add	a5,a0,a5
    800028ac:	00b78863          	beq	a5,a1,800028bc <_ZN15MemoryAllocator5mergeEP5BlockS1_+0x38>
    prvi->next = drugi->next;
    if (prvi->next != nullptr) {
        prvi->next->prev = prvi;
    }

}
    800028b0:	00813403          	ld	s0,8(sp)
    800028b4:	01010113          	addi	sp,sp,16
    800028b8:	00008067          	ret
    prvi->size += drugi->size + sizeof(Block);
    800028bc:	0105a783          	lw	a5,16(a1)
    800028c0:	00f7073b          	addw	a4,a4,a5
    800028c4:	0187071b          	addiw	a4,a4,24
    800028c8:	00e52823          	sw	a4,16(a0)
    prvi->next = drugi->next;
    800028cc:	0005b783          	ld	a5,0(a1)
    800028d0:	00f53023          	sd	a5,0(a0)
    if (prvi->next != nullptr) {
    800028d4:	fc078ee3          	beqz	a5,800028b0 <_ZN15MemoryAllocator5mergeEP5BlockS1_+0x2c>
        prvi->next->prev = prvi;
    800028d8:	00a7b423          	sd	a0,8(a5)
    800028dc:	fd5ff06f          	j	800028b0 <_ZN15MemoryAllocator5mergeEP5BlockS1_+0x2c>

00000000800028e0 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (addr == nullptr || addr > HEAP_END_ADDR || addr < HEAP_START_ADDR) return -1;
    800028e0:	0e050463          	beqz	a0,800029c8 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    800028e4:	00009797          	auipc	a5,0x9
    800028e8:	eac7b783          	ld	a5,-340(a5) # 8000b790 <_GLOBAL_OFFSET_TABLE_+0x28>
    800028ec:	0007b783          	ld	a5,0(a5)
    800028f0:	0ea7e063          	bltu	a5,a0,800029d0 <_ZN15MemoryAllocator8mem_freeEPv+0xf0>
    800028f4:	00009797          	auipc	a5,0x9
    800028f8:	e847b783          	ld	a5,-380(a5) # 8000b778 <_GLOBAL_OFFSET_TABLE_+0x10>
    800028fc:	0007b783          	ld	a5,0(a5)
    80002900:	0cf56c63          	bltu	a0,a5,800029d8 <_ZN15MemoryAllocator8mem_freeEPv+0xf8>
int MemoryAllocator::mem_free(void *addr) {
    80002904:	fe010113          	addi	sp,sp,-32
    80002908:	00113c23          	sd	ra,24(sp)
    8000290c:	00813823          	sd	s0,16(sp)
    80002910:	00913423          	sd	s1,8(sp)
    80002914:	01213023          	sd	s2,0(sp)
    80002918:	02010413          	addi	s0,sp,32
    Block *trenutni = (Block *) ((char *) addr - sizeof(Block)); // predji na blok
    8000291c:	fe850493          	addi	s1,a0,-24
    if (trenutni->free) return -2; //slobodan
    80002920:	ffc54783          	lbu	a5,-4(a0)
    80002924:	0a079e63          	bnez	a5,800029e0 <_ZN15MemoryAllocator8mem_freeEPv+0x100>
    trenutni->free = true;
    80002928:	00100793          	li	a5,1
    8000292c:	fef50e23          	sb	a5,-4(a0)
    for (sledeci = head; sledeci->next; sledeci = sledeci->next) {
    80002930:	00009797          	auipc	a5,0x9
    80002934:	ed07b783          	ld	a5,-304(a5) # 8000b800 <_ZN15MemoryAllocator4headE>
    80002938:	00078593          	mv	a1,a5
    8000293c:	0007b783          	ld	a5,0(a5)
    80002940:	00078463          	beqz	a5,80002948 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
        if (sledeci > trenutni) break;
    80002944:	feb4fae3          	bgeu	s1,a1,80002938 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    if (!sledeci->next and trenutni > sledeci) {
    80002948:	06078263          	beqz	a5,800029ac <_ZN15MemoryAllocator8mem_freeEPv+0xcc>
    else predhodni = sledeci->prev;
    8000294c:	0085b903          	ld	s2,8(a1)
    if (predhodni) predhodni->next = trenutni;
    80002950:	00090463          	beqz	s2,80002958 <_ZN15MemoryAllocator8mem_freeEPv+0x78>
    80002954:	00993023          	sd	s1,0(s2)
    trenutni->prev = predhodni;
    80002958:	ff253823          	sd	s2,-16(a0)
    if (sledeci) sledeci->prev = trenutni;
    8000295c:	00058463          	beqz	a1,80002964 <_ZN15MemoryAllocator8mem_freeEPv+0x84>
    80002960:	0095b423          	sd	s1,8(a1)
    trenutni->next = sledeci;
    80002964:	feb53423          	sd	a1,-24(a0)
    if (sledeci == head) head = trenutni;
    80002968:	00009797          	auipc	a5,0x9
    8000296c:	e987b783          	ld	a5,-360(a5) # 8000b800 <_ZN15MemoryAllocator4headE>
    80002970:	04b78663          	beq	a5,a1,800029bc <_ZN15MemoryAllocator8mem_freeEPv+0xdc>
    merge(trenutni, sledeci); // spoji sa sl blokom ako je slobodan
    80002974:	00048513          	mv	a0,s1
    80002978:	00000097          	auipc	ra,0x0
    8000297c:	f0c080e7          	jalr	-244(ra) # 80002884 <_ZN15MemoryAllocator5mergeEP5BlockS1_>
    merge(predhodni, trenutni); // sa prethodnim  ako je slobodan
    80002980:	00048593          	mv	a1,s1
    80002984:	00090513          	mv	a0,s2
    80002988:	00000097          	auipc	ra,0x0
    8000298c:	efc080e7          	jalr	-260(ra) # 80002884 <_ZN15MemoryAllocator5mergeEP5BlockS1_>
    return 0;
    80002990:	00000513          	li	a0,0
}
    80002994:	01813083          	ld	ra,24(sp)
    80002998:	01013403          	ld	s0,16(sp)
    8000299c:	00813483          	ld	s1,8(sp)
    800029a0:	00013903          	ld	s2,0(sp)
    800029a4:	02010113          	addi	sp,sp,32
    800029a8:	00008067          	ret
    if (!sledeci->next and trenutni > sledeci) {
    800029ac:	fa95f0e3          	bgeu	a1,s1,8000294c <_ZN15MemoryAllocator8mem_freeEPv+0x6c>
        predhodni = sledeci; sledeci = nullptr;
    800029b0:	00058913          	mv	s2,a1
    800029b4:	00078593          	mv	a1,a5
    800029b8:	f99ff06f          	j	80002950 <_ZN15MemoryAllocator8mem_freeEPv+0x70>
    if (sledeci == head) head = trenutni;
    800029bc:	00009797          	auipc	a5,0x9
    800029c0:	e497b223          	sd	s1,-444(a5) # 8000b800 <_ZN15MemoryAllocator4headE>
    800029c4:	fb1ff06f          	j	80002974 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    if (addr == nullptr || addr > HEAP_END_ADDR || addr < HEAP_START_ADDR) return -1;
    800029c8:	fff00513          	li	a0,-1
    800029cc:	00008067          	ret
    800029d0:	fff00513          	li	a0,-1
    800029d4:	00008067          	ret
    800029d8:	fff00513          	li	a0,-1
}
    800029dc:	00008067          	ret
    if (trenutni->free) return -2; //slobodan
    800029e0:	ffe00513          	li	a0,-2
    800029e4:	fb1ff06f          	j	80002994 <_ZN15MemoryAllocator8mem_freeEPv+0xb4>

00000000800029e8 <_ZN15MemoryAllocator5printEv>:

void MemoryAllocator::print() {
    800029e8:	fe010113          	addi	sp,sp,-32
    800029ec:	00113c23          	sd	ra,24(sp)
    800029f0:	00813823          	sd	s0,16(sp)
    800029f4:	00913423          	sd	s1,8(sp)
    800029f8:	02010413          	addi	s0,sp,32
    printString("--------------------------------------------------\n");
    800029fc:	00006517          	auipc	a0,0x6
    80002a00:	77c50513          	addi	a0,a0,1916 # 80009178 <CONSOLE_STATUS+0x168>
    80002a04:	00002097          	auipc	ra,0x2
    80002a08:	56c080e7          	jalr	1388(ra) # 80004f70 <_Z11printStringPKc>
    for (Block *curr = head; curr; curr = curr->next) {
    80002a0c:	00009497          	auipc	s1,0x9
    80002a10:	df44b483          	ld	s1,-524(s1) # 8000b800 <_ZN15MemoryAllocator4headE>
    80002a14:	0c048063          	beqz	s1,80002ad4 <_ZN15MemoryAllocator5printEv+0xec>
        printInt((uint64) curr);
    80002a18:	00000613          	li	a2,0
    80002a1c:	00a00593          	li	a1,10
    80002a20:	0004851b          	sext.w	a0,s1
    80002a24:	00002097          	auipc	ra,0x2
    80002a28:	6fc080e7          	jalr	1788(ra) # 80005120 <_Z8printIntiii>
        printString(": ");
    80002a2c:	00006517          	auipc	a0,0x6
    80002a30:	78450513          	addi	a0,a0,1924 # 800091b0 <CONSOLE_STATUS+0x1a0>
    80002a34:	00002097          	auipc	ra,0x2
    80002a38:	53c080e7          	jalr	1340(ra) # 80004f70 <_Z11printStringPKc>
        printInt((uint64) curr->prev);
    80002a3c:	00000613          	li	a2,0
    80002a40:	00a00593          	li	a1,10
    80002a44:	0084a503          	lw	a0,8(s1)
    80002a48:	00002097          	auipc	ra,0x2
    80002a4c:	6d8080e7          	jalr	1752(ra) # 80005120 <_Z8printIntiii>
        printString(" ");
    80002a50:	00006517          	auipc	a0,0x6
    80002a54:	76850513          	addi	a0,a0,1896 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80002a58:	00002097          	auipc	ra,0x2
    80002a5c:	518080e7          	jalr	1304(ra) # 80004f70 <_Z11printStringPKc>
        printInt(curr->size);
    80002a60:	00000613          	li	a2,0
    80002a64:	00a00593          	li	a1,10
    80002a68:	0104a503          	lw	a0,16(s1)
    80002a6c:	00002097          	auipc	ra,0x2
    80002a70:	6b4080e7          	jalr	1716(ra) # 80005120 <_Z8printIntiii>
        printString(" ");
    80002a74:	00006517          	auipc	a0,0x6
    80002a78:	74450513          	addi	a0,a0,1860 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80002a7c:	00002097          	auipc	ra,0x2
    80002a80:	4f4080e7          	jalr	1268(ra) # 80004f70 <_Z11printStringPKc>
        printInt(curr->free);
    80002a84:	00000613          	li	a2,0
    80002a88:	00a00593          	li	a1,10
    80002a8c:	0144c503          	lbu	a0,20(s1)
    80002a90:	00002097          	auipc	ra,0x2
    80002a94:	690080e7          	jalr	1680(ra) # 80005120 <_Z8printIntiii>
        printString(" ");
    80002a98:	00006517          	auipc	a0,0x6
    80002a9c:	72050513          	addi	a0,a0,1824 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80002aa0:	00002097          	auipc	ra,0x2
    80002aa4:	4d0080e7          	jalr	1232(ra) # 80004f70 <_Z11printStringPKc>
        printInt((uint64) curr->next);
    80002aa8:	00000613          	li	a2,0
    80002aac:	00a00593          	li	a1,10
    80002ab0:	0004a503          	lw	a0,0(s1)
    80002ab4:	00002097          	auipc	ra,0x2
    80002ab8:	66c080e7          	jalr	1644(ra) # 80005120 <_Z8printIntiii>
        printString("\n");
    80002abc:	00007517          	auipc	a0,0x7
    80002ac0:	aa450513          	addi	a0,a0,-1372 # 80009560 <CONSOLE_STATUS+0x550>
    80002ac4:	00002097          	auipc	ra,0x2
    80002ac8:	4ac080e7          	jalr	1196(ra) # 80004f70 <_Z11printStringPKc>
    for (Block *curr = head; curr; curr = curr->next) {
    80002acc:	0004b483          	ld	s1,0(s1)
    80002ad0:	f45ff06f          	j	80002a14 <_ZN15MemoryAllocator5printEv+0x2c>
    }
    printString("__________________________________________________\n");
    80002ad4:	00006517          	auipc	a0,0x6
    80002ad8:	6ec50513          	addi	a0,a0,1772 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80002adc:	00002097          	auipc	ra,0x2
    80002ae0:	494080e7          	jalr	1172(ra) # 80004f70 <_Z11printStringPKc>
}
    80002ae4:	01813083          	ld	ra,24(sp)
    80002ae8:	01013403          	ld	s0,16(sp)
    80002aec:	00813483          	ld	s1,8(sp)
    80002af0:	02010113          	addi	sp,sp,32
    80002af4:	00008067          	ret

0000000080002af8 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002af8:	fe010113          	addi	sp,sp,-32
    80002afc:	00113c23          	sd	ra,24(sp)
    80002b00:	00813823          	sd	s0,16(sp)
    80002b04:	00913423          	sd	s1,8(sp)
    80002b08:	01213023          	sd	s2,0(sp)
    80002b0c:	02010413          	addi	s0,sp,32
    80002b10:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002b14:	00000913          	li	s2,0
    80002b18:	00c0006f          	j	80002b24 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002b1c:	fffff097          	auipc	ra,0xfffff
    80002b20:	918080e7          	jalr	-1768(ra) # 80001434 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80002b24:	fffff097          	auipc	ra,0xfffff
    80002b28:	b48080e7          	jalr	-1208(ra) # 8000166c <_Z4getcv>
    80002b2c:	0005059b          	sext.w	a1,a0
    80002b30:	01b00793          	li	a5,27
    80002b34:	02f58a63          	beq	a1,a5,80002b68 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002b38:	0084b503          	ld	a0,8(s1)
    80002b3c:	00003097          	auipc	ra,0x3
    80002b40:	3f4080e7          	jalr	1012(ra) # 80005f30 <_ZN6Buffer3putEi>
        i++;
    80002b44:	0019071b          	addiw	a4,s2,1
    80002b48:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002b4c:	0004a683          	lw	a3,0(s1)
    80002b50:	0026979b          	slliw	a5,a3,0x2
    80002b54:	00d787bb          	addw	a5,a5,a3
    80002b58:	0017979b          	slliw	a5,a5,0x1
    80002b5c:	02f767bb          	remw	a5,a4,a5
    80002b60:	fc0792e3          	bnez	a5,80002b24 <_ZL16producerKeyboardPv+0x2c>
    80002b64:	fb9ff06f          	j	80002b1c <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002b68:	00100793          	li	a5,1
    80002b6c:	00009717          	auipc	a4,0x9
    80002b70:	c8f72e23          	sw	a5,-868(a4) # 8000b808 <_ZL9threadEnd>
    data->buffer->put('!');
    80002b74:	02100593          	li	a1,33
    80002b78:	0084b503          	ld	a0,8(s1)
    80002b7c:	00003097          	auipc	ra,0x3
    80002b80:	3b4080e7          	jalr	948(ra) # 80005f30 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002b84:	0104b503          	ld	a0,16(s1)
    80002b88:	fffff097          	auipc	ra,0xfffff
    80002b8c:	a64080e7          	jalr	-1436(ra) # 800015ec <_Z10sem_signalP4_sem>
}
    80002b90:	01813083          	ld	ra,24(sp)
    80002b94:	01013403          	ld	s0,16(sp)
    80002b98:	00813483          	ld	s1,8(sp)
    80002b9c:	00013903          	ld	s2,0(sp)
    80002ba0:	02010113          	addi	sp,sp,32
    80002ba4:	00008067          	ret

0000000080002ba8 <_ZL8producerPv>:

static void producer(void *arg) {
    80002ba8:	fe010113          	addi	sp,sp,-32
    80002bac:	00113c23          	sd	ra,24(sp)
    80002bb0:	00813823          	sd	s0,16(sp)
    80002bb4:	00913423          	sd	s1,8(sp)
    80002bb8:	01213023          	sd	s2,0(sp)
    80002bbc:	02010413          	addi	s0,sp,32
    80002bc0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002bc4:	00000913          	li	s2,0
    80002bc8:	00c0006f          	j	80002bd4 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002bcc:	fffff097          	auipc	ra,0xfffff
    80002bd0:	868080e7          	jalr	-1944(ra) # 80001434 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002bd4:	00009797          	auipc	a5,0x9
    80002bd8:	c347a783          	lw	a5,-972(a5) # 8000b808 <_ZL9threadEnd>
    80002bdc:	02079e63          	bnez	a5,80002c18 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002be0:	0004a583          	lw	a1,0(s1)
    80002be4:	0305859b          	addiw	a1,a1,48
    80002be8:	0084b503          	ld	a0,8(s1)
    80002bec:	00003097          	auipc	ra,0x3
    80002bf0:	344080e7          	jalr	836(ra) # 80005f30 <_ZN6Buffer3putEi>
        i++;
    80002bf4:	0019071b          	addiw	a4,s2,1
    80002bf8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002bfc:	0004a683          	lw	a3,0(s1)
    80002c00:	0026979b          	slliw	a5,a3,0x2
    80002c04:	00d787bb          	addw	a5,a5,a3
    80002c08:	0017979b          	slliw	a5,a5,0x1
    80002c0c:	02f767bb          	remw	a5,a4,a5
    80002c10:	fc0792e3          	bnez	a5,80002bd4 <_ZL8producerPv+0x2c>
    80002c14:	fb9ff06f          	j	80002bcc <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002c18:	0104b503          	ld	a0,16(s1)
    80002c1c:	fffff097          	auipc	ra,0xfffff
    80002c20:	9d0080e7          	jalr	-1584(ra) # 800015ec <_Z10sem_signalP4_sem>
}
    80002c24:	01813083          	ld	ra,24(sp)
    80002c28:	01013403          	ld	s0,16(sp)
    80002c2c:	00813483          	ld	s1,8(sp)
    80002c30:	00013903          	ld	s2,0(sp)
    80002c34:	02010113          	addi	sp,sp,32
    80002c38:	00008067          	ret

0000000080002c3c <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002c3c:	fd010113          	addi	sp,sp,-48
    80002c40:	02113423          	sd	ra,40(sp)
    80002c44:	02813023          	sd	s0,32(sp)
    80002c48:	00913c23          	sd	s1,24(sp)
    80002c4c:	01213823          	sd	s2,16(sp)
    80002c50:	01313423          	sd	s3,8(sp)
    80002c54:	03010413          	addi	s0,sp,48
    80002c58:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002c5c:	00000993          	li	s3,0
    80002c60:	01c0006f          	j	80002c7c <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002c64:	ffffe097          	auipc	ra,0xffffe
    80002c68:	7d0080e7          	jalr	2000(ra) # 80001434 <_Z15thread_dispatchv>
    80002c6c:	0500006f          	j	80002cbc <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002c70:	00a00513          	li	a0,10
    80002c74:	fffff097          	auipc	ra,0xfffff
    80002c78:	a38080e7          	jalr	-1480(ra) # 800016ac <_Z4putcc>
    while (!threadEnd) {
    80002c7c:	00009797          	auipc	a5,0x9
    80002c80:	b8c7a783          	lw	a5,-1140(a5) # 8000b808 <_ZL9threadEnd>
    80002c84:	06079063          	bnez	a5,80002ce4 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002c88:	00893503          	ld	a0,8(s2)
    80002c8c:	00003097          	auipc	ra,0x3
    80002c90:	334080e7          	jalr	820(ra) # 80005fc0 <_ZN6Buffer3getEv>
        i++;
    80002c94:	0019849b          	addiw	s1,s3,1
    80002c98:	0004899b          	sext.w	s3,s1
        putc(key);
    80002c9c:	0ff57513          	andi	a0,a0,255
    80002ca0:	fffff097          	auipc	ra,0xfffff
    80002ca4:	a0c080e7          	jalr	-1524(ra) # 800016ac <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002ca8:	00092703          	lw	a4,0(s2)
    80002cac:	0027179b          	slliw	a5,a4,0x2
    80002cb0:	00e787bb          	addw	a5,a5,a4
    80002cb4:	02f4e7bb          	remw	a5,s1,a5
    80002cb8:	fa0786e3          	beqz	a5,80002c64 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002cbc:	05000793          	li	a5,80
    80002cc0:	02f4e4bb          	remw	s1,s1,a5
    80002cc4:	fa049ce3          	bnez	s1,80002c7c <_ZL8consumerPv+0x40>
    80002cc8:	fa9ff06f          	j	80002c70 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002ccc:	00893503          	ld	a0,8(s2)
    80002cd0:	00003097          	auipc	ra,0x3
    80002cd4:	2f0080e7          	jalr	752(ra) # 80005fc0 <_ZN6Buffer3getEv>
        putc(key);
    80002cd8:	0ff57513          	andi	a0,a0,255
    80002cdc:	fffff097          	auipc	ra,0xfffff
    80002ce0:	9d0080e7          	jalr	-1584(ra) # 800016ac <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002ce4:	00893503          	ld	a0,8(s2)
    80002ce8:	00003097          	auipc	ra,0x3
    80002cec:	364080e7          	jalr	868(ra) # 8000604c <_ZN6Buffer6getCntEv>
    80002cf0:	fca04ee3          	bgtz	a0,80002ccc <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002cf4:	01093503          	ld	a0,16(s2)
    80002cf8:	fffff097          	auipc	ra,0xfffff
    80002cfc:	8f4080e7          	jalr	-1804(ra) # 800015ec <_Z10sem_signalP4_sem>
}
    80002d00:	02813083          	ld	ra,40(sp)
    80002d04:	02013403          	ld	s0,32(sp)
    80002d08:	01813483          	ld	s1,24(sp)
    80002d0c:	01013903          	ld	s2,16(sp)
    80002d10:	00813983          	ld	s3,8(sp)
    80002d14:	03010113          	addi	sp,sp,48
    80002d18:	00008067          	ret

0000000080002d1c <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002d1c:	f9010113          	addi	sp,sp,-112
    80002d20:	06113423          	sd	ra,104(sp)
    80002d24:	06813023          	sd	s0,96(sp)
    80002d28:	04913c23          	sd	s1,88(sp)
    80002d2c:	05213823          	sd	s2,80(sp)
    80002d30:	05313423          	sd	s3,72(sp)
    80002d34:	05413023          	sd	s4,64(sp)
    80002d38:	03513c23          	sd	s5,56(sp)
    80002d3c:	03613823          	sd	s6,48(sp)
    80002d40:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80002d44:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80002d48:	00006517          	auipc	a0,0x6
    80002d4c:	4b050513          	addi	a0,a0,1200 # 800091f8 <CONSOLE_STATUS+0x1e8>
    80002d50:	00002097          	auipc	ra,0x2
    80002d54:	220080e7          	jalr	544(ra) # 80004f70 <_Z11printStringPKc>
    getString(input, 30);
    80002d58:	01e00593          	li	a1,30
    80002d5c:	fa040493          	addi	s1,s0,-96
    80002d60:	00048513          	mv	a0,s1
    80002d64:	00002097          	auipc	ra,0x2
    80002d68:	294080e7          	jalr	660(ra) # 80004ff8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80002d6c:	00048513          	mv	a0,s1
    80002d70:	00002097          	auipc	ra,0x2
    80002d74:	360080e7          	jalr	864(ra) # 800050d0 <_Z11stringToIntPKc>
    80002d78:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80002d7c:	00006517          	auipc	a0,0x6
    80002d80:	49c50513          	addi	a0,a0,1180 # 80009218 <CONSOLE_STATUS+0x208>
    80002d84:	00002097          	auipc	ra,0x2
    80002d88:	1ec080e7          	jalr	492(ra) # 80004f70 <_Z11printStringPKc>
    getString(input, 30);
    80002d8c:	01e00593          	li	a1,30
    80002d90:	00048513          	mv	a0,s1
    80002d94:	00002097          	auipc	ra,0x2
    80002d98:	264080e7          	jalr	612(ra) # 80004ff8 <_Z9getStringPci>
    n = stringToInt(input);
    80002d9c:	00048513          	mv	a0,s1
    80002da0:	00002097          	auipc	ra,0x2
    80002da4:	330080e7          	jalr	816(ra) # 800050d0 <_Z11stringToIntPKc>
    80002da8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80002dac:	00006517          	auipc	a0,0x6
    80002db0:	48c50513          	addi	a0,a0,1164 # 80009238 <CONSOLE_STATUS+0x228>
    80002db4:	00002097          	auipc	ra,0x2
    80002db8:	1bc080e7          	jalr	444(ra) # 80004f70 <_Z11printStringPKc>
    80002dbc:	00000613          	li	a2,0
    80002dc0:	00a00593          	li	a1,10
    80002dc4:	00090513          	mv	a0,s2
    80002dc8:	00002097          	auipc	ra,0x2
    80002dcc:	358080e7          	jalr	856(ra) # 80005120 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80002dd0:	00006517          	auipc	a0,0x6
    80002dd4:	48050513          	addi	a0,a0,1152 # 80009250 <CONSOLE_STATUS+0x240>
    80002dd8:	00002097          	auipc	ra,0x2
    80002ddc:	198080e7          	jalr	408(ra) # 80004f70 <_Z11printStringPKc>
    80002de0:	00000613          	li	a2,0
    80002de4:	00a00593          	li	a1,10
    80002de8:	00048513          	mv	a0,s1
    80002dec:	00002097          	auipc	ra,0x2
    80002df0:	334080e7          	jalr	820(ra) # 80005120 <_Z8printIntiii>
    printString(".\n");
    80002df4:	00006517          	auipc	a0,0x6
    80002df8:	47450513          	addi	a0,a0,1140 # 80009268 <CONSOLE_STATUS+0x258>
    80002dfc:	00002097          	auipc	ra,0x2
    80002e00:	174080e7          	jalr	372(ra) # 80004f70 <_Z11printStringPKc>
    if(threadNum > n) {
    80002e04:	0324c463          	blt	s1,s2,80002e2c <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80002e08:	03205c63          	blez	s2,80002e40 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80002e0c:	03800513          	li	a0,56
    80002e10:	fffff097          	auipc	ra,0xfffff
    80002e14:	ba8080e7          	jalr	-1112(ra) # 800019b8 <_Znwm>
    80002e18:	00050a13          	mv	s4,a0
    80002e1c:	00048593          	mv	a1,s1
    80002e20:	00003097          	auipc	ra,0x3
    80002e24:	074080e7          	jalr	116(ra) # 80005e94 <_ZN6BufferC1Ei>
    80002e28:	0300006f          	j	80002e58 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80002e2c:	00006517          	auipc	a0,0x6
    80002e30:	44450513          	addi	a0,a0,1092 # 80009270 <CONSOLE_STATUS+0x260>
    80002e34:	00002097          	auipc	ra,0x2
    80002e38:	13c080e7          	jalr	316(ra) # 80004f70 <_Z11printStringPKc>
        return;
    80002e3c:	0140006f          	j	80002e50 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80002e40:	00006517          	auipc	a0,0x6
    80002e44:	47050513          	addi	a0,a0,1136 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80002e48:	00002097          	auipc	ra,0x2
    80002e4c:	128080e7          	jalr	296(ra) # 80004f70 <_Z11printStringPKc>
        return;
    80002e50:	000b0113          	mv	sp,s6
    80002e54:	1500006f          	j	80002fa4 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80002e58:	00000593          	li	a1,0
    80002e5c:	00009517          	auipc	a0,0x9
    80002e60:	9b450513          	addi	a0,a0,-1612 # 8000b810 <_ZL10waitForAll>
    80002e64:	ffffe097          	auipc	ra,0xffffe
    80002e68:	6c4080e7          	jalr	1732(ra) # 80001528 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    80002e6c:	00391793          	slli	a5,s2,0x3
    80002e70:	00f78793          	addi	a5,a5,15
    80002e74:	ff07f793          	andi	a5,a5,-16
    80002e78:	40f10133          	sub	sp,sp,a5
    80002e7c:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80002e80:	0019071b          	addiw	a4,s2,1
    80002e84:	00171793          	slli	a5,a4,0x1
    80002e88:	00e787b3          	add	a5,a5,a4
    80002e8c:	00379793          	slli	a5,a5,0x3
    80002e90:	00f78793          	addi	a5,a5,15
    80002e94:	ff07f793          	andi	a5,a5,-16
    80002e98:	40f10133          	sub	sp,sp,a5
    80002e9c:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80002ea0:	00191613          	slli	a2,s2,0x1
    80002ea4:	012607b3          	add	a5,a2,s2
    80002ea8:	00379793          	slli	a5,a5,0x3
    80002eac:	00f987b3          	add	a5,s3,a5
    80002eb0:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80002eb4:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80002eb8:	00009717          	auipc	a4,0x9
    80002ebc:	95873703          	ld	a4,-1704(a4) # 8000b810 <_ZL10waitForAll>
    80002ec0:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80002ec4:	00078613          	mv	a2,a5
    80002ec8:	00000597          	auipc	a1,0x0
    80002ecc:	d7458593          	addi	a1,a1,-652 # 80002c3c <_ZL8consumerPv>
    80002ed0:	f9840513          	addi	a0,s0,-104
    80002ed4:	ffffe097          	auipc	ra,0xffffe
    80002ed8:	4a4080e7          	jalr	1188(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002edc:	00000493          	li	s1,0
    80002ee0:	0280006f          	j	80002f08 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80002ee4:	00000597          	auipc	a1,0x0
    80002ee8:	c1458593          	addi	a1,a1,-1004 # 80002af8 <_ZL16producerKeyboardPv>
                      data + i);
    80002eec:	00179613          	slli	a2,a5,0x1
    80002ef0:	00f60633          	add	a2,a2,a5
    80002ef4:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80002ef8:	00c98633          	add	a2,s3,a2
    80002efc:	ffffe097          	auipc	ra,0xffffe
    80002f00:	47c080e7          	jalr	1148(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002f04:	0014849b          	addiw	s1,s1,1
    80002f08:	0524d263          	bge	s1,s2,80002f4c <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80002f0c:	00149793          	slli	a5,s1,0x1
    80002f10:	009787b3          	add	a5,a5,s1
    80002f14:	00379793          	slli	a5,a5,0x3
    80002f18:	00f987b3          	add	a5,s3,a5
    80002f1c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80002f20:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80002f24:	00009717          	auipc	a4,0x9
    80002f28:	8ec73703          	ld	a4,-1812(a4) # 8000b810 <_ZL10waitForAll>
    80002f2c:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80002f30:	00048793          	mv	a5,s1
    80002f34:	00349513          	slli	a0,s1,0x3
    80002f38:	00aa8533          	add	a0,s5,a0
    80002f3c:	fa9054e3          	blez	s1,80002ee4 <_Z22producerConsumer_C_APIv+0x1c8>
    80002f40:	00000597          	auipc	a1,0x0
    80002f44:	c6858593          	addi	a1,a1,-920 # 80002ba8 <_ZL8producerPv>
    80002f48:	fa5ff06f          	j	80002eec <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80002f4c:	ffffe097          	auipc	ra,0xffffe
    80002f50:	4e8080e7          	jalr	1256(ra) # 80001434 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80002f54:	00000493          	li	s1,0
    80002f58:	00994e63          	blt	s2,s1,80002f74 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80002f5c:	00009517          	auipc	a0,0x9
    80002f60:	8b453503          	ld	a0,-1868(a0) # 8000b810 <_ZL10waitForAll>
    80002f64:	ffffe097          	auipc	ra,0xffffe
    80002f68:	648080e7          	jalr	1608(ra) # 800015ac <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    80002f6c:	0014849b          	addiw	s1,s1,1
    80002f70:	fe9ff06f          	j	80002f58 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80002f74:	00009517          	auipc	a0,0x9
    80002f78:	89c53503          	ld	a0,-1892(a0) # 8000b810 <_ZL10waitForAll>
    80002f7c:	ffffe097          	auipc	ra,0xffffe
    80002f80:	5f0080e7          	jalr	1520(ra) # 8000156c <_Z9sem_closeP4_sem>
    delete buffer;
    80002f84:	000a0e63          	beqz	s4,80002fa0 <_Z22producerConsumer_C_APIv+0x284>
    80002f88:	000a0513          	mv	a0,s4
    80002f8c:	00003097          	auipc	ra,0x3
    80002f90:	148080e7          	jalr	328(ra) # 800060d4 <_ZN6BufferD1Ev>
    80002f94:	000a0513          	mv	a0,s4
    80002f98:	fffff097          	auipc	ra,0xfffff
    80002f9c:	a70080e7          	jalr	-1424(ra) # 80001a08 <_ZdlPv>
    80002fa0:	000b0113          	mv	sp,s6

}
    80002fa4:	f9040113          	addi	sp,s0,-112
    80002fa8:	06813083          	ld	ra,104(sp)
    80002fac:	06013403          	ld	s0,96(sp)
    80002fb0:	05813483          	ld	s1,88(sp)
    80002fb4:	05013903          	ld	s2,80(sp)
    80002fb8:	04813983          	ld	s3,72(sp)
    80002fbc:	04013a03          	ld	s4,64(sp)
    80002fc0:	03813a83          	ld	s5,56(sp)
    80002fc4:	03013b03          	ld	s6,48(sp)
    80002fc8:	07010113          	addi	sp,sp,112
    80002fcc:	00008067          	ret
    80002fd0:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80002fd4:	000a0513          	mv	a0,s4
    80002fd8:	fffff097          	auipc	ra,0xfffff
    80002fdc:	a30080e7          	jalr	-1488(ra) # 80001a08 <_ZdlPv>
    80002fe0:	00048513          	mv	a0,s1
    80002fe4:	0000a097          	auipc	ra,0xa
    80002fe8:	944080e7          	jalr	-1724(ra) # 8000c928 <_Unwind_Resume>

0000000080002fec <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002fec:	fe010113          	addi	sp,sp,-32
    80002ff0:	00113c23          	sd	ra,24(sp)
    80002ff4:	00813823          	sd	s0,16(sp)
    80002ff8:	00913423          	sd	s1,8(sp)
    80002ffc:	01213023          	sd	s2,0(sp)
    80003000:	02010413          	addi	s0,sp,32
    80003004:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003008:	00100793          	li	a5,1
    8000300c:	02a7f863          	bgeu	a5,a0,8000303c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003010:	00a00793          	li	a5,10
    80003014:	02f577b3          	remu	a5,a0,a5
    80003018:	02078e63          	beqz	a5,80003054 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000301c:	fff48513          	addi	a0,s1,-1
    80003020:	00000097          	auipc	ra,0x0
    80003024:	fcc080e7          	jalr	-52(ra) # 80002fec <_ZL9fibonaccim>
    80003028:	00050913          	mv	s2,a0
    8000302c:	ffe48513          	addi	a0,s1,-2
    80003030:	00000097          	auipc	ra,0x0
    80003034:	fbc080e7          	jalr	-68(ra) # 80002fec <_ZL9fibonaccim>
    80003038:	00a90533          	add	a0,s2,a0
}
    8000303c:	01813083          	ld	ra,24(sp)
    80003040:	01013403          	ld	s0,16(sp)
    80003044:	00813483          	ld	s1,8(sp)
    80003048:	00013903          	ld	s2,0(sp)
    8000304c:	02010113          	addi	sp,sp,32
    80003050:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003054:	ffffe097          	auipc	ra,0xffffe
    80003058:	3e0080e7          	jalr	992(ra) # 80001434 <_Z15thread_dispatchv>
    8000305c:	fc1ff06f          	j	8000301c <_ZL9fibonaccim+0x30>

0000000080003060 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003060:	fe010113          	addi	sp,sp,-32
    80003064:	00113c23          	sd	ra,24(sp)
    80003068:	00813823          	sd	s0,16(sp)
    8000306c:	00913423          	sd	s1,8(sp)
    80003070:	01213023          	sd	s2,0(sp)
    80003074:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003078:	00000913          	li	s2,0
    8000307c:	0380006f          	j	800030b4 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003080:	ffffe097          	auipc	ra,0xffffe
    80003084:	3b4080e7          	jalr	948(ra) # 80001434 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003088:	00148493          	addi	s1,s1,1
    8000308c:	000027b7          	lui	a5,0x2
    80003090:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003094:	0097ee63          	bltu	a5,s1,800030b0 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003098:	00000713          	li	a4,0
    8000309c:	000077b7          	lui	a5,0x7
    800030a0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800030a4:	fce7eee3          	bltu	a5,a4,80003080 <_ZN7WorkerA11workerBodyAEPv+0x20>
    800030a8:	00170713          	addi	a4,a4,1
    800030ac:	ff1ff06f          	j	8000309c <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800030b0:	00190913          	addi	s2,s2,1
    800030b4:	00900793          	li	a5,9
    800030b8:	0527e063          	bltu	a5,s2,800030f8 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800030bc:	00006517          	auipc	a0,0x6
    800030c0:	22450513          	addi	a0,a0,548 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800030c4:	00002097          	auipc	ra,0x2
    800030c8:	eac080e7          	jalr	-340(ra) # 80004f70 <_Z11printStringPKc>
    800030cc:	00000613          	li	a2,0
    800030d0:	00a00593          	li	a1,10
    800030d4:	0009051b          	sext.w	a0,s2
    800030d8:	00002097          	auipc	ra,0x2
    800030dc:	048080e7          	jalr	72(ra) # 80005120 <_Z8printIntiii>
    800030e0:	00006517          	auipc	a0,0x6
    800030e4:	48050513          	addi	a0,a0,1152 # 80009560 <CONSOLE_STATUS+0x550>
    800030e8:	00002097          	auipc	ra,0x2
    800030ec:	e88080e7          	jalr	-376(ra) # 80004f70 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800030f0:	00000493          	li	s1,0
    800030f4:	f99ff06f          	j	8000308c <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800030f8:	00006517          	auipc	a0,0x6
    800030fc:	1f050513          	addi	a0,a0,496 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80003100:	00002097          	auipc	ra,0x2
    80003104:	e70080e7          	jalr	-400(ra) # 80004f70 <_Z11printStringPKc>
    finishedA = true;
    80003108:	00100793          	li	a5,1
    8000310c:	00008717          	auipc	a4,0x8
    80003110:	70f70623          	sb	a5,1804(a4) # 8000b818 <_ZL9finishedA>
}
    80003114:	01813083          	ld	ra,24(sp)
    80003118:	01013403          	ld	s0,16(sp)
    8000311c:	00813483          	ld	s1,8(sp)
    80003120:	00013903          	ld	s2,0(sp)
    80003124:	02010113          	addi	sp,sp,32
    80003128:	00008067          	ret

000000008000312c <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    8000312c:	fe010113          	addi	sp,sp,-32
    80003130:	00113c23          	sd	ra,24(sp)
    80003134:	00813823          	sd	s0,16(sp)
    80003138:	00913423          	sd	s1,8(sp)
    8000313c:	01213023          	sd	s2,0(sp)
    80003140:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003144:	00000913          	li	s2,0
    80003148:	0380006f          	j	80003180 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000314c:	ffffe097          	auipc	ra,0xffffe
    80003150:	2e8080e7          	jalr	744(ra) # 80001434 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003154:	00148493          	addi	s1,s1,1
    80003158:	000027b7          	lui	a5,0x2
    8000315c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003160:	0097ee63          	bltu	a5,s1,8000317c <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003164:	00000713          	li	a4,0
    80003168:	000077b7          	lui	a5,0x7
    8000316c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003170:	fce7eee3          	bltu	a5,a4,8000314c <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003174:	00170713          	addi	a4,a4,1
    80003178:	ff1ff06f          	j	80003168 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000317c:	00190913          	addi	s2,s2,1
    80003180:	00f00793          	li	a5,15
    80003184:	0527e063          	bltu	a5,s2,800031c4 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003188:	00006517          	auipc	a0,0x6
    8000318c:	17050513          	addi	a0,a0,368 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80003190:	00002097          	auipc	ra,0x2
    80003194:	de0080e7          	jalr	-544(ra) # 80004f70 <_Z11printStringPKc>
    80003198:	00000613          	li	a2,0
    8000319c:	00a00593          	li	a1,10
    800031a0:	0009051b          	sext.w	a0,s2
    800031a4:	00002097          	auipc	ra,0x2
    800031a8:	f7c080e7          	jalr	-132(ra) # 80005120 <_Z8printIntiii>
    800031ac:	00006517          	auipc	a0,0x6
    800031b0:	3b450513          	addi	a0,a0,948 # 80009560 <CONSOLE_STATUS+0x550>
    800031b4:	00002097          	auipc	ra,0x2
    800031b8:	dbc080e7          	jalr	-580(ra) # 80004f70 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800031bc:	00000493          	li	s1,0
    800031c0:	f99ff06f          	j	80003158 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    800031c4:	00006517          	auipc	a0,0x6
    800031c8:	13c50513          	addi	a0,a0,316 # 80009300 <CONSOLE_STATUS+0x2f0>
    800031cc:	00002097          	auipc	ra,0x2
    800031d0:	da4080e7          	jalr	-604(ra) # 80004f70 <_Z11printStringPKc>
    finishedB = true;
    800031d4:	00100793          	li	a5,1
    800031d8:	00008717          	auipc	a4,0x8
    800031dc:	64f700a3          	sb	a5,1601(a4) # 8000b819 <_ZL9finishedB>
    thread_dispatch();
    800031e0:	ffffe097          	auipc	ra,0xffffe
    800031e4:	254080e7          	jalr	596(ra) # 80001434 <_Z15thread_dispatchv>
}
    800031e8:	01813083          	ld	ra,24(sp)
    800031ec:	01013403          	ld	s0,16(sp)
    800031f0:	00813483          	ld	s1,8(sp)
    800031f4:	00013903          	ld	s2,0(sp)
    800031f8:	02010113          	addi	sp,sp,32
    800031fc:	00008067          	ret

0000000080003200 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003200:	fe010113          	addi	sp,sp,-32
    80003204:	00113c23          	sd	ra,24(sp)
    80003208:	00813823          	sd	s0,16(sp)
    8000320c:	00913423          	sd	s1,8(sp)
    80003210:	01213023          	sd	s2,0(sp)
    80003214:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003218:	00000493          	li	s1,0
    8000321c:	0400006f          	j	8000325c <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003220:	00006517          	auipc	a0,0x6
    80003224:	0f050513          	addi	a0,a0,240 # 80009310 <CONSOLE_STATUS+0x300>
    80003228:	00002097          	auipc	ra,0x2
    8000322c:	d48080e7          	jalr	-696(ra) # 80004f70 <_Z11printStringPKc>
    80003230:	00000613          	li	a2,0
    80003234:	00a00593          	li	a1,10
    80003238:	00048513          	mv	a0,s1
    8000323c:	00002097          	auipc	ra,0x2
    80003240:	ee4080e7          	jalr	-284(ra) # 80005120 <_Z8printIntiii>
    80003244:	00006517          	auipc	a0,0x6
    80003248:	31c50513          	addi	a0,a0,796 # 80009560 <CONSOLE_STATUS+0x550>
    8000324c:	00002097          	auipc	ra,0x2
    80003250:	d24080e7          	jalr	-732(ra) # 80004f70 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003254:	0014849b          	addiw	s1,s1,1
    80003258:	0ff4f493          	andi	s1,s1,255
    8000325c:	00200793          	li	a5,2
    80003260:	fc97f0e3          	bgeu	a5,s1,80003220 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003264:	00006517          	auipc	a0,0x6
    80003268:	0b450513          	addi	a0,a0,180 # 80009318 <CONSOLE_STATUS+0x308>
    8000326c:	00002097          	auipc	ra,0x2
    80003270:	d04080e7          	jalr	-764(ra) # 80004f70 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003274:	00700313          	li	t1,7
    thread_dispatch();
    80003278:	ffffe097          	auipc	ra,0xffffe
    8000327c:	1bc080e7          	jalr	444(ra) # 80001434 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003280:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003284:	00006517          	auipc	a0,0x6
    80003288:	0a450513          	addi	a0,a0,164 # 80009328 <CONSOLE_STATUS+0x318>
    8000328c:	00002097          	auipc	ra,0x2
    80003290:	ce4080e7          	jalr	-796(ra) # 80004f70 <_Z11printStringPKc>
    80003294:	00000613          	li	a2,0
    80003298:	00a00593          	li	a1,10
    8000329c:	0009051b          	sext.w	a0,s2
    800032a0:	00002097          	auipc	ra,0x2
    800032a4:	e80080e7          	jalr	-384(ra) # 80005120 <_Z8printIntiii>
    800032a8:	00006517          	auipc	a0,0x6
    800032ac:	2b850513          	addi	a0,a0,696 # 80009560 <CONSOLE_STATUS+0x550>
    800032b0:	00002097          	auipc	ra,0x2
    800032b4:	cc0080e7          	jalr	-832(ra) # 80004f70 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800032b8:	00c00513          	li	a0,12
    800032bc:	00000097          	auipc	ra,0x0
    800032c0:	d30080e7          	jalr	-720(ra) # 80002fec <_ZL9fibonaccim>
    800032c4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800032c8:	00006517          	auipc	a0,0x6
    800032cc:	06850513          	addi	a0,a0,104 # 80009330 <CONSOLE_STATUS+0x320>
    800032d0:	00002097          	auipc	ra,0x2
    800032d4:	ca0080e7          	jalr	-864(ra) # 80004f70 <_Z11printStringPKc>
    800032d8:	00000613          	li	a2,0
    800032dc:	00a00593          	li	a1,10
    800032e0:	0009051b          	sext.w	a0,s2
    800032e4:	00002097          	auipc	ra,0x2
    800032e8:	e3c080e7          	jalr	-452(ra) # 80005120 <_Z8printIntiii>
    800032ec:	00006517          	auipc	a0,0x6
    800032f0:	27450513          	addi	a0,a0,628 # 80009560 <CONSOLE_STATUS+0x550>
    800032f4:	00002097          	auipc	ra,0x2
    800032f8:	c7c080e7          	jalr	-900(ra) # 80004f70 <_Z11printStringPKc>
    800032fc:	0400006f          	j	8000333c <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003300:	00006517          	auipc	a0,0x6
    80003304:	01050513          	addi	a0,a0,16 # 80009310 <CONSOLE_STATUS+0x300>
    80003308:	00002097          	auipc	ra,0x2
    8000330c:	c68080e7          	jalr	-920(ra) # 80004f70 <_Z11printStringPKc>
    80003310:	00000613          	li	a2,0
    80003314:	00a00593          	li	a1,10
    80003318:	00048513          	mv	a0,s1
    8000331c:	00002097          	auipc	ra,0x2
    80003320:	e04080e7          	jalr	-508(ra) # 80005120 <_Z8printIntiii>
    80003324:	00006517          	auipc	a0,0x6
    80003328:	23c50513          	addi	a0,a0,572 # 80009560 <CONSOLE_STATUS+0x550>
    8000332c:	00002097          	auipc	ra,0x2
    80003330:	c44080e7          	jalr	-956(ra) # 80004f70 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003334:	0014849b          	addiw	s1,s1,1
    80003338:	0ff4f493          	andi	s1,s1,255
    8000333c:	00500793          	li	a5,5
    80003340:	fc97f0e3          	bgeu	a5,s1,80003300 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003344:	00006517          	auipc	a0,0x6
    80003348:	fa450513          	addi	a0,a0,-92 # 800092e8 <CONSOLE_STATUS+0x2d8>
    8000334c:	00002097          	auipc	ra,0x2
    80003350:	c24080e7          	jalr	-988(ra) # 80004f70 <_Z11printStringPKc>
    finishedC = true;
    80003354:	00100793          	li	a5,1
    80003358:	00008717          	auipc	a4,0x8
    8000335c:	4cf70123          	sb	a5,1218(a4) # 8000b81a <_ZL9finishedC>
    thread_dispatch();
    80003360:	ffffe097          	auipc	ra,0xffffe
    80003364:	0d4080e7          	jalr	212(ra) # 80001434 <_Z15thread_dispatchv>
}
    80003368:	01813083          	ld	ra,24(sp)
    8000336c:	01013403          	ld	s0,16(sp)
    80003370:	00813483          	ld	s1,8(sp)
    80003374:	00013903          	ld	s2,0(sp)
    80003378:	02010113          	addi	sp,sp,32
    8000337c:	00008067          	ret

0000000080003380 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003380:	fe010113          	addi	sp,sp,-32
    80003384:	00113c23          	sd	ra,24(sp)
    80003388:	00813823          	sd	s0,16(sp)
    8000338c:	00913423          	sd	s1,8(sp)
    80003390:	01213023          	sd	s2,0(sp)
    80003394:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003398:	00a00493          	li	s1,10
    8000339c:	0400006f          	j	800033dc <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800033a0:	00006517          	auipc	a0,0x6
    800033a4:	fa050513          	addi	a0,a0,-96 # 80009340 <CONSOLE_STATUS+0x330>
    800033a8:	00002097          	auipc	ra,0x2
    800033ac:	bc8080e7          	jalr	-1080(ra) # 80004f70 <_Z11printStringPKc>
    800033b0:	00000613          	li	a2,0
    800033b4:	00a00593          	li	a1,10
    800033b8:	00048513          	mv	a0,s1
    800033bc:	00002097          	auipc	ra,0x2
    800033c0:	d64080e7          	jalr	-668(ra) # 80005120 <_Z8printIntiii>
    800033c4:	00006517          	auipc	a0,0x6
    800033c8:	19c50513          	addi	a0,a0,412 # 80009560 <CONSOLE_STATUS+0x550>
    800033cc:	00002097          	auipc	ra,0x2
    800033d0:	ba4080e7          	jalr	-1116(ra) # 80004f70 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800033d4:	0014849b          	addiw	s1,s1,1
    800033d8:	0ff4f493          	andi	s1,s1,255
    800033dc:	00c00793          	li	a5,12
    800033e0:	fc97f0e3          	bgeu	a5,s1,800033a0 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800033e4:	00006517          	auipc	a0,0x6
    800033e8:	f6450513          	addi	a0,a0,-156 # 80009348 <CONSOLE_STATUS+0x338>
    800033ec:	00002097          	auipc	ra,0x2
    800033f0:	b84080e7          	jalr	-1148(ra) # 80004f70 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800033f4:	00500313          	li	t1,5
    thread_dispatch();
    800033f8:	ffffe097          	auipc	ra,0xffffe
    800033fc:	03c080e7          	jalr	60(ra) # 80001434 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003400:	01000513          	li	a0,16
    80003404:	00000097          	auipc	ra,0x0
    80003408:	be8080e7          	jalr	-1048(ra) # 80002fec <_ZL9fibonaccim>
    8000340c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003410:	00006517          	auipc	a0,0x6
    80003414:	f4850513          	addi	a0,a0,-184 # 80009358 <CONSOLE_STATUS+0x348>
    80003418:	00002097          	auipc	ra,0x2
    8000341c:	b58080e7          	jalr	-1192(ra) # 80004f70 <_Z11printStringPKc>
    80003420:	00000613          	li	a2,0
    80003424:	00a00593          	li	a1,10
    80003428:	0009051b          	sext.w	a0,s2
    8000342c:	00002097          	auipc	ra,0x2
    80003430:	cf4080e7          	jalr	-780(ra) # 80005120 <_Z8printIntiii>
    80003434:	00006517          	auipc	a0,0x6
    80003438:	12c50513          	addi	a0,a0,300 # 80009560 <CONSOLE_STATUS+0x550>
    8000343c:	00002097          	auipc	ra,0x2
    80003440:	b34080e7          	jalr	-1228(ra) # 80004f70 <_Z11printStringPKc>
    80003444:	0400006f          	j	80003484 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003448:	00006517          	auipc	a0,0x6
    8000344c:	ef850513          	addi	a0,a0,-264 # 80009340 <CONSOLE_STATUS+0x330>
    80003450:	00002097          	auipc	ra,0x2
    80003454:	b20080e7          	jalr	-1248(ra) # 80004f70 <_Z11printStringPKc>
    80003458:	00000613          	li	a2,0
    8000345c:	00a00593          	li	a1,10
    80003460:	00048513          	mv	a0,s1
    80003464:	00002097          	auipc	ra,0x2
    80003468:	cbc080e7          	jalr	-836(ra) # 80005120 <_Z8printIntiii>
    8000346c:	00006517          	auipc	a0,0x6
    80003470:	0f450513          	addi	a0,a0,244 # 80009560 <CONSOLE_STATUS+0x550>
    80003474:	00002097          	auipc	ra,0x2
    80003478:	afc080e7          	jalr	-1284(ra) # 80004f70 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000347c:	0014849b          	addiw	s1,s1,1
    80003480:	0ff4f493          	andi	s1,s1,255
    80003484:	00f00793          	li	a5,15
    80003488:	fc97f0e3          	bgeu	a5,s1,80003448 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    8000348c:	00006517          	auipc	a0,0x6
    80003490:	edc50513          	addi	a0,a0,-292 # 80009368 <CONSOLE_STATUS+0x358>
    80003494:	00002097          	auipc	ra,0x2
    80003498:	adc080e7          	jalr	-1316(ra) # 80004f70 <_Z11printStringPKc>
    finishedD = true;
    8000349c:	00100793          	li	a5,1
    800034a0:	00008717          	auipc	a4,0x8
    800034a4:	36f70da3          	sb	a5,891(a4) # 8000b81b <_ZL9finishedD>
    thread_dispatch();
    800034a8:	ffffe097          	auipc	ra,0xffffe
    800034ac:	f8c080e7          	jalr	-116(ra) # 80001434 <_Z15thread_dispatchv>
}
    800034b0:	01813083          	ld	ra,24(sp)
    800034b4:	01013403          	ld	s0,16(sp)
    800034b8:	00813483          	ld	s1,8(sp)
    800034bc:	00013903          	ld	s2,0(sp)
    800034c0:	02010113          	addi	sp,sp,32
    800034c4:	00008067          	ret

00000000800034c8 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800034c8:	fc010113          	addi	sp,sp,-64
    800034cc:	02113c23          	sd	ra,56(sp)
    800034d0:	02813823          	sd	s0,48(sp)
    800034d4:	02913423          	sd	s1,40(sp)
    800034d8:	03213023          	sd	s2,32(sp)
    800034dc:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800034e0:	02000513          	li	a0,32
    800034e4:	ffffe097          	auipc	ra,0xffffe
    800034e8:	4d4080e7          	jalr	1236(ra) # 800019b8 <_Znwm>
    800034ec:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800034f0:	ffffe097          	auipc	ra,0xffffe
    800034f4:	614080e7          	jalr	1556(ra) # 80001b04 <_ZN6ThreadC1Ev>
    800034f8:	00008797          	auipc	a5,0x8
    800034fc:	0d878793          	addi	a5,a5,216 # 8000b5d0 <_ZTV7WorkerA+0x10>
    80003500:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003504:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003508:	00006517          	auipc	a0,0x6
    8000350c:	e7050513          	addi	a0,a0,-400 # 80009378 <CONSOLE_STATUS+0x368>
    80003510:	00002097          	auipc	ra,0x2
    80003514:	a60080e7          	jalr	-1440(ra) # 80004f70 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003518:	02000513          	li	a0,32
    8000351c:	ffffe097          	auipc	ra,0xffffe
    80003520:	49c080e7          	jalr	1180(ra) # 800019b8 <_Znwm>
    80003524:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003528:	ffffe097          	auipc	ra,0xffffe
    8000352c:	5dc080e7          	jalr	1500(ra) # 80001b04 <_ZN6ThreadC1Ev>
    80003530:	00008797          	auipc	a5,0x8
    80003534:	0c878793          	addi	a5,a5,200 # 8000b5f8 <_ZTV7WorkerB+0x10>
    80003538:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    8000353c:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003540:	00006517          	auipc	a0,0x6
    80003544:	e5050513          	addi	a0,a0,-432 # 80009390 <CONSOLE_STATUS+0x380>
    80003548:	00002097          	auipc	ra,0x2
    8000354c:	a28080e7          	jalr	-1496(ra) # 80004f70 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003550:	02000513          	li	a0,32
    80003554:	ffffe097          	auipc	ra,0xffffe
    80003558:	464080e7          	jalr	1124(ra) # 800019b8 <_Znwm>
    8000355c:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003560:	ffffe097          	auipc	ra,0xffffe
    80003564:	5a4080e7          	jalr	1444(ra) # 80001b04 <_ZN6ThreadC1Ev>
    80003568:	00008797          	auipc	a5,0x8
    8000356c:	0b878793          	addi	a5,a5,184 # 8000b620 <_ZTV7WorkerC+0x10>
    80003570:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003574:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003578:	00006517          	auipc	a0,0x6
    8000357c:	e3050513          	addi	a0,a0,-464 # 800093a8 <CONSOLE_STATUS+0x398>
    80003580:	00002097          	auipc	ra,0x2
    80003584:	9f0080e7          	jalr	-1552(ra) # 80004f70 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003588:	02000513          	li	a0,32
    8000358c:	ffffe097          	auipc	ra,0xffffe
    80003590:	42c080e7          	jalr	1068(ra) # 800019b8 <_Znwm>
    80003594:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003598:	ffffe097          	auipc	ra,0xffffe
    8000359c:	56c080e7          	jalr	1388(ra) # 80001b04 <_ZN6ThreadC1Ev>
    800035a0:	00008797          	auipc	a5,0x8
    800035a4:	0a878793          	addi	a5,a5,168 # 8000b648 <_ZTV7WorkerD+0x10>
    800035a8:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    800035ac:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800035b0:	00006517          	auipc	a0,0x6
    800035b4:	e1050513          	addi	a0,a0,-496 # 800093c0 <CONSOLE_STATUS+0x3b0>
    800035b8:	00002097          	auipc	ra,0x2
    800035bc:	9b8080e7          	jalr	-1608(ra) # 80004f70 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800035c0:	00000493          	li	s1,0
    800035c4:	00300793          	li	a5,3
    800035c8:	0297c663          	blt	a5,s1,800035f4 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    800035cc:	00349793          	slli	a5,s1,0x3
    800035d0:	fe040713          	addi	a4,s0,-32
    800035d4:	00f707b3          	add	a5,a4,a5
    800035d8:	fe07b503          	ld	a0,-32(a5)
    800035dc:	ffffe097          	auipc	ra,0xffffe
    800035e0:	594080e7          	jalr	1428(ra) # 80001b70 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800035e4:	0014849b          	addiw	s1,s1,1
    800035e8:	fddff06f          	j	800035c4 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800035ec:	ffffe097          	auipc	ra,0xffffe
    800035f0:	540080e7          	jalr	1344(ra) # 80001b2c <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800035f4:	00008797          	auipc	a5,0x8
    800035f8:	2247c783          	lbu	a5,548(a5) # 8000b818 <_ZL9finishedA>
    800035fc:	fe0788e3          	beqz	a5,800035ec <_Z20Threads_CPP_API_testv+0x124>
    80003600:	00008797          	auipc	a5,0x8
    80003604:	2197c783          	lbu	a5,537(a5) # 8000b819 <_ZL9finishedB>
    80003608:	fe0782e3          	beqz	a5,800035ec <_Z20Threads_CPP_API_testv+0x124>
    8000360c:	00008797          	auipc	a5,0x8
    80003610:	20e7c783          	lbu	a5,526(a5) # 8000b81a <_ZL9finishedC>
    80003614:	fc078ce3          	beqz	a5,800035ec <_Z20Threads_CPP_API_testv+0x124>
    80003618:	00008797          	auipc	a5,0x8
    8000361c:	2037c783          	lbu	a5,515(a5) # 8000b81b <_ZL9finishedD>
    80003620:	fc0786e3          	beqz	a5,800035ec <_Z20Threads_CPP_API_testv+0x124>
    80003624:	fc040493          	addi	s1,s0,-64
    80003628:	0080006f          	j	80003630 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    8000362c:	00848493          	addi	s1,s1,8
    80003630:	fe040793          	addi	a5,s0,-32
    80003634:	08f48663          	beq	s1,a5,800036c0 <_Z20Threads_CPP_API_testv+0x1f8>
    80003638:	0004b503          	ld	a0,0(s1)
    8000363c:	fe0508e3          	beqz	a0,8000362c <_Z20Threads_CPP_API_testv+0x164>
    80003640:	00053783          	ld	a5,0(a0)
    80003644:	0087b783          	ld	a5,8(a5)
    80003648:	000780e7          	jalr	a5
    8000364c:	fe1ff06f          	j	8000362c <_Z20Threads_CPP_API_testv+0x164>
    80003650:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003654:	00048513          	mv	a0,s1
    80003658:	ffffe097          	auipc	ra,0xffffe
    8000365c:	3b0080e7          	jalr	944(ra) # 80001a08 <_ZdlPv>
    80003660:	00090513          	mv	a0,s2
    80003664:	00009097          	auipc	ra,0x9
    80003668:	2c4080e7          	jalr	708(ra) # 8000c928 <_Unwind_Resume>
    8000366c:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003670:	00048513          	mv	a0,s1
    80003674:	ffffe097          	auipc	ra,0xffffe
    80003678:	394080e7          	jalr	916(ra) # 80001a08 <_ZdlPv>
    8000367c:	00090513          	mv	a0,s2
    80003680:	00009097          	auipc	ra,0x9
    80003684:	2a8080e7          	jalr	680(ra) # 8000c928 <_Unwind_Resume>
    80003688:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    8000368c:	00048513          	mv	a0,s1
    80003690:	ffffe097          	auipc	ra,0xffffe
    80003694:	378080e7          	jalr	888(ra) # 80001a08 <_ZdlPv>
    80003698:	00090513          	mv	a0,s2
    8000369c:	00009097          	auipc	ra,0x9
    800036a0:	28c080e7          	jalr	652(ra) # 8000c928 <_Unwind_Resume>
    800036a4:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800036a8:	00048513          	mv	a0,s1
    800036ac:	ffffe097          	auipc	ra,0xffffe
    800036b0:	35c080e7          	jalr	860(ra) # 80001a08 <_ZdlPv>
    800036b4:	00090513          	mv	a0,s2
    800036b8:	00009097          	auipc	ra,0x9
    800036bc:	270080e7          	jalr	624(ra) # 8000c928 <_Unwind_Resume>
}
    800036c0:	03813083          	ld	ra,56(sp)
    800036c4:	03013403          	ld	s0,48(sp)
    800036c8:	02813483          	ld	s1,40(sp)
    800036cc:	02013903          	ld	s2,32(sp)
    800036d0:	04010113          	addi	sp,sp,64
    800036d4:	00008067          	ret

00000000800036d8 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800036d8:	ff010113          	addi	sp,sp,-16
    800036dc:	00113423          	sd	ra,8(sp)
    800036e0:	00813023          	sd	s0,0(sp)
    800036e4:	01010413          	addi	s0,sp,16
    800036e8:	00008797          	auipc	a5,0x8
    800036ec:	ee878793          	addi	a5,a5,-280 # 8000b5d0 <_ZTV7WorkerA+0x10>
    800036f0:	00f53023          	sd	a5,0(a0)
    800036f4:	ffffe097          	auipc	ra,0xffffe
    800036f8:	254080e7          	jalr	596(ra) # 80001948 <_ZN6ThreadD1Ev>
    800036fc:	00813083          	ld	ra,8(sp)
    80003700:	00013403          	ld	s0,0(sp)
    80003704:	01010113          	addi	sp,sp,16
    80003708:	00008067          	ret

000000008000370c <_ZN7WorkerAD0Ev>:
    8000370c:	fe010113          	addi	sp,sp,-32
    80003710:	00113c23          	sd	ra,24(sp)
    80003714:	00813823          	sd	s0,16(sp)
    80003718:	00913423          	sd	s1,8(sp)
    8000371c:	02010413          	addi	s0,sp,32
    80003720:	00050493          	mv	s1,a0
    80003724:	00008797          	auipc	a5,0x8
    80003728:	eac78793          	addi	a5,a5,-340 # 8000b5d0 <_ZTV7WorkerA+0x10>
    8000372c:	00f53023          	sd	a5,0(a0)
    80003730:	ffffe097          	auipc	ra,0xffffe
    80003734:	218080e7          	jalr	536(ra) # 80001948 <_ZN6ThreadD1Ev>
    80003738:	00048513          	mv	a0,s1
    8000373c:	ffffe097          	auipc	ra,0xffffe
    80003740:	2cc080e7          	jalr	716(ra) # 80001a08 <_ZdlPv>
    80003744:	01813083          	ld	ra,24(sp)
    80003748:	01013403          	ld	s0,16(sp)
    8000374c:	00813483          	ld	s1,8(sp)
    80003750:	02010113          	addi	sp,sp,32
    80003754:	00008067          	ret

0000000080003758 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003758:	ff010113          	addi	sp,sp,-16
    8000375c:	00113423          	sd	ra,8(sp)
    80003760:	00813023          	sd	s0,0(sp)
    80003764:	01010413          	addi	s0,sp,16
    80003768:	00008797          	auipc	a5,0x8
    8000376c:	e9078793          	addi	a5,a5,-368 # 8000b5f8 <_ZTV7WorkerB+0x10>
    80003770:	00f53023          	sd	a5,0(a0)
    80003774:	ffffe097          	auipc	ra,0xffffe
    80003778:	1d4080e7          	jalr	468(ra) # 80001948 <_ZN6ThreadD1Ev>
    8000377c:	00813083          	ld	ra,8(sp)
    80003780:	00013403          	ld	s0,0(sp)
    80003784:	01010113          	addi	sp,sp,16
    80003788:	00008067          	ret

000000008000378c <_ZN7WorkerBD0Ev>:
    8000378c:	fe010113          	addi	sp,sp,-32
    80003790:	00113c23          	sd	ra,24(sp)
    80003794:	00813823          	sd	s0,16(sp)
    80003798:	00913423          	sd	s1,8(sp)
    8000379c:	02010413          	addi	s0,sp,32
    800037a0:	00050493          	mv	s1,a0
    800037a4:	00008797          	auipc	a5,0x8
    800037a8:	e5478793          	addi	a5,a5,-428 # 8000b5f8 <_ZTV7WorkerB+0x10>
    800037ac:	00f53023          	sd	a5,0(a0)
    800037b0:	ffffe097          	auipc	ra,0xffffe
    800037b4:	198080e7          	jalr	408(ra) # 80001948 <_ZN6ThreadD1Ev>
    800037b8:	00048513          	mv	a0,s1
    800037bc:	ffffe097          	auipc	ra,0xffffe
    800037c0:	24c080e7          	jalr	588(ra) # 80001a08 <_ZdlPv>
    800037c4:	01813083          	ld	ra,24(sp)
    800037c8:	01013403          	ld	s0,16(sp)
    800037cc:	00813483          	ld	s1,8(sp)
    800037d0:	02010113          	addi	sp,sp,32
    800037d4:	00008067          	ret

00000000800037d8 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800037d8:	ff010113          	addi	sp,sp,-16
    800037dc:	00113423          	sd	ra,8(sp)
    800037e0:	00813023          	sd	s0,0(sp)
    800037e4:	01010413          	addi	s0,sp,16
    800037e8:	00008797          	auipc	a5,0x8
    800037ec:	e3878793          	addi	a5,a5,-456 # 8000b620 <_ZTV7WorkerC+0x10>
    800037f0:	00f53023          	sd	a5,0(a0)
    800037f4:	ffffe097          	auipc	ra,0xffffe
    800037f8:	154080e7          	jalr	340(ra) # 80001948 <_ZN6ThreadD1Ev>
    800037fc:	00813083          	ld	ra,8(sp)
    80003800:	00013403          	ld	s0,0(sp)
    80003804:	01010113          	addi	sp,sp,16
    80003808:	00008067          	ret

000000008000380c <_ZN7WorkerCD0Ev>:
    8000380c:	fe010113          	addi	sp,sp,-32
    80003810:	00113c23          	sd	ra,24(sp)
    80003814:	00813823          	sd	s0,16(sp)
    80003818:	00913423          	sd	s1,8(sp)
    8000381c:	02010413          	addi	s0,sp,32
    80003820:	00050493          	mv	s1,a0
    80003824:	00008797          	auipc	a5,0x8
    80003828:	dfc78793          	addi	a5,a5,-516 # 8000b620 <_ZTV7WorkerC+0x10>
    8000382c:	00f53023          	sd	a5,0(a0)
    80003830:	ffffe097          	auipc	ra,0xffffe
    80003834:	118080e7          	jalr	280(ra) # 80001948 <_ZN6ThreadD1Ev>
    80003838:	00048513          	mv	a0,s1
    8000383c:	ffffe097          	auipc	ra,0xffffe
    80003840:	1cc080e7          	jalr	460(ra) # 80001a08 <_ZdlPv>
    80003844:	01813083          	ld	ra,24(sp)
    80003848:	01013403          	ld	s0,16(sp)
    8000384c:	00813483          	ld	s1,8(sp)
    80003850:	02010113          	addi	sp,sp,32
    80003854:	00008067          	ret

0000000080003858 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003858:	ff010113          	addi	sp,sp,-16
    8000385c:	00113423          	sd	ra,8(sp)
    80003860:	00813023          	sd	s0,0(sp)
    80003864:	01010413          	addi	s0,sp,16
    80003868:	00008797          	auipc	a5,0x8
    8000386c:	de078793          	addi	a5,a5,-544 # 8000b648 <_ZTV7WorkerD+0x10>
    80003870:	00f53023          	sd	a5,0(a0)
    80003874:	ffffe097          	auipc	ra,0xffffe
    80003878:	0d4080e7          	jalr	212(ra) # 80001948 <_ZN6ThreadD1Ev>
    8000387c:	00813083          	ld	ra,8(sp)
    80003880:	00013403          	ld	s0,0(sp)
    80003884:	01010113          	addi	sp,sp,16
    80003888:	00008067          	ret

000000008000388c <_ZN7WorkerDD0Ev>:
    8000388c:	fe010113          	addi	sp,sp,-32
    80003890:	00113c23          	sd	ra,24(sp)
    80003894:	00813823          	sd	s0,16(sp)
    80003898:	00913423          	sd	s1,8(sp)
    8000389c:	02010413          	addi	s0,sp,32
    800038a0:	00050493          	mv	s1,a0
    800038a4:	00008797          	auipc	a5,0x8
    800038a8:	da478793          	addi	a5,a5,-604 # 8000b648 <_ZTV7WorkerD+0x10>
    800038ac:	00f53023          	sd	a5,0(a0)
    800038b0:	ffffe097          	auipc	ra,0xffffe
    800038b4:	098080e7          	jalr	152(ra) # 80001948 <_ZN6ThreadD1Ev>
    800038b8:	00048513          	mv	a0,s1
    800038bc:	ffffe097          	auipc	ra,0xffffe
    800038c0:	14c080e7          	jalr	332(ra) # 80001a08 <_ZdlPv>
    800038c4:	01813083          	ld	ra,24(sp)
    800038c8:	01013403          	ld	s0,16(sp)
    800038cc:	00813483          	ld	s1,8(sp)
    800038d0:	02010113          	addi	sp,sp,32
    800038d4:	00008067          	ret

00000000800038d8 <_ZN7WorkerA3runEv>:
    void run() override {
    800038d8:	ff010113          	addi	sp,sp,-16
    800038dc:	00113423          	sd	ra,8(sp)
    800038e0:	00813023          	sd	s0,0(sp)
    800038e4:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800038e8:	00000593          	li	a1,0
    800038ec:	fffff097          	auipc	ra,0xfffff
    800038f0:	774080e7          	jalr	1908(ra) # 80003060 <_ZN7WorkerA11workerBodyAEPv>
    }
    800038f4:	00813083          	ld	ra,8(sp)
    800038f8:	00013403          	ld	s0,0(sp)
    800038fc:	01010113          	addi	sp,sp,16
    80003900:	00008067          	ret

0000000080003904 <_ZN7WorkerB3runEv>:
    void run() override {
    80003904:	ff010113          	addi	sp,sp,-16
    80003908:	00113423          	sd	ra,8(sp)
    8000390c:	00813023          	sd	s0,0(sp)
    80003910:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003914:	00000593          	li	a1,0
    80003918:	00000097          	auipc	ra,0x0
    8000391c:	814080e7          	jalr	-2028(ra) # 8000312c <_ZN7WorkerB11workerBodyBEPv>
    }
    80003920:	00813083          	ld	ra,8(sp)
    80003924:	00013403          	ld	s0,0(sp)
    80003928:	01010113          	addi	sp,sp,16
    8000392c:	00008067          	ret

0000000080003930 <_ZN7WorkerC3runEv>:
    void run() override {
    80003930:	ff010113          	addi	sp,sp,-16
    80003934:	00113423          	sd	ra,8(sp)
    80003938:	00813023          	sd	s0,0(sp)
    8000393c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003940:	00000593          	li	a1,0
    80003944:	00000097          	auipc	ra,0x0
    80003948:	8bc080e7          	jalr	-1860(ra) # 80003200 <_ZN7WorkerC11workerBodyCEPv>
    }
    8000394c:	00813083          	ld	ra,8(sp)
    80003950:	00013403          	ld	s0,0(sp)
    80003954:	01010113          	addi	sp,sp,16
    80003958:	00008067          	ret

000000008000395c <_ZN7WorkerD3runEv>:
    void run() override {
    8000395c:	ff010113          	addi	sp,sp,-16
    80003960:	00113423          	sd	ra,8(sp)
    80003964:	00813023          	sd	s0,0(sp)
    80003968:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    8000396c:	00000593          	li	a1,0
    80003970:	00000097          	auipc	ra,0x0
    80003974:	a10080e7          	jalr	-1520(ra) # 80003380 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003978:	00813083          	ld	ra,8(sp)
    8000397c:	00013403          	ld	s0,0(sp)
    80003980:	01010113          	addi	sp,sp,16
    80003984:	00008067          	ret

0000000080003988 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003988:	f8010113          	addi	sp,sp,-128
    8000398c:	06113c23          	sd	ra,120(sp)
    80003990:	06813823          	sd	s0,112(sp)
    80003994:	06913423          	sd	s1,104(sp)
    80003998:	07213023          	sd	s2,96(sp)
    8000399c:	05313c23          	sd	s3,88(sp)
    800039a0:	05413823          	sd	s4,80(sp)
    800039a4:	05513423          	sd	s5,72(sp)
    800039a8:	05613023          	sd	s6,64(sp)
    800039ac:	03713c23          	sd	s7,56(sp)
    800039b0:	03813823          	sd	s8,48(sp)
    800039b4:	03913423          	sd	s9,40(sp)
    800039b8:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800039bc:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800039c0:	00006517          	auipc	a0,0x6
    800039c4:	83850513          	addi	a0,a0,-1992 # 800091f8 <CONSOLE_STATUS+0x1e8>
    800039c8:	00001097          	auipc	ra,0x1
    800039cc:	5a8080e7          	jalr	1448(ra) # 80004f70 <_Z11printStringPKc>
    getString(input, 30);
    800039d0:	01e00593          	li	a1,30
    800039d4:	f8040493          	addi	s1,s0,-128
    800039d8:	00048513          	mv	a0,s1
    800039dc:	00001097          	auipc	ra,0x1
    800039e0:	61c080e7          	jalr	1564(ra) # 80004ff8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800039e4:	00048513          	mv	a0,s1
    800039e8:	00001097          	auipc	ra,0x1
    800039ec:	6e8080e7          	jalr	1768(ra) # 800050d0 <_Z11stringToIntPKc>
    800039f0:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    800039f4:	00006517          	auipc	a0,0x6
    800039f8:	82450513          	addi	a0,a0,-2012 # 80009218 <CONSOLE_STATUS+0x208>
    800039fc:	00001097          	auipc	ra,0x1
    80003a00:	574080e7          	jalr	1396(ra) # 80004f70 <_Z11printStringPKc>
    getString(input, 30);
    80003a04:	01e00593          	li	a1,30
    80003a08:	00048513          	mv	a0,s1
    80003a0c:	00001097          	auipc	ra,0x1
    80003a10:	5ec080e7          	jalr	1516(ra) # 80004ff8 <_Z9getStringPci>
    n = stringToInt(input);
    80003a14:	00048513          	mv	a0,s1
    80003a18:	00001097          	auipc	ra,0x1
    80003a1c:	6b8080e7          	jalr	1720(ra) # 800050d0 <_Z11stringToIntPKc>
    80003a20:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003a24:	00006517          	auipc	a0,0x6
    80003a28:	81450513          	addi	a0,a0,-2028 # 80009238 <CONSOLE_STATUS+0x228>
    80003a2c:	00001097          	auipc	ra,0x1
    80003a30:	544080e7          	jalr	1348(ra) # 80004f70 <_Z11printStringPKc>
    printInt(threadNum);
    80003a34:	00000613          	li	a2,0
    80003a38:	00a00593          	li	a1,10
    80003a3c:	00098513          	mv	a0,s3
    80003a40:	00001097          	auipc	ra,0x1
    80003a44:	6e0080e7          	jalr	1760(ra) # 80005120 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003a48:	00006517          	auipc	a0,0x6
    80003a4c:	80850513          	addi	a0,a0,-2040 # 80009250 <CONSOLE_STATUS+0x240>
    80003a50:	00001097          	auipc	ra,0x1
    80003a54:	520080e7          	jalr	1312(ra) # 80004f70 <_Z11printStringPKc>
    printInt(n);
    80003a58:	00000613          	li	a2,0
    80003a5c:	00a00593          	li	a1,10
    80003a60:	00048513          	mv	a0,s1
    80003a64:	00001097          	auipc	ra,0x1
    80003a68:	6bc080e7          	jalr	1724(ra) # 80005120 <_Z8printIntiii>
    printString(".\n");
    80003a6c:	00005517          	auipc	a0,0x5
    80003a70:	7fc50513          	addi	a0,a0,2044 # 80009268 <CONSOLE_STATUS+0x258>
    80003a74:	00001097          	auipc	ra,0x1
    80003a78:	4fc080e7          	jalr	1276(ra) # 80004f70 <_Z11printStringPKc>
    if (threadNum > n) {
    80003a7c:	0334c463          	blt	s1,s3,80003aa4 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003a80:	03305c63          	blez	s3,80003ab8 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003a84:	03800513          	li	a0,56
    80003a88:	ffffe097          	auipc	ra,0xffffe
    80003a8c:	f30080e7          	jalr	-208(ra) # 800019b8 <_Znwm>
    80003a90:	00050a93          	mv	s5,a0
    80003a94:	00048593          	mv	a1,s1
    80003a98:	00001097          	auipc	ra,0x1
    80003a9c:	7a8080e7          	jalr	1960(ra) # 80005240 <_ZN9BufferCPPC1Ei>
    80003aa0:	0300006f          	j	80003ad0 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003aa4:	00005517          	auipc	a0,0x5
    80003aa8:	7cc50513          	addi	a0,a0,1996 # 80009270 <CONSOLE_STATUS+0x260>
    80003aac:	00001097          	auipc	ra,0x1
    80003ab0:	4c4080e7          	jalr	1220(ra) # 80004f70 <_Z11printStringPKc>
        return;
    80003ab4:	0140006f          	j	80003ac8 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003ab8:	00005517          	auipc	a0,0x5
    80003abc:	7f850513          	addi	a0,a0,2040 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80003ac0:	00001097          	auipc	ra,0x1
    80003ac4:	4b0080e7          	jalr	1200(ra) # 80004f70 <_Z11printStringPKc>
        return;
    80003ac8:	000c0113          	mv	sp,s8
    80003acc:	2140006f          	j	80003ce0 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003ad0:	01000513          	li	a0,16
    80003ad4:	ffffe097          	auipc	ra,0xffffe
    80003ad8:	ee4080e7          	jalr	-284(ra) # 800019b8 <_Znwm>
    80003adc:	00050913          	mv	s2,a0
    80003ae0:	00000593          	li	a1,0
    80003ae4:	ffffe097          	auipc	ra,0xffffe
    80003ae8:	0c4080e7          	jalr	196(ra) # 80001ba8 <_ZN9SemaphoreC1Ej>
    80003aec:	00008797          	auipc	a5,0x8
    80003af0:	d327be23          	sd	s2,-708(a5) # 8000b828 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003af4:	00399793          	slli	a5,s3,0x3
    80003af8:	00f78793          	addi	a5,a5,15
    80003afc:	ff07f793          	andi	a5,a5,-16
    80003b00:	40f10133          	sub	sp,sp,a5
    80003b04:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003b08:	0019871b          	addiw	a4,s3,1
    80003b0c:	00171793          	slli	a5,a4,0x1
    80003b10:	00e787b3          	add	a5,a5,a4
    80003b14:	00379793          	slli	a5,a5,0x3
    80003b18:	00f78793          	addi	a5,a5,15
    80003b1c:	ff07f793          	andi	a5,a5,-16
    80003b20:	40f10133          	sub	sp,sp,a5
    80003b24:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003b28:	00199493          	slli	s1,s3,0x1
    80003b2c:	013484b3          	add	s1,s1,s3
    80003b30:	00349493          	slli	s1,s1,0x3
    80003b34:	009b04b3          	add	s1,s6,s1
    80003b38:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80003b3c:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003b40:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003b44:	02800513          	li	a0,40
    80003b48:	ffffe097          	auipc	ra,0xffffe
    80003b4c:	e70080e7          	jalr	-400(ra) # 800019b8 <_Znwm>
    80003b50:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003b54:	ffffe097          	auipc	ra,0xffffe
    80003b58:	fb0080e7          	jalr	-80(ra) # 80001b04 <_ZN6ThreadC1Ev>
    80003b5c:	00008797          	auipc	a5,0x8
    80003b60:	b6478793          	addi	a5,a5,-1180 # 8000b6c0 <_ZTV8Consumer+0x10>
    80003b64:	00fbb023          	sd	a5,0(s7)
    80003b68:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80003b6c:	000b8513          	mv	a0,s7
    80003b70:	ffffe097          	auipc	ra,0xffffe
    80003b74:	000080e7          	jalr	ra # 80001b70 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003b78:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80003b7c:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003b80:	00008797          	auipc	a5,0x8
    80003b84:	ca87b783          	ld	a5,-856(a5) # 8000b828 <_ZL10waitForAll>
    80003b88:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003b8c:	02800513          	li	a0,40
    80003b90:	ffffe097          	auipc	ra,0xffffe
    80003b94:	e28080e7          	jalr	-472(ra) # 800019b8 <_Znwm>
    80003b98:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003b9c:	ffffe097          	auipc	ra,0xffffe
    80003ba0:	f68080e7          	jalr	-152(ra) # 80001b04 <_ZN6ThreadC1Ev>
    80003ba4:	00008797          	auipc	a5,0x8
    80003ba8:	acc78793          	addi	a5,a5,-1332 # 8000b670 <_ZTV16ProducerKeyborad+0x10>
    80003bac:	00f4b023          	sd	a5,0(s1)
    80003bb0:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003bb4:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003bb8:	00048513          	mv	a0,s1
    80003bbc:	ffffe097          	auipc	ra,0xffffe
    80003bc0:	fb4080e7          	jalr	-76(ra) # 80001b70 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003bc4:	00100913          	li	s2,1
    80003bc8:	0300006f          	j	80003bf8 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003bcc:	00008797          	auipc	a5,0x8
    80003bd0:	acc78793          	addi	a5,a5,-1332 # 8000b698 <_ZTV8Producer+0x10>
    80003bd4:	00fcb023          	sd	a5,0(s9)
    80003bd8:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003bdc:	00391793          	slli	a5,s2,0x3
    80003be0:	00fa07b3          	add	a5,s4,a5
    80003be4:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003be8:	000c8513          	mv	a0,s9
    80003bec:	ffffe097          	auipc	ra,0xffffe
    80003bf0:	f84080e7          	jalr	-124(ra) # 80001b70 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003bf4:	0019091b          	addiw	s2,s2,1
    80003bf8:	05395263          	bge	s2,s3,80003c3c <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003bfc:	00191493          	slli	s1,s2,0x1
    80003c00:	012484b3          	add	s1,s1,s2
    80003c04:	00349493          	slli	s1,s1,0x3
    80003c08:	009b04b3          	add	s1,s6,s1
    80003c0c:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003c10:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003c14:	00008797          	auipc	a5,0x8
    80003c18:	c147b783          	ld	a5,-1004(a5) # 8000b828 <_ZL10waitForAll>
    80003c1c:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003c20:	02800513          	li	a0,40
    80003c24:	ffffe097          	auipc	ra,0xffffe
    80003c28:	d94080e7          	jalr	-620(ra) # 800019b8 <_Znwm>
    80003c2c:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003c30:	ffffe097          	auipc	ra,0xffffe
    80003c34:	ed4080e7          	jalr	-300(ra) # 80001b04 <_ZN6ThreadC1Ev>
    80003c38:	f95ff06f          	j	80003bcc <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80003c3c:	ffffe097          	auipc	ra,0xffffe
    80003c40:	ef0080e7          	jalr	-272(ra) # 80001b2c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003c44:	00000493          	li	s1,0
    80003c48:	0099ce63          	blt	s3,s1,80003c64 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80003c4c:	00008517          	auipc	a0,0x8
    80003c50:	bdc53503          	ld	a0,-1060(a0) # 8000b828 <_ZL10waitForAll>
    80003c54:	ffffe097          	auipc	ra,0xffffe
    80003c58:	fc4080e7          	jalr	-60(ra) # 80001c18 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003c5c:	0014849b          	addiw	s1,s1,1
    80003c60:	fe9ff06f          	j	80003c48 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80003c64:	00008517          	auipc	a0,0x8
    80003c68:	bc453503          	ld	a0,-1084(a0) # 8000b828 <_ZL10waitForAll>
    80003c6c:	00050863          	beqz	a0,80003c7c <_Z20testConsumerProducerv+0x2f4>
    80003c70:	00053783          	ld	a5,0(a0)
    80003c74:	0087b783          	ld	a5,8(a5)
    80003c78:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80003c7c:	00000493          	li	s1,0
    80003c80:	0080006f          	j	80003c88 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80003c84:	0014849b          	addiw	s1,s1,1
    80003c88:	0334d263          	bge	s1,s3,80003cac <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80003c8c:	00349793          	slli	a5,s1,0x3
    80003c90:	00fa07b3          	add	a5,s4,a5
    80003c94:	0007b503          	ld	a0,0(a5)
    80003c98:	fe0506e3          	beqz	a0,80003c84 <_Z20testConsumerProducerv+0x2fc>
    80003c9c:	00053783          	ld	a5,0(a0)
    80003ca0:	0087b783          	ld	a5,8(a5)
    80003ca4:	000780e7          	jalr	a5
    80003ca8:	fddff06f          	j	80003c84 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80003cac:	000b8a63          	beqz	s7,80003cc0 <_Z20testConsumerProducerv+0x338>
    80003cb0:	000bb783          	ld	a5,0(s7)
    80003cb4:	0087b783          	ld	a5,8(a5)
    80003cb8:	000b8513          	mv	a0,s7
    80003cbc:	000780e7          	jalr	a5
    delete buffer;
    80003cc0:	000a8e63          	beqz	s5,80003cdc <_Z20testConsumerProducerv+0x354>
    80003cc4:	000a8513          	mv	a0,s5
    80003cc8:	00002097          	auipc	ra,0x2
    80003ccc:	870080e7          	jalr	-1936(ra) # 80005538 <_ZN9BufferCPPD1Ev>
    80003cd0:	000a8513          	mv	a0,s5
    80003cd4:	ffffe097          	auipc	ra,0xffffe
    80003cd8:	d34080e7          	jalr	-716(ra) # 80001a08 <_ZdlPv>
    80003cdc:	000c0113          	mv	sp,s8
}
    80003ce0:	f8040113          	addi	sp,s0,-128
    80003ce4:	07813083          	ld	ra,120(sp)
    80003ce8:	07013403          	ld	s0,112(sp)
    80003cec:	06813483          	ld	s1,104(sp)
    80003cf0:	06013903          	ld	s2,96(sp)
    80003cf4:	05813983          	ld	s3,88(sp)
    80003cf8:	05013a03          	ld	s4,80(sp)
    80003cfc:	04813a83          	ld	s5,72(sp)
    80003d00:	04013b03          	ld	s6,64(sp)
    80003d04:	03813b83          	ld	s7,56(sp)
    80003d08:	03013c03          	ld	s8,48(sp)
    80003d0c:	02813c83          	ld	s9,40(sp)
    80003d10:	08010113          	addi	sp,sp,128
    80003d14:	00008067          	ret
    80003d18:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003d1c:	000a8513          	mv	a0,s5
    80003d20:	ffffe097          	auipc	ra,0xffffe
    80003d24:	ce8080e7          	jalr	-792(ra) # 80001a08 <_ZdlPv>
    80003d28:	00048513          	mv	a0,s1
    80003d2c:	00009097          	auipc	ra,0x9
    80003d30:	bfc080e7          	jalr	-1028(ra) # 8000c928 <_Unwind_Resume>
    80003d34:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80003d38:	00090513          	mv	a0,s2
    80003d3c:	ffffe097          	auipc	ra,0xffffe
    80003d40:	ccc080e7          	jalr	-820(ra) # 80001a08 <_ZdlPv>
    80003d44:	00048513          	mv	a0,s1
    80003d48:	00009097          	auipc	ra,0x9
    80003d4c:	be0080e7          	jalr	-1056(ra) # 8000c928 <_Unwind_Resume>
    80003d50:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003d54:	000b8513          	mv	a0,s7
    80003d58:	ffffe097          	auipc	ra,0xffffe
    80003d5c:	cb0080e7          	jalr	-848(ra) # 80001a08 <_ZdlPv>
    80003d60:	00048513          	mv	a0,s1
    80003d64:	00009097          	auipc	ra,0x9
    80003d68:	bc4080e7          	jalr	-1084(ra) # 8000c928 <_Unwind_Resume>
    80003d6c:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003d70:	00048513          	mv	a0,s1
    80003d74:	ffffe097          	auipc	ra,0xffffe
    80003d78:	c94080e7          	jalr	-876(ra) # 80001a08 <_ZdlPv>
    80003d7c:	00090513          	mv	a0,s2
    80003d80:	00009097          	auipc	ra,0x9
    80003d84:	ba8080e7          	jalr	-1112(ra) # 8000c928 <_Unwind_Resume>
    80003d88:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80003d8c:	000c8513          	mv	a0,s9
    80003d90:	ffffe097          	auipc	ra,0xffffe
    80003d94:	c78080e7          	jalr	-904(ra) # 80001a08 <_ZdlPv>
    80003d98:	00048513          	mv	a0,s1
    80003d9c:	00009097          	auipc	ra,0x9
    80003da0:	b8c080e7          	jalr	-1140(ra) # 8000c928 <_Unwind_Resume>

0000000080003da4 <_ZN8Consumer3runEv>:
    void run() override {
    80003da4:	fd010113          	addi	sp,sp,-48
    80003da8:	02113423          	sd	ra,40(sp)
    80003dac:	02813023          	sd	s0,32(sp)
    80003db0:	00913c23          	sd	s1,24(sp)
    80003db4:	01213823          	sd	s2,16(sp)
    80003db8:	01313423          	sd	s3,8(sp)
    80003dbc:	03010413          	addi	s0,sp,48
    80003dc0:	00050913          	mv	s2,a0
        int i = 0;
    80003dc4:	00000993          	li	s3,0
    80003dc8:	0100006f          	j	80003dd8 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80003dcc:	00a00513          	li	a0,10
    80003dd0:	ffffe097          	auipc	ra,0xffffe
    80003dd4:	ee0080e7          	jalr	-288(ra) # 80001cb0 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80003dd8:	00008797          	auipc	a5,0x8
    80003ddc:	a487a783          	lw	a5,-1464(a5) # 8000b820 <_ZL9threadEnd>
    80003de0:	04079a63          	bnez	a5,80003e34 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80003de4:	02093783          	ld	a5,32(s2)
    80003de8:	0087b503          	ld	a0,8(a5)
    80003dec:	00001097          	auipc	ra,0x1
    80003df0:	638080e7          	jalr	1592(ra) # 80005424 <_ZN9BufferCPP3getEv>
            i++;
    80003df4:	0019849b          	addiw	s1,s3,1
    80003df8:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80003dfc:	0ff57513          	andi	a0,a0,255
    80003e00:	ffffe097          	auipc	ra,0xffffe
    80003e04:	eb0080e7          	jalr	-336(ra) # 80001cb0 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80003e08:	05000793          	li	a5,80
    80003e0c:	02f4e4bb          	remw	s1,s1,a5
    80003e10:	fc0494e3          	bnez	s1,80003dd8 <_ZN8Consumer3runEv+0x34>
    80003e14:	fb9ff06f          	j	80003dcc <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80003e18:	02093783          	ld	a5,32(s2)
    80003e1c:	0087b503          	ld	a0,8(a5)
    80003e20:	00001097          	auipc	ra,0x1
    80003e24:	604080e7          	jalr	1540(ra) # 80005424 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80003e28:	0ff57513          	andi	a0,a0,255
    80003e2c:	ffffe097          	auipc	ra,0xffffe
    80003e30:	e84080e7          	jalr	-380(ra) # 80001cb0 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80003e34:	02093783          	ld	a5,32(s2)
    80003e38:	0087b503          	ld	a0,8(a5)
    80003e3c:	00001097          	auipc	ra,0x1
    80003e40:	674080e7          	jalr	1652(ra) # 800054b0 <_ZN9BufferCPP6getCntEv>
    80003e44:	fca04ae3          	bgtz	a0,80003e18 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80003e48:	02093783          	ld	a5,32(s2)
    80003e4c:	0107b503          	ld	a0,16(a5)
    80003e50:	ffffe097          	auipc	ra,0xffffe
    80003e54:	d90080e7          	jalr	-624(ra) # 80001be0 <_ZN9Semaphore6signalEv>
    }
    80003e58:	02813083          	ld	ra,40(sp)
    80003e5c:	02013403          	ld	s0,32(sp)
    80003e60:	01813483          	ld	s1,24(sp)
    80003e64:	01013903          	ld	s2,16(sp)
    80003e68:	00813983          	ld	s3,8(sp)
    80003e6c:	03010113          	addi	sp,sp,48
    80003e70:	00008067          	ret

0000000080003e74 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80003e74:	ff010113          	addi	sp,sp,-16
    80003e78:	00113423          	sd	ra,8(sp)
    80003e7c:	00813023          	sd	s0,0(sp)
    80003e80:	01010413          	addi	s0,sp,16
    80003e84:	00008797          	auipc	a5,0x8
    80003e88:	83c78793          	addi	a5,a5,-1988 # 8000b6c0 <_ZTV8Consumer+0x10>
    80003e8c:	00f53023          	sd	a5,0(a0)
    80003e90:	ffffe097          	auipc	ra,0xffffe
    80003e94:	ab8080e7          	jalr	-1352(ra) # 80001948 <_ZN6ThreadD1Ev>
    80003e98:	00813083          	ld	ra,8(sp)
    80003e9c:	00013403          	ld	s0,0(sp)
    80003ea0:	01010113          	addi	sp,sp,16
    80003ea4:	00008067          	ret

0000000080003ea8 <_ZN8ConsumerD0Ev>:
    80003ea8:	fe010113          	addi	sp,sp,-32
    80003eac:	00113c23          	sd	ra,24(sp)
    80003eb0:	00813823          	sd	s0,16(sp)
    80003eb4:	00913423          	sd	s1,8(sp)
    80003eb8:	02010413          	addi	s0,sp,32
    80003ebc:	00050493          	mv	s1,a0
    80003ec0:	00008797          	auipc	a5,0x8
    80003ec4:	80078793          	addi	a5,a5,-2048 # 8000b6c0 <_ZTV8Consumer+0x10>
    80003ec8:	00f53023          	sd	a5,0(a0)
    80003ecc:	ffffe097          	auipc	ra,0xffffe
    80003ed0:	a7c080e7          	jalr	-1412(ra) # 80001948 <_ZN6ThreadD1Ev>
    80003ed4:	00048513          	mv	a0,s1
    80003ed8:	ffffe097          	auipc	ra,0xffffe
    80003edc:	b30080e7          	jalr	-1232(ra) # 80001a08 <_ZdlPv>
    80003ee0:	01813083          	ld	ra,24(sp)
    80003ee4:	01013403          	ld	s0,16(sp)
    80003ee8:	00813483          	ld	s1,8(sp)
    80003eec:	02010113          	addi	sp,sp,32
    80003ef0:	00008067          	ret

0000000080003ef4 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80003ef4:	ff010113          	addi	sp,sp,-16
    80003ef8:	00113423          	sd	ra,8(sp)
    80003efc:	00813023          	sd	s0,0(sp)
    80003f00:	01010413          	addi	s0,sp,16
    80003f04:	00007797          	auipc	a5,0x7
    80003f08:	76c78793          	addi	a5,a5,1900 # 8000b670 <_ZTV16ProducerKeyborad+0x10>
    80003f0c:	00f53023          	sd	a5,0(a0)
    80003f10:	ffffe097          	auipc	ra,0xffffe
    80003f14:	a38080e7          	jalr	-1480(ra) # 80001948 <_ZN6ThreadD1Ev>
    80003f18:	00813083          	ld	ra,8(sp)
    80003f1c:	00013403          	ld	s0,0(sp)
    80003f20:	01010113          	addi	sp,sp,16
    80003f24:	00008067          	ret

0000000080003f28 <_ZN16ProducerKeyboradD0Ev>:
    80003f28:	fe010113          	addi	sp,sp,-32
    80003f2c:	00113c23          	sd	ra,24(sp)
    80003f30:	00813823          	sd	s0,16(sp)
    80003f34:	00913423          	sd	s1,8(sp)
    80003f38:	02010413          	addi	s0,sp,32
    80003f3c:	00050493          	mv	s1,a0
    80003f40:	00007797          	auipc	a5,0x7
    80003f44:	73078793          	addi	a5,a5,1840 # 8000b670 <_ZTV16ProducerKeyborad+0x10>
    80003f48:	00f53023          	sd	a5,0(a0)
    80003f4c:	ffffe097          	auipc	ra,0xffffe
    80003f50:	9fc080e7          	jalr	-1540(ra) # 80001948 <_ZN6ThreadD1Ev>
    80003f54:	00048513          	mv	a0,s1
    80003f58:	ffffe097          	auipc	ra,0xffffe
    80003f5c:	ab0080e7          	jalr	-1360(ra) # 80001a08 <_ZdlPv>
    80003f60:	01813083          	ld	ra,24(sp)
    80003f64:	01013403          	ld	s0,16(sp)
    80003f68:	00813483          	ld	s1,8(sp)
    80003f6c:	02010113          	addi	sp,sp,32
    80003f70:	00008067          	ret

0000000080003f74 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80003f74:	ff010113          	addi	sp,sp,-16
    80003f78:	00113423          	sd	ra,8(sp)
    80003f7c:	00813023          	sd	s0,0(sp)
    80003f80:	01010413          	addi	s0,sp,16
    80003f84:	00007797          	auipc	a5,0x7
    80003f88:	71478793          	addi	a5,a5,1812 # 8000b698 <_ZTV8Producer+0x10>
    80003f8c:	00f53023          	sd	a5,0(a0)
    80003f90:	ffffe097          	auipc	ra,0xffffe
    80003f94:	9b8080e7          	jalr	-1608(ra) # 80001948 <_ZN6ThreadD1Ev>
    80003f98:	00813083          	ld	ra,8(sp)
    80003f9c:	00013403          	ld	s0,0(sp)
    80003fa0:	01010113          	addi	sp,sp,16
    80003fa4:	00008067          	ret

0000000080003fa8 <_ZN8ProducerD0Ev>:
    80003fa8:	fe010113          	addi	sp,sp,-32
    80003fac:	00113c23          	sd	ra,24(sp)
    80003fb0:	00813823          	sd	s0,16(sp)
    80003fb4:	00913423          	sd	s1,8(sp)
    80003fb8:	02010413          	addi	s0,sp,32
    80003fbc:	00050493          	mv	s1,a0
    80003fc0:	00007797          	auipc	a5,0x7
    80003fc4:	6d878793          	addi	a5,a5,1752 # 8000b698 <_ZTV8Producer+0x10>
    80003fc8:	00f53023          	sd	a5,0(a0)
    80003fcc:	ffffe097          	auipc	ra,0xffffe
    80003fd0:	97c080e7          	jalr	-1668(ra) # 80001948 <_ZN6ThreadD1Ev>
    80003fd4:	00048513          	mv	a0,s1
    80003fd8:	ffffe097          	auipc	ra,0xffffe
    80003fdc:	a30080e7          	jalr	-1488(ra) # 80001a08 <_ZdlPv>
    80003fe0:	01813083          	ld	ra,24(sp)
    80003fe4:	01013403          	ld	s0,16(sp)
    80003fe8:	00813483          	ld	s1,8(sp)
    80003fec:	02010113          	addi	sp,sp,32
    80003ff0:	00008067          	ret

0000000080003ff4 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80003ff4:	fe010113          	addi	sp,sp,-32
    80003ff8:	00113c23          	sd	ra,24(sp)
    80003ffc:	00813823          	sd	s0,16(sp)
    80004000:	00913423          	sd	s1,8(sp)
    80004004:	02010413          	addi	s0,sp,32
    80004008:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    8000400c:	ffffd097          	auipc	ra,0xffffd
    80004010:	660080e7          	jalr	1632(ra) # 8000166c <_Z4getcv>
    80004014:	0005059b          	sext.w	a1,a0
    80004018:	01b00793          	li	a5,27
    8000401c:	00f58c63          	beq	a1,a5,80004034 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004020:	0204b783          	ld	a5,32(s1)
    80004024:	0087b503          	ld	a0,8(a5)
    80004028:	00001097          	auipc	ra,0x1
    8000402c:	36c080e7          	jalr	876(ra) # 80005394 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004030:	fddff06f          	j	8000400c <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004034:	00100793          	li	a5,1
    80004038:	00007717          	auipc	a4,0x7
    8000403c:	7ef72423          	sw	a5,2024(a4) # 8000b820 <_ZL9threadEnd>
        td->buffer->put('!');
    80004040:	0204b783          	ld	a5,32(s1)
    80004044:	02100593          	li	a1,33
    80004048:	0087b503          	ld	a0,8(a5)
    8000404c:	00001097          	auipc	ra,0x1
    80004050:	348080e7          	jalr	840(ra) # 80005394 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004054:	0204b783          	ld	a5,32(s1)
    80004058:	0107b503          	ld	a0,16(a5)
    8000405c:	ffffe097          	auipc	ra,0xffffe
    80004060:	b84080e7          	jalr	-1148(ra) # 80001be0 <_ZN9Semaphore6signalEv>
    }
    80004064:	01813083          	ld	ra,24(sp)
    80004068:	01013403          	ld	s0,16(sp)
    8000406c:	00813483          	ld	s1,8(sp)
    80004070:	02010113          	addi	sp,sp,32
    80004074:	00008067          	ret

0000000080004078 <_ZN8Producer3runEv>:
    void run() override {
    80004078:	fe010113          	addi	sp,sp,-32
    8000407c:	00113c23          	sd	ra,24(sp)
    80004080:	00813823          	sd	s0,16(sp)
    80004084:	00913423          	sd	s1,8(sp)
    80004088:	01213023          	sd	s2,0(sp)
    8000408c:	02010413          	addi	s0,sp,32
    80004090:	00050493          	mv	s1,a0
        int i = 0;
    80004094:	00000913          	li	s2,0
        while (!threadEnd) {
    80004098:	00007797          	auipc	a5,0x7
    8000409c:	7887a783          	lw	a5,1928(a5) # 8000b820 <_ZL9threadEnd>
    800040a0:	04079263          	bnez	a5,800040e4 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    800040a4:	0204b783          	ld	a5,32(s1)
    800040a8:	0007a583          	lw	a1,0(a5)
    800040ac:	0305859b          	addiw	a1,a1,48
    800040b0:	0087b503          	ld	a0,8(a5)
    800040b4:	00001097          	auipc	ra,0x1
    800040b8:	2e0080e7          	jalr	736(ra) # 80005394 <_ZN9BufferCPP3putEi>
            i++;
    800040bc:	0019071b          	addiw	a4,s2,1
    800040c0:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    800040c4:	0204b783          	ld	a5,32(s1)
    800040c8:	0007a783          	lw	a5,0(a5)
    800040cc:	00e787bb          	addw	a5,a5,a4
    800040d0:	00500513          	li	a0,5
    800040d4:	02a7e53b          	remw	a0,a5,a0
    800040d8:	ffffe097          	auipc	ra,0xffffe
    800040dc:	a7c080e7          	jalr	-1412(ra) # 80001b54 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    800040e0:	fb9ff06f          	j	80004098 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    800040e4:	0204b783          	ld	a5,32(s1)
    800040e8:	0107b503          	ld	a0,16(a5)
    800040ec:	ffffe097          	auipc	ra,0xffffe
    800040f0:	af4080e7          	jalr	-1292(ra) # 80001be0 <_ZN9Semaphore6signalEv>
    }
    800040f4:	01813083          	ld	ra,24(sp)
    800040f8:	01013403          	ld	s0,16(sp)
    800040fc:	00813483          	ld	s1,8(sp)
    80004100:	00013903          	ld	s2,0(sp)
    80004104:	02010113          	addi	sp,sp,32
    80004108:	00008067          	ret

000000008000410c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000410c:	fe010113          	addi	sp,sp,-32
    80004110:	00113c23          	sd	ra,24(sp)
    80004114:	00813823          	sd	s0,16(sp)
    80004118:	00913423          	sd	s1,8(sp)
    8000411c:	01213023          	sd	s2,0(sp)
    80004120:	02010413          	addi	s0,sp,32
    80004124:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004128:	00100793          	li	a5,1
    8000412c:	02a7f863          	bgeu	a5,a0,8000415c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004130:	00a00793          	li	a5,10
    80004134:	02f577b3          	remu	a5,a0,a5
    80004138:	02078e63          	beqz	a5,80004174 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000413c:	fff48513          	addi	a0,s1,-1
    80004140:	00000097          	auipc	ra,0x0
    80004144:	fcc080e7          	jalr	-52(ra) # 8000410c <_ZL9fibonaccim>
    80004148:	00050913          	mv	s2,a0
    8000414c:	ffe48513          	addi	a0,s1,-2
    80004150:	00000097          	auipc	ra,0x0
    80004154:	fbc080e7          	jalr	-68(ra) # 8000410c <_ZL9fibonaccim>
    80004158:	00a90533          	add	a0,s2,a0
}
    8000415c:	01813083          	ld	ra,24(sp)
    80004160:	01013403          	ld	s0,16(sp)
    80004164:	00813483          	ld	s1,8(sp)
    80004168:	00013903          	ld	s2,0(sp)
    8000416c:	02010113          	addi	sp,sp,32
    80004170:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004174:	ffffd097          	auipc	ra,0xffffd
    80004178:	2c0080e7          	jalr	704(ra) # 80001434 <_Z15thread_dispatchv>
    8000417c:	fc1ff06f          	j	8000413c <_ZL9fibonaccim+0x30>

0000000080004180 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004180:	fe010113          	addi	sp,sp,-32
    80004184:	00113c23          	sd	ra,24(sp)
    80004188:	00813823          	sd	s0,16(sp)
    8000418c:	00913423          	sd	s1,8(sp)
    80004190:	01213023          	sd	s2,0(sp)
    80004194:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004198:	00a00493          	li	s1,10
    8000419c:	0400006f          	j	800041dc <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800041a0:	00005517          	auipc	a0,0x5
    800041a4:	1a050513          	addi	a0,a0,416 # 80009340 <CONSOLE_STATUS+0x330>
    800041a8:	00001097          	auipc	ra,0x1
    800041ac:	dc8080e7          	jalr	-568(ra) # 80004f70 <_Z11printStringPKc>
    800041b0:	00000613          	li	a2,0
    800041b4:	00a00593          	li	a1,10
    800041b8:	00048513          	mv	a0,s1
    800041bc:	00001097          	auipc	ra,0x1
    800041c0:	f64080e7          	jalr	-156(ra) # 80005120 <_Z8printIntiii>
    800041c4:	00005517          	auipc	a0,0x5
    800041c8:	39c50513          	addi	a0,a0,924 # 80009560 <CONSOLE_STATUS+0x550>
    800041cc:	00001097          	auipc	ra,0x1
    800041d0:	da4080e7          	jalr	-604(ra) # 80004f70 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800041d4:	0014849b          	addiw	s1,s1,1
    800041d8:	0ff4f493          	andi	s1,s1,255
    800041dc:	00c00793          	li	a5,12
    800041e0:	fc97f0e3          	bgeu	a5,s1,800041a0 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800041e4:	00005517          	auipc	a0,0x5
    800041e8:	16450513          	addi	a0,a0,356 # 80009348 <CONSOLE_STATUS+0x338>
    800041ec:	00001097          	auipc	ra,0x1
    800041f0:	d84080e7          	jalr	-636(ra) # 80004f70 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800041f4:	00500313          	li	t1,5
    thread_dispatch();
    800041f8:	ffffd097          	auipc	ra,0xffffd
    800041fc:	23c080e7          	jalr	572(ra) # 80001434 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004200:	01000513          	li	a0,16
    80004204:	00000097          	auipc	ra,0x0
    80004208:	f08080e7          	jalr	-248(ra) # 8000410c <_ZL9fibonaccim>
    8000420c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004210:	00005517          	auipc	a0,0x5
    80004214:	14850513          	addi	a0,a0,328 # 80009358 <CONSOLE_STATUS+0x348>
    80004218:	00001097          	auipc	ra,0x1
    8000421c:	d58080e7          	jalr	-680(ra) # 80004f70 <_Z11printStringPKc>
    80004220:	00000613          	li	a2,0
    80004224:	00a00593          	li	a1,10
    80004228:	0009051b          	sext.w	a0,s2
    8000422c:	00001097          	auipc	ra,0x1
    80004230:	ef4080e7          	jalr	-268(ra) # 80005120 <_Z8printIntiii>
    80004234:	00005517          	auipc	a0,0x5
    80004238:	32c50513          	addi	a0,a0,812 # 80009560 <CONSOLE_STATUS+0x550>
    8000423c:	00001097          	auipc	ra,0x1
    80004240:	d34080e7          	jalr	-716(ra) # 80004f70 <_Z11printStringPKc>
    80004244:	0400006f          	j	80004284 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004248:	00005517          	auipc	a0,0x5
    8000424c:	0f850513          	addi	a0,a0,248 # 80009340 <CONSOLE_STATUS+0x330>
    80004250:	00001097          	auipc	ra,0x1
    80004254:	d20080e7          	jalr	-736(ra) # 80004f70 <_Z11printStringPKc>
    80004258:	00000613          	li	a2,0
    8000425c:	00a00593          	li	a1,10
    80004260:	00048513          	mv	a0,s1
    80004264:	00001097          	auipc	ra,0x1
    80004268:	ebc080e7          	jalr	-324(ra) # 80005120 <_Z8printIntiii>
    8000426c:	00005517          	auipc	a0,0x5
    80004270:	2f450513          	addi	a0,a0,756 # 80009560 <CONSOLE_STATUS+0x550>
    80004274:	00001097          	auipc	ra,0x1
    80004278:	cfc080e7          	jalr	-772(ra) # 80004f70 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000427c:	0014849b          	addiw	s1,s1,1
    80004280:	0ff4f493          	andi	s1,s1,255
    80004284:	00f00793          	li	a5,15
    80004288:	fc97f0e3          	bgeu	a5,s1,80004248 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000428c:	00005517          	auipc	a0,0x5
    80004290:	0dc50513          	addi	a0,a0,220 # 80009368 <CONSOLE_STATUS+0x358>
    80004294:	00001097          	auipc	ra,0x1
    80004298:	cdc080e7          	jalr	-804(ra) # 80004f70 <_Z11printStringPKc>
    finishedD = true;
    8000429c:	00100793          	li	a5,1
    800042a0:	00007717          	auipc	a4,0x7
    800042a4:	58f70823          	sb	a5,1424(a4) # 8000b830 <_ZL9finishedD>
    thread_dispatch();
    800042a8:	ffffd097          	auipc	ra,0xffffd
    800042ac:	18c080e7          	jalr	396(ra) # 80001434 <_Z15thread_dispatchv>
}
    800042b0:	01813083          	ld	ra,24(sp)
    800042b4:	01013403          	ld	s0,16(sp)
    800042b8:	00813483          	ld	s1,8(sp)
    800042bc:	00013903          	ld	s2,0(sp)
    800042c0:	02010113          	addi	sp,sp,32
    800042c4:	00008067          	ret

00000000800042c8 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800042c8:	fe010113          	addi	sp,sp,-32
    800042cc:	00113c23          	sd	ra,24(sp)
    800042d0:	00813823          	sd	s0,16(sp)
    800042d4:	00913423          	sd	s1,8(sp)
    800042d8:	01213023          	sd	s2,0(sp)
    800042dc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800042e0:	00000493          	li	s1,0
    800042e4:	0400006f          	j	80004324 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800042e8:	00005517          	auipc	a0,0x5
    800042ec:	02850513          	addi	a0,a0,40 # 80009310 <CONSOLE_STATUS+0x300>
    800042f0:	00001097          	auipc	ra,0x1
    800042f4:	c80080e7          	jalr	-896(ra) # 80004f70 <_Z11printStringPKc>
    800042f8:	00000613          	li	a2,0
    800042fc:	00a00593          	li	a1,10
    80004300:	00048513          	mv	a0,s1
    80004304:	00001097          	auipc	ra,0x1
    80004308:	e1c080e7          	jalr	-484(ra) # 80005120 <_Z8printIntiii>
    8000430c:	00005517          	auipc	a0,0x5
    80004310:	25450513          	addi	a0,a0,596 # 80009560 <CONSOLE_STATUS+0x550>
    80004314:	00001097          	auipc	ra,0x1
    80004318:	c5c080e7          	jalr	-932(ra) # 80004f70 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000431c:	0014849b          	addiw	s1,s1,1
    80004320:	0ff4f493          	andi	s1,s1,255
    80004324:	00200793          	li	a5,2
    80004328:	fc97f0e3          	bgeu	a5,s1,800042e8 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    8000432c:	00005517          	auipc	a0,0x5
    80004330:	fec50513          	addi	a0,a0,-20 # 80009318 <CONSOLE_STATUS+0x308>
    80004334:	00001097          	auipc	ra,0x1
    80004338:	c3c080e7          	jalr	-964(ra) # 80004f70 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000433c:	00700313          	li	t1,7
    thread_dispatch();
    80004340:	ffffd097          	auipc	ra,0xffffd
    80004344:	0f4080e7          	jalr	244(ra) # 80001434 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004348:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    8000434c:	00005517          	auipc	a0,0x5
    80004350:	fdc50513          	addi	a0,a0,-36 # 80009328 <CONSOLE_STATUS+0x318>
    80004354:	00001097          	auipc	ra,0x1
    80004358:	c1c080e7          	jalr	-996(ra) # 80004f70 <_Z11printStringPKc>
    8000435c:	00000613          	li	a2,0
    80004360:	00a00593          	li	a1,10
    80004364:	0009051b          	sext.w	a0,s2
    80004368:	00001097          	auipc	ra,0x1
    8000436c:	db8080e7          	jalr	-584(ra) # 80005120 <_Z8printIntiii>
    80004370:	00005517          	auipc	a0,0x5
    80004374:	1f050513          	addi	a0,a0,496 # 80009560 <CONSOLE_STATUS+0x550>
    80004378:	00001097          	auipc	ra,0x1
    8000437c:	bf8080e7          	jalr	-1032(ra) # 80004f70 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004380:	00c00513          	li	a0,12
    80004384:	00000097          	auipc	ra,0x0
    80004388:	d88080e7          	jalr	-632(ra) # 8000410c <_ZL9fibonaccim>
    8000438c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004390:	00005517          	auipc	a0,0x5
    80004394:	fa050513          	addi	a0,a0,-96 # 80009330 <CONSOLE_STATUS+0x320>
    80004398:	00001097          	auipc	ra,0x1
    8000439c:	bd8080e7          	jalr	-1064(ra) # 80004f70 <_Z11printStringPKc>
    800043a0:	00000613          	li	a2,0
    800043a4:	00a00593          	li	a1,10
    800043a8:	0009051b          	sext.w	a0,s2
    800043ac:	00001097          	auipc	ra,0x1
    800043b0:	d74080e7          	jalr	-652(ra) # 80005120 <_Z8printIntiii>
    800043b4:	00005517          	auipc	a0,0x5
    800043b8:	1ac50513          	addi	a0,a0,428 # 80009560 <CONSOLE_STATUS+0x550>
    800043bc:	00001097          	auipc	ra,0x1
    800043c0:	bb4080e7          	jalr	-1100(ra) # 80004f70 <_Z11printStringPKc>
    800043c4:	0400006f          	j	80004404 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800043c8:	00005517          	auipc	a0,0x5
    800043cc:	f4850513          	addi	a0,a0,-184 # 80009310 <CONSOLE_STATUS+0x300>
    800043d0:	00001097          	auipc	ra,0x1
    800043d4:	ba0080e7          	jalr	-1120(ra) # 80004f70 <_Z11printStringPKc>
    800043d8:	00000613          	li	a2,0
    800043dc:	00a00593          	li	a1,10
    800043e0:	00048513          	mv	a0,s1
    800043e4:	00001097          	auipc	ra,0x1
    800043e8:	d3c080e7          	jalr	-708(ra) # 80005120 <_Z8printIntiii>
    800043ec:	00005517          	auipc	a0,0x5
    800043f0:	17450513          	addi	a0,a0,372 # 80009560 <CONSOLE_STATUS+0x550>
    800043f4:	00001097          	auipc	ra,0x1
    800043f8:	b7c080e7          	jalr	-1156(ra) # 80004f70 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800043fc:	0014849b          	addiw	s1,s1,1
    80004400:	0ff4f493          	andi	s1,s1,255
    80004404:	00500793          	li	a5,5
    80004408:	fc97f0e3          	bgeu	a5,s1,800043c8 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    8000440c:	00005517          	auipc	a0,0x5
    80004410:	edc50513          	addi	a0,a0,-292 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80004414:	00001097          	auipc	ra,0x1
    80004418:	b5c080e7          	jalr	-1188(ra) # 80004f70 <_Z11printStringPKc>
    finishedC = true;
    8000441c:	00100793          	li	a5,1
    80004420:	00007717          	auipc	a4,0x7
    80004424:	40f708a3          	sb	a5,1041(a4) # 8000b831 <_ZL9finishedC>
    thread_dispatch();
    80004428:	ffffd097          	auipc	ra,0xffffd
    8000442c:	00c080e7          	jalr	12(ra) # 80001434 <_Z15thread_dispatchv>
}
    80004430:	01813083          	ld	ra,24(sp)
    80004434:	01013403          	ld	s0,16(sp)
    80004438:	00813483          	ld	s1,8(sp)
    8000443c:	00013903          	ld	s2,0(sp)
    80004440:	02010113          	addi	sp,sp,32
    80004444:	00008067          	ret

0000000080004448 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004448:	fe010113          	addi	sp,sp,-32
    8000444c:	00113c23          	sd	ra,24(sp)
    80004450:	00813823          	sd	s0,16(sp)
    80004454:	00913423          	sd	s1,8(sp)
    80004458:	01213023          	sd	s2,0(sp)
    8000445c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004460:	00000913          	li	s2,0
    80004464:	0380006f          	j	8000449c <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004468:	ffffd097          	auipc	ra,0xffffd
    8000446c:	fcc080e7          	jalr	-52(ra) # 80001434 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004470:	00148493          	addi	s1,s1,1
    80004474:	000027b7          	lui	a5,0x2
    80004478:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000447c:	0097ee63          	bltu	a5,s1,80004498 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004480:	00000713          	li	a4,0
    80004484:	000077b7          	lui	a5,0x7
    80004488:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000448c:	fce7eee3          	bltu	a5,a4,80004468 <_ZL11workerBodyBPv+0x20>
    80004490:	00170713          	addi	a4,a4,1
    80004494:	ff1ff06f          	j	80004484 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004498:	00190913          	addi	s2,s2,1
    8000449c:	00f00793          	li	a5,15
    800044a0:	0527e063          	bltu	a5,s2,800044e0 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800044a4:	00005517          	auipc	a0,0x5
    800044a8:	e5450513          	addi	a0,a0,-428 # 800092f8 <CONSOLE_STATUS+0x2e8>
    800044ac:	00001097          	auipc	ra,0x1
    800044b0:	ac4080e7          	jalr	-1340(ra) # 80004f70 <_Z11printStringPKc>
    800044b4:	00000613          	li	a2,0
    800044b8:	00a00593          	li	a1,10
    800044bc:	0009051b          	sext.w	a0,s2
    800044c0:	00001097          	auipc	ra,0x1
    800044c4:	c60080e7          	jalr	-928(ra) # 80005120 <_Z8printIntiii>
    800044c8:	00005517          	auipc	a0,0x5
    800044cc:	09850513          	addi	a0,a0,152 # 80009560 <CONSOLE_STATUS+0x550>
    800044d0:	00001097          	auipc	ra,0x1
    800044d4:	aa0080e7          	jalr	-1376(ra) # 80004f70 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800044d8:	00000493          	li	s1,0
    800044dc:	f99ff06f          	j	80004474 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    800044e0:	00005517          	auipc	a0,0x5
    800044e4:	e2050513          	addi	a0,a0,-480 # 80009300 <CONSOLE_STATUS+0x2f0>
    800044e8:	00001097          	auipc	ra,0x1
    800044ec:	a88080e7          	jalr	-1400(ra) # 80004f70 <_Z11printStringPKc>
    finishedB = true;
    800044f0:	00100793          	li	a5,1
    800044f4:	00007717          	auipc	a4,0x7
    800044f8:	32f70f23          	sb	a5,830(a4) # 8000b832 <_ZL9finishedB>
    thread_dispatch();
    800044fc:	ffffd097          	auipc	ra,0xffffd
    80004500:	f38080e7          	jalr	-200(ra) # 80001434 <_Z15thread_dispatchv>
}
    80004504:	01813083          	ld	ra,24(sp)
    80004508:	01013403          	ld	s0,16(sp)
    8000450c:	00813483          	ld	s1,8(sp)
    80004510:	00013903          	ld	s2,0(sp)
    80004514:	02010113          	addi	sp,sp,32
    80004518:	00008067          	ret

000000008000451c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000451c:	fe010113          	addi	sp,sp,-32
    80004520:	00113c23          	sd	ra,24(sp)
    80004524:	00813823          	sd	s0,16(sp)
    80004528:	00913423          	sd	s1,8(sp)
    8000452c:	01213023          	sd	s2,0(sp)
    80004530:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004534:	00000913          	li	s2,0
    80004538:	0380006f          	j	80004570 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    8000453c:	ffffd097          	auipc	ra,0xffffd
    80004540:	ef8080e7          	jalr	-264(ra) # 80001434 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004544:	00148493          	addi	s1,s1,1
    80004548:	000027b7          	lui	a5,0x2
    8000454c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004550:	0097ee63          	bltu	a5,s1,8000456c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004554:	00000713          	li	a4,0
    80004558:	000077b7          	lui	a5,0x7
    8000455c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004560:	fce7eee3          	bltu	a5,a4,8000453c <_ZL11workerBodyAPv+0x20>
    80004564:	00170713          	addi	a4,a4,1
    80004568:	ff1ff06f          	j	80004558 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000456c:	00190913          	addi	s2,s2,1
    80004570:	00900793          	li	a5,9
    80004574:	0527e063          	bltu	a5,s2,800045b4 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004578:	00005517          	auipc	a0,0x5
    8000457c:	d6850513          	addi	a0,a0,-664 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80004580:	00001097          	auipc	ra,0x1
    80004584:	9f0080e7          	jalr	-1552(ra) # 80004f70 <_Z11printStringPKc>
    80004588:	00000613          	li	a2,0
    8000458c:	00a00593          	li	a1,10
    80004590:	0009051b          	sext.w	a0,s2
    80004594:	00001097          	auipc	ra,0x1
    80004598:	b8c080e7          	jalr	-1140(ra) # 80005120 <_Z8printIntiii>
    8000459c:	00005517          	auipc	a0,0x5
    800045a0:	fc450513          	addi	a0,a0,-60 # 80009560 <CONSOLE_STATUS+0x550>
    800045a4:	00001097          	auipc	ra,0x1
    800045a8:	9cc080e7          	jalr	-1588(ra) # 80004f70 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800045ac:	00000493          	li	s1,0
    800045b0:	f99ff06f          	j	80004548 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800045b4:	00005517          	auipc	a0,0x5
    800045b8:	d3450513          	addi	a0,a0,-716 # 800092e8 <CONSOLE_STATUS+0x2d8>
    800045bc:	00001097          	auipc	ra,0x1
    800045c0:	9b4080e7          	jalr	-1612(ra) # 80004f70 <_Z11printStringPKc>
    finishedA = true;
    800045c4:	00100793          	li	a5,1
    800045c8:	00007717          	auipc	a4,0x7
    800045cc:	26f705a3          	sb	a5,619(a4) # 8000b833 <_ZL9finishedA>
}
    800045d0:	01813083          	ld	ra,24(sp)
    800045d4:	01013403          	ld	s0,16(sp)
    800045d8:	00813483          	ld	s1,8(sp)
    800045dc:	00013903          	ld	s2,0(sp)
    800045e0:	02010113          	addi	sp,sp,32
    800045e4:	00008067          	ret

00000000800045e8 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800045e8:	fd010113          	addi	sp,sp,-48
    800045ec:	02113423          	sd	ra,40(sp)
    800045f0:	02813023          	sd	s0,32(sp)
    800045f4:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800045f8:	00000613          	li	a2,0
    800045fc:	00000597          	auipc	a1,0x0
    80004600:	f2058593          	addi	a1,a1,-224 # 8000451c <_ZL11workerBodyAPv>
    80004604:	fd040513          	addi	a0,s0,-48
    80004608:	ffffd097          	auipc	ra,0xffffd
    8000460c:	d70080e7          	jalr	-656(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004610:	00005517          	auipc	a0,0x5
    80004614:	d6850513          	addi	a0,a0,-664 # 80009378 <CONSOLE_STATUS+0x368>
    80004618:	00001097          	auipc	ra,0x1
    8000461c:	958080e7          	jalr	-1704(ra) # 80004f70 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004620:	00000613          	li	a2,0
    80004624:	00000597          	auipc	a1,0x0
    80004628:	e2458593          	addi	a1,a1,-476 # 80004448 <_ZL11workerBodyBPv>
    8000462c:	fd840513          	addi	a0,s0,-40
    80004630:	ffffd097          	auipc	ra,0xffffd
    80004634:	d48080e7          	jalr	-696(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004638:	00005517          	auipc	a0,0x5
    8000463c:	d5850513          	addi	a0,a0,-680 # 80009390 <CONSOLE_STATUS+0x380>
    80004640:	00001097          	auipc	ra,0x1
    80004644:	930080e7          	jalr	-1744(ra) # 80004f70 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004648:	00000613          	li	a2,0
    8000464c:	00000597          	auipc	a1,0x0
    80004650:	c7c58593          	addi	a1,a1,-900 # 800042c8 <_ZL11workerBodyCPv>
    80004654:	fe040513          	addi	a0,s0,-32
    80004658:	ffffd097          	auipc	ra,0xffffd
    8000465c:	d20080e7          	jalr	-736(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004660:	00005517          	auipc	a0,0x5
    80004664:	d4850513          	addi	a0,a0,-696 # 800093a8 <CONSOLE_STATUS+0x398>
    80004668:	00001097          	auipc	ra,0x1
    8000466c:	908080e7          	jalr	-1784(ra) # 80004f70 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004670:	00000613          	li	a2,0
    80004674:	00000597          	auipc	a1,0x0
    80004678:	b0c58593          	addi	a1,a1,-1268 # 80004180 <_ZL11workerBodyDPv>
    8000467c:	fe840513          	addi	a0,s0,-24
    80004680:	ffffd097          	auipc	ra,0xffffd
    80004684:	cf8080e7          	jalr	-776(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004688:	00005517          	auipc	a0,0x5
    8000468c:	d3850513          	addi	a0,a0,-712 # 800093c0 <CONSOLE_STATUS+0x3b0>
    80004690:	00001097          	auipc	ra,0x1
    80004694:	8e0080e7          	jalr	-1824(ra) # 80004f70 <_Z11printStringPKc>
    80004698:	00c0006f          	j	800046a4 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000469c:	ffffd097          	auipc	ra,0xffffd
    800046a0:	d98080e7          	jalr	-616(ra) # 80001434 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800046a4:	00007797          	auipc	a5,0x7
    800046a8:	18f7c783          	lbu	a5,399(a5) # 8000b833 <_ZL9finishedA>
    800046ac:	fe0788e3          	beqz	a5,8000469c <_Z18Threads_C_API_testv+0xb4>
    800046b0:	00007797          	auipc	a5,0x7
    800046b4:	1827c783          	lbu	a5,386(a5) # 8000b832 <_ZL9finishedB>
    800046b8:	fe0782e3          	beqz	a5,8000469c <_Z18Threads_C_API_testv+0xb4>
    800046bc:	00007797          	auipc	a5,0x7
    800046c0:	1757c783          	lbu	a5,373(a5) # 8000b831 <_ZL9finishedC>
    800046c4:	fc078ce3          	beqz	a5,8000469c <_Z18Threads_C_API_testv+0xb4>
    800046c8:	00007797          	auipc	a5,0x7
    800046cc:	1687c783          	lbu	a5,360(a5) # 8000b830 <_ZL9finishedD>
    800046d0:	fc0786e3          	beqz	a5,8000469c <_Z18Threads_C_API_testv+0xb4>
    }

}
    800046d4:	02813083          	ld	ra,40(sp)
    800046d8:	02013403          	ld	s0,32(sp)
    800046dc:	03010113          	addi	sp,sp,48
    800046e0:	00008067          	ret

00000000800046e4 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800046e4:	fd010113          	addi	sp,sp,-48
    800046e8:	02113423          	sd	ra,40(sp)
    800046ec:	02813023          	sd	s0,32(sp)
    800046f0:	00913c23          	sd	s1,24(sp)
    800046f4:	01213823          	sd	s2,16(sp)
    800046f8:	01313423          	sd	s3,8(sp)
    800046fc:	03010413          	addi	s0,sp,48
    80004700:	00050993          	mv	s3,a0
    80004704:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004708:	00000913          	li	s2,0
    8000470c:	00c0006f          	j	80004718 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004710:	ffffd097          	auipc	ra,0xffffd
    80004714:	41c080e7          	jalr	1052(ra) # 80001b2c <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004718:	ffffd097          	auipc	ra,0xffffd
    8000471c:	f54080e7          	jalr	-172(ra) # 8000166c <_Z4getcv>
    80004720:	0005059b          	sext.w	a1,a0
    80004724:	01b00793          	li	a5,27
    80004728:	02f58a63          	beq	a1,a5,8000475c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    8000472c:	0084b503          	ld	a0,8(s1)
    80004730:	00001097          	auipc	ra,0x1
    80004734:	c64080e7          	jalr	-924(ra) # 80005394 <_ZN9BufferCPP3putEi>
        i++;
    80004738:	0019071b          	addiw	a4,s2,1
    8000473c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004740:	0004a683          	lw	a3,0(s1)
    80004744:	0026979b          	slliw	a5,a3,0x2
    80004748:	00d787bb          	addw	a5,a5,a3
    8000474c:	0017979b          	slliw	a5,a5,0x1
    80004750:	02f767bb          	remw	a5,a4,a5
    80004754:	fc0792e3          	bnez	a5,80004718 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004758:	fb9ff06f          	j	80004710 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    8000475c:	00100793          	li	a5,1
    80004760:	00007717          	auipc	a4,0x7
    80004764:	0cf72c23          	sw	a5,216(a4) # 8000b838 <_ZL9threadEnd>
    td->buffer->put('!');
    80004768:	0209b783          	ld	a5,32(s3)
    8000476c:	02100593          	li	a1,33
    80004770:	0087b503          	ld	a0,8(a5)
    80004774:	00001097          	auipc	ra,0x1
    80004778:	c20080e7          	jalr	-992(ra) # 80005394 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    8000477c:	0104b503          	ld	a0,16(s1)
    80004780:	ffffd097          	auipc	ra,0xffffd
    80004784:	460080e7          	jalr	1120(ra) # 80001be0 <_ZN9Semaphore6signalEv>
}
    80004788:	02813083          	ld	ra,40(sp)
    8000478c:	02013403          	ld	s0,32(sp)
    80004790:	01813483          	ld	s1,24(sp)
    80004794:	01013903          	ld	s2,16(sp)
    80004798:	00813983          	ld	s3,8(sp)
    8000479c:	03010113          	addi	sp,sp,48
    800047a0:	00008067          	ret

00000000800047a4 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800047a4:	fe010113          	addi	sp,sp,-32
    800047a8:	00113c23          	sd	ra,24(sp)
    800047ac:	00813823          	sd	s0,16(sp)
    800047b0:	00913423          	sd	s1,8(sp)
    800047b4:	01213023          	sd	s2,0(sp)
    800047b8:	02010413          	addi	s0,sp,32
    800047bc:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800047c0:	00000913          	li	s2,0
    800047c4:	00c0006f          	j	800047d0 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800047c8:	ffffd097          	auipc	ra,0xffffd
    800047cc:	364080e7          	jalr	868(ra) # 80001b2c <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800047d0:	00007797          	auipc	a5,0x7
    800047d4:	0687a783          	lw	a5,104(a5) # 8000b838 <_ZL9threadEnd>
    800047d8:	02079e63          	bnez	a5,80004814 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800047dc:	0004a583          	lw	a1,0(s1)
    800047e0:	0305859b          	addiw	a1,a1,48
    800047e4:	0084b503          	ld	a0,8(s1)
    800047e8:	00001097          	auipc	ra,0x1
    800047ec:	bac080e7          	jalr	-1108(ra) # 80005394 <_ZN9BufferCPP3putEi>
        i++;
    800047f0:	0019071b          	addiw	a4,s2,1
    800047f4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800047f8:	0004a683          	lw	a3,0(s1)
    800047fc:	0026979b          	slliw	a5,a3,0x2
    80004800:	00d787bb          	addw	a5,a5,a3
    80004804:	0017979b          	slliw	a5,a5,0x1
    80004808:	02f767bb          	remw	a5,a4,a5
    8000480c:	fc0792e3          	bnez	a5,800047d0 <_ZN12ProducerSync8producerEPv+0x2c>
    80004810:	fb9ff06f          	j	800047c8 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004814:	0104b503          	ld	a0,16(s1)
    80004818:	ffffd097          	auipc	ra,0xffffd
    8000481c:	3c8080e7          	jalr	968(ra) # 80001be0 <_ZN9Semaphore6signalEv>
}
    80004820:	01813083          	ld	ra,24(sp)
    80004824:	01013403          	ld	s0,16(sp)
    80004828:	00813483          	ld	s1,8(sp)
    8000482c:	00013903          	ld	s2,0(sp)
    80004830:	02010113          	addi	sp,sp,32
    80004834:	00008067          	ret

0000000080004838 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004838:	fd010113          	addi	sp,sp,-48
    8000483c:	02113423          	sd	ra,40(sp)
    80004840:	02813023          	sd	s0,32(sp)
    80004844:	00913c23          	sd	s1,24(sp)
    80004848:	01213823          	sd	s2,16(sp)
    8000484c:	01313423          	sd	s3,8(sp)
    80004850:	01413023          	sd	s4,0(sp)
    80004854:	03010413          	addi	s0,sp,48
    80004858:	00050993          	mv	s3,a0
    8000485c:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004860:	00000a13          	li	s4,0
    80004864:	01c0006f          	j	80004880 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004868:	ffffd097          	auipc	ra,0xffffd
    8000486c:	2c4080e7          	jalr	708(ra) # 80001b2c <_ZN6Thread8dispatchEv>
    80004870:	0500006f          	j	800048c0 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004874:	00a00513          	li	a0,10
    80004878:	ffffd097          	auipc	ra,0xffffd
    8000487c:	e34080e7          	jalr	-460(ra) # 800016ac <_Z4putcc>
    while (!threadEnd) {
    80004880:	00007797          	auipc	a5,0x7
    80004884:	fb87a783          	lw	a5,-72(a5) # 8000b838 <_ZL9threadEnd>
    80004888:	06079263          	bnez	a5,800048ec <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    8000488c:	00893503          	ld	a0,8(s2)
    80004890:	00001097          	auipc	ra,0x1
    80004894:	b94080e7          	jalr	-1132(ra) # 80005424 <_ZN9BufferCPP3getEv>
        i++;
    80004898:	001a049b          	addiw	s1,s4,1
    8000489c:	00048a1b          	sext.w	s4,s1
        putc(key);
    800048a0:	0ff57513          	andi	a0,a0,255
    800048a4:	ffffd097          	auipc	ra,0xffffd
    800048a8:	e08080e7          	jalr	-504(ra) # 800016ac <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800048ac:	00092703          	lw	a4,0(s2)
    800048b0:	0027179b          	slliw	a5,a4,0x2
    800048b4:	00e787bb          	addw	a5,a5,a4
    800048b8:	02f4e7bb          	remw	a5,s1,a5
    800048bc:	fa0786e3          	beqz	a5,80004868 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800048c0:	05000793          	li	a5,80
    800048c4:	02f4e4bb          	remw	s1,s1,a5
    800048c8:	fa049ce3          	bnez	s1,80004880 <_ZN12ConsumerSync8consumerEPv+0x48>
    800048cc:	fa9ff06f          	j	80004874 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800048d0:	0209b783          	ld	a5,32(s3)
    800048d4:	0087b503          	ld	a0,8(a5)
    800048d8:	00001097          	auipc	ra,0x1
    800048dc:	b4c080e7          	jalr	-1204(ra) # 80005424 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800048e0:	0ff57513          	andi	a0,a0,255
    800048e4:	ffffd097          	auipc	ra,0xffffd
    800048e8:	3cc080e7          	jalr	972(ra) # 80001cb0 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800048ec:	0209b783          	ld	a5,32(s3)
    800048f0:	0087b503          	ld	a0,8(a5)
    800048f4:	00001097          	auipc	ra,0x1
    800048f8:	bbc080e7          	jalr	-1092(ra) # 800054b0 <_ZN9BufferCPP6getCntEv>
    800048fc:	fca04ae3          	bgtz	a0,800048d0 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004900:	01093503          	ld	a0,16(s2)
    80004904:	ffffd097          	auipc	ra,0xffffd
    80004908:	2dc080e7          	jalr	732(ra) # 80001be0 <_ZN9Semaphore6signalEv>
}
    8000490c:	02813083          	ld	ra,40(sp)
    80004910:	02013403          	ld	s0,32(sp)
    80004914:	01813483          	ld	s1,24(sp)
    80004918:	01013903          	ld	s2,16(sp)
    8000491c:	00813983          	ld	s3,8(sp)
    80004920:	00013a03          	ld	s4,0(sp)
    80004924:	03010113          	addi	sp,sp,48
    80004928:	00008067          	ret

000000008000492c <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    8000492c:	f8010113          	addi	sp,sp,-128
    80004930:	06113c23          	sd	ra,120(sp)
    80004934:	06813823          	sd	s0,112(sp)
    80004938:	06913423          	sd	s1,104(sp)
    8000493c:	07213023          	sd	s2,96(sp)
    80004940:	05313c23          	sd	s3,88(sp)
    80004944:	05413823          	sd	s4,80(sp)
    80004948:	05513423          	sd	s5,72(sp)
    8000494c:	05613023          	sd	s6,64(sp)
    80004950:	03713c23          	sd	s7,56(sp)
    80004954:	03813823          	sd	s8,48(sp)
    80004958:	03913423          	sd	s9,40(sp)
    8000495c:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004960:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004964:	00005517          	auipc	a0,0x5
    80004968:	89450513          	addi	a0,a0,-1900 # 800091f8 <CONSOLE_STATUS+0x1e8>
    8000496c:	00000097          	auipc	ra,0x0
    80004970:	604080e7          	jalr	1540(ra) # 80004f70 <_Z11printStringPKc>
    getString(input, 30);
    80004974:	01e00593          	li	a1,30
    80004978:	f8040493          	addi	s1,s0,-128
    8000497c:	00048513          	mv	a0,s1
    80004980:	00000097          	auipc	ra,0x0
    80004984:	678080e7          	jalr	1656(ra) # 80004ff8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004988:	00048513          	mv	a0,s1
    8000498c:	00000097          	auipc	ra,0x0
    80004990:	744080e7          	jalr	1860(ra) # 800050d0 <_Z11stringToIntPKc>
    80004994:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004998:	00005517          	auipc	a0,0x5
    8000499c:	88050513          	addi	a0,a0,-1920 # 80009218 <CONSOLE_STATUS+0x208>
    800049a0:	00000097          	auipc	ra,0x0
    800049a4:	5d0080e7          	jalr	1488(ra) # 80004f70 <_Z11printStringPKc>
    getString(input, 30);
    800049a8:	01e00593          	li	a1,30
    800049ac:	00048513          	mv	a0,s1
    800049b0:	00000097          	auipc	ra,0x0
    800049b4:	648080e7          	jalr	1608(ra) # 80004ff8 <_Z9getStringPci>
    n = stringToInt(input);
    800049b8:	00048513          	mv	a0,s1
    800049bc:	00000097          	auipc	ra,0x0
    800049c0:	714080e7          	jalr	1812(ra) # 800050d0 <_Z11stringToIntPKc>
    800049c4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800049c8:	00005517          	auipc	a0,0x5
    800049cc:	87050513          	addi	a0,a0,-1936 # 80009238 <CONSOLE_STATUS+0x228>
    800049d0:	00000097          	auipc	ra,0x0
    800049d4:	5a0080e7          	jalr	1440(ra) # 80004f70 <_Z11printStringPKc>
    800049d8:	00000613          	li	a2,0
    800049dc:	00a00593          	li	a1,10
    800049e0:	00090513          	mv	a0,s2
    800049e4:	00000097          	auipc	ra,0x0
    800049e8:	73c080e7          	jalr	1852(ra) # 80005120 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800049ec:	00005517          	auipc	a0,0x5
    800049f0:	86450513          	addi	a0,a0,-1948 # 80009250 <CONSOLE_STATUS+0x240>
    800049f4:	00000097          	auipc	ra,0x0
    800049f8:	57c080e7          	jalr	1404(ra) # 80004f70 <_Z11printStringPKc>
    800049fc:	00000613          	li	a2,0
    80004a00:	00a00593          	li	a1,10
    80004a04:	00048513          	mv	a0,s1
    80004a08:	00000097          	auipc	ra,0x0
    80004a0c:	718080e7          	jalr	1816(ra) # 80005120 <_Z8printIntiii>
    printString(".\n");
    80004a10:	00005517          	auipc	a0,0x5
    80004a14:	85850513          	addi	a0,a0,-1960 # 80009268 <CONSOLE_STATUS+0x258>
    80004a18:	00000097          	auipc	ra,0x0
    80004a1c:	558080e7          	jalr	1368(ra) # 80004f70 <_Z11printStringPKc>
    if(threadNum > n) {
    80004a20:	0324c463          	blt	s1,s2,80004a48 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004a24:	03205c63          	blez	s2,80004a5c <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004a28:	03800513          	li	a0,56
    80004a2c:	ffffd097          	auipc	ra,0xffffd
    80004a30:	f8c080e7          	jalr	-116(ra) # 800019b8 <_Znwm>
    80004a34:	00050a93          	mv	s5,a0
    80004a38:	00048593          	mv	a1,s1
    80004a3c:	00001097          	auipc	ra,0x1
    80004a40:	804080e7          	jalr	-2044(ra) # 80005240 <_ZN9BufferCPPC1Ei>
    80004a44:	0300006f          	j	80004a74 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004a48:	00005517          	auipc	a0,0x5
    80004a4c:	82850513          	addi	a0,a0,-2008 # 80009270 <CONSOLE_STATUS+0x260>
    80004a50:	00000097          	auipc	ra,0x0
    80004a54:	520080e7          	jalr	1312(ra) # 80004f70 <_Z11printStringPKc>
        return;
    80004a58:	0140006f          	j	80004a6c <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004a5c:	00005517          	auipc	a0,0x5
    80004a60:	85450513          	addi	a0,a0,-1964 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80004a64:	00000097          	auipc	ra,0x0
    80004a68:	50c080e7          	jalr	1292(ra) # 80004f70 <_Z11printStringPKc>
        return;
    80004a6c:	000b8113          	mv	sp,s7
    80004a70:	2380006f          	j	80004ca8 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004a74:	01000513          	li	a0,16
    80004a78:	ffffd097          	auipc	ra,0xffffd
    80004a7c:	f40080e7          	jalr	-192(ra) # 800019b8 <_Znwm>
    80004a80:	00050493          	mv	s1,a0
    80004a84:	00000593          	li	a1,0
    80004a88:	ffffd097          	auipc	ra,0xffffd
    80004a8c:	120080e7          	jalr	288(ra) # 80001ba8 <_ZN9SemaphoreC1Ej>
    80004a90:	00007797          	auipc	a5,0x7
    80004a94:	da97b823          	sd	s1,-592(a5) # 8000b840 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004a98:	00391793          	slli	a5,s2,0x3
    80004a9c:	00f78793          	addi	a5,a5,15
    80004aa0:	ff07f793          	andi	a5,a5,-16
    80004aa4:	40f10133          	sub	sp,sp,a5
    80004aa8:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004aac:	0019071b          	addiw	a4,s2,1
    80004ab0:	00171793          	slli	a5,a4,0x1
    80004ab4:	00e787b3          	add	a5,a5,a4
    80004ab8:	00379793          	slli	a5,a5,0x3
    80004abc:	00f78793          	addi	a5,a5,15
    80004ac0:	ff07f793          	andi	a5,a5,-16
    80004ac4:	40f10133          	sub	sp,sp,a5
    80004ac8:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004acc:	00191c13          	slli	s8,s2,0x1
    80004ad0:	012c07b3          	add	a5,s8,s2
    80004ad4:	00379793          	slli	a5,a5,0x3
    80004ad8:	00fa07b3          	add	a5,s4,a5
    80004adc:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004ae0:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004ae4:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004ae8:	02800513          	li	a0,40
    80004aec:	ffffd097          	auipc	ra,0xffffd
    80004af0:	ecc080e7          	jalr	-308(ra) # 800019b8 <_Znwm>
    80004af4:	00050b13          	mv	s6,a0
    80004af8:	012c0c33          	add	s8,s8,s2
    80004afc:	003c1c13          	slli	s8,s8,0x3
    80004b00:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004b04:	ffffd097          	auipc	ra,0xffffd
    80004b08:	000080e7          	jalr	ra # 80001b04 <_ZN6ThreadC1Ev>
    80004b0c:	00007797          	auipc	a5,0x7
    80004b10:	c2c78793          	addi	a5,a5,-980 # 8000b738 <_ZTV12ConsumerSync+0x10>
    80004b14:	00fb3023          	sd	a5,0(s6)
    80004b18:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004b1c:	000b0513          	mv	a0,s6
    80004b20:	ffffd097          	auipc	ra,0xffffd
    80004b24:	050080e7          	jalr	80(ra) # 80001b70 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004b28:	00000493          	li	s1,0
    80004b2c:	0380006f          	j	80004b64 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004b30:	00007797          	auipc	a5,0x7
    80004b34:	be078793          	addi	a5,a5,-1056 # 8000b710 <_ZTV12ProducerSync+0x10>
    80004b38:	00fcb023          	sd	a5,0(s9)
    80004b3c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004b40:	00349793          	slli	a5,s1,0x3
    80004b44:	00f987b3          	add	a5,s3,a5
    80004b48:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004b4c:	00349793          	slli	a5,s1,0x3
    80004b50:	00f987b3          	add	a5,s3,a5
    80004b54:	0007b503          	ld	a0,0(a5)
    80004b58:	ffffd097          	auipc	ra,0xffffd
    80004b5c:	018080e7          	jalr	24(ra) # 80001b70 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004b60:	0014849b          	addiw	s1,s1,1
    80004b64:	0b24d063          	bge	s1,s2,80004c04 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004b68:	00149793          	slli	a5,s1,0x1
    80004b6c:	009787b3          	add	a5,a5,s1
    80004b70:	00379793          	slli	a5,a5,0x3
    80004b74:	00fa07b3          	add	a5,s4,a5
    80004b78:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004b7c:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004b80:	00007717          	auipc	a4,0x7
    80004b84:	cc073703          	ld	a4,-832(a4) # 8000b840 <_ZL10waitForAll>
    80004b88:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004b8c:	02905863          	blez	s1,80004bbc <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004b90:	02800513          	li	a0,40
    80004b94:	ffffd097          	auipc	ra,0xffffd
    80004b98:	e24080e7          	jalr	-476(ra) # 800019b8 <_Znwm>
    80004b9c:	00050c93          	mv	s9,a0
    80004ba0:	00149c13          	slli	s8,s1,0x1
    80004ba4:	009c0c33          	add	s8,s8,s1
    80004ba8:	003c1c13          	slli	s8,s8,0x3
    80004bac:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004bb0:	ffffd097          	auipc	ra,0xffffd
    80004bb4:	f54080e7          	jalr	-172(ra) # 80001b04 <_ZN6ThreadC1Ev>
    80004bb8:	f79ff06f          	j	80004b30 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004bbc:	02800513          	li	a0,40
    80004bc0:	ffffd097          	auipc	ra,0xffffd
    80004bc4:	df8080e7          	jalr	-520(ra) # 800019b8 <_Znwm>
    80004bc8:	00050c93          	mv	s9,a0
    80004bcc:	00149c13          	slli	s8,s1,0x1
    80004bd0:	009c0c33          	add	s8,s8,s1
    80004bd4:	003c1c13          	slli	s8,s8,0x3
    80004bd8:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004bdc:	ffffd097          	auipc	ra,0xffffd
    80004be0:	f28080e7          	jalr	-216(ra) # 80001b04 <_ZN6ThreadC1Ev>
    80004be4:	00007797          	auipc	a5,0x7
    80004be8:	b0478793          	addi	a5,a5,-1276 # 8000b6e8 <_ZTV16ProducerKeyboard+0x10>
    80004bec:	00fcb023          	sd	a5,0(s9)
    80004bf0:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004bf4:	00349793          	slli	a5,s1,0x3
    80004bf8:	00f987b3          	add	a5,s3,a5
    80004bfc:	0197b023          	sd	s9,0(a5)
    80004c00:	f4dff06f          	j	80004b4c <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004c04:	ffffd097          	auipc	ra,0xffffd
    80004c08:	f28080e7          	jalr	-216(ra) # 80001b2c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004c0c:	00000493          	li	s1,0
    80004c10:	00994e63          	blt	s2,s1,80004c2c <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004c14:	00007517          	auipc	a0,0x7
    80004c18:	c2c53503          	ld	a0,-980(a0) # 8000b840 <_ZL10waitForAll>
    80004c1c:	ffffd097          	auipc	ra,0xffffd
    80004c20:	ffc080e7          	jalr	-4(ra) # 80001c18 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004c24:	0014849b          	addiw	s1,s1,1
    80004c28:	fe9ff06f          	j	80004c10 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004c2c:	00000493          	li	s1,0
    80004c30:	0080006f          	j	80004c38 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004c34:	0014849b          	addiw	s1,s1,1
    80004c38:	0324d263          	bge	s1,s2,80004c5c <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004c3c:	00349793          	slli	a5,s1,0x3
    80004c40:	00f987b3          	add	a5,s3,a5
    80004c44:	0007b503          	ld	a0,0(a5)
    80004c48:	fe0506e3          	beqz	a0,80004c34 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004c4c:	00053783          	ld	a5,0(a0)
    80004c50:	0087b783          	ld	a5,8(a5)
    80004c54:	000780e7          	jalr	a5
    80004c58:	fddff06f          	j	80004c34 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004c5c:	000b0a63          	beqz	s6,80004c70 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004c60:	000b3783          	ld	a5,0(s6)
    80004c64:	0087b783          	ld	a5,8(a5)
    80004c68:	000b0513          	mv	a0,s6
    80004c6c:	000780e7          	jalr	a5
    delete waitForAll;
    80004c70:	00007517          	auipc	a0,0x7
    80004c74:	bd053503          	ld	a0,-1072(a0) # 8000b840 <_ZL10waitForAll>
    80004c78:	00050863          	beqz	a0,80004c88 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004c7c:	00053783          	ld	a5,0(a0)
    80004c80:	0087b783          	ld	a5,8(a5)
    80004c84:	000780e7          	jalr	a5
    delete buffer;
    80004c88:	000a8e63          	beqz	s5,80004ca4 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004c8c:	000a8513          	mv	a0,s5
    80004c90:	00001097          	auipc	ra,0x1
    80004c94:	8a8080e7          	jalr	-1880(ra) # 80005538 <_ZN9BufferCPPD1Ev>
    80004c98:	000a8513          	mv	a0,s5
    80004c9c:	ffffd097          	auipc	ra,0xffffd
    80004ca0:	d6c080e7          	jalr	-660(ra) # 80001a08 <_ZdlPv>
    80004ca4:	000b8113          	mv	sp,s7

}
    80004ca8:	f8040113          	addi	sp,s0,-128
    80004cac:	07813083          	ld	ra,120(sp)
    80004cb0:	07013403          	ld	s0,112(sp)
    80004cb4:	06813483          	ld	s1,104(sp)
    80004cb8:	06013903          	ld	s2,96(sp)
    80004cbc:	05813983          	ld	s3,88(sp)
    80004cc0:	05013a03          	ld	s4,80(sp)
    80004cc4:	04813a83          	ld	s5,72(sp)
    80004cc8:	04013b03          	ld	s6,64(sp)
    80004ccc:	03813b83          	ld	s7,56(sp)
    80004cd0:	03013c03          	ld	s8,48(sp)
    80004cd4:	02813c83          	ld	s9,40(sp)
    80004cd8:	08010113          	addi	sp,sp,128
    80004cdc:	00008067          	ret
    80004ce0:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004ce4:	000a8513          	mv	a0,s5
    80004ce8:	ffffd097          	auipc	ra,0xffffd
    80004cec:	d20080e7          	jalr	-736(ra) # 80001a08 <_ZdlPv>
    80004cf0:	00048513          	mv	a0,s1
    80004cf4:	00008097          	auipc	ra,0x8
    80004cf8:	c34080e7          	jalr	-972(ra) # 8000c928 <_Unwind_Resume>
    80004cfc:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004d00:	00048513          	mv	a0,s1
    80004d04:	ffffd097          	auipc	ra,0xffffd
    80004d08:	d04080e7          	jalr	-764(ra) # 80001a08 <_ZdlPv>
    80004d0c:	00090513          	mv	a0,s2
    80004d10:	00008097          	auipc	ra,0x8
    80004d14:	c18080e7          	jalr	-1000(ra) # 8000c928 <_Unwind_Resume>
    80004d18:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004d1c:	000b0513          	mv	a0,s6
    80004d20:	ffffd097          	auipc	ra,0xffffd
    80004d24:	ce8080e7          	jalr	-792(ra) # 80001a08 <_ZdlPv>
    80004d28:	00048513          	mv	a0,s1
    80004d2c:	00008097          	auipc	ra,0x8
    80004d30:	bfc080e7          	jalr	-1028(ra) # 8000c928 <_Unwind_Resume>
    80004d34:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80004d38:	000c8513          	mv	a0,s9
    80004d3c:	ffffd097          	auipc	ra,0xffffd
    80004d40:	ccc080e7          	jalr	-820(ra) # 80001a08 <_ZdlPv>
    80004d44:	00048513          	mv	a0,s1
    80004d48:	00008097          	auipc	ra,0x8
    80004d4c:	be0080e7          	jalr	-1056(ra) # 8000c928 <_Unwind_Resume>
    80004d50:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80004d54:	000c8513          	mv	a0,s9
    80004d58:	ffffd097          	auipc	ra,0xffffd
    80004d5c:	cb0080e7          	jalr	-848(ra) # 80001a08 <_ZdlPv>
    80004d60:	00048513          	mv	a0,s1
    80004d64:	00008097          	auipc	ra,0x8
    80004d68:	bc4080e7          	jalr	-1084(ra) # 8000c928 <_Unwind_Resume>

0000000080004d6c <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80004d6c:	ff010113          	addi	sp,sp,-16
    80004d70:	00113423          	sd	ra,8(sp)
    80004d74:	00813023          	sd	s0,0(sp)
    80004d78:	01010413          	addi	s0,sp,16
    80004d7c:	00007797          	auipc	a5,0x7
    80004d80:	9bc78793          	addi	a5,a5,-1604 # 8000b738 <_ZTV12ConsumerSync+0x10>
    80004d84:	00f53023          	sd	a5,0(a0)
    80004d88:	ffffd097          	auipc	ra,0xffffd
    80004d8c:	bc0080e7          	jalr	-1088(ra) # 80001948 <_ZN6ThreadD1Ev>
    80004d90:	00813083          	ld	ra,8(sp)
    80004d94:	00013403          	ld	s0,0(sp)
    80004d98:	01010113          	addi	sp,sp,16
    80004d9c:	00008067          	ret

0000000080004da0 <_ZN12ConsumerSyncD0Ev>:
    80004da0:	fe010113          	addi	sp,sp,-32
    80004da4:	00113c23          	sd	ra,24(sp)
    80004da8:	00813823          	sd	s0,16(sp)
    80004dac:	00913423          	sd	s1,8(sp)
    80004db0:	02010413          	addi	s0,sp,32
    80004db4:	00050493          	mv	s1,a0
    80004db8:	00007797          	auipc	a5,0x7
    80004dbc:	98078793          	addi	a5,a5,-1664 # 8000b738 <_ZTV12ConsumerSync+0x10>
    80004dc0:	00f53023          	sd	a5,0(a0)
    80004dc4:	ffffd097          	auipc	ra,0xffffd
    80004dc8:	b84080e7          	jalr	-1148(ra) # 80001948 <_ZN6ThreadD1Ev>
    80004dcc:	00048513          	mv	a0,s1
    80004dd0:	ffffd097          	auipc	ra,0xffffd
    80004dd4:	c38080e7          	jalr	-968(ra) # 80001a08 <_ZdlPv>
    80004dd8:	01813083          	ld	ra,24(sp)
    80004ddc:	01013403          	ld	s0,16(sp)
    80004de0:	00813483          	ld	s1,8(sp)
    80004de4:	02010113          	addi	sp,sp,32
    80004de8:	00008067          	ret

0000000080004dec <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80004dec:	ff010113          	addi	sp,sp,-16
    80004df0:	00113423          	sd	ra,8(sp)
    80004df4:	00813023          	sd	s0,0(sp)
    80004df8:	01010413          	addi	s0,sp,16
    80004dfc:	00007797          	auipc	a5,0x7
    80004e00:	91478793          	addi	a5,a5,-1772 # 8000b710 <_ZTV12ProducerSync+0x10>
    80004e04:	00f53023          	sd	a5,0(a0)
    80004e08:	ffffd097          	auipc	ra,0xffffd
    80004e0c:	b40080e7          	jalr	-1216(ra) # 80001948 <_ZN6ThreadD1Ev>
    80004e10:	00813083          	ld	ra,8(sp)
    80004e14:	00013403          	ld	s0,0(sp)
    80004e18:	01010113          	addi	sp,sp,16
    80004e1c:	00008067          	ret

0000000080004e20 <_ZN12ProducerSyncD0Ev>:
    80004e20:	fe010113          	addi	sp,sp,-32
    80004e24:	00113c23          	sd	ra,24(sp)
    80004e28:	00813823          	sd	s0,16(sp)
    80004e2c:	00913423          	sd	s1,8(sp)
    80004e30:	02010413          	addi	s0,sp,32
    80004e34:	00050493          	mv	s1,a0
    80004e38:	00007797          	auipc	a5,0x7
    80004e3c:	8d878793          	addi	a5,a5,-1832 # 8000b710 <_ZTV12ProducerSync+0x10>
    80004e40:	00f53023          	sd	a5,0(a0)
    80004e44:	ffffd097          	auipc	ra,0xffffd
    80004e48:	b04080e7          	jalr	-1276(ra) # 80001948 <_ZN6ThreadD1Ev>
    80004e4c:	00048513          	mv	a0,s1
    80004e50:	ffffd097          	auipc	ra,0xffffd
    80004e54:	bb8080e7          	jalr	-1096(ra) # 80001a08 <_ZdlPv>
    80004e58:	01813083          	ld	ra,24(sp)
    80004e5c:	01013403          	ld	s0,16(sp)
    80004e60:	00813483          	ld	s1,8(sp)
    80004e64:	02010113          	addi	sp,sp,32
    80004e68:	00008067          	ret

0000000080004e6c <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80004e6c:	ff010113          	addi	sp,sp,-16
    80004e70:	00113423          	sd	ra,8(sp)
    80004e74:	00813023          	sd	s0,0(sp)
    80004e78:	01010413          	addi	s0,sp,16
    80004e7c:	00007797          	auipc	a5,0x7
    80004e80:	86c78793          	addi	a5,a5,-1940 # 8000b6e8 <_ZTV16ProducerKeyboard+0x10>
    80004e84:	00f53023          	sd	a5,0(a0)
    80004e88:	ffffd097          	auipc	ra,0xffffd
    80004e8c:	ac0080e7          	jalr	-1344(ra) # 80001948 <_ZN6ThreadD1Ev>
    80004e90:	00813083          	ld	ra,8(sp)
    80004e94:	00013403          	ld	s0,0(sp)
    80004e98:	01010113          	addi	sp,sp,16
    80004e9c:	00008067          	ret

0000000080004ea0 <_ZN16ProducerKeyboardD0Ev>:
    80004ea0:	fe010113          	addi	sp,sp,-32
    80004ea4:	00113c23          	sd	ra,24(sp)
    80004ea8:	00813823          	sd	s0,16(sp)
    80004eac:	00913423          	sd	s1,8(sp)
    80004eb0:	02010413          	addi	s0,sp,32
    80004eb4:	00050493          	mv	s1,a0
    80004eb8:	00007797          	auipc	a5,0x7
    80004ebc:	83078793          	addi	a5,a5,-2000 # 8000b6e8 <_ZTV16ProducerKeyboard+0x10>
    80004ec0:	00f53023          	sd	a5,0(a0)
    80004ec4:	ffffd097          	auipc	ra,0xffffd
    80004ec8:	a84080e7          	jalr	-1404(ra) # 80001948 <_ZN6ThreadD1Ev>
    80004ecc:	00048513          	mv	a0,s1
    80004ed0:	ffffd097          	auipc	ra,0xffffd
    80004ed4:	b38080e7          	jalr	-1224(ra) # 80001a08 <_ZdlPv>
    80004ed8:	01813083          	ld	ra,24(sp)
    80004edc:	01013403          	ld	s0,16(sp)
    80004ee0:	00813483          	ld	s1,8(sp)
    80004ee4:	02010113          	addi	sp,sp,32
    80004ee8:	00008067          	ret

0000000080004eec <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80004eec:	ff010113          	addi	sp,sp,-16
    80004ef0:	00113423          	sd	ra,8(sp)
    80004ef4:	00813023          	sd	s0,0(sp)
    80004ef8:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80004efc:	02053583          	ld	a1,32(a0)
    80004f00:	fffff097          	auipc	ra,0xfffff
    80004f04:	7e4080e7          	jalr	2020(ra) # 800046e4 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80004f08:	00813083          	ld	ra,8(sp)
    80004f0c:	00013403          	ld	s0,0(sp)
    80004f10:	01010113          	addi	sp,sp,16
    80004f14:	00008067          	ret

0000000080004f18 <_ZN12ProducerSync3runEv>:
    void run() override {
    80004f18:	ff010113          	addi	sp,sp,-16
    80004f1c:	00113423          	sd	ra,8(sp)
    80004f20:	00813023          	sd	s0,0(sp)
    80004f24:	01010413          	addi	s0,sp,16
        producer(td);
    80004f28:	02053583          	ld	a1,32(a0)
    80004f2c:	00000097          	auipc	ra,0x0
    80004f30:	878080e7          	jalr	-1928(ra) # 800047a4 <_ZN12ProducerSync8producerEPv>
    }
    80004f34:	00813083          	ld	ra,8(sp)
    80004f38:	00013403          	ld	s0,0(sp)
    80004f3c:	01010113          	addi	sp,sp,16
    80004f40:	00008067          	ret

0000000080004f44 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80004f44:	ff010113          	addi	sp,sp,-16
    80004f48:	00113423          	sd	ra,8(sp)
    80004f4c:	00813023          	sd	s0,0(sp)
    80004f50:	01010413          	addi	s0,sp,16
        consumer(td);
    80004f54:	02053583          	ld	a1,32(a0)
    80004f58:	00000097          	auipc	ra,0x0
    80004f5c:	8e0080e7          	jalr	-1824(ra) # 80004838 <_ZN12ConsumerSync8consumerEPv>
    }
    80004f60:	00813083          	ld	ra,8(sp)
    80004f64:	00013403          	ld	s0,0(sp)
    80004f68:	01010113          	addi	sp,sp,16
    80004f6c:	00008067          	ret

0000000080004f70 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80004f70:	fe010113          	addi	sp,sp,-32
    80004f74:	00113c23          	sd	ra,24(sp)
    80004f78:	00813823          	sd	s0,16(sp)
    80004f7c:	00913423          	sd	s1,8(sp)
    80004f80:	02010413          	addi	s0,sp,32
    80004f84:	00050493          	mv	s1,a0
    LOCK();
    80004f88:	00100613          	li	a2,1
    80004f8c:	00000593          	li	a1,0
    80004f90:	00007517          	auipc	a0,0x7
    80004f94:	8b850513          	addi	a0,a0,-1864 # 8000b848 <lockPrint>
    80004f98:	ffffc097          	auipc	ra,0xffffc
    80004f9c:	314080e7          	jalr	788(ra) # 800012ac <copy_and_swap>
    80004fa0:	00050863          	beqz	a0,80004fb0 <_Z11printStringPKc+0x40>
    80004fa4:	ffffc097          	auipc	ra,0xffffc
    80004fa8:	490080e7          	jalr	1168(ra) # 80001434 <_Z15thread_dispatchv>
    80004fac:	fddff06f          	j	80004f88 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80004fb0:	0004c503          	lbu	a0,0(s1)
    80004fb4:	00050a63          	beqz	a0,80004fc8 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80004fb8:	ffffc097          	auipc	ra,0xffffc
    80004fbc:	6f4080e7          	jalr	1780(ra) # 800016ac <_Z4putcc>
        string++;
    80004fc0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80004fc4:	fedff06f          	j	80004fb0 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80004fc8:	00000613          	li	a2,0
    80004fcc:	00100593          	li	a1,1
    80004fd0:	00007517          	auipc	a0,0x7
    80004fd4:	87850513          	addi	a0,a0,-1928 # 8000b848 <lockPrint>
    80004fd8:	ffffc097          	auipc	ra,0xffffc
    80004fdc:	2d4080e7          	jalr	724(ra) # 800012ac <copy_and_swap>
    80004fe0:	fe0514e3          	bnez	a0,80004fc8 <_Z11printStringPKc+0x58>
}
    80004fe4:	01813083          	ld	ra,24(sp)
    80004fe8:	01013403          	ld	s0,16(sp)
    80004fec:	00813483          	ld	s1,8(sp)
    80004ff0:	02010113          	addi	sp,sp,32
    80004ff4:	00008067          	ret

0000000080004ff8 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80004ff8:	fd010113          	addi	sp,sp,-48
    80004ffc:	02113423          	sd	ra,40(sp)
    80005000:	02813023          	sd	s0,32(sp)
    80005004:	00913c23          	sd	s1,24(sp)
    80005008:	01213823          	sd	s2,16(sp)
    8000500c:	01313423          	sd	s3,8(sp)
    80005010:	01413023          	sd	s4,0(sp)
    80005014:	03010413          	addi	s0,sp,48
    80005018:	00050993          	mv	s3,a0
    8000501c:	00058a13          	mv	s4,a1
    LOCK();
    80005020:	00100613          	li	a2,1
    80005024:	00000593          	li	a1,0
    80005028:	00007517          	auipc	a0,0x7
    8000502c:	82050513          	addi	a0,a0,-2016 # 8000b848 <lockPrint>
    80005030:	ffffc097          	auipc	ra,0xffffc
    80005034:	27c080e7          	jalr	636(ra) # 800012ac <copy_and_swap>
    80005038:	00050863          	beqz	a0,80005048 <_Z9getStringPci+0x50>
    8000503c:	ffffc097          	auipc	ra,0xffffc
    80005040:	3f8080e7          	jalr	1016(ra) # 80001434 <_Z15thread_dispatchv>
    80005044:	fddff06f          	j	80005020 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005048:	00000913          	li	s2,0
    8000504c:	00090493          	mv	s1,s2
    80005050:	0019091b          	addiw	s2,s2,1
    80005054:	03495a63          	bge	s2,s4,80005088 <_Z9getStringPci+0x90>
        cc = getc();
    80005058:	ffffc097          	auipc	ra,0xffffc
    8000505c:	614080e7          	jalr	1556(ra) # 8000166c <_Z4getcv>
        if(cc < 1)
    80005060:	02050463          	beqz	a0,80005088 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005064:	009984b3          	add	s1,s3,s1
    80005068:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    8000506c:	00a00793          	li	a5,10
    80005070:	00f50a63          	beq	a0,a5,80005084 <_Z9getStringPci+0x8c>
    80005074:	00d00793          	li	a5,13
    80005078:	fcf51ae3          	bne	a0,a5,8000504c <_Z9getStringPci+0x54>
        buf[i++] = c;
    8000507c:	00090493          	mv	s1,s2
    80005080:	0080006f          	j	80005088 <_Z9getStringPci+0x90>
    80005084:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005088:	009984b3          	add	s1,s3,s1
    8000508c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005090:	00000613          	li	a2,0
    80005094:	00100593          	li	a1,1
    80005098:	00006517          	auipc	a0,0x6
    8000509c:	7b050513          	addi	a0,a0,1968 # 8000b848 <lockPrint>
    800050a0:	ffffc097          	auipc	ra,0xffffc
    800050a4:	20c080e7          	jalr	524(ra) # 800012ac <copy_and_swap>
    800050a8:	fe0514e3          	bnez	a0,80005090 <_Z9getStringPci+0x98>
    return buf;
}
    800050ac:	00098513          	mv	a0,s3
    800050b0:	02813083          	ld	ra,40(sp)
    800050b4:	02013403          	ld	s0,32(sp)
    800050b8:	01813483          	ld	s1,24(sp)
    800050bc:	01013903          	ld	s2,16(sp)
    800050c0:	00813983          	ld	s3,8(sp)
    800050c4:	00013a03          	ld	s4,0(sp)
    800050c8:	03010113          	addi	sp,sp,48
    800050cc:	00008067          	ret

00000000800050d0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800050d0:	ff010113          	addi	sp,sp,-16
    800050d4:	00813423          	sd	s0,8(sp)
    800050d8:	01010413          	addi	s0,sp,16
    800050dc:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800050e0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800050e4:	0006c603          	lbu	a2,0(a3)
    800050e8:	fd06071b          	addiw	a4,a2,-48
    800050ec:	0ff77713          	andi	a4,a4,255
    800050f0:	00900793          	li	a5,9
    800050f4:	02e7e063          	bltu	a5,a4,80005114 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800050f8:	0025179b          	slliw	a5,a0,0x2
    800050fc:	00a787bb          	addw	a5,a5,a0
    80005100:	0017979b          	slliw	a5,a5,0x1
    80005104:	00168693          	addi	a3,a3,1
    80005108:	00c787bb          	addw	a5,a5,a2
    8000510c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005110:	fd5ff06f          	j	800050e4 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005114:	00813403          	ld	s0,8(sp)
    80005118:	01010113          	addi	sp,sp,16
    8000511c:	00008067          	ret

0000000080005120 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005120:	fc010113          	addi	sp,sp,-64
    80005124:	02113c23          	sd	ra,56(sp)
    80005128:	02813823          	sd	s0,48(sp)
    8000512c:	02913423          	sd	s1,40(sp)
    80005130:	03213023          	sd	s2,32(sp)
    80005134:	01313c23          	sd	s3,24(sp)
    80005138:	04010413          	addi	s0,sp,64
    8000513c:	00050493          	mv	s1,a0
    80005140:	00058913          	mv	s2,a1
    80005144:	00060993          	mv	s3,a2
    LOCK();
    80005148:	00100613          	li	a2,1
    8000514c:	00000593          	li	a1,0
    80005150:	00006517          	auipc	a0,0x6
    80005154:	6f850513          	addi	a0,a0,1784 # 8000b848 <lockPrint>
    80005158:	ffffc097          	auipc	ra,0xffffc
    8000515c:	154080e7          	jalr	340(ra) # 800012ac <copy_and_swap>
    80005160:	00050863          	beqz	a0,80005170 <_Z8printIntiii+0x50>
    80005164:	ffffc097          	auipc	ra,0xffffc
    80005168:	2d0080e7          	jalr	720(ra) # 80001434 <_Z15thread_dispatchv>
    8000516c:	fddff06f          	j	80005148 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005170:	00098463          	beqz	s3,80005178 <_Z8printIntiii+0x58>
    80005174:	0804c463          	bltz	s1,800051fc <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005178:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000517c:	00000593          	li	a1,0
    }

    i = 0;
    80005180:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005184:	0009079b          	sext.w	a5,s2
    80005188:	0325773b          	remuw	a4,a0,s2
    8000518c:	00048613          	mv	a2,s1
    80005190:	0014849b          	addiw	s1,s1,1
    80005194:	02071693          	slli	a3,a4,0x20
    80005198:	0206d693          	srli	a3,a3,0x20
    8000519c:	00006717          	auipc	a4,0x6
    800051a0:	5b470713          	addi	a4,a4,1460 # 8000b750 <digits>
    800051a4:	00d70733          	add	a4,a4,a3
    800051a8:	00074683          	lbu	a3,0(a4)
    800051ac:	fd040713          	addi	a4,s0,-48
    800051b0:	00c70733          	add	a4,a4,a2
    800051b4:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800051b8:	0005071b          	sext.w	a4,a0
    800051bc:	0325553b          	divuw	a0,a0,s2
    800051c0:	fcf772e3          	bgeu	a4,a5,80005184 <_Z8printIntiii+0x64>
    if(neg)
    800051c4:	00058c63          	beqz	a1,800051dc <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800051c8:	fd040793          	addi	a5,s0,-48
    800051cc:	009784b3          	add	s1,a5,s1
    800051d0:	02d00793          	li	a5,45
    800051d4:	fef48823          	sb	a5,-16(s1)
    800051d8:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800051dc:	fff4849b          	addiw	s1,s1,-1
    800051e0:	0204c463          	bltz	s1,80005208 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    800051e4:	fd040793          	addi	a5,s0,-48
    800051e8:	009787b3          	add	a5,a5,s1
    800051ec:	ff07c503          	lbu	a0,-16(a5)
    800051f0:	ffffc097          	auipc	ra,0xffffc
    800051f4:	4bc080e7          	jalr	1212(ra) # 800016ac <_Z4putcc>
    800051f8:	fe5ff06f          	j	800051dc <_Z8printIntiii+0xbc>
        x = -xx;
    800051fc:	4090053b          	negw	a0,s1
        neg = 1;
    80005200:	00100593          	li	a1,1
        x = -xx;
    80005204:	f7dff06f          	j	80005180 <_Z8printIntiii+0x60>

    UNLOCK();
    80005208:	00000613          	li	a2,0
    8000520c:	00100593          	li	a1,1
    80005210:	00006517          	auipc	a0,0x6
    80005214:	63850513          	addi	a0,a0,1592 # 8000b848 <lockPrint>
    80005218:	ffffc097          	auipc	ra,0xffffc
    8000521c:	094080e7          	jalr	148(ra) # 800012ac <copy_and_swap>
    80005220:	fe0514e3          	bnez	a0,80005208 <_Z8printIntiii+0xe8>
    80005224:	03813083          	ld	ra,56(sp)
    80005228:	03013403          	ld	s0,48(sp)
    8000522c:	02813483          	ld	s1,40(sp)
    80005230:	02013903          	ld	s2,32(sp)
    80005234:	01813983          	ld	s3,24(sp)
    80005238:	04010113          	addi	sp,sp,64
    8000523c:	00008067          	ret

0000000080005240 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005240:	fd010113          	addi	sp,sp,-48
    80005244:	02113423          	sd	ra,40(sp)
    80005248:	02813023          	sd	s0,32(sp)
    8000524c:	00913c23          	sd	s1,24(sp)
    80005250:	01213823          	sd	s2,16(sp)
    80005254:	01313423          	sd	s3,8(sp)
    80005258:	03010413          	addi	s0,sp,48
    8000525c:	00050493          	mv	s1,a0
    80005260:	00058913          	mv	s2,a1
    80005264:	0015879b          	addiw	a5,a1,1
    80005268:	0007851b          	sext.w	a0,a5
    8000526c:	00f4a023          	sw	a5,0(s1)
    80005270:	0004a823          	sw	zero,16(s1)
    80005274:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005278:	00251513          	slli	a0,a0,0x2
    8000527c:	ffffc097          	auipc	ra,0xffffc
    80005280:	078080e7          	jalr	120(ra) # 800012f4 <_Z9mem_allocm>
    80005284:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005288:	01000513          	li	a0,16
    8000528c:	ffffc097          	auipc	ra,0xffffc
    80005290:	72c080e7          	jalr	1836(ra) # 800019b8 <_Znwm>
    80005294:	00050993          	mv	s3,a0
    80005298:	00000593          	li	a1,0
    8000529c:	ffffd097          	auipc	ra,0xffffd
    800052a0:	90c080e7          	jalr	-1780(ra) # 80001ba8 <_ZN9SemaphoreC1Ej>
    800052a4:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800052a8:	01000513          	li	a0,16
    800052ac:	ffffc097          	auipc	ra,0xffffc
    800052b0:	70c080e7          	jalr	1804(ra) # 800019b8 <_Znwm>
    800052b4:	00050993          	mv	s3,a0
    800052b8:	00090593          	mv	a1,s2
    800052bc:	ffffd097          	auipc	ra,0xffffd
    800052c0:	8ec080e7          	jalr	-1812(ra) # 80001ba8 <_ZN9SemaphoreC1Ej>
    800052c4:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800052c8:	01000513          	li	a0,16
    800052cc:	ffffc097          	auipc	ra,0xffffc
    800052d0:	6ec080e7          	jalr	1772(ra) # 800019b8 <_Znwm>
    800052d4:	00050913          	mv	s2,a0
    800052d8:	00100593          	li	a1,1
    800052dc:	ffffd097          	auipc	ra,0xffffd
    800052e0:	8cc080e7          	jalr	-1844(ra) # 80001ba8 <_ZN9SemaphoreC1Ej>
    800052e4:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800052e8:	01000513          	li	a0,16
    800052ec:	ffffc097          	auipc	ra,0xffffc
    800052f0:	6cc080e7          	jalr	1740(ra) # 800019b8 <_Znwm>
    800052f4:	00050913          	mv	s2,a0
    800052f8:	00100593          	li	a1,1
    800052fc:	ffffd097          	auipc	ra,0xffffd
    80005300:	8ac080e7          	jalr	-1876(ra) # 80001ba8 <_ZN9SemaphoreC1Ej>
    80005304:	0324b823          	sd	s2,48(s1)
}
    80005308:	02813083          	ld	ra,40(sp)
    8000530c:	02013403          	ld	s0,32(sp)
    80005310:	01813483          	ld	s1,24(sp)
    80005314:	01013903          	ld	s2,16(sp)
    80005318:	00813983          	ld	s3,8(sp)
    8000531c:	03010113          	addi	sp,sp,48
    80005320:	00008067          	ret
    80005324:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005328:	00098513          	mv	a0,s3
    8000532c:	ffffc097          	auipc	ra,0xffffc
    80005330:	6dc080e7          	jalr	1756(ra) # 80001a08 <_ZdlPv>
    80005334:	00048513          	mv	a0,s1
    80005338:	00007097          	auipc	ra,0x7
    8000533c:	5f0080e7          	jalr	1520(ra) # 8000c928 <_Unwind_Resume>
    80005340:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005344:	00098513          	mv	a0,s3
    80005348:	ffffc097          	auipc	ra,0xffffc
    8000534c:	6c0080e7          	jalr	1728(ra) # 80001a08 <_ZdlPv>
    80005350:	00048513          	mv	a0,s1
    80005354:	00007097          	auipc	ra,0x7
    80005358:	5d4080e7          	jalr	1492(ra) # 8000c928 <_Unwind_Resume>
    8000535c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005360:	00090513          	mv	a0,s2
    80005364:	ffffc097          	auipc	ra,0xffffc
    80005368:	6a4080e7          	jalr	1700(ra) # 80001a08 <_ZdlPv>
    8000536c:	00048513          	mv	a0,s1
    80005370:	00007097          	auipc	ra,0x7
    80005374:	5b8080e7          	jalr	1464(ra) # 8000c928 <_Unwind_Resume>
    80005378:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    8000537c:	00090513          	mv	a0,s2
    80005380:	ffffc097          	auipc	ra,0xffffc
    80005384:	688080e7          	jalr	1672(ra) # 80001a08 <_ZdlPv>
    80005388:	00048513          	mv	a0,s1
    8000538c:	00007097          	auipc	ra,0x7
    80005390:	59c080e7          	jalr	1436(ra) # 8000c928 <_Unwind_Resume>

0000000080005394 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005394:	fe010113          	addi	sp,sp,-32
    80005398:	00113c23          	sd	ra,24(sp)
    8000539c:	00813823          	sd	s0,16(sp)
    800053a0:	00913423          	sd	s1,8(sp)
    800053a4:	01213023          	sd	s2,0(sp)
    800053a8:	02010413          	addi	s0,sp,32
    800053ac:	00050493          	mv	s1,a0
    800053b0:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800053b4:	01853503          	ld	a0,24(a0)
    800053b8:	ffffd097          	auipc	ra,0xffffd
    800053bc:	860080e7          	jalr	-1952(ra) # 80001c18 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800053c0:	0304b503          	ld	a0,48(s1)
    800053c4:	ffffd097          	auipc	ra,0xffffd
    800053c8:	854080e7          	jalr	-1964(ra) # 80001c18 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800053cc:	0084b783          	ld	a5,8(s1)
    800053d0:	0144a703          	lw	a4,20(s1)
    800053d4:	00271713          	slli	a4,a4,0x2
    800053d8:	00e787b3          	add	a5,a5,a4
    800053dc:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800053e0:	0144a783          	lw	a5,20(s1)
    800053e4:	0017879b          	addiw	a5,a5,1
    800053e8:	0004a703          	lw	a4,0(s1)
    800053ec:	02e7e7bb          	remw	a5,a5,a4
    800053f0:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800053f4:	0304b503          	ld	a0,48(s1)
    800053f8:	ffffc097          	auipc	ra,0xffffc
    800053fc:	7e8080e7          	jalr	2024(ra) # 80001be0 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005400:	0204b503          	ld	a0,32(s1)
    80005404:	ffffc097          	auipc	ra,0xffffc
    80005408:	7dc080e7          	jalr	2012(ra) # 80001be0 <_ZN9Semaphore6signalEv>

}
    8000540c:	01813083          	ld	ra,24(sp)
    80005410:	01013403          	ld	s0,16(sp)
    80005414:	00813483          	ld	s1,8(sp)
    80005418:	00013903          	ld	s2,0(sp)
    8000541c:	02010113          	addi	sp,sp,32
    80005420:	00008067          	ret

0000000080005424 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005424:	fe010113          	addi	sp,sp,-32
    80005428:	00113c23          	sd	ra,24(sp)
    8000542c:	00813823          	sd	s0,16(sp)
    80005430:	00913423          	sd	s1,8(sp)
    80005434:	01213023          	sd	s2,0(sp)
    80005438:	02010413          	addi	s0,sp,32
    8000543c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005440:	02053503          	ld	a0,32(a0)
    80005444:	ffffc097          	auipc	ra,0xffffc
    80005448:	7d4080e7          	jalr	2004(ra) # 80001c18 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    8000544c:	0284b503          	ld	a0,40(s1)
    80005450:	ffffc097          	auipc	ra,0xffffc
    80005454:	7c8080e7          	jalr	1992(ra) # 80001c18 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005458:	0084b703          	ld	a4,8(s1)
    8000545c:	0104a783          	lw	a5,16(s1)
    80005460:	00279693          	slli	a3,a5,0x2
    80005464:	00d70733          	add	a4,a4,a3
    80005468:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000546c:	0017879b          	addiw	a5,a5,1
    80005470:	0004a703          	lw	a4,0(s1)
    80005474:	02e7e7bb          	remw	a5,a5,a4
    80005478:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    8000547c:	0284b503          	ld	a0,40(s1)
    80005480:	ffffc097          	auipc	ra,0xffffc
    80005484:	760080e7          	jalr	1888(ra) # 80001be0 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005488:	0184b503          	ld	a0,24(s1)
    8000548c:	ffffc097          	auipc	ra,0xffffc
    80005490:	754080e7          	jalr	1876(ra) # 80001be0 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005494:	00090513          	mv	a0,s2
    80005498:	01813083          	ld	ra,24(sp)
    8000549c:	01013403          	ld	s0,16(sp)
    800054a0:	00813483          	ld	s1,8(sp)
    800054a4:	00013903          	ld	s2,0(sp)
    800054a8:	02010113          	addi	sp,sp,32
    800054ac:	00008067          	ret

00000000800054b0 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800054b0:	fe010113          	addi	sp,sp,-32
    800054b4:	00113c23          	sd	ra,24(sp)
    800054b8:	00813823          	sd	s0,16(sp)
    800054bc:	00913423          	sd	s1,8(sp)
    800054c0:	01213023          	sd	s2,0(sp)
    800054c4:	02010413          	addi	s0,sp,32
    800054c8:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800054cc:	02853503          	ld	a0,40(a0)
    800054d0:	ffffc097          	auipc	ra,0xffffc
    800054d4:	748080e7          	jalr	1864(ra) # 80001c18 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800054d8:	0304b503          	ld	a0,48(s1)
    800054dc:	ffffc097          	auipc	ra,0xffffc
    800054e0:	73c080e7          	jalr	1852(ra) # 80001c18 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800054e4:	0144a783          	lw	a5,20(s1)
    800054e8:	0104a903          	lw	s2,16(s1)
    800054ec:	0327ce63          	blt	a5,s2,80005528 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800054f0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800054f4:	0304b503          	ld	a0,48(s1)
    800054f8:	ffffc097          	auipc	ra,0xffffc
    800054fc:	6e8080e7          	jalr	1768(ra) # 80001be0 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005500:	0284b503          	ld	a0,40(s1)
    80005504:	ffffc097          	auipc	ra,0xffffc
    80005508:	6dc080e7          	jalr	1756(ra) # 80001be0 <_ZN9Semaphore6signalEv>

    return ret;
}
    8000550c:	00090513          	mv	a0,s2
    80005510:	01813083          	ld	ra,24(sp)
    80005514:	01013403          	ld	s0,16(sp)
    80005518:	00813483          	ld	s1,8(sp)
    8000551c:	00013903          	ld	s2,0(sp)
    80005520:	02010113          	addi	sp,sp,32
    80005524:	00008067          	ret
        ret = cap - head + tail;
    80005528:	0004a703          	lw	a4,0(s1)
    8000552c:	4127093b          	subw	s2,a4,s2
    80005530:	00f9093b          	addw	s2,s2,a5
    80005534:	fc1ff06f          	j	800054f4 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005538 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005538:	fe010113          	addi	sp,sp,-32
    8000553c:	00113c23          	sd	ra,24(sp)
    80005540:	00813823          	sd	s0,16(sp)
    80005544:	00913423          	sd	s1,8(sp)
    80005548:	02010413          	addi	s0,sp,32
    8000554c:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005550:	00a00513          	li	a0,10
    80005554:	ffffc097          	auipc	ra,0xffffc
    80005558:	75c080e7          	jalr	1884(ra) # 80001cb0 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    8000555c:	00004517          	auipc	a0,0x4
    80005560:	e7c50513          	addi	a0,a0,-388 # 800093d8 <CONSOLE_STATUS+0x3c8>
    80005564:	00000097          	auipc	ra,0x0
    80005568:	a0c080e7          	jalr	-1524(ra) # 80004f70 <_Z11printStringPKc>
    while (getCnt()) {
    8000556c:	00048513          	mv	a0,s1
    80005570:	00000097          	auipc	ra,0x0
    80005574:	f40080e7          	jalr	-192(ra) # 800054b0 <_ZN9BufferCPP6getCntEv>
    80005578:	02050c63          	beqz	a0,800055b0 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    8000557c:	0084b783          	ld	a5,8(s1)
    80005580:	0104a703          	lw	a4,16(s1)
    80005584:	00271713          	slli	a4,a4,0x2
    80005588:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    8000558c:	0007c503          	lbu	a0,0(a5)
    80005590:	ffffc097          	auipc	ra,0xffffc
    80005594:	720080e7          	jalr	1824(ra) # 80001cb0 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005598:	0104a783          	lw	a5,16(s1)
    8000559c:	0017879b          	addiw	a5,a5,1
    800055a0:	0004a703          	lw	a4,0(s1)
    800055a4:	02e7e7bb          	remw	a5,a5,a4
    800055a8:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800055ac:	fc1ff06f          	j	8000556c <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800055b0:	02100513          	li	a0,33
    800055b4:	ffffc097          	auipc	ra,0xffffc
    800055b8:	6fc080e7          	jalr	1788(ra) # 80001cb0 <_ZN7Console4putcEc>
    Console::putc('\n');
    800055bc:	00a00513          	li	a0,10
    800055c0:	ffffc097          	auipc	ra,0xffffc
    800055c4:	6f0080e7          	jalr	1776(ra) # 80001cb0 <_ZN7Console4putcEc>
    mem_free(buffer);
    800055c8:	0084b503          	ld	a0,8(s1)
    800055cc:	ffffc097          	auipc	ra,0xffffc
    800055d0:	d6c080e7          	jalr	-660(ra) # 80001338 <_Z8mem_freePv>
    delete itemAvailable;
    800055d4:	0204b503          	ld	a0,32(s1)
    800055d8:	00050863          	beqz	a0,800055e8 <_ZN9BufferCPPD1Ev+0xb0>
    800055dc:	00053783          	ld	a5,0(a0)
    800055e0:	0087b783          	ld	a5,8(a5)
    800055e4:	000780e7          	jalr	a5
    delete spaceAvailable;
    800055e8:	0184b503          	ld	a0,24(s1)
    800055ec:	00050863          	beqz	a0,800055fc <_ZN9BufferCPPD1Ev+0xc4>
    800055f0:	00053783          	ld	a5,0(a0)
    800055f4:	0087b783          	ld	a5,8(a5)
    800055f8:	000780e7          	jalr	a5
    delete mutexTail;
    800055fc:	0304b503          	ld	a0,48(s1)
    80005600:	00050863          	beqz	a0,80005610 <_ZN9BufferCPPD1Ev+0xd8>
    80005604:	00053783          	ld	a5,0(a0)
    80005608:	0087b783          	ld	a5,8(a5)
    8000560c:	000780e7          	jalr	a5
    delete mutexHead;
    80005610:	0284b503          	ld	a0,40(s1)
    80005614:	00050863          	beqz	a0,80005624 <_ZN9BufferCPPD1Ev+0xec>
    80005618:	00053783          	ld	a5,0(a0)
    8000561c:	0087b783          	ld	a5,8(a5)
    80005620:	000780e7          	jalr	a5
}
    80005624:	01813083          	ld	ra,24(sp)
    80005628:	01013403          	ld	s0,16(sp)
    8000562c:	00813483          	ld	s1,8(sp)
    80005630:	02010113          	addi	sp,sp,32
    80005634:	00008067          	ret

0000000080005638 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005638:	fe010113          	addi	sp,sp,-32
    8000563c:	00113c23          	sd	ra,24(sp)
    80005640:	00813823          	sd	s0,16(sp)
    80005644:	00913423          	sd	s1,8(sp)
    80005648:	01213023          	sd	s2,0(sp)
    8000564c:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005650:	00004517          	auipc	a0,0x4
    80005654:	da050513          	addi	a0,a0,-608 # 800093f0 <CONSOLE_STATUS+0x3e0>
    80005658:	00000097          	auipc	ra,0x0
    8000565c:	918080e7          	jalr	-1768(ra) # 80004f70 <_Z11printStringPKc>
    int test = getc() - '0';
    80005660:	ffffc097          	auipc	ra,0xffffc
    80005664:	00c080e7          	jalr	12(ra) # 8000166c <_Z4getcv>
    80005668:	00050913          	mv	s2,a0
    8000566c:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005670:	ffffc097          	auipc	ra,0xffffc
    80005674:	ffc080e7          	jalr	-4(ra) # 8000166c <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80005678:	fcb9091b          	addiw	s2,s2,-53
    8000567c:	00100793          	li	a5,1
    80005680:	0327f463          	bgeu	a5,s2,800056a8 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005684:	00700793          	li	a5,7
    80005688:	0e97e263          	bltu	a5,s1,8000576c <_Z8userMainv+0x134>
    8000568c:	00249493          	slli	s1,s1,0x2
    80005690:	00004717          	auipc	a4,0x4
    80005694:	f7870713          	addi	a4,a4,-136 # 80009608 <CONSOLE_STATUS+0x5f8>
    80005698:	00e484b3          	add	s1,s1,a4
    8000569c:	0004a783          	lw	a5,0(s1)
    800056a0:	00e787b3          	add	a5,a5,a4
    800056a4:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    800056a8:	00004517          	auipc	a0,0x4
    800056ac:	d6850513          	addi	a0,a0,-664 # 80009410 <CONSOLE_STATUS+0x400>
    800056b0:	00000097          	auipc	ra,0x0
    800056b4:	8c0080e7          	jalr	-1856(ra) # 80004f70 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800056b8:	01813083          	ld	ra,24(sp)
    800056bc:	01013403          	ld	s0,16(sp)
    800056c0:	00813483          	ld	s1,8(sp)
    800056c4:	00013903          	ld	s2,0(sp)
    800056c8:	02010113          	addi	sp,sp,32
    800056cc:	00008067          	ret
            Threads_C_API_test();
    800056d0:	fffff097          	auipc	ra,0xfffff
    800056d4:	f18080e7          	jalr	-232(ra) # 800045e8 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800056d8:	00004517          	auipc	a0,0x4
    800056dc:	d6850513          	addi	a0,a0,-664 # 80009440 <CONSOLE_STATUS+0x430>
    800056e0:	00000097          	auipc	ra,0x0
    800056e4:	890080e7          	jalr	-1904(ra) # 80004f70 <_Z11printStringPKc>
            break;
    800056e8:	fd1ff06f          	j	800056b8 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    800056ec:	ffffe097          	auipc	ra,0xffffe
    800056f0:	ddc080e7          	jalr	-548(ra) # 800034c8 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800056f4:	00004517          	auipc	a0,0x4
    800056f8:	d8c50513          	addi	a0,a0,-628 # 80009480 <CONSOLE_STATUS+0x470>
    800056fc:	00000097          	auipc	ra,0x0
    80005700:	874080e7          	jalr	-1932(ra) # 80004f70 <_Z11printStringPKc>
            break;
    80005704:	fb5ff06f          	j	800056b8 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    80005708:	ffffd097          	auipc	ra,0xffffd
    8000570c:	614080e7          	jalr	1556(ra) # 80002d1c <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005710:	00004517          	auipc	a0,0x4
    80005714:	db050513          	addi	a0,a0,-592 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80005718:	00000097          	auipc	ra,0x0
    8000571c:	858080e7          	jalr	-1960(ra) # 80004f70 <_Z11printStringPKc>
            break;
    80005720:	f99ff06f          	j	800056b8 <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    80005724:	fffff097          	auipc	ra,0xfffff
    80005728:	208080e7          	jalr	520(ra) # 8000492c <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    8000572c:	00004517          	auipc	a0,0x4
    80005730:	de450513          	addi	a0,a0,-540 # 80009510 <CONSOLE_STATUS+0x500>
    80005734:	00000097          	auipc	ra,0x0
    80005738:	83c080e7          	jalr	-1988(ra) # 80004f70 <_Z11printStringPKc>
            break;
    8000573c:	f7dff06f          	j	800056b8 <_Z8userMainv+0x80>
            System_Mode_test();
    80005740:	00000097          	auipc	ra,0x0
    80005744:	658080e7          	jalr	1624(ra) # 80005d98 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005748:	00004517          	auipc	a0,0x4
    8000574c:	e2050513          	addi	a0,a0,-480 # 80009568 <CONSOLE_STATUS+0x558>
    80005750:	00000097          	auipc	ra,0x0
    80005754:	820080e7          	jalr	-2016(ra) # 80004f70 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005758:	00004517          	auipc	a0,0x4
    8000575c:	e3050513          	addi	a0,a0,-464 # 80009588 <CONSOLE_STATUS+0x578>
    80005760:	00000097          	auipc	ra,0x0
    80005764:	810080e7          	jalr	-2032(ra) # 80004f70 <_Z11printStringPKc>
            break;
    80005768:	f51ff06f          	j	800056b8 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    8000576c:	00004517          	auipc	a0,0x4
    80005770:	e7450513          	addi	a0,a0,-396 # 800095e0 <CONSOLE_STATUS+0x5d0>
    80005774:	fffff097          	auipc	ra,0xfffff
    80005778:	7fc080e7          	jalr	2044(ra) # 80004f70 <_Z11printStringPKc>
    8000577c:	f3dff06f          	j	800056b8 <_Z8userMainv+0x80>

0000000080005780 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005780:	fe010113          	addi	sp,sp,-32
    80005784:	00113c23          	sd	ra,24(sp)
    80005788:	00813823          	sd	s0,16(sp)
    8000578c:	00913423          	sd	s1,8(sp)
    80005790:	01213023          	sd	s2,0(sp)
    80005794:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005798:	00053903          	ld	s2,0(a0)
    int i = 6;
    8000579c:	00600493          	li	s1,6
    while (--i > 0) {
    800057a0:	fff4849b          	addiw	s1,s1,-1
    800057a4:	04905463          	blez	s1,800057ec <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    800057a8:	00004517          	auipc	a0,0x4
    800057ac:	e8050513          	addi	a0,a0,-384 # 80009628 <CONSOLE_STATUS+0x618>
    800057b0:	fffff097          	auipc	ra,0xfffff
    800057b4:	7c0080e7          	jalr	1984(ra) # 80004f70 <_Z11printStringPKc>
        printInt(sleep_time);
    800057b8:	00000613          	li	a2,0
    800057bc:	00a00593          	li	a1,10
    800057c0:	0009051b          	sext.w	a0,s2
    800057c4:	00000097          	auipc	ra,0x0
    800057c8:	95c080e7          	jalr	-1700(ra) # 80005120 <_Z8printIntiii>
        printString(" !\n");
    800057cc:	00004517          	auipc	a0,0x4
    800057d0:	e6450513          	addi	a0,a0,-412 # 80009630 <CONSOLE_STATUS+0x620>
    800057d4:	fffff097          	auipc	ra,0xfffff
    800057d8:	79c080e7          	jalr	1948(ra) # 80004f70 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800057dc:	00090513          	mv	a0,s2
    800057e0:	ffffc097          	auipc	ra,0xffffc
    800057e4:	f24080e7          	jalr	-220(ra) # 80001704 <_Z10time_sleepm>
    while (--i > 0) {
    800057e8:	fb9ff06f          	j	800057a0 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800057ec:	00a00793          	li	a5,10
    800057f0:	02f95933          	divu	s2,s2,a5
    800057f4:	fff90913          	addi	s2,s2,-1
    800057f8:	00006797          	auipc	a5,0x6
    800057fc:	05878793          	addi	a5,a5,88 # 8000b850 <_ZL8finished>
    80005800:	01278933          	add	s2,a5,s2
    80005804:	00100793          	li	a5,1
    80005808:	00f90023          	sb	a5,0(s2)
}
    8000580c:	01813083          	ld	ra,24(sp)
    80005810:	01013403          	ld	s0,16(sp)
    80005814:	00813483          	ld	s1,8(sp)
    80005818:	00013903          	ld	s2,0(sp)
    8000581c:	02010113          	addi	sp,sp,32
    80005820:	00008067          	ret

0000000080005824 <_Z12testSleepingv>:

void testSleeping() {
    80005824:	fc010113          	addi	sp,sp,-64
    80005828:	02113c23          	sd	ra,56(sp)
    8000582c:	02813823          	sd	s0,48(sp)
    80005830:	02913423          	sd	s1,40(sp)
    80005834:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005838:	00a00793          	li	a5,10
    8000583c:	fcf43823          	sd	a5,-48(s0)
    80005840:	01400793          	li	a5,20
    80005844:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005848:	00000493          	li	s1,0
    8000584c:	02c0006f          	j	80005878 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005850:	00349793          	slli	a5,s1,0x3
    80005854:	fd040613          	addi	a2,s0,-48
    80005858:	00f60633          	add	a2,a2,a5
    8000585c:	00000597          	auipc	a1,0x0
    80005860:	f2458593          	addi	a1,a1,-220 # 80005780 <_ZL9sleepyRunPv>
    80005864:	fc040513          	addi	a0,s0,-64
    80005868:	00f50533          	add	a0,a0,a5
    8000586c:	ffffc097          	auipc	ra,0xffffc
    80005870:	b0c080e7          	jalr	-1268(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005874:	0014849b          	addiw	s1,s1,1
    80005878:	00100793          	li	a5,1
    8000587c:	fc97dae3          	bge	a5,s1,80005850 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005880:	00006797          	auipc	a5,0x6
    80005884:	fd07c783          	lbu	a5,-48(a5) # 8000b850 <_ZL8finished>
    80005888:	fe078ce3          	beqz	a5,80005880 <_Z12testSleepingv+0x5c>
    8000588c:	00006797          	auipc	a5,0x6
    80005890:	fc57c783          	lbu	a5,-59(a5) # 8000b851 <_ZL8finished+0x1>
    80005894:	fe0786e3          	beqz	a5,80005880 <_Z12testSleepingv+0x5c>
}
    80005898:	03813083          	ld	ra,56(sp)
    8000589c:	03013403          	ld	s0,48(sp)
    800058a0:	02813483          	ld	s1,40(sp)
    800058a4:	04010113          	addi	sp,sp,64
    800058a8:	00008067          	ret

00000000800058ac <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800058ac:	fe010113          	addi	sp,sp,-32
    800058b0:	00113c23          	sd	ra,24(sp)
    800058b4:	00813823          	sd	s0,16(sp)
    800058b8:	00913423          	sd	s1,8(sp)
    800058bc:	01213023          	sd	s2,0(sp)
    800058c0:	02010413          	addi	s0,sp,32
    800058c4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800058c8:	00100793          	li	a5,1
    800058cc:	02a7f863          	bgeu	a5,a0,800058fc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800058d0:	00a00793          	li	a5,10
    800058d4:	02f577b3          	remu	a5,a0,a5
    800058d8:	02078e63          	beqz	a5,80005914 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800058dc:	fff48513          	addi	a0,s1,-1
    800058e0:	00000097          	auipc	ra,0x0
    800058e4:	fcc080e7          	jalr	-52(ra) # 800058ac <_ZL9fibonaccim>
    800058e8:	00050913          	mv	s2,a0
    800058ec:	ffe48513          	addi	a0,s1,-2
    800058f0:	00000097          	auipc	ra,0x0
    800058f4:	fbc080e7          	jalr	-68(ra) # 800058ac <_ZL9fibonaccim>
    800058f8:	00a90533          	add	a0,s2,a0
}
    800058fc:	01813083          	ld	ra,24(sp)
    80005900:	01013403          	ld	s0,16(sp)
    80005904:	00813483          	ld	s1,8(sp)
    80005908:	00013903          	ld	s2,0(sp)
    8000590c:	02010113          	addi	sp,sp,32
    80005910:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005914:	ffffc097          	auipc	ra,0xffffc
    80005918:	b20080e7          	jalr	-1248(ra) # 80001434 <_Z15thread_dispatchv>
    8000591c:	fc1ff06f          	j	800058dc <_ZL9fibonaccim+0x30>

0000000080005920 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005920:	fe010113          	addi	sp,sp,-32
    80005924:	00113c23          	sd	ra,24(sp)
    80005928:	00813823          	sd	s0,16(sp)
    8000592c:	00913423          	sd	s1,8(sp)
    80005930:	01213023          	sd	s2,0(sp)
    80005934:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005938:	00a00493          	li	s1,10
    8000593c:	0400006f          	j	8000597c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005940:	00004517          	auipc	a0,0x4
    80005944:	a0050513          	addi	a0,a0,-1536 # 80009340 <CONSOLE_STATUS+0x330>
    80005948:	fffff097          	auipc	ra,0xfffff
    8000594c:	628080e7          	jalr	1576(ra) # 80004f70 <_Z11printStringPKc>
    80005950:	00000613          	li	a2,0
    80005954:	00a00593          	li	a1,10
    80005958:	00048513          	mv	a0,s1
    8000595c:	fffff097          	auipc	ra,0xfffff
    80005960:	7c4080e7          	jalr	1988(ra) # 80005120 <_Z8printIntiii>
    80005964:	00004517          	auipc	a0,0x4
    80005968:	bfc50513          	addi	a0,a0,-1028 # 80009560 <CONSOLE_STATUS+0x550>
    8000596c:	fffff097          	auipc	ra,0xfffff
    80005970:	604080e7          	jalr	1540(ra) # 80004f70 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005974:	0014849b          	addiw	s1,s1,1
    80005978:	0ff4f493          	andi	s1,s1,255
    8000597c:	00c00793          	li	a5,12
    80005980:	fc97f0e3          	bgeu	a5,s1,80005940 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005984:	00004517          	auipc	a0,0x4
    80005988:	9c450513          	addi	a0,a0,-1596 # 80009348 <CONSOLE_STATUS+0x338>
    8000598c:	fffff097          	auipc	ra,0xfffff
    80005990:	5e4080e7          	jalr	1508(ra) # 80004f70 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005994:	00500313          	li	t1,5
    thread_dispatch();
    80005998:	ffffc097          	auipc	ra,0xffffc
    8000599c:	a9c080e7          	jalr	-1380(ra) # 80001434 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800059a0:	01000513          	li	a0,16
    800059a4:	00000097          	auipc	ra,0x0
    800059a8:	f08080e7          	jalr	-248(ra) # 800058ac <_ZL9fibonaccim>
    800059ac:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800059b0:	00004517          	auipc	a0,0x4
    800059b4:	9a850513          	addi	a0,a0,-1624 # 80009358 <CONSOLE_STATUS+0x348>
    800059b8:	fffff097          	auipc	ra,0xfffff
    800059bc:	5b8080e7          	jalr	1464(ra) # 80004f70 <_Z11printStringPKc>
    800059c0:	00000613          	li	a2,0
    800059c4:	00a00593          	li	a1,10
    800059c8:	0009051b          	sext.w	a0,s2
    800059cc:	fffff097          	auipc	ra,0xfffff
    800059d0:	754080e7          	jalr	1876(ra) # 80005120 <_Z8printIntiii>
    800059d4:	00004517          	auipc	a0,0x4
    800059d8:	b8c50513          	addi	a0,a0,-1140 # 80009560 <CONSOLE_STATUS+0x550>
    800059dc:	fffff097          	auipc	ra,0xfffff
    800059e0:	594080e7          	jalr	1428(ra) # 80004f70 <_Z11printStringPKc>
    800059e4:	0400006f          	j	80005a24 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800059e8:	00004517          	auipc	a0,0x4
    800059ec:	95850513          	addi	a0,a0,-1704 # 80009340 <CONSOLE_STATUS+0x330>
    800059f0:	fffff097          	auipc	ra,0xfffff
    800059f4:	580080e7          	jalr	1408(ra) # 80004f70 <_Z11printStringPKc>
    800059f8:	00000613          	li	a2,0
    800059fc:	00a00593          	li	a1,10
    80005a00:	00048513          	mv	a0,s1
    80005a04:	fffff097          	auipc	ra,0xfffff
    80005a08:	71c080e7          	jalr	1820(ra) # 80005120 <_Z8printIntiii>
    80005a0c:	00004517          	auipc	a0,0x4
    80005a10:	b5450513          	addi	a0,a0,-1196 # 80009560 <CONSOLE_STATUS+0x550>
    80005a14:	fffff097          	auipc	ra,0xfffff
    80005a18:	55c080e7          	jalr	1372(ra) # 80004f70 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005a1c:	0014849b          	addiw	s1,s1,1
    80005a20:	0ff4f493          	andi	s1,s1,255
    80005a24:	00f00793          	li	a5,15
    80005a28:	fc97f0e3          	bgeu	a5,s1,800059e8 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005a2c:	00004517          	auipc	a0,0x4
    80005a30:	93c50513          	addi	a0,a0,-1732 # 80009368 <CONSOLE_STATUS+0x358>
    80005a34:	fffff097          	auipc	ra,0xfffff
    80005a38:	53c080e7          	jalr	1340(ra) # 80004f70 <_Z11printStringPKc>
    finishedD = true;
    80005a3c:	00100793          	li	a5,1
    80005a40:	00006717          	auipc	a4,0x6
    80005a44:	e0f70923          	sb	a5,-494(a4) # 8000b852 <_ZL9finishedD>
    thread_dispatch();
    80005a48:	ffffc097          	auipc	ra,0xffffc
    80005a4c:	9ec080e7          	jalr	-1556(ra) # 80001434 <_Z15thread_dispatchv>
}
    80005a50:	01813083          	ld	ra,24(sp)
    80005a54:	01013403          	ld	s0,16(sp)
    80005a58:	00813483          	ld	s1,8(sp)
    80005a5c:	00013903          	ld	s2,0(sp)
    80005a60:	02010113          	addi	sp,sp,32
    80005a64:	00008067          	ret

0000000080005a68 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005a68:	fe010113          	addi	sp,sp,-32
    80005a6c:	00113c23          	sd	ra,24(sp)
    80005a70:	00813823          	sd	s0,16(sp)
    80005a74:	00913423          	sd	s1,8(sp)
    80005a78:	01213023          	sd	s2,0(sp)
    80005a7c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005a80:	00000493          	li	s1,0
    80005a84:	0400006f          	j	80005ac4 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005a88:	00004517          	auipc	a0,0x4
    80005a8c:	88850513          	addi	a0,a0,-1912 # 80009310 <CONSOLE_STATUS+0x300>
    80005a90:	fffff097          	auipc	ra,0xfffff
    80005a94:	4e0080e7          	jalr	1248(ra) # 80004f70 <_Z11printStringPKc>
    80005a98:	00000613          	li	a2,0
    80005a9c:	00a00593          	li	a1,10
    80005aa0:	00048513          	mv	a0,s1
    80005aa4:	fffff097          	auipc	ra,0xfffff
    80005aa8:	67c080e7          	jalr	1660(ra) # 80005120 <_Z8printIntiii>
    80005aac:	00004517          	auipc	a0,0x4
    80005ab0:	ab450513          	addi	a0,a0,-1356 # 80009560 <CONSOLE_STATUS+0x550>
    80005ab4:	fffff097          	auipc	ra,0xfffff
    80005ab8:	4bc080e7          	jalr	1212(ra) # 80004f70 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005abc:	0014849b          	addiw	s1,s1,1
    80005ac0:	0ff4f493          	andi	s1,s1,255
    80005ac4:	00200793          	li	a5,2
    80005ac8:	fc97f0e3          	bgeu	a5,s1,80005a88 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005acc:	00004517          	auipc	a0,0x4
    80005ad0:	84c50513          	addi	a0,a0,-1972 # 80009318 <CONSOLE_STATUS+0x308>
    80005ad4:	fffff097          	auipc	ra,0xfffff
    80005ad8:	49c080e7          	jalr	1180(ra) # 80004f70 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005adc:	00700313          	li	t1,7
    thread_dispatch();
    80005ae0:	ffffc097          	auipc	ra,0xffffc
    80005ae4:	954080e7          	jalr	-1708(ra) # 80001434 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005ae8:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005aec:	00004517          	auipc	a0,0x4
    80005af0:	83c50513          	addi	a0,a0,-1988 # 80009328 <CONSOLE_STATUS+0x318>
    80005af4:	fffff097          	auipc	ra,0xfffff
    80005af8:	47c080e7          	jalr	1148(ra) # 80004f70 <_Z11printStringPKc>
    80005afc:	00000613          	li	a2,0
    80005b00:	00a00593          	li	a1,10
    80005b04:	0009051b          	sext.w	a0,s2
    80005b08:	fffff097          	auipc	ra,0xfffff
    80005b0c:	618080e7          	jalr	1560(ra) # 80005120 <_Z8printIntiii>
    80005b10:	00004517          	auipc	a0,0x4
    80005b14:	a5050513          	addi	a0,a0,-1456 # 80009560 <CONSOLE_STATUS+0x550>
    80005b18:	fffff097          	auipc	ra,0xfffff
    80005b1c:	458080e7          	jalr	1112(ra) # 80004f70 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005b20:	00c00513          	li	a0,12
    80005b24:	00000097          	auipc	ra,0x0
    80005b28:	d88080e7          	jalr	-632(ra) # 800058ac <_ZL9fibonaccim>
    80005b2c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005b30:	00004517          	auipc	a0,0x4
    80005b34:	80050513          	addi	a0,a0,-2048 # 80009330 <CONSOLE_STATUS+0x320>
    80005b38:	fffff097          	auipc	ra,0xfffff
    80005b3c:	438080e7          	jalr	1080(ra) # 80004f70 <_Z11printStringPKc>
    80005b40:	00000613          	li	a2,0
    80005b44:	00a00593          	li	a1,10
    80005b48:	0009051b          	sext.w	a0,s2
    80005b4c:	fffff097          	auipc	ra,0xfffff
    80005b50:	5d4080e7          	jalr	1492(ra) # 80005120 <_Z8printIntiii>
    80005b54:	00004517          	auipc	a0,0x4
    80005b58:	a0c50513          	addi	a0,a0,-1524 # 80009560 <CONSOLE_STATUS+0x550>
    80005b5c:	fffff097          	auipc	ra,0xfffff
    80005b60:	414080e7          	jalr	1044(ra) # 80004f70 <_Z11printStringPKc>
    80005b64:	0400006f          	j	80005ba4 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005b68:	00003517          	auipc	a0,0x3
    80005b6c:	7a850513          	addi	a0,a0,1960 # 80009310 <CONSOLE_STATUS+0x300>
    80005b70:	fffff097          	auipc	ra,0xfffff
    80005b74:	400080e7          	jalr	1024(ra) # 80004f70 <_Z11printStringPKc>
    80005b78:	00000613          	li	a2,0
    80005b7c:	00a00593          	li	a1,10
    80005b80:	00048513          	mv	a0,s1
    80005b84:	fffff097          	auipc	ra,0xfffff
    80005b88:	59c080e7          	jalr	1436(ra) # 80005120 <_Z8printIntiii>
    80005b8c:	00004517          	auipc	a0,0x4
    80005b90:	9d450513          	addi	a0,a0,-1580 # 80009560 <CONSOLE_STATUS+0x550>
    80005b94:	fffff097          	auipc	ra,0xfffff
    80005b98:	3dc080e7          	jalr	988(ra) # 80004f70 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005b9c:	0014849b          	addiw	s1,s1,1
    80005ba0:	0ff4f493          	andi	s1,s1,255
    80005ba4:	00500793          	li	a5,5
    80005ba8:	fc97f0e3          	bgeu	a5,s1,80005b68 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005bac:	00003517          	auipc	a0,0x3
    80005bb0:	73c50513          	addi	a0,a0,1852 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80005bb4:	fffff097          	auipc	ra,0xfffff
    80005bb8:	3bc080e7          	jalr	956(ra) # 80004f70 <_Z11printStringPKc>
    finishedC = true;
    80005bbc:	00100793          	li	a5,1
    80005bc0:	00006717          	auipc	a4,0x6
    80005bc4:	c8f709a3          	sb	a5,-877(a4) # 8000b853 <_ZL9finishedC>
    thread_dispatch();
    80005bc8:	ffffc097          	auipc	ra,0xffffc
    80005bcc:	86c080e7          	jalr	-1940(ra) # 80001434 <_Z15thread_dispatchv>
}
    80005bd0:	01813083          	ld	ra,24(sp)
    80005bd4:	01013403          	ld	s0,16(sp)
    80005bd8:	00813483          	ld	s1,8(sp)
    80005bdc:	00013903          	ld	s2,0(sp)
    80005be0:	02010113          	addi	sp,sp,32
    80005be4:	00008067          	ret

0000000080005be8 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005be8:	fe010113          	addi	sp,sp,-32
    80005bec:	00113c23          	sd	ra,24(sp)
    80005bf0:	00813823          	sd	s0,16(sp)
    80005bf4:	00913423          	sd	s1,8(sp)
    80005bf8:	01213023          	sd	s2,0(sp)
    80005bfc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005c00:	00000913          	li	s2,0
    80005c04:	0400006f          	j	80005c44 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005c08:	ffffc097          	auipc	ra,0xffffc
    80005c0c:	82c080e7          	jalr	-2004(ra) # 80001434 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005c10:	00148493          	addi	s1,s1,1
    80005c14:	000027b7          	lui	a5,0x2
    80005c18:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005c1c:	0097ee63          	bltu	a5,s1,80005c38 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005c20:	00000713          	li	a4,0
    80005c24:	000077b7          	lui	a5,0x7
    80005c28:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005c2c:	fce7eee3          	bltu	a5,a4,80005c08 <_ZL11workerBodyBPv+0x20>
    80005c30:	00170713          	addi	a4,a4,1
    80005c34:	ff1ff06f          	j	80005c24 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005c38:	00a00793          	li	a5,10
    80005c3c:	04f90663          	beq	s2,a5,80005c88 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005c40:	00190913          	addi	s2,s2,1
    80005c44:	00f00793          	li	a5,15
    80005c48:	0527e463          	bltu	a5,s2,80005c90 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005c4c:	00003517          	auipc	a0,0x3
    80005c50:	6ac50513          	addi	a0,a0,1708 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80005c54:	fffff097          	auipc	ra,0xfffff
    80005c58:	31c080e7          	jalr	796(ra) # 80004f70 <_Z11printStringPKc>
    80005c5c:	00000613          	li	a2,0
    80005c60:	00a00593          	li	a1,10
    80005c64:	0009051b          	sext.w	a0,s2
    80005c68:	fffff097          	auipc	ra,0xfffff
    80005c6c:	4b8080e7          	jalr	1208(ra) # 80005120 <_Z8printIntiii>
    80005c70:	00004517          	auipc	a0,0x4
    80005c74:	8f050513          	addi	a0,a0,-1808 # 80009560 <CONSOLE_STATUS+0x550>
    80005c78:	fffff097          	auipc	ra,0xfffff
    80005c7c:	2f8080e7          	jalr	760(ra) # 80004f70 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005c80:	00000493          	li	s1,0
    80005c84:	f91ff06f          	j	80005c14 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005c88:	14102ff3          	csrr	t6,sepc
    80005c8c:	fb5ff06f          	j	80005c40 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80005c90:	00003517          	auipc	a0,0x3
    80005c94:	67050513          	addi	a0,a0,1648 # 80009300 <CONSOLE_STATUS+0x2f0>
    80005c98:	fffff097          	auipc	ra,0xfffff
    80005c9c:	2d8080e7          	jalr	728(ra) # 80004f70 <_Z11printStringPKc>
    finishedB = true;
    80005ca0:	00100793          	li	a5,1
    80005ca4:	00006717          	auipc	a4,0x6
    80005ca8:	baf70823          	sb	a5,-1104(a4) # 8000b854 <_ZL9finishedB>
    thread_dispatch();
    80005cac:	ffffb097          	auipc	ra,0xffffb
    80005cb0:	788080e7          	jalr	1928(ra) # 80001434 <_Z15thread_dispatchv>
}
    80005cb4:	01813083          	ld	ra,24(sp)
    80005cb8:	01013403          	ld	s0,16(sp)
    80005cbc:	00813483          	ld	s1,8(sp)
    80005cc0:	00013903          	ld	s2,0(sp)
    80005cc4:	02010113          	addi	sp,sp,32
    80005cc8:	00008067          	ret

0000000080005ccc <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005ccc:	fe010113          	addi	sp,sp,-32
    80005cd0:	00113c23          	sd	ra,24(sp)
    80005cd4:	00813823          	sd	s0,16(sp)
    80005cd8:	00913423          	sd	s1,8(sp)
    80005cdc:	01213023          	sd	s2,0(sp)
    80005ce0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005ce4:	00000913          	li	s2,0
    80005ce8:	0380006f          	j	80005d20 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005cec:	ffffb097          	auipc	ra,0xffffb
    80005cf0:	748080e7          	jalr	1864(ra) # 80001434 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005cf4:	00148493          	addi	s1,s1,1
    80005cf8:	000027b7          	lui	a5,0x2
    80005cfc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005d00:	0097ee63          	bltu	a5,s1,80005d1c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005d04:	00000713          	li	a4,0
    80005d08:	000077b7          	lui	a5,0x7
    80005d0c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005d10:	fce7eee3          	bltu	a5,a4,80005cec <_ZL11workerBodyAPv+0x20>
    80005d14:	00170713          	addi	a4,a4,1
    80005d18:	ff1ff06f          	j	80005d08 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005d1c:	00190913          	addi	s2,s2,1
    80005d20:	00900793          	li	a5,9
    80005d24:	0527e063          	bltu	a5,s2,80005d64 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005d28:	00003517          	auipc	a0,0x3
    80005d2c:	5b850513          	addi	a0,a0,1464 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80005d30:	fffff097          	auipc	ra,0xfffff
    80005d34:	240080e7          	jalr	576(ra) # 80004f70 <_Z11printStringPKc>
    80005d38:	00000613          	li	a2,0
    80005d3c:	00a00593          	li	a1,10
    80005d40:	0009051b          	sext.w	a0,s2
    80005d44:	fffff097          	auipc	ra,0xfffff
    80005d48:	3dc080e7          	jalr	988(ra) # 80005120 <_Z8printIntiii>
    80005d4c:	00004517          	auipc	a0,0x4
    80005d50:	81450513          	addi	a0,a0,-2028 # 80009560 <CONSOLE_STATUS+0x550>
    80005d54:	fffff097          	auipc	ra,0xfffff
    80005d58:	21c080e7          	jalr	540(ra) # 80004f70 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005d5c:	00000493          	li	s1,0
    80005d60:	f99ff06f          	j	80005cf8 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005d64:	00003517          	auipc	a0,0x3
    80005d68:	58450513          	addi	a0,a0,1412 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80005d6c:	fffff097          	auipc	ra,0xfffff
    80005d70:	204080e7          	jalr	516(ra) # 80004f70 <_Z11printStringPKc>
    finishedA = true;
    80005d74:	00100793          	li	a5,1
    80005d78:	00006717          	auipc	a4,0x6
    80005d7c:	acf70ea3          	sb	a5,-1315(a4) # 8000b855 <_ZL9finishedA>
}
    80005d80:	01813083          	ld	ra,24(sp)
    80005d84:	01013403          	ld	s0,16(sp)
    80005d88:	00813483          	ld	s1,8(sp)
    80005d8c:	00013903          	ld	s2,0(sp)
    80005d90:	02010113          	addi	sp,sp,32
    80005d94:	00008067          	ret

0000000080005d98 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80005d98:	fd010113          	addi	sp,sp,-48
    80005d9c:	02113423          	sd	ra,40(sp)
    80005da0:	02813023          	sd	s0,32(sp)
    80005da4:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005da8:	00000613          	li	a2,0
    80005dac:	00000597          	auipc	a1,0x0
    80005db0:	f2058593          	addi	a1,a1,-224 # 80005ccc <_ZL11workerBodyAPv>
    80005db4:	fd040513          	addi	a0,s0,-48
    80005db8:	ffffb097          	auipc	ra,0xffffb
    80005dbc:	5c0080e7          	jalr	1472(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80005dc0:	00003517          	auipc	a0,0x3
    80005dc4:	5b850513          	addi	a0,a0,1464 # 80009378 <CONSOLE_STATUS+0x368>
    80005dc8:	fffff097          	auipc	ra,0xfffff
    80005dcc:	1a8080e7          	jalr	424(ra) # 80004f70 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005dd0:	00000613          	li	a2,0
    80005dd4:	00000597          	auipc	a1,0x0
    80005dd8:	e1458593          	addi	a1,a1,-492 # 80005be8 <_ZL11workerBodyBPv>
    80005ddc:	fd840513          	addi	a0,s0,-40
    80005de0:	ffffb097          	auipc	ra,0xffffb
    80005de4:	598080e7          	jalr	1432(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80005de8:	00003517          	auipc	a0,0x3
    80005dec:	5a850513          	addi	a0,a0,1448 # 80009390 <CONSOLE_STATUS+0x380>
    80005df0:	fffff097          	auipc	ra,0xfffff
    80005df4:	180080e7          	jalr	384(ra) # 80004f70 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005df8:	00000613          	li	a2,0
    80005dfc:	00000597          	auipc	a1,0x0
    80005e00:	c6c58593          	addi	a1,a1,-916 # 80005a68 <_ZL11workerBodyCPv>
    80005e04:	fe040513          	addi	a0,s0,-32
    80005e08:	ffffb097          	auipc	ra,0xffffb
    80005e0c:	570080e7          	jalr	1392(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80005e10:	00003517          	auipc	a0,0x3
    80005e14:	59850513          	addi	a0,a0,1432 # 800093a8 <CONSOLE_STATUS+0x398>
    80005e18:	fffff097          	auipc	ra,0xfffff
    80005e1c:	158080e7          	jalr	344(ra) # 80004f70 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005e20:	00000613          	li	a2,0
    80005e24:	00000597          	auipc	a1,0x0
    80005e28:	afc58593          	addi	a1,a1,-1284 # 80005920 <_ZL11workerBodyDPv>
    80005e2c:	fe840513          	addi	a0,s0,-24
    80005e30:	ffffb097          	auipc	ra,0xffffb
    80005e34:	548080e7          	jalr	1352(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005e38:	00003517          	auipc	a0,0x3
    80005e3c:	58850513          	addi	a0,a0,1416 # 800093c0 <CONSOLE_STATUS+0x3b0>
    80005e40:	fffff097          	auipc	ra,0xfffff
    80005e44:	130080e7          	jalr	304(ra) # 80004f70 <_Z11printStringPKc>
    80005e48:	00c0006f          	j	80005e54 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005e4c:	ffffb097          	auipc	ra,0xffffb
    80005e50:	5e8080e7          	jalr	1512(ra) # 80001434 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005e54:	00006797          	auipc	a5,0x6
    80005e58:	a017c783          	lbu	a5,-1535(a5) # 8000b855 <_ZL9finishedA>
    80005e5c:	fe0788e3          	beqz	a5,80005e4c <_Z16System_Mode_testv+0xb4>
    80005e60:	00006797          	auipc	a5,0x6
    80005e64:	9f47c783          	lbu	a5,-1548(a5) # 8000b854 <_ZL9finishedB>
    80005e68:	fe0782e3          	beqz	a5,80005e4c <_Z16System_Mode_testv+0xb4>
    80005e6c:	00006797          	auipc	a5,0x6
    80005e70:	9e77c783          	lbu	a5,-1561(a5) # 8000b853 <_ZL9finishedC>
    80005e74:	fc078ce3          	beqz	a5,80005e4c <_Z16System_Mode_testv+0xb4>
    80005e78:	00006797          	auipc	a5,0x6
    80005e7c:	9da7c783          	lbu	a5,-1574(a5) # 8000b852 <_ZL9finishedD>
    80005e80:	fc0786e3          	beqz	a5,80005e4c <_Z16System_Mode_testv+0xb4>
    }

}
    80005e84:	02813083          	ld	ra,40(sp)
    80005e88:	02013403          	ld	s0,32(sp)
    80005e8c:	03010113          	addi	sp,sp,48
    80005e90:	00008067          	ret

0000000080005e94 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005e94:	fe010113          	addi	sp,sp,-32
    80005e98:	00113c23          	sd	ra,24(sp)
    80005e9c:	00813823          	sd	s0,16(sp)
    80005ea0:	00913423          	sd	s1,8(sp)
    80005ea4:	01213023          	sd	s2,0(sp)
    80005ea8:	02010413          	addi	s0,sp,32
    80005eac:	00050493          	mv	s1,a0
    80005eb0:	00058913          	mv	s2,a1
    80005eb4:	0015879b          	addiw	a5,a1,1
    80005eb8:	0007851b          	sext.w	a0,a5
    80005ebc:	00f4a023          	sw	a5,0(s1)
    80005ec0:	0004a823          	sw	zero,16(s1)
    80005ec4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005ec8:	00251513          	slli	a0,a0,0x2
    80005ecc:	ffffb097          	auipc	ra,0xffffb
    80005ed0:	428080e7          	jalr	1064(ra) # 800012f4 <_Z9mem_allocm>
    80005ed4:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005ed8:	00000593          	li	a1,0
    80005edc:	02048513          	addi	a0,s1,32
    80005ee0:	ffffb097          	auipc	ra,0xffffb
    80005ee4:	648080e7          	jalr	1608(ra) # 80001528 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80005ee8:	00090593          	mv	a1,s2
    80005eec:	01848513          	addi	a0,s1,24
    80005ef0:	ffffb097          	auipc	ra,0xffffb
    80005ef4:	638080e7          	jalr	1592(ra) # 80001528 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80005ef8:	00100593          	li	a1,1
    80005efc:	02848513          	addi	a0,s1,40
    80005f00:	ffffb097          	auipc	ra,0xffffb
    80005f04:	628080e7          	jalr	1576(ra) # 80001528 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80005f08:	00100593          	li	a1,1
    80005f0c:	03048513          	addi	a0,s1,48
    80005f10:	ffffb097          	auipc	ra,0xffffb
    80005f14:	618080e7          	jalr	1560(ra) # 80001528 <_Z8sem_openPP4_semj>
}
    80005f18:	01813083          	ld	ra,24(sp)
    80005f1c:	01013403          	ld	s0,16(sp)
    80005f20:	00813483          	ld	s1,8(sp)
    80005f24:	00013903          	ld	s2,0(sp)
    80005f28:	02010113          	addi	sp,sp,32
    80005f2c:	00008067          	ret

0000000080005f30 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005f30:	fe010113          	addi	sp,sp,-32
    80005f34:	00113c23          	sd	ra,24(sp)
    80005f38:	00813823          	sd	s0,16(sp)
    80005f3c:	00913423          	sd	s1,8(sp)
    80005f40:	01213023          	sd	s2,0(sp)
    80005f44:	02010413          	addi	s0,sp,32
    80005f48:	00050493          	mv	s1,a0
    80005f4c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005f50:	01853503          	ld	a0,24(a0)
    80005f54:	ffffb097          	auipc	ra,0xffffb
    80005f58:	658080e7          	jalr	1624(ra) # 800015ac <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80005f5c:	0304b503          	ld	a0,48(s1)
    80005f60:	ffffb097          	auipc	ra,0xffffb
    80005f64:	64c080e7          	jalr	1612(ra) # 800015ac <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80005f68:	0084b783          	ld	a5,8(s1)
    80005f6c:	0144a703          	lw	a4,20(s1)
    80005f70:	00271713          	slli	a4,a4,0x2
    80005f74:	00e787b3          	add	a5,a5,a4
    80005f78:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005f7c:	0144a783          	lw	a5,20(s1)
    80005f80:	0017879b          	addiw	a5,a5,1
    80005f84:	0004a703          	lw	a4,0(s1)
    80005f88:	02e7e7bb          	remw	a5,a5,a4
    80005f8c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005f90:	0304b503          	ld	a0,48(s1)
    80005f94:	ffffb097          	auipc	ra,0xffffb
    80005f98:	658080e7          	jalr	1624(ra) # 800015ec <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80005f9c:	0204b503          	ld	a0,32(s1)
    80005fa0:	ffffb097          	auipc	ra,0xffffb
    80005fa4:	64c080e7          	jalr	1612(ra) # 800015ec <_Z10sem_signalP4_sem>

}
    80005fa8:	01813083          	ld	ra,24(sp)
    80005fac:	01013403          	ld	s0,16(sp)
    80005fb0:	00813483          	ld	s1,8(sp)
    80005fb4:	00013903          	ld	s2,0(sp)
    80005fb8:	02010113          	addi	sp,sp,32
    80005fbc:	00008067          	ret

0000000080005fc0 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005fc0:	fe010113          	addi	sp,sp,-32
    80005fc4:	00113c23          	sd	ra,24(sp)
    80005fc8:	00813823          	sd	s0,16(sp)
    80005fcc:	00913423          	sd	s1,8(sp)
    80005fd0:	01213023          	sd	s2,0(sp)
    80005fd4:	02010413          	addi	s0,sp,32
    80005fd8:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005fdc:	02053503          	ld	a0,32(a0)
    80005fe0:	ffffb097          	auipc	ra,0xffffb
    80005fe4:	5cc080e7          	jalr	1484(ra) # 800015ac <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80005fe8:	0284b503          	ld	a0,40(s1)
    80005fec:	ffffb097          	auipc	ra,0xffffb
    80005ff0:	5c0080e7          	jalr	1472(ra) # 800015ac <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80005ff4:	0084b703          	ld	a4,8(s1)
    80005ff8:	0104a783          	lw	a5,16(s1)
    80005ffc:	00279693          	slli	a3,a5,0x2
    80006000:	00d70733          	add	a4,a4,a3
    80006004:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006008:	0017879b          	addiw	a5,a5,1
    8000600c:	0004a703          	lw	a4,0(s1)
    80006010:	02e7e7bb          	remw	a5,a5,a4
    80006014:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006018:	0284b503          	ld	a0,40(s1)
    8000601c:	ffffb097          	auipc	ra,0xffffb
    80006020:	5d0080e7          	jalr	1488(ra) # 800015ec <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80006024:	0184b503          	ld	a0,24(s1)
    80006028:	ffffb097          	auipc	ra,0xffffb
    8000602c:	5c4080e7          	jalr	1476(ra) # 800015ec <_Z10sem_signalP4_sem>

    return ret;
}
    80006030:	00090513          	mv	a0,s2
    80006034:	01813083          	ld	ra,24(sp)
    80006038:	01013403          	ld	s0,16(sp)
    8000603c:	00813483          	ld	s1,8(sp)
    80006040:	00013903          	ld	s2,0(sp)
    80006044:	02010113          	addi	sp,sp,32
    80006048:	00008067          	ret

000000008000604c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    8000604c:	fe010113          	addi	sp,sp,-32
    80006050:	00113c23          	sd	ra,24(sp)
    80006054:	00813823          	sd	s0,16(sp)
    80006058:	00913423          	sd	s1,8(sp)
    8000605c:	01213023          	sd	s2,0(sp)
    80006060:	02010413          	addi	s0,sp,32
    80006064:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006068:	02853503          	ld	a0,40(a0)
    8000606c:	ffffb097          	auipc	ra,0xffffb
    80006070:	540080e7          	jalr	1344(ra) # 800015ac <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80006074:	0304b503          	ld	a0,48(s1)
    80006078:	ffffb097          	auipc	ra,0xffffb
    8000607c:	534080e7          	jalr	1332(ra) # 800015ac <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80006080:	0144a783          	lw	a5,20(s1)
    80006084:	0104a903          	lw	s2,16(s1)
    80006088:	0327ce63          	blt	a5,s2,800060c4 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    8000608c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006090:	0304b503          	ld	a0,48(s1)
    80006094:	ffffb097          	auipc	ra,0xffffb
    80006098:	558080e7          	jalr	1368(ra) # 800015ec <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    8000609c:	0284b503          	ld	a0,40(s1)
    800060a0:	ffffb097          	auipc	ra,0xffffb
    800060a4:	54c080e7          	jalr	1356(ra) # 800015ec <_Z10sem_signalP4_sem>

    return ret;
}
    800060a8:	00090513          	mv	a0,s2
    800060ac:	01813083          	ld	ra,24(sp)
    800060b0:	01013403          	ld	s0,16(sp)
    800060b4:	00813483          	ld	s1,8(sp)
    800060b8:	00013903          	ld	s2,0(sp)
    800060bc:	02010113          	addi	sp,sp,32
    800060c0:	00008067          	ret
        ret = cap - head + tail;
    800060c4:	0004a703          	lw	a4,0(s1)
    800060c8:	4127093b          	subw	s2,a4,s2
    800060cc:	00f9093b          	addw	s2,s2,a5
    800060d0:	fc1ff06f          	j	80006090 <_ZN6Buffer6getCntEv+0x44>

00000000800060d4 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800060d4:	fe010113          	addi	sp,sp,-32
    800060d8:	00113c23          	sd	ra,24(sp)
    800060dc:	00813823          	sd	s0,16(sp)
    800060e0:	00913423          	sd	s1,8(sp)
    800060e4:	02010413          	addi	s0,sp,32
    800060e8:	00050493          	mv	s1,a0
    putc('\n');
    800060ec:	00a00513          	li	a0,10
    800060f0:	ffffb097          	auipc	ra,0xffffb
    800060f4:	5bc080e7          	jalr	1468(ra) # 800016ac <_Z4putcc>
    printString("Buffer deleted!\n");
    800060f8:	00003517          	auipc	a0,0x3
    800060fc:	2e050513          	addi	a0,a0,736 # 800093d8 <CONSOLE_STATUS+0x3c8>
    80006100:	fffff097          	auipc	ra,0xfffff
    80006104:	e70080e7          	jalr	-400(ra) # 80004f70 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006108:	00048513          	mv	a0,s1
    8000610c:	00000097          	auipc	ra,0x0
    80006110:	f40080e7          	jalr	-192(ra) # 8000604c <_ZN6Buffer6getCntEv>
    80006114:	02a05c63          	blez	a0,8000614c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006118:	0084b783          	ld	a5,8(s1)
    8000611c:	0104a703          	lw	a4,16(s1)
    80006120:	00271713          	slli	a4,a4,0x2
    80006124:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006128:	0007c503          	lbu	a0,0(a5)
    8000612c:	ffffb097          	auipc	ra,0xffffb
    80006130:	580080e7          	jalr	1408(ra) # 800016ac <_Z4putcc>
        head = (head + 1) % cap;
    80006134:	0104a783          	lw	a5,16(s1)
    80006138:	0017879b          	addiw	a5,a5,1
    8000613c:	0004a703          	lw	a4,0(s1)
    80006140:	02e7e7bb          	remw	a5,a5,a4
    80006144:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006148:	fc1ff06f          	j	80006108 <_ZN6BufferD1Ev+0x34>
    putc('!');
    8000614c:	02100513          	li	a0,33
    80006150:	ffffb097          	auipc	ra,0xffffb
    80006154:	55c080e7          	jalr	1372(ra) # 800016ac <_Z4putcc>
    putc('\n');
    80006158:	00a00513          	li	a0,10
    8000615c:	ffffb097          	auipc	ra,0xffffb
    80006160:	550080e7          	jalr	1360(ra) # 800016ac <_Z4putcc>
    mem_free(buffer);
    80006164:	0084b503          	ld	a0,8(s1)
    80006168:	ffffb097          	auipc	ra,0xffffb
    8000616c:	1d0080e7          	jalr	464(ra) # 80001338 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006170:	0204b503          	ld	a0,32(s1)
    80006174:	ffffb097          	auipc	ra,0xffffb
    80006178:	3f8080e7          	jalr	1016(ra) # 8000156c <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    8000617c:	0184b503          	ld	a0,24(s1)
    80006180:	ffffb097          	auipc	ra,0xffffb
    80006184:	3ec080e7          	jalr	1004(ra) # 8000156c <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80006188:	0304b503          	ld	a0,48(s1)
    8000618c:	ffffb097          	auipc	ra,0xffffb
    80006190:	3e0080e7          	jalr	992(ra) # 8000156c <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80006194:	0284b503          	ld	a0,40(s1)
    80006198:	ffffb097          	auipc	ra,0xffffb
    8000619c:	3d4080e7          	jalr	980(ra) # 8000156c <_Z9sem_closeP4_sem>
}
    800061a0:	01813083          	ld	ra,24(sp)
    800061a4:	01013403          	ld	s0,16(sp)
    800061a8:	00813483          	ld	s1,8(sp)
    800061ac:	02010113          	addi	sp,sp,32
    800061b0:	00008067          	ret

00000000800061b4 <start>:
    800061b4:	ff010113          	addi	sp,sp,-16
    800061b8:	00813423          	sd	s0,8(sp)
    800061bc:	01010413          	addi	s0,sp,16
    800061c0:	300027f3          	csrr	a5,mstatus
    800061c4:	ffffe737          	lui	a4,0xffffe
    800061c8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1d3f>
    800061cc:	00e7f7b3          	and	a5,a5,a4
    800061d0:	00001737          	lui	a4,0x1
    800061d4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800061d8:	00e7e7b3          	or	a5,a5,a4
    800061dc:	30079073          	csrw	mstatus,a5
    800061e0:	00000797          	auipc	a5,0x0
    800061e4:	16078793          	addi	a5,a5,352 # 80006340 <system_main>
    800061e8:	34179073          	csrw	mepc,a5
    800061ec:	00000793          	li	a5,0
    800061f0:	18079073          	csrw	satp,a5
    800061f4:	000107b7          	lui	a5,0x10
    800061f8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800061fc:	30279073          	csrw	medeleg,a5
    80006200:	30379073          	csrw	mideleg,a5
    80006204:	104027f3          	csrr	a5,sie
    80006208:	2227e793          	ori	a5,a5,546
    8000620c:	10479073          	csrw	sie,a5
    80006210:	fff00793          	li	a5,-1
    80006214:	00a7d793          	srli	a5,a5,0xa
    80006218:	3b079073          	csrw	pmpaddr0,a5
    8000621c:	00f00793          	li	a5,15
    80006220:	3a079073          	csrw	pmpcfg0,a5
    80006224:	f14027f3          	csrr	a5,mhartid
    80006228:	0200c737          	lui	a4,0x200c
    8000622c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006230:	0007869b          	sext.w	a3,a5
    80006234:	00269713          	slli	a4,a3,0x2
    80006238:	000f4637          	lui	a2,0xf4
    8000623c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006240:	00d70733          	add	a4,a4,a3
    80006244:	0037979b          	slliw	a5,a5,0x3
    80006248:	020046b7          	lui	a3,0x2004
    8000624c:	00d787b3          	add	a5,a5,a3
    80006250:	00c585b3          	add	a1,a1,a2
    80006254:	00371693          	slli	a3,a4,0x3
    80006258:	00005717          	auipc	a4,0x5
    8000625c:	60870713          	addi	a4,a4,1544 # 8000b860 <timer_scratch>
    80006260:	00b7b023          	sd	a1,0(a5)
    80006264:	00d70733          	add	a4,a4,a3
    80006268:	00f73c23          	sd	a5,24(a4)
    8000626c:	02c73023          	sd	a2,32(a4)
    80006270:	34071073          	csrw	mscratch,a4
    80006274:	00000797          	auipc	a5,0x0
    80006278:	6ec78793          	addi	a5,a5,1772 # 80006960 <timervec>
    8000627c:	30579073          	csrw	mtvec,a5
    80006280:	300027f3          	csrr	a5,mstatus
    80006284:	0087e793          	ori	a5,a5,8
    80006288:	30079073          	csrw	mstatus,a5
    8000628c:	304027f3          	csrr	a5,mie
    80006290:	0807e793          	ori	a5,a5,128
    80006294:	30479073          	csrw	mie,a5
    80006298:	f14027f3          	csrr	a5,mhartid
    8000629c:	0007879b          	sext.w	a5,a5
    800062a0:	00078213          	mv	tp,a5
    800062a4:	30200073          	mret
    800062a8:	00813403          	ld	s0,8(sp)
    800062ac:	01010113          	addi	sp,sp,16
    800062b0:	00008067          	ret

00000000800062b4 <timerinit>:
    800062b4:	ff010113          	addi	sp,sp,-16
    800062b8:	00813423          	sd	s0,8(sp)
    800062bc:	01010413          	addi	s0,sp,16
    800062c0:	f14027f3          	csrr	a5,mhartid
    800062c4:	0200c737          	lui	a4,0x200c
    800062c8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800062cc:	0007869b          	sext.w	a3,a5
    800062d0:	00269713          	slli	a4,a3,0x2
    800062d4:	000f4637          	lui	a2,0xf4
    800062d8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800062dc:	00d70733          	add	a4,a4,a3
    800062e0:	0037979b          	slliw	a5,a5,0x3
    800062e4:	020046b7          	lui	a3,0x2004
    800062e8:	00d787b3          	add	a5,a5,a3
    800062ec:	00c585b3          	add	a1,a1,a2
    800062f0:	00371693          	slli	a3,a4,0x3
    800062f4:	00005717          	auipc	a4,0x5
    800062f8:	56c70713          	addi	a4,a4,1388 # 8000b860 <timer_scratch>
    800062fc:	00b7b023          	sd	a1,0(a5)
    80006300:	00d70733          	add	a4,a4,a3
    80006304:	00f73c23          	sd	a5,24(a4)
    80006308:	02c73023          	sd	a2,32(a4)
    8000630c:	34071073          	csrw	mscratch,a4
    80006310:	00000797          	auipc	a5,0x0
    80006314:	65078793          	addi	a5,a5,1616 # 80006960 <timervec>
    80006318:	30579073          	csrw	mtvec,a5
    8000631c:	300027f3          	csrr	a5,mstatus
    80006320:	0087e793          	ori	a5,a5,8
    80006324:	30079073          	csrw	mstatus,a5
    80006328:	304027f3          	csrr	a5,mie
    8000632c:	0807e793          	ori	a5,a5,128
    80006330:	30479073          	csrw	mie,a5
    80006334:	00813403          	ld	s0,8(sp)
    80006338:	01010113          	addi	sp,sp,16
    8000633c:	00008067          	ret

0000000080006340 <system_main>:
    80006340:	fe010113          	addi	sp,sp,-32
    80006344:	00813823          	sd	s0,16(sp)
    80006348:	00913423          	sd	s1,8(sp)
    8000634c:	00113c23          	sd	ra,24(sp)
    80006350:	02010413          	addi	s0,sp,32
    80006354:	00000097          	auipc	ra,0x0
    80006358:	0c4080e7          	jalr	196(ra) # 80006418 <cpuid>
    8000635c:	00005497          	auipc	s1,0x5
    80006360:	45448493          	addi	s1,s1,1108 # 8000b7b0 <started>
    80006364:	02050263          	beqz	a0,80006388 <system_main+0x48>
    80006368:	0004a783          	lw	a5,0(s1)
    8000636c:	0007879b          	sext.w	a5,a5
    80006370:	fe078ce3          	beqz	a5,80006368 <system_main+0x28>
    80006374:	0ff0000f          	fence
    80006378:	00003517          	auipc	a0,0x3
    8000637c:	2f050513          	addi	a0,a0,752 # 80009668 <CONSOLE_STATUS+0x658>
    80006380:	00001097          	auipc	ra,0x1
    80006384:	a7c080e7          	jalr	-1412(ra) # 80006dfc <panic>
    80006388:	00001097          	auipc	ra,0x1
    8000638c:	9d0080e7          	jalr	-1584(ra) # 80006d58 <consoleinit>
    80006390:	00001097          	auipc	ra,0x1
    80006394:	15c080e7          	jalr	348(ra) # 800074ec <printfinit>
    80006398:	00003517          	auipc	a0,0x3
    8000639c:	1c850513          	addi	a0,a0,456 # 80009560 <CONSOLE_STATUS+0x550>
    800063a0:	00001097          	auipc	ra,0x1
    800063a4:	ab8080e7          	jalr	-1352(ra) # 80006e58 <__printf>
    800063a8:	00003517          	auipc	a0,0x3
    800063ac:	29050513          	addi	a0,a0,656 # 80009638 <CONSOLE_STATUS+0x628>
    800063b0:	00001097          	auipc	ra,0x1
    800063b4:	aa8080e7          	jalr	-1368(ra) # 80006e58 <__printf>
    800063b8:	00003517          	auipc	a0,0x3
    800063bc:	1a850513          	addi	a0,a0,424 # 80009560 <CONSOLE_STATUS+0x550>
    800063c0:	00001097          	auipc	ra,0x1
    800063c4:	a98080e7          	jalr	-1384(ra) # 80006e58 <__printf>
    800063c8:	00001097          	auipc	ra,0x1
    800063cc:	4b0080e7          	jalr	1200(ra) # 80007878 <kinit>
    800063d0:	00000097          	auipc	ra,0x0
    800063d4:	148080e7          	jalr	328(ra) # 80006518 <trapinit>
    800063d8:	00000097          	auipc	ra,0x0
    800063dc:	16c080e7          	jalr	364(ra) # 80006544 <trapinithart>
    800063e0:	00000097          	auipc	ra,0x0
    800063e4:	5c0080e7          	jalr	1472(ra) # 800069a0 <plicinit>
    800063e8:	00000097          	auipc	ra,0x0
    800063ec:	5e0080e7          	jalr	1504(ra) # 800069c8 <plicinithart>
    800063f0:	00000097          	auipc	ra,0x0
    800063f4:	078080e7          	jalr	120(ra) # 80006468 <userinit>
    800063f8:	0ff0000f          	fence
    800063fc:	00100793          	li	a5,1
    80006400:	00003517          	auipc	a0,0x3
    80006404:	25050513          	addi	a0,a0,592 # 80009650 <CONSOLE_STATUS+0x640>
    80006408:	00f4a023          	sw	a5,0(s1)
    8000640c:	00001097          	auipc	ra,0x1
    80006410:	a4c080e7          	jalr	-1460(ra) # 80006e58 <__printf>
    80006414:	0000006f          	j	80006414 <system_main+0xd4>

0000000080006418 <cpuid>:
    80006418:	ff010113          	addi	sp,sp,-16
    8000641c:	00813423          	sd	s0,8(sp)
    80006420:	01010413          	addi	s0,sp,16
    80006424:	00020513          	mv	a0,tp
    80006428:	00813403          	ld	s0,8(sp)
    8000642c:	0005051b          	sext.w	a0,a0
    80006430:	01010113          	addi	sp,sp,16
    80006434:	00008067          	ret

0000000080006438 <mycpu>:
    80006438:	ff010113          	addi	sp,sp,-16
    8000643c:	00813423          	sd	s0,8(sp)
    80006440:	01010413          	addi	s0,sp,16
    80006444:	00020793          	mv	a5,tp
    80006448:	00813403          	ld	s0,8(sp)
    8000644c:	0007879b          	sext.w	a5,a5
    80006450:	00779793          	slli	a5,a5,0x7
    80006454:	00006517          	auipc	a0,0x6
    80006458:	43c50513          	addi	a0,a0,1084 # 8000c890 <cpus>
    8000645c:	00f50533          	add	a0,a0,a5
    80006460:	01010113          	addi	sp,sp,16
    80006464:	00008067          	ret

0000000080006468 <userinit>:
    80006468:	ff010113          	addi	sp,sp,-16
    8000646c:	00813423          	sd	s0,8(sp)
    80006470:	01010413          	addi	s0,sp,16
    80006474:	00813403          	ld	s0,8(sp)
    80006478:	01010113          	addi	sp,sp,16
    8000647c:	ffffb317          	auipc	t1,0xffffb
    80006480:	2a430067          	jr	676(t1) # 80001720 <main>

0000000080006484 <either_copyout>:
    80006484:	ff010113          	addi	sp,sp,-16
    80006488:	00813023          	sd	s0,0(sp)
    8000648c:	00113423          	sd	ra,8(sp)
    80006490:	01010413          	addi	s0,sp,16
    80006494:	02051663          	bnez	a0,800064c0 <either_copyout+0x3c>
    80006498:	00058513          	mv	a0,a1
    8000649c:	00060593          	mv	a1,a2
    800064a0:	0006861b          	sext.w	a2,a3
    800064a4:	00002097          	auipc	ra,0x2
    800064a8:	c60080e7          	jalr	-928(ra) # 80008104 <__memmove>
    800064ac:	00813083          	ld	ra,8(sp)
    800064b0:	00013403          	ld	s0,0(sp)
    800064b4:	00000513          	li	a0,0
    800064b8:	01010113          	addi	sp,sp,16
    800064bc:	00008067          	ret
    800064c0:	00003517          	auipc	a0,0x3
    800064c4:	1d050513          	addi	a0,a0,464 # 80009690 <CONSOLE_STATUS+0x680>
    800064c8:	00001097          	auipc	ra,0x1
    800064cc:	934080e7          	jalr	-1740(ra) # 80006dfc <panic>

00000000800064d0 <either_copyin>:
    800064d0:	ff010113          	addi	sp,sp,-16
    800064d4:	00813023          	sd	s0,0(sp)
    800064d8:	00113423          	sd	ra,8(sp)
    800064dc:	01010413          	addi	s0,sp,16
    800064e0:	02059463          	bnez	a1,80006508 <either_copyin+0x38>
    800064e4:	00060593          	mv	a1,a2
    800064e8:	0006861b          	sext.w	a2,a3
    800064ec:	00002097          	auipc	ra,0x2
    800064f0:	c18080e7          	jalr	-1000(ra) # 80008104 <__memmove>
    800064f4:	00813083          	ld	ra,8(sp)
    800064f8:	00013403          	ld	s0,0(sp)
    800064fc:	00000513          	li	a0,0
    80006500:	01010113          	addi	sp,sp,16
    80006504:	00008067          	ret
    80006508:	00003517          	auipc	a0,0x3
    8000650c:	1b050513          	addi	a0,a0,432 # 800096b8 <CONSOLE_STATUS+0x6a8>
    80006510:	00001097          	auipc	ra,0x1
    80006514:	8ec080e7          	jalr	-1812(ra) # 80006dfc <panic>

0000000080006518 <trapinit>:
    80006518:	ff010113          	addi	sp,sp,-16
    8000651c:	00813423          	sd	s0,8(sp)
    80006520:	01010413          	addi	s0,sp,16
    80006524:	00813403          	ld	s0,8(sp)
    80006528:	00003597          	auipc	a1,0x3
    8000652c:	1b858593          	addi	a1,a1,440 # 800096e0 <CONSOLE_STATUS+0x6d0>
    80006530:	00006517          	auipc	a0,0x6
    80006534:	3e050513          	addi	a0,a0,992 # 8000c910 <tickslock>
    80006538:	01010113          	addi	sp,sp,16
    8000653c:	00001317          	auipc	t1,0x1
    80006540:	5cc30067          	jr	1484(t1) # 80007b08 <initlock>

0000000080006544 <trapinithart>:
    80006544:	ff010113          	addi	sp,sp,-16
    80006548:	00813423          	sd	s0,8(sp)
    8000654c:	01010413          	addi	s0,sp,16
    80006550:	00000797          	auipc	a5,0x0
    80006554:	30078793          	addi	a5,a5,768 # 80006850 <kernelvec>
    80006558:	10579073          	csrw	stvec,a5
    8000655c:	00813403          	ld	s0,8(sp)
    80006560:	01010113          	addi	sp,sp,16
    80006564:	00008067          	ret

0000000080006568 <usertrap>:
    80006568:	ff010113          	addi	sp,sp,-16
    8000656c:	00813423          	sd	s0,8(sp)
    80006570:	01010413          	addi	s0,sp,16
    80006574:	00813403          	ld	s0,8(sp)
    80006578:	01010113          	addi	sp,sp,16
    8000657c:	00008067          	ret

0000000080006580 <usertrapret>:
    80006580:	ff010113          	addi	sp,sp,-16
    80006584:	00813423          	sd	s0,8(sp)
    80006588:	01010413          	addi	s0,sp,16
    8000658c:	00813403          	ld	s0,8(sp)
    80006590:	01010113          	addi	sp,sp,16
    80006594:	00008067          	ret

0000000080006598 <kerneltrap>:
    80006598:	fe010113          	addi	sp,sp,-32
    8000659c:	00813823          	sd	s0,16(sp)
    800065a0:	00113c23          	sd	ra,24(sp)
    800065a4:	00913423          	sd	s1,8(sp)
    800065a8:	02010413          	addi	s0,sp,32
    800065ac:	142025f3          	csrr	a1,scause
    800065b0:	100027f3          	csrr	a5,sstatus
    800065b4:	0027f793          	andi	a5,a5,2
    800065b8:	10079c63          	bnez	a5,800066d0 <kerneltrap+0x138>
    800065bc:	142027f3          	csrr	a5,scause
    800065c0:	0207ce63          	bltz	a5,800065fc <kerneltrap+0x64>
    800065c4:	00003517          	auipc	a0,0x3
    800065c8:	16450513          	addi	a0,a0,356 # 80009728 <CONSOLE_STATUS+0x718>
    800065cc:	00001097          	auipc	ra,0x1
    800065d0:	88c080e7          	jalr	-1908(ra) # 80006e58 <__printf>
    800065d4:	141025f3          	csrr	a1,sepc
    800065d8:	14302673          	csrr	a2,stval
    800065dc:	00003517          	auipc	a0,0x3
    800065e0:	15c50513          	addi	a0,a0,348 # 80009738 <CONSOLE_STATUS+0x728>
    800065e4:	00001097          	auipc	ra,0x1
    800065e8:	874080e7          	jalr	-1932(ra) # 80006e58 <__printf>
    800065ec:	00003517          	auipc	a0,0x3
    800065f0:	16450513          	addi	a0,a0,356 # 80009750 <CONSOLE_STATUS+0x740>
    800065f4:	00001097          	auipc	ra,0x1
    800065f8:	808080e7          	jalr	-2040(ra) # 80006dfc <panic>
    800065fc:	0ff7f713          	andi	a4,a5,255
    80006600:	00900693          	li	a3,9
    80006604:	04d70063          	beq	a4,a3,80006644 <kerneltrap+0xac>
    80006608:	fff00713          	li	a4,-1
    8000660c:	03f71713          	slli	a4,a4,0x3f
    80006610:	00170713          	addi	a4,a4,1
    80006614:	fae798e3          	bne	a5,a4,800065c4 <kerneltrap+0x2c>
    80006618:	00000097          	auipc	ra,0x0
    8000661c:	e00080e7          	jalr	-512(ra) # 80006418 <cpuid>
    80006620:	06050663          	beqz	a0,8000668c <kerneltrap+0xf4>
    80006624:	144027f3          	csrr	a5,sip
    80006628:	ffd7f793          	andi	a5,a5,-3
    8000662c:	14479073          	csrw	sip,a5
    80006630:	01813083          	ld	ra,24(sp)
    80006634:	01013403          	ld	s0,16(sp)
    80006638:	00813483          	ld	s1,8(sp)
    8000663c:	02010113          	addi	sp,sp,32
    80006640:	00008067          	ret
    80006644:	00000097          	auipc	ra,0x0
    80006648:	3d0080e7          	jalr	976(ra) # 80006a14 <plic_claim>
    8000664c:	00a00793          	li	a5,10
    80006650:	00050493          	mv	s1,a0
    80006654:	06f50863          	beq	a0,a5,800066c4 <kerneltrap+0x12c>
    80006658:	fc050ce3          	beqz	a0,80006630 <kerneltrap+0x98>
    8000665c:	00050593          	mv	a1,a0
    80006660:	00003517          	auipc	a0,0x3
    80006664:	0a850513          	addi	a0,a0,168 # 80009708 <CONSOLE_STATUS+0x6f8>
    80006668:	00000097          	auipc	ra,0x0
    8000666c:	7f0080e7          	jalr	2032(ra) # 80006e58 <__printf>
    80006670:	01013403          	ld	s0,16(sp)
    80006674:	01813083          	ld	ra,24(sp)
    80006678:	00048513          	mv	a0,s1
    8000667c:	00813483          	ld	s1,8(sp)
    80006680:	02010113          	addi	sp,sp,32
    80006684:	00000317          	auipc	t1,0x0
    80006688:	3c830067          	jr	968(t1) # 80006a4c <plic_complete>
    8000668c:	00006517          	auipc	a0,0x6
    80006690:	28450513          	addi	a0,a0,644 # 8000c910 <tickslock>
    80006694:	00001097          	auipc	ra,0x1
    80006698:	498080e7          	jalr	1176(ra) # 80007b2c <acquire>
    8000669c:	00005717          	auipc	a4,0x5
    800066a0:	11870713          	addi	a4,a4,280 # 8000b7b4 <ticks>
    800066a4:	00072783          	lw	a5,0(a4)
    800066a8:	00006517          	auipc	a0,0x6
    800066ac:	26850513          	addi	a0,a0,616 # 8000c910 <tickslock>
    800066b0:	0017879b          	addiw	a5,a5,1
    800066b4:	00f72023          	sw	a5,0(a4)
    800066b8:	00001097          	auipc	ra,0x1
    800066bc:	540080e7          	jalr	1344(ra) # 80007bf8 <release>
    800066c0:	f65ff06f          	j	80006624 <kerneltrap+0x8c>
    800066c4:	00001097          	auipc	ra,0x1
    800066c8:	09c080e7          	jalr	156(ra) # 80007760 <uartintr>
    800066cc:	fa5ff06f          	j	80006670 <kerneltrap+0xd8>
    800066d0:	00003517          	auipc	a0,0x3
    800066d4:	01850513          	addi	a0,a0,24 # 800096e8 <CONSOLE_STATUS+0x6d8>
    800066d8:	00000097          	auipc	ra,0x0
    800066dc:	724080e7          	jalr	1828(ra) # 80006dfc <panic>

00000000800066e0 <clockintr>:
    800066e0:	fe010113          	addi	sp,sp,-32
    800066e4:	00813823          	sd	s0,16(sp)
    800066e8:	00913423          	sd	s1,8(sp)
    800066ec:	00113c23          	sd	ra,24(sp)
    800066f0:	02010413          	addi	s0,sp,32
    800066f4:	00006497          	auipc	s1,0x6
    800066f8:	21c48493          	addi	s1,s1,540 # 8000c910 <tickslock>
    800066fc:	00048513          	mv	a0,s1
    80006700:	00001097          	auipc	ra,0x1
    80006704:	42c080e7          	jalr	1068(ra) # 80007b2c <acquire>
    80006708:	00005717          	auipc	a4,0x5
    8000670c:	0ac70713          	addi	a4,a4,172 # 8000b7b4 <ticks>
    80006710:	00072783          	lw	a5,0(a4)
    80006714:	01013403          	ld	s0,16(sp)
    80006718:	01813083          	ld	ra,24(sp)
    8000671c:	00048513          	mv	a0,s1
    80006720:	0017879b          	addiw	a5,a5,1
    80006724:	00813483          	ld	s1,8(sp)
    80006728:	00f72023          	sw	a5,0(a4)
    8000672c:	02010113          	addi	sp,sp,32
    80006730:	00001317          	auipc	t1,0x1
    80006734:	4c830067          	jr	1224(t1) # 80007bf8 <release>

0000000080006738 <devintr>:
    80006738:	142027f3          	csrr	a5,scause
    8000673c:	00000513          	li	a0,0
    80006740:	0007c463          	bltz	a5,80006748 <devintr+0x10>
    80006744:	00008067          	ret
    80006748:	fe010113          	addi	sp,sp,-32
    8000674c:	00813823          	sd	s0,16(sp)
    80006750:	00113c23          	sd	ra,24(sp)
    80006754:	00913423          	sd	s1,8(sp)
    80006758:	02010413          	addi	s0,sp,32
    8000675c:	0ff7f713          	andi	a4,a5,255
    80006760:	00900693          	li	a3,9
    80006764:	04d70c63          	beq	a4,a3,800067bc <devintr+0x84>
    80006768:	fff00713          	li	a4,-1
    8000676c:	03f71713          	slli	a4,a4,0x3f
    80006770:	00170713          	addi	a4,a4,1
    80006774:	00e78c63          	beq	a5,a4,8000678c <devintr+0x54>
    80006778:	01813083          	ld	ra,24(sp)
    8000677c:	01013403          	ld	s0,16(sp)
    80006780:	00813483          	ld	s1,8(sp)
    80006784:	02010113          	addi	sp,sp,32
    80006788:	00008067          	ret
    8000678c:	00000097          	auipc	ra,0x0
    80006790:	c8c080e7          	jalr	-884(ra) # 80006418 <cpuid>
    80006794:	06050663          	beqz	a0,80006800 <devintr+0xc8>
    80006798:	144027f3          	csrr	a5,sip
    8000679c:	ffd7f793          	andi	a5,a5,-3
    800067a0:	14479073          	csrw	sip,a5
    800067a4:	01813083          	ld	ra,24(sp)
    800067a8:	01013403          	ld	s0,16(sp)
    800067ac:	00813483          	ld	s1,8(sp)
    800067b0:	00200513          	li	a0,2
    800067b4:	02010113          	addi	sp,sp,32
    800067b8:	00008067          	ret
    800067bc:	00000097          	auipc	ra,0x0
    800067c0:	258080e7          	jalr	600(ra) # 80006a14 <plic_claim>
    800067c4:	00a00793          	li	a5,10
    800067c8:	00050493          	mv	s1,a0
    800067cc:	06f50663          	beq	a0,a5,80006838 <devintr+0x100>
    800067d0:	00100513          	li	a0,1
    800067d4:	fa0482e3          	beqz	s1,80006778 <devintr+0x40>
    800067d8:	00048593          	mv	a1,s1
    800067dc:	00003517          	auipc	a0,0x3
    800067e0:	f2c50513          	addi	a0,a0,-212 # 80009708 <CONSOLE_STATUS+0x6f8>
    800067e4:	00000097          	auipc	ra,0x0
    800067e8:	674080e7          	jalr	1652(ra) # 80006e58 <__printf>
    800067ec:	00048513          	mv	a0,s1
    800067f0:	00000097          	auipc	ra,0x0
    800067f4:	25c080e7          	jalr	604(ra) # 80006a4c <plic_complete>
    800067f8:	00100513          	li	a0,1
    800067fc:	f7dff06f          	j	80006778 <devintr+0x40>
    80006800:	00006517          	auipc	a0,0x6
    80006804:	11050513          	addi	a0,a0,272 # 8000c910 <tickslock>
    80006808:	00001097          	auipc	ra,0x1
    8000680c:	324080e7          	jalr	804(ra) # 80007b2c <acquire>
    80006810:	00005717          	auipc	a4,0x5
    80006814:	fa470713          	addi	a4,a4,-92 # 8000b7b4 <ticks>
    80006818:	00072783          	lw	a5,0(a4)
    8000681c:	00006517          	auipc	a0,0x6
    80006820:	0f450513          	addi	a0,a0,244 # 8000c910 <tickslock>
    80006824:	0017879b          	addiw	a5,a5,1
    80006828:	00f72023          	sw	a5,0(a4)
    8000682c:	00001097          	auipc	ra,0x1
    80006830:	3cc080e7          	jalr	972(ra) # 80007bf8 <release>
    80006834:	f65ff06f          	j	80006798 <devintr+0x60>
    80006838:	00001097          	auipc	ra,0x1
    8000683c:	f28080e7          	jalr	-216(ra) # 80007760 <uartintr>
    80006840:	fadff06f          	j	800067ec <devintr+0xb4>
	...

0000000080006850 <kernelvec>:
    80006850:	f0010113          	addi	sp,sp,-256
    80006854:	00113023          	sd	ra,0(sp)
    80006858:	00213423          	sd	sp,8(sp)
    8000685c:	00313823          	sd	gp,16(sp)
    80006860:	00413c23          	sd	tp,24(sp)
    80006864:	02513023          	sd	t0,32(sp)
    80006868:	02613423          	sd	t1,40(sp)
    8000686c:	02713823          	sd	t2,48(sp)
    80006870:	02813c23          	sd	s0,56(sp)
    80006874:	04913023          	sd	s1,64(sp)
    80006878:	04a13423          	sd	a0,72(sp)
    8000687c:	04b13823          	sd	a1,80(sp)
    80006880:	04c13c23          	sd	a2,88(sp)
    80006884:	06d13023          	sd	a3,96(sp)
    80006888:	06e13423          	sd	a4,104(sp)
    8000688c:	06f13823          	sd	a5,112(sp)
    80006890:	07013c23          	sd	a6,120(sp)
    80006894:	09113023          	sd	a7,128(sp)
    80006898:	09213423          	sd	s2,136(sp)
    8000689c:	09313823          	sd	s3,144(sp)
    800068a0:	09413c23          	sd	s4,152(sp)
    800068a4:	0b513023          	sd	s5,160(sp)
    800068a8:	0b613423          	sd	s6,168(sp)
    800068ac:	0b713823          	sd	s7,176(sp)
    800068b0:	0b813c23          	sd	s8,184(sp)
    800068b4:	0d913023          	sd	s9,192(sp)
    800068b8:	0da13423          	sd	s10,200(sp)
    800068bc:	0db13823          	sd	s11,208(sp)
    800068c0:	0dc13c23          	sd	t3,216(sp)
    800068c4:	0fd13023          	sd	t4,224(sp)
    800068c8:	0fe13423          	sd	t5,232(sp)
    800068cc:	0ff13823          	sd	t6,240(sp)
    800068d0:	cc9ff0ef          	jal	ra,80006598 <kerneltrap>
    800068d4:	00013083          	ld	ra,0(sp)
    800068d8:	00813103          	ld	sp,8(sp)
    800068dc:	01013183          	ld	gp,16(sp)
    800068e0:	02013283          	ld	t0,32(sp)
    800068e4:	02813303          	ld	t1,40(sp)
    800068e8:	03013383          	ld	t2,48(sp)
    800068ec:	03813403          	ld	s0,56(sp)
    800068f0:	04013483          	ld	s1,64(sp)
    800068f4:	04813503          	ld	a0,72(sp)
    800068f8:	05013583          	ld	a1,80(sp)
    800068fc:	05813603          	ld	a2,88(sp)
    80006900:	06013683          	ld	a3,96(sp)
    80006904:	06813703          	ld	a4,104(sp)
    80006908:	07013783          	ld	a5,112(sp)
    8000690c:	07813803          	ld	a6,120(sp)
    80006910:	08013883          	ld	a7,128(sp)
    80006914:	08813903          	ld	s2,136(sp)
    80006918:	09013983          	ld	s3,144(sp)
    8000691c:	09813a03          	ld	s4,152(sp)
    80006920:	0a013a83          	ld	s5,160(sp)
    80006924:	0a813b03          	ld	s6,168(sp)
    80006928:	0b013b83          	ld	s7,176(sp)
    8000692c:	0b813c03          	ld	s8,184(sp)
    80006930:	0c013c83          	ld	s9,192(sp)
    80006934:	0c813d03          	ld	s10,200(sp)
    80006938:	0d013d83          	ld	s11,208(sp)
    8000693c:	0d813e03          	ld	t3,216(sp)
    80006940:	0e013e83          	ld	t4,224(sp)
    80006944:	0e813f03          	ld	t5,232(sp)
    80006948:	0f013f83          	ld	t6,240(sp)
    8000694c:	10010113          	addi	sp,sp,256
    80006950:	10200073          	sret
    80006954:	00000013          	nop
    80006958:	00000013          	nop
    8000695c:	00000013          	nop

0000000080006960 <timervec>:
    80006960:	34051573          	csrrw	a0,mscratch,a0
    80006964:	00b53023          	sd	a1,0(a0)
    80006968:	00c53423          	sd	a2,8(a0)
    8000696c:	00d53823          	sd	a3,16(a0)
    80006970:	01853583          	ld	a1,24(a0)
    80006974:	02053603          	ld	a2,32(a0)
    80006978:	0005b683          	ld	a3,0(a1)
    8000697c:	00c686b3          	add	a3,a3,a2
    80006980:	00d5b023          	sd	a3,0(a1)
    80006984:	00200593          	li	a1,2
    80006988:	14459073          	csrw	sip,a1
    8000698c:	01053683          	ld	a3,16(a0)
    80006990:	00853603          	ld	a2,8(a0)
    80006994:	00053583          	ld	a1,0(a0)
    80006998:	34051573          	csrrw	a0,mscratch,a0
    8000699c:	30200073          	mret

00000000800069a0 <plicinit>:
    800069a0:	ff010113          	addi	sp,sp,-16
    800069a4:	00813423          	sd	s0,8(sp)
    800069a8:	01010413          	addi	s0,sp,16
    800069ac:	00813403          	ld	s0,8(sp)
    800069b0:	0c0007b7          	lui	a5,0xc000
    800069b4:	00100713          	li	a4,1
    800069b8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800069bc:	00e7a223          	sw	a4,4(a5)
    800069c0:	01010113          	addi	sp,sp,16
    800069c4:	00008067          	ret

00000000800069c8 <plicinithart>:
    800069c8:	ff010113          	addi	sp,sp,-16
    800069cc:	00813023          	sd	s0,0(sp)
    800069d0:	00113423          	sd	ra,8(sp)
    800069d4:	01010413          	addi	s0,sp,16
    800069d8:	00000097          	auipc	ra,0x0
    800069dc:	a40080e7          	jalr	-1472(ra) # 80006418 <cpuid>
    800069e0:	0085171b          	slliw	a4,a0,0x8
    800069e4:	0c0027b7          	lui	a5,0xc002
    800069e8:	00e787b3          	add	a5,a5,a4
    800069ec:	40200713          	li	a4,1026
    800069f0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800069f4:	00813083          	ld	ra,8(sp)
    800069f8:	00013403          	ld	s0,0(sp)
    800069fc:	00d5151b          	slliw	a0,a0,0xd
    80006a00:	0c2017b7          	lui	a5,0xc201
    80006a04:	00a78533          	add	a0,a5,a0
    80006a08:	00052023          	sw	zero,0(a0)
    80006a0c:	01010113          	addi	sp,sp,16
    80006a10:	00008067          	ret

0000000080006a14 <plic_claim>:
    80006a14:	ff010113          	addi	sp,sp,-16
    80006a18:	00813023          	sd	s0,0(sp)
    80006a1c:	00113423          	sd	ra,8(sp)
    80006a20:	01010413          	addi	s0,sp,16
    80006a24:	00000097          	auipc	ra,0x0
    80006a28:	9f4080e7          	jalr	-1548(ra) # 80006418 <cpuid>
    80006a2c:	00813083          	ld	ra,8(sp)
    80006a30:	00013403          	ld	s0,0(sp)
    80006a34:	00d5151b          	slliw	a0,a0,0xd
    80006a38:	0c2017b7          	lui	a5,0xc201
    80006a3c:	00a78533          	add	a0,a5,a0
    80006a40:	00452503          	lw	a0,4(a0)
    80006a44:	01010113          	addi	sp,sp,16
    80006a48:	00008067          	ret

0000000080006a4c <plic_complete>:
    80006a4c:	fe010113          	addi	sp,sp,-32
    80006a50:	00813823          	sd	s0,16(sp)
    80006a54:	00913423          	sd	s1,8(sp)
    80006a58:	00113c23          	sd	ra,24(sp)
    80006a5c:	02010413          	addi	s0,sp,32
    80006a60:	00050493          	mv	s1,a0
    80006a64:	00000097          	auipc	ra,0x0
    80006a68:	9b4080e7          	jalr	-1612(ra) # 80006418 <cpuid>
    80006a6c:	01813083          	ld	ra,24(sp)
    80006a70:	01013403          	ld	s0,16(sp)
    80006a74:	00d5179b          	slliw	a5,a0,0xd
    80006a78:	0c201737          	lui	a4,0xc201
    80006a7c:	00f707b3          	add	a5,a4,a5
    80006a80:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006a84:	00813483          	ld	s1,8(sp)
    80006a88:	02010113          	addi	sp,sp,32
    80006a8c:	00008067          	ret

0000000080006a90 <consolewrite>:
    80006a90:	fb010113          	addi	sp,sp,-80
    80006a94:	04813023          	sd	s0,64(sp)
    80006a98:	04113423          	sd	ra,72(sp)
    80006a9c:	02913c23          	sd	s1,56(sp)
    80006aa0:	03213823          	sd	s2,48(sp)
    80006aa4:	03313423          	sd	s3,40(sp)
    80006aa8:	03413023          	sd	s4,32(sp)
    80006aac:	01513c23          	sd	s5,24(sp)
    80006ab0:	05010413          	addi	s0,sp,80
    80006ab4:	06c05c63          	blez	a2,80006b2c <consolewrite+0x9c>
    80006ab8:	00060993          	mv	s3,a2
    80006abc:	00050a13          	mv	s4,a0
    80006ac0:	00058493          	mv	s1,a1
    80006ac4:	00000913          	li	s2,0
    80006ac8:	fff00a93          	li	s5,-1
    80006acc:	01c0006f          	j	80006ae8 <consolewrite+0x58>
    80006ad0:	fbf44503          	lbu	a0,-65(s0)
    80006ad4:	0019091b          	addiw	s2,s2,1
    80006ad8:	00148493          	addi	s1,s1,1
    80006adc:	00001097          	auipc	ra,0x1
    80006ae0:	a9c080e7          	jalr	-1380(ra) # 80007578 <uartputc>
    80006ae4:	03298063          	beq	s3,s2,80006b04 <consolewrite+0x74>
    80006ae8:	00048613          	mv	a2,s1
    80006aec:	00100693          	li	a3,1
    80006af0:	000a0593          	mv	a1,s4
    80006af4:	fbf40513          	addi	a0,s0,-65
    80006af8:	00000097          	auipc	ra,0x0
    80006afc:	9d8080e7          	jalr	-1576(ra) # 800064d0 <either_copyin>
    80006b00:	fd5518e3          	bne	a0,s5,80006ad0 <consolewrite+0x40>
    80006b04:	04813083          	ld	ra,72(sp)
    80006b08:	04013403          	ld	s0,64(sp)
    80006b0c:	03813483          	ld	s1,56(sp)
    80006b10:	02813983          	ld	s3,40(sp)
    80006b14:	02013a03          	ld	s4,32(sp)
    80006b18:	01813a83          	ld	s5,24(sp)
    80006b1c:	00090513          	mv	a0,s2
    80006b20:	03013903          	ld	s2,48(sp)
    80006b24:	05010113          	addi	sp,sp,80
    80006b28:	00008067          	ret
    80006b2c:	00000913          	li	s2,0
    80006b30:	fd5ff06f          	j	80006b04 <consolewrite+0x74>

0000000080006b34 <consoleread>:
    80006b34:	f9010113          	addi	sp,sp,-112
    80006b38:	06813023          	sd	s0,96(sp)
    80006b3c:	04913c23          	sd	s1,88(sp)
    80006b40:	05213823          	sd	s2,80(sp)
    80006b44:	05313423          	sd	s3,72(sp)
    80006b48:	05413023          	sd	s4,64(sp)
    80006b4c:	03513c23          	sd	s5,56(sp)
    80006b50:	03613823          	sd	s6,48(sp)
    80006b54:	03713423          	sd	s7,40(sp)
    80006b58:	03813023          	sd	s8,32(sp)
    80006b5c:	06113423          	sd	ra,104(sp)
    80006b60:	01913c23          	sd	s9,24(sp)
    80006b64:	07010413          	addi	s0,sp,112
    80006b68:	00060b93          	mv	s7,a2
    80006b6c:	00050913          	mv	s2,a0
    80006b70:	00058c13          	mv	s8,a1
    80006b74:	00060b1b          	sext.w	s6,a2
    80006b78:	00006497          	auipc	s1,0x6
    80006b7c:	dc048493          	addi	s1,s1,-576 # 8000c938 <cons>
    80006b80:	00400993          	li	s3,4
    80006b84:	fff00a13          	li	s4,-1
    80006b88:	00a00a93          	li	s5,10
    80006b8c:	05705e63          	blez	s7,80006be8 <consoleread+0xb4>
    80006b90:	09c4a703          	lw	a4,156(s1)
    80006b94:	0984a783          	lw	a5,152(s1)
    80006b98:	0007071b          	sext.w	a4,a4
    80006b9c:	08e78463          	beq	a5,a4,80006c24 <consoleread+0xf0>
    80006ba0:	07f7f713          	andi	a4,a5,127
    80006ba4:	00e48733          	add	a4,s1,a4
    80006ba8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006bac:	0017869b          	addiw	a3,a5,1
    80006bb0:	08d4ac23          	sw	a3,152(s1)
    80006bb4:	00070c9b          	sext.w	s9,a4
    80006bb8:	0b370663          	beq	a4,s3,80006c64 <consoleread+0x130>
    80006bbc:	00100693          	li	a3,1
    80006bc0:	f9f40613          	addi	a2,s0,-97
    80006bc4:	000c0593          	mv	a1,s8
    80006bc8:	00090513          	mv	a0,s2
    80006bcc:	f8e40fa3          	sb	a4,-97(s0)
    80006bd0:	00000097          	auipc	ra,0x0
    80006bd4:	8b4080e7          	jalr	-1868(ra) # 80006484 <either_copyout>
    80006bd8:	01450863          	beq	a0,s4,80006be8 <consoleread+0xb4>
    80006bdc:	001c0c13          	addi	s8,s8,1
    80006be0:	fffb8b9b          	addiw	s7,s7,-1
    80006be4:	fb5c94e3          	bne	s9,s5,80006b8c <consoleread+0x58>
    80006be8:	000b851b          	sext.w	a0,s7
    80006bec:	06813083          	ld	ra,104(sp)
    80006bf0:	06013403          	ld	s0,96(sp)
    80006bf4:	05813483          	ld	s1,88(sp)
    80006bf8:	05013903          	ld	s2,80(sp)
    80006bfc:	04813983          	ld	s3,72(sp)
    80006c00:	04013a03          	ld	s4,64(sp)
    80006c04:	03813a83          	ld	s5,56(sp)
    80006c08:	02813b83          	ld	s7,40(sp)
    80006c0c:	02013c03          	ld	s8,32(sp)
    80006c10:	01813c83          	ld	s9,24(sp)
    80006c14:	40ab053b          	subw	a0,s6,a0
    80006c18:	03013b03          	ld	s6,48(sp)
    80006c1c:	07010113          	addi	sp,sp,112
    80006c20:	00008067          	ret
    80006c24:	00001097          	auipc	ra,0x1
    80006c28:	1d8080e7          	jalr	472(ra) # 80007dfc <push_on>
    80006c2c:	0984a703          	lw	a4,152(s1)
    80006c30:	09c4a783          	lw	a5,156(s1)
    80006c34:	0007879b          	sext.w	a5,a5
    80006c38:	fef70ce3          	beq	a4,a5,80006c30 <consoleread+0xfc>
    80006c3c:	00001097          	auipc	ra,0x1
    80006c40:	234080e7          	jalr	564(ra) # 80007e70 <pop_on>
    80006c44:	0984a783          	lw	a5,152(s1)
    80006c48:	07f7f713          	andi	a4,a5,127
    80006c4c:	00e48733          	add	a4,s1,a4
    80006c50:	01874703          	lbu	a4,24(a4)
    80006c54:	0017869b          	addiw	a3,a5,1
    80006c58:	08d4ac23          	sw	a3,152(s1)
    80006c5c:	00070c9b          	sext.w	s9,a4
    80006c60:	f5371ee3          	bne	a4,s3,80006bbc <consoleread+0x88>
    80006c64:	000b851b          	sext.w	a0,s7
    80006c68:	f96bf2e3          	bgeu	s7,s6,80006bec <consoleread+0xb8>
    80006c6c:	08f4ac23          	sw	a5,152(s1)
    80006c70:	f7dff06f          	j	80006bec <consoleread+0xb8>

0000000080006c74 <consputc>:
    80006c74:	10000793          	li	a5,256
    80006c78:	00f50663          	beq	a0,a5,80006c84 <consputc+0x10>
    80006c7c:	00001317          	auipc	t1,0x1
    80006c80:	9f430067          	jr	-1548(t1) # 80007670 <uartputc_sync>
    80006c84:	ff010113          	addi	sp,sp,-16
    80006c88:	00113423          	sd	ra,8(sp)
    80006c8c:	00813023          	sd	s0,0(sp)
    80006c90:	01010413          	addi	s0,sp,16
    80006c94:	00800513          	li	a0,8
    80006c98:	00001097          	auipc	ra,0x1
    80006c9c:	9d8080e7          	jalr	-1576(ra) # 80007670 <uartputc_sync>
    80006ca0:	02000513          	li	a0,32
    80006ca4:	00001097          	auipc	ra,0x1
    80006ca8:	9cc080e7          	jalr	-1588(ra) # 80007670 <uartputc_sync>
    80006cac:	00013403          	ld	s0,0(sp)
    80006cb0:	00813083          	ld	ra,8(sp)
    80006cb4:	00800513          	li	a0,8
    80006cb8:	01010113          	addi	sp,sp,16
    80006cbc:	00001317          	auipc	t1,0x1
    80006cc0:	9b430067          	jr	-1612(t1) # 80007670 <uartputc_sync>

0000000080006cc4 <consoleintr>:
    80006cc4:	fe010113          	addi	sp,sp,-32
    80006cc8:	00813823          	sd	s0,16(sp)
    80006ccc:	00913423          	sd	s1,8(sp)
    80006cd0:	01213023          	sd	s2,0(sp)
    80006cd4:	00113c23          	sd	ra,24(sp)
    80006cd8:	02010413          	addi	s0,sp,32
    80006cdc:	00006917          	auipc	s2,0x6
    80006ce0:	c5c90913          	addi	s2,s2,-932 # 8000c938 <cons>
    80006ce4:	00050493          	mv	s1,a0
    80006ce8:	00090513          	mv	a0,s2
    80006cec:	00001097          	auipc	ra,0x1
    80006cf0:	e40080e7          	jalr	-448(ra) # 80007b2c <acquire>
    80006cf4:	02048c63          	beqz	s1,80006d2c <consoleintr+0x68>
    80006cf8:	0a092783          	lw	a5,160(s2)
    80006cfc:	09892703          	lw	a4,152(s2)
    80006d00:	07f00693          	li	a3,127
    80006d04:	40e7873b          	subw	a4,a5,a4
    80006d08:	02e6e263          	bltu	a3,a4,80006d2c <consoleintr+0x68>
    80006d0c:	00d00713          	li	a4,13
    80006d10:	04e48063          	beq	s1,a4,80006d50 <consoleintr+0x8c>
    80006d14:	07f7f713          	andi	a4,a5,127
    80006d18:	00e90733          	add	a4,s2,a4
    80006d1c:	0017879b          	addiw	a5,a5,1
    80006d20:	0af92023          	sw	a5,160(s2)
    80006d24:	00970c23          	sb	s1,24(a4)
    80006d28:	08f92e23          	sw	a5,156(s2)
    80006d2c:	01013403          	ld	s0,16(sp)
    80006d30:	01813083          	ld	ra,24(sp)
    80006d34:	00813483          	ld	s1,8(sp)
    80006d38:	00013903          	ld	s2,0(sp)
    80006d3c:	00006517          	auipc	a0,0x6
    80006d40:	bfc50513          	addi	a0,a0,-1028 # 8000c938 <cons>
    80006d44:	02010113          	addi	sp,sp,32
    80006d48:	00001317          	auipc	t1,0x1
    80006d4c:	eb030067          	jr	-336(t1) # 80007bf8 <release>
    80006d50:	00a00493          	li	s1,10
    80006d54:	fc1ff06f          	j	80006d14 <consoleintr+0x50>

0000000080006d58 <consoleinit>:
    80006d58:	fe010113          	addi	sp,sp,-32
    80006d5c:	00113c23          	sd	ra,24(sp)
    80006d60:	00813823          	sd	s0,16(sp)
    80006d64:	00913423          	sd	s1,8(sp)
    80006d68:	02010413          	addi	s0,sp,32
    80006d6c:	00006497          	auipc	s1,0x6
    80006d70:	bcc48493          	addi	s1,s1,-1076 # 8000c938 <cons>
    80006d74:	00048513          	mv	a0,s1
    80006d78:	00003597          	auipc	a1,0x3
    80006d7c:	9e858593          	addi	a1,a1,-1560 # 80009760 <CONSOLE_STATUS+0x750>
    80006d80:	00001097          	auipc	ra,0x1
    80006d84:	d88080e7          	jalr	-632(ra) # 80007b08 <initlock>
    80006d88:	00000097          	auipc	ra,0x0
    80006d8c:	7ac080e7          	jalr	1964(ra) # 80007534 <uartinit>
    80006d90:	01813083          	ld	ra,24(sp)
    80006d94:	01013403          	ld	s0,16(sp)
    80006d98:	00000797          	auipc	a5,0x0
    80006d9c:	d9c78793          	addi	a5,a5,-612 # 80006b34 <consoleread>
    80006da0:	0af4bc23          	sd	a5,184(s1)
    80006da4:	00000797          	auipc	a5,0x0
    80006da8:	cec78793          	addi	a5,a5,-788 # 80006a90 <consolewrite>
    80006dac:	0cf4b023          	sd	a5,192(s1)
    80006db0:	00813483          	ld	s1,8(sp)
    80006db4:	02010113          	addi	sp,sp,32
    80006db8:	00008067          	ret

0000000080006dbc <console_read>:
    80006dbc:	ff010113          	addi	sp,sp,-16
    80006dc0:	00813423          	sd	s0,8(sp)
    80006dc4:	01010413          	addi	s0,sp,16
    80006dc8:	00813403          	ld	s0,8(sp)
    80006dcc:	00006317          	auipc	t1,0x6
    80006dd0:	c2433303          	ld	t1,-988(t1) # 8000c9f0 <devsw+0x10>
    80006dd4:	01010113          	addi	sp,sp,16
    80006dd8:	00030067          	jr	t1

0000000080006ddc <console_write>:
    80006ddc:	ff010113          	addi	sp,sp,-16
    80006de0:	00813423          	sd	s0,8(sp)
    80006de4:	01010413          	addi	s0,sp,16
    80006de8:	00813403          	ld	s0,8(sp)
    80006dec:	00006317          	auipc	t1,0x6
    80006df0:	c0c33303          	ld	t1,-1012(t1) # 8000c9f8 <devsw+0x18>
    80006df4:	01010113          	addi	sp,sp,16
    80006df8:	00030067          	jr	t1

0000000080006dfc <panic>:
    80006dfc:	fe010113          	addi	sp,sp,-32
    80006e00:	00113c23          	sd	ra,24(sp)
    80006e04:	00813823          	sd	s0,16(sp)
    80006e08:	00913423          	sd	s1,8(sp)
    80006e0c:	02010413          	addi	s0,sp,32
    80006e10:	00050493          	mv	s1,a0
    80006e14:	00003517          	auipc	a0,0x3
    80006e18:	95450513          	addi	a0,a0,-1708 # 80009768 <CONSOLE_STATUS+0x758>
    80006e1c:	00006797          	auipc	a5,0x6
    80006e20:	c607ae23          	sw	zero,-900(a5) # 8000ca98 <pr+0x18>
    80006e24:	00000097          	auipc	ra,0x0
    80006e28:	034080e7          	jalr	52(ra) # 80006e58 <__printf>
    80006e2c:	00048513          	mv	a0,s1
    80006e30:	00000097          	auipc	ra,0x0
    80006e34:	028080e7          	jalr	40(ra) # 80006e58 <__printf>
    80006e38:	00002517          	auipc	a0,0x2
    80006e3c:	72850513          	addi	a0,a0,1832 # 80009560 <CONSOLE_STATUS+0x550>
    80006e40:	00000097          	auipc	ra,0x0
    80006e44:	018080e7          	jalr	24(ra) # 80006e58 <__printf>
    80006e48:	00100793          	li	a5,1
    80006e4c:	00005717          	auipc	a4,0x5
    80006e50:	96f72623          	sw	a5,-1684(a4) # 8000b7b8 <panicked>
    80006e54:	0000006f          	j	80006e54 <panic+0x58>

0000000080006e58 <__printf>:
    80006e58:	f3010113          	addi	sp,sp,-208
    80006e5c:	08813023          	sd	s0,128(sp)
    80006e60:	07313423          	sd	s3,104(sp)
    80006e64:	09010413          	addi	s0,sp,144
    80006e68:	05813023          	sd	s8,64(sp)
    80006e6c:	08113423          	sd	ra,136(sp)
    80006e70:	06913c23          	sd	s1,120(sp)
    80006e74:	07213823          	sd	s2,112(sp)
    80006e78:	07413023          	sd	s4,96(sp)
    80006e7c:	05513c23          	sd	s5,88(sp)
    80006e80:	05613823          	sd	s6,80(sp)
    80006e84:	05713423          	sd	s7,72(sp)
    80006e88:	03913c23          	sd	s9,56(sp)
    80006e8c:	03a13823          	sd	s10,48(sp)
    80006e90:	03b13423          	sd	s11,40(sp)
    80006e94:	00006317          	auipc	t1,0x6
    80006e98:	bec30313          	addi	t1,t1,-1044 # 8000ca80 <pr>
    80006e9c:	01832c03          	lw	s8,24(t1)
    80006ea0:	00b43423          	sd	a1,8(s0)
    80006ea4:	00c43823          	sd	a2,16(s0)
    80006ea8:	00d43c23          	sd	a3,24(s0)
    80006eac:	02e43023          	sd	a4,32(s0)
    80006eb0:	02f43423          	sd	a5,40(s0)
    80006eb4:	03043823          	sd	a6,48(s0)
    80006eb8:	03143c23          	sd	a7,56(s0)
    80006ebc:	00050993          	mv	s3,a0
    80006ec0:	4a0c1663          	bnez	s8,8000736c <__printf+0x514>
    80006ec4:	60098c63          	beqz	s3,800074dc <__printf+0x684>
    80006ec8:	0009c503          	lbu	a0,0(s3)
    80006ecc:	00840793          	addi	a5,s0,8
    80006ed0:	f6f43c23          	sd	a5,-136(s0)
    80006ed4:	00000493          	li	s1,0
    80006ed8:	22050063          	beqz	a0,800070f8 <__printf+0x2a0>
    80006edc:	00002a37          	lui	s4,0x2
    80006ee0:	00018ab7          	lui	s5,0x18
    80006ee4:	000f4b37          	lui	s6,0xf4
    80006ee8:	00989bb7          	lui	s7,0x989
    80006eec:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006ef0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006ef4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006ef8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006efc:	00148c9b          	addiw	s9,s1,1
    80006f00:	02500793          	li	a5,37
    80006f04:	01998933          	add	s2,s3,s9
    80006f08:	38f51263          	bne	a0,a5,8000728c <__printf+0x434>
    80006f0c:	00094783          	lbu	a5,0(s2)
    80006f10:	00078c9b          	sext.w	s9,a5
    80006f14:	1e078263          	beqz	a5,800070f8 <__printf+0x2a0>
    80006f18:	0024849b          	addiw	s1,s1,2
    80006f1c:	07000713          	li	a4,112
    80006f20:	00998933          	add	s2,s3,s1
    80006f24:	38e78a63          	beq	a5,a4,800072b8 <__printf+0x460>
    80006f28:	20f76863          	bltu	a4,a5,80007138 <__printf+0x2e0>
    80006f2c:	42a78863          	beq	a5,a0,8000735c <__printf+0x504>
    80006f30:	06400713          	li	a4,100
    80006f34:	40e79663          	bne	a5,a4,80007340 <__printf+0x4e8>
    80006f38:	f7843783          	ld	a5,-136(s0)
    80006f3c:	0007a603          	lw	a2,0(a5)
    80006f40:	00878793          	addi	a5,a5,8
    80006f44:	f6f43c23          	sd	a5,-136(s0)
    80006f48:	42064a63          	bltz	a2,8000737c <__printf+0x524>
    80006f4c:	00a00713          	li	a4,10
    80006f50:	02e677bb          	remuw	a5,a2,a4
    80006f54:	00003d97          	auipc	s11,0x3
    80006f58:	83cd8d93          	addi	s11,s11,-1988 # 80009790 <digits>
    80006f5c:	00900593          	li	a1,9
    80006f60:	0006051b          	sext.w	a0,a2
    80006f64:	00000c93          	li	s9,0
    80006f68:	02079793          	slli	a5,a5,0x20
    80006f6c:	0207d793          	srli	a5,a5,0x20
    80006f70:	00fd87b3          	add	a5,s11,a5
    80006f74:	0007c783          	lbu	a5,0(a5)
    80006f78:	02e656bb          	divuw	a3,a2,a4
    80006f7c:	f8f40023          	sb	a5,-128(s0)
    80006f80:	14c5d863          	bge	a1,a2,800070d0 <__printf+0x278>
    80006f84:	06300593          	li	a1,99
    80006f88:	00100c93          	li	s9,1
    80006f8c:	02e6f7bb          	remuw	a5,a3,a4
    80006f90:	02079793          	slli	a5,a5,0x20
    80006f94:	0207d793          	srli	a5,a5,0x20
    80006f98:	00fd87b3          	add	a5,s11,a5
    80006f9c:	0007c783          	lbu	a5,0(a5)
    80006fa0:	02e6d73b          	divuw	a4,a3,a4
    80006fa4:	f8f400a3          	sb	a5,-127(s0)
    80006fa8:	12a5f463          	bgeu	a1,a0,800070d0 <__printf+0x278>
    80006fac:	00a00693          	li	a3,10
    80006fb0:	00900593          	li	a1,9
    80006fb4:	02d777bb          	remuw	a5,a4,a3
    80006fb8:	02079793          	slli	a5,a5,0x20
    80006fbc:	0207d793          	srli	a5,a5,0x20
    80006fc0:	00fd87b3          	add	a5,s11,a5
    80006fc4:	0007c503          	lbu	a0,0(a5)
    80006fc8:	02d757bb          	divuw	a5,a4,a3
    80006fcc:	f8a40123          	sb	a0,-126(s0)
    80006fd0:	48e5f263          	bgeu	a1,a4,80007454 <__printf+0x5fc>
    80006fd4:	06300513          	li	a0,99
    80006fd8:	02d7f5bb          	remuw	a1,a5,a3
    80006fdc:	02059593          	slli	a1,a1,0x20
    80006fe0:	0205d593          	srli	a1,a1,0x20
    80006fe4:	00bd85b3          	add	a1,s11,a1
    80006fe8:	0005c583          	lbu	a1,0(a1)
    80006fec:	02d7d7bb          	divuw	a5,a5,a3
    80006ff0:	f8b401a3          	sb	a1,-125(s0)
    80006ff4:	48e57263          	bgeu	a0,a4,80007478 <__printf+0x620>
    80006ff8:	3e700513          	li	a0,999
    80006ffc:	02d7f5bb          	remuw	a1,a5,a3
    80007000:	02059593          	slli	a1,a1,0x20
    80007004:	0205d593          	srli	a1,a1,0x20
    80007008:	00bd85b3          	add	a1,s11,a1
    8000700c:	0005c583          	lbu	a1,0(a1)
    80007010:	02d7d7bb          	divuw	a5,a5,a3
    80007014:	f8b40223          	sb	a1,-124(s0)
    80007018:	46e57663          	bgeu	a0,a4,80007484 <__printf+0x62c>
    8000701c:	02d7f5bb          	remuw	a1,a5,a3
    80007020:	02059593          	slli	a1,a1,0x20
    80007024:	0205d593          	srli	a1,a1,0x20
    80007028:	00bd85b3          	add	a1,s11,a1
    8000702c:	0005c583          	lbu	a1,0(a1)
    80007030:	02d7d7bb          	divuw	a5,a5,a3
    80007034:	f8b402a3          	sb	a1,-123(s0)
    80007038:	46ea7863          	bgeu	s4,a4,800074a8 <__printf+0x650>
    8000703c:	02d7f5bb          	remuw	a1,a5,a3
    80007040:	02059593          	slli	a1,a1,0x20
    80007044:	0205d593          	srli	a1,a1,0x20
    80007048:	00bd85b3          	add	a1,s11,a1
    8000704c:	0005c583          	lbu	a1,0(a1)
    80007050:	02d7d7bb          	divuw	a5,a5,a3
    80007054:	f8b40323          	sb	a1,-122(s0)
    80007058:	3eeaf863          	bgeu	s5,a4,80007448 <__printf+0x5f0>
    8000705c:	02d7f5bb          	remuw	a1,a5,a3
    80007060:	02059593          	slli	a1,a1,0x20
    80007064:	0205d593          	srli	a1,a1,0x20
    80007068:	00bd85b3          	add	a1,s11,a1
    8000706c:	0005c583          	lbu	a1,0(a1)
    80007070:	02d7d7bb          	divuw	a5,a5,a3
    80007074:	f8b403a3          	sb	a1,-121(s0)
    80007078:	42eb7e63          	bgeu	s6,a4,800074b4 <__printf+0x65c>
    8000707c:	02d7f5bb          	remuw	a1,a5,a3
    80007080:	02059593          	slli	a1,a1,0x20
    80007084:	0205d593          	srli	a1,a1,0x20
    80007088:	00bd85b3          	add	a1,s11,a1
    8000708c:	0005c583          	lbu	a1,0(a1)
    80007090:	02d7d7bb          	divuw	a5,a5,a3
    80007094:	f8b40423          	sb	a1,-120(s0)
    80007098:	42ebfc63          	bgeu	s7,a4,800074d0 <__printf+0x678>
    8000709c:	02079793          	slli	a5,a5,0x20
    800070a0:	0207d793          	srli	a5,a5,0x20
    800070a4:	00fd8db3          	add	s11,s11,a5
    800070a8:	000dc703          	lbu	a4,0(s11)
    800070ac:	00a00793          	li	a5,10
    800070b0:	00900c93          	li	s9,9
    800070b4:	f8e404a3          	sb	a4,-119(s0)
    800070b8:	00065c63          	bgez	a2,800070d0 <__printf+0x278>
    800070bc:	f9040713          	addi	a4,s0,-112
    800070c0:	00f70733          	add	a4,a4,a5
    800070c4:	02d00693          	li	a3,45
    800070c8:	fed70823          	sb	a3,-16(a4)
    800070cc:	00078c93          	mv	s9,a5
    800070d0:	f8040793          	addi	a5,s0,-128
    800070d4:	01978cb3          	add	s9,a5,s9
    800070d8:	f7f40d13          	addi	s10,s0,-129
    800070dc:	000cc503          	lbu	a0,0(s9)
    800070e0:	fffc8c93          	addi	s9,s9,-1
    800070e4:	00000097          	auipc	ra,0x0
    800070e8:	b90080e7          	jalr	-1136(ra) # 80006c74 <consputc>
    800070ec:	ffac98e3          	bne	s9,s10,800070dc <__printf+0x284>
    800070f0:	00094503          	lbu	a0,0(s2)
    800070f4:	e00514e3          	bnez	a0,80006efc <__printf+0xa4>
    800070f8:	1a0c1663          	bnez	s8,800072a4 <__printf+0x44c>
    800070fc:	08813083          	ld	ra,136(sp)
    80007100:	08013403          	ld	s0,128(sp)
    80007104:	07813483          	ld	s1,120(sp)
    80007108:	07013903          	ld	s2,112(sp)
    8000710c:	06813983          	ld	s3,104(sp)
    80007110:	06013a03          	ld	s4,96(sp)
    80007114:	05813a83          	ld	s5,88(sp)
    80007118:	05013b03          	ld	s6,80(sp)
    8000711c:	04813b83          	ld	s7,72(sp)
    80007120:	04013c03          	ld	s8,64(sp)
    80007124:	03813c83          	ld	s9,56(sp)
    80007128:	03013d03          	ld	s10,48(sp)
    8000712c:	02813d83          	ld	s11,40(sp)
    80007130:	0d010113          	addi	sp,sp,208
    80007134:	00008067          	ret
    80007138:	07300713          	li	a4,115
    8000713c:	1ce78a63          	beq	a5,a4,80007310 <__printf+0x4b8>
    80007140:	07800713          	li	a4,120
    80007144:	1ee79e63          	bne	a5,a4,80007340 <__printf+0x4e8>
    80007148:	f7843783          	ld	a5,-136(s0)
    8000714c:	0007a703          	lw	a4,0(a5)
    80007150:	00878793          	addi	a5,a5,8
    80007154:	f6f43c23          	sd	a5,-136(s0)
    80007158:	28074263          	bltz	a4,800073dc <__printf+0x584>
    8000715c:	00002d97          	auipc	s11,0x2
    80007160:	634d8d93          	addi	s11,s11,1588 # 80009790 <digits>
    80007164:	00f77793          	andi	a5,a4,15
    80007168:	00fd87b3          	add	a5,s11,a5
    8000716c:	0007c683          	lbu	a3,0(a5)
    80007170:	00f00613          	li	a2,15
    80007174:	0007079b          	sext.w	a5,a4
    80007178:	f8d40023          	sb	a3,-128(s0)
    8000717c:	0047559b          	srliw	a1,a4,0x4
    80007180:	0047569b          	srliw	a3,a4,0x4
    80007184:	00000c93          	li	s9,0
    80007188:	0ee65063          	bge	a2,a4,80007268 <__printf+0x410>
    8000718c:	00f6f693          	andi	a3,a3,15
    80007190:	00dd86b3          	add	a3,s11,a3
    80007194:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007198:	0087d79b          	srliw	a5,a5,0x8
    8000719c:	00100c93          	li	s9,1
    800071a0:	f8d400a3          	sb	a3,-127(s0)
    800071a4:	0cb67263          	bgeu	a2,a1,80007268 <__printf+0x410>
    800071a8:	00f7f693          	andi	a3,a5,15
    800071ac:	00dd86b3          	add	a3,s11,a3
    800071b0:	0006c583          	lbu	a1,0(a3)
    800071b4:	00f00613          	li	a2,15
    800071b8:	0047d69b          	srliw	a3,a5,0x4
    800071bc:	f8b40123          	sb	a1,-126(s0)
    800071c0:	0047d593          	srli	a1,a5,0x4
    800071c4:	28f67e63          	bgeu	a2,a5,80007460 <__printf+0x608>
    800071c8:	00f6f693          	andi	a3,a3,15
    800071cc:	00dd86b3          	add	a3,s11,a3
    800071d0:	0006c503          	lbu	a0,0(a3)
    800071d4:	0087d813          	srli	a6,a5,0x8
    800071d8:	0087d69b          	srliw	a3,a5,0x8
    800071dc:	f8a401a3          	sb	a0,-125(s0)
    800071e0:	28b67663          	bgeu	a2,a1,8000746c <__printf+0x614>
    800071e4:	00f6f693          	andi	a3,a3,15
    800071e8:	00dd86b3          	add	a3,s11,a3
    800071ec:	0006c583          	lbu	a1,0(a3)
    800071f0:	00c7d513          	srli	a0,a5,0xc
    800071f4:	00c7d69b          	srliw	a3,a5,0xc
    800071f8:	f8b40223          	sb	a1,-124(s0)
    800071fc:	29067a63          	bgeu	a2,a6,80007490 <__printf+0x638>
    80007200:	00f6f693          	andi	a3,a3,15
    80007204:	00dd86b3          	add	a3,s11,a3
    80007208:	0006c583          	lbu	a1,0(a3)
    8000720c:	0107d813          	srli	a6,a5,0x10
    80007210:	0107d69b          	srliw	a3,a5,0x10
    80007214:	f8b402a3          	sb	a1,-123(s0)
    80007218:	28a67263          	bgeu	a2,a0,8000749c <__printf+0x644>
    8000721c:	00f6f693          	andi	a3,a3,15
    80007220:	00dd86b3          	add	a3,s11,a3
    80007224:	0006c683          	lbu	a3,0(a3)
    80007228:	0147d79b          	srliw	a5,a5,0x14
    8000722c:	f8d40323          	sb	a3,-122(s0)
    80007230:	21067663          	bgeu	a2,a6,8000743c <__printf+0x5e4>
    80007234:	02079793          	slli	a5,a5,0x20
    80007238:	0207d793          	srli	a5,a5,0x20
    8000723c:	00fd8db3          	add	s11,s11,a5
    80007240:	000dc683          	lbu	a3,0(s11)
    80007244:	00800793          	li	a5,8
    80007248:	00700c93          	li	s9,7
    8000724c:	f8d403a3          	sb	a3,-121(s0)
    80007250:	00075c63          	bgez	a4,80007268 <__printf+0x410>
    80007254:	f9040713          	addi	a4,s0,-112
    80007258:	00f70733          	add	a4,a4,a5
    8000725c:	02d00693          	li	a3,45
    80007260:	fed70823          	sb	a3,-16(a4)
    80007264:	00078c93          	mv	s9,a5
    80007268:	f8040793          	addi	a5,s0,-128
    8000726c:	01978cb3          	add	s9,a5,s9
    80007270:	f7f40d13          	addi	s10,s0,-129
    80007274:	000cc503          	lbu	a0,0(s9)
    80007278:	fffc8c93          	addi	s9,s9,-1
    8000727c:	00000097          	auipc	ra,0x0
    80007280:	9f8080e7          	jalr	-1544(ra) # 80006c74 <consputc>
    80007284:	ff9d18e3          	bne	s10,s9,80007274 <__printf+0x41c>
    80007288:	0100006f          	j	80007298 <__printf+0x440>
    8000728c:	00000097          	auipc	ra,0x0
    80007290:	9e8080e7          	jalr	-1560(ra) # 80006c74 <consputc>
    80007294:	000c8493          	mv	s1,s9
    80007298:	00094503          	lbu	a0,0(s2)
    8000729c:	c60510e3          	bnez	a0,80006efc <__printf+0xa4>
    800072a0:	e40c0ee3          	beqz	s8,800070fc <__printf+0x2a4>
    800072a4:	00005517          	auipc	a0,0x5
    800072a8:	7dc50513          	addi	a0,a0,2012 # 8000ca80 <pr>
    800072ac:	00001097          	auipc	ra,0x1
    800072b0:	94c080e7          	jalr	-1716(ra) # 80007bf8 <release>
    800072b4:	e49ff06f          	j	800070fc <__printf+0x2a4>
    800072b8:	f7843783          	ld	a5,-136(s0)
    800072bc:	03000513          	li	a0,48
    800072c0:	01000d13          	li	s10,16
    800072c4:	00878713          	addi	a4,a5,8
    800072c8:	0007bc83          	ld	s9,0(a5)
    800072cc:	f6e43c23          	sd	a4,-136(s0)
    800072d0:	00000097          	auipc	ra,0x0
    800072d4:	9a4080e7          	jalr	-1628(ra) # 80006c74 <consputc>
    800072d8:	07800513          	li	a0,120
    800072dc:	00000097          	auipc	ra,0x0
    800072e0:	998080e7          	jalr	-1640(ra) # 80006c74 <consputc>
    800072e4:	00002d97          	auipc	s11,0x2
    800072e8:	4acd8d93          	addi	s11,s11,1196 # 80009790 <digits>
    800072ec:	03ccd793          	srli	a5,s9,0x3c
    800072f0:	00fd87b3          	add	a5,s11,a5
    800072f4:	0007c503          	lbu	a0,0(a5)
    800072f8:	fffd0d1b          	addiw	s10,s10,-1
    800072fc:	004c9c93          	slli	s9,s9,0x4
    80007300:	00000097          	auipc	ra,0x0
    80007304:	974080e7          	jalr	-1676(ra) # 80006c74 <consputc>
    80007308:	fe0d12e3          	bnez	s10,800072ec <__printf+0x494>
    8000730c:	f8dff06f          	j	80007298 <__printf+0x440>
    80007310:	f7843783          	ld	a5,-136(s0)
    80007314:	0007bc83          	ld	s9,0(a5)
    80007318:	00878793          	addi	a5,a5,8
    8000731c:	f6f43c23          	sd	a5,-136(s0)
    80007320:	000c9a63          	bnez	s9,80007334 <__printf+0x4dc>
    80007324:	1080006f          	j	8000742c <__printf+0x5d4>
    80007328:	001c8c93          	addi	s9,s9,1
    8000732c:	00000097          	auipc	ra,0x0
    80007330:	948080e7          	jalr	-1720(ra) # 80006c74 <consputc>
    80007334:	000cc503          	lbu	a0,0(s9)
    80007338:	fe0518e3          	bnez	a0,80007328 <__printf+0x4d0>
    8000733c:	f5dff06f          	j	80007298 <__printf+0x440>
    80007340:	02500513          	li	a0,37
    80007344:	00000097          	auipc	ra,0x0
    80007348:	930080e7          	jalr	-1744(ra) # 80006c74 <consputc>
    8000734c:	000c8513          	mv	a0,s9
    80007350:	00000097          	auipc	ra,0x0
    80007354:	924080e7          	jalr	-1756(ra) # 80006c74 <consputc>
    80007358:	f41ff06f          	j	80007298 <__printf+0x440>
    8000735c:	02500513          	li	a0,37
    80007360:	00000097          	auipc	ra,0x0
    80007364:	914080e7          	jalr	-1772(ra) # 80006c74 <consputc>
    80007368:	f31ff06f          	j	80007298 <__printf+0x440>
    8000736c:	00030513          	mv	a0,t1
    80007370:	00000097          	auipc	ra,0x0
    80007374:	7bc080e7          	jalr	1980(ra) # 80007b2c <acquire>
    80007378:	b4dff06f          	j	80006ec4 <__printf+0x6c>
    8000737c:	40c0053b          	negw	a0,a2
    80007380:	00a00713          	li	a4,10
    80007384:	02e576bb          	remuw	a3,a0,a4
    80007388:	00002d97          	auipc	s11,0x2
    8000738c:	408d8d93          	addi	s11,s11,1032 # 80009790 <digits>
    80007390:	ff700593          	li	a1,-9
    80007394:	02069693          	slli	a3,a3,0x20
    80007398:	0206d693          	srli	a3,a3,0x20
    8000739c:	00dd86b3          	add	a3,s11,a3
    800073a0:	0006c683          	lbu	a3,0(a3)
    800073a4:	02e557bb          	divuw	a5,a0,a4
    800073a8:	f8d40023          	sb	a3,-128(s0)
    800073ac:	10b65e63          	bge	a2,a1,800074c8 <__printf+0x670>
    800073b0:	06300593          	li	a1,99
    800073b4:	02e7f6bb          	remuw	a3,a5,a4
    800073b8:	02069693          	slli	a3,a3,0x20
    800073bc:	0206d693          	srli	a3,a3,0x20
    800073c0:	00dd86b3          	add	a3,s11,a3
    800073c4:	0006c683          	lbu	a3,0(a3)
    800073c8:	02e7d73b          	divuw	a4,a5,a4
    800073cc:	00200793          	li	a5,2
    800073d0:	f8d400a3          	sb	a3,-127(s0)
    800073d4:	bca5ece3          	bltu	a1,a0,80006fac <__printf+0x154>
    800073d8:	ce5ff06f          	j	800070bc <__printf+0x264>
    800073dc:	40e007bb          	negw	a5,a4
    800073e0:	00002d97          	auipc	s11,0x2
    800073e4:	3b0d8d93          	addi	s11,s11,944 # 80009790 <digits>
    800073e8:	00f7f693          	andi	a3,a5,15
    800073ec:	00dd86b3          	add	a3,s11,a3
    800073f0:	0006c583          	lbu	a1,0(a3)
    800073f4:	ff100613          	li	a2,-15
    800073f8:	0047d69b          	srliw	a3,a5,0x4
    800073fc:	f8b40023          	sb	a1,-128(s0)
    80007400:	0047d59b          	srliw	a1,a5,0x4
    80007404:	0ac75e63          	bge	a4,a2,800074c0 <__printf+0x668>
    80007408:	00f6f693          	andi	a3,a3,15
    8000740c:	00dd86b3          	add	a3,s11,a3
    80007410:	0006c603          	lbu	a2,0(a3)
    80007414:	00f00693          	li	a3,15
    80007418:	0087d79b          	srliw	a5,a5,0x8
    8000741c:	f8c400a3          	sb	a2,-127(s0)
    80007420:	d8b6e4e3          	bltu	a3,a1,800071a8 <__printf+0x350>
    80007424:	00200793          	li	a5,2
    80007428:	e2dff06f          	j	80007254 <__printf+0x3fc>
    8000742c:	00002c97          	auipc	s9,0x2
    80007430:	344c8c93          	addi	s9,s9,836 # 80009770 <CONSOLE_STATUS+0x760>
    80007434:	02800513          	li	a0,40
    80007438:	ef1ff06f          	j	80007328 <__printf+0x4d0>
    8000743c:	00700793          	li	a5,7
    80007440:	00600c93          	li	s9,6
    80007444:	e0dff06f          	j	80007250 <__printf+0x3f8>
    80007448:	00700793          	li	a5,7
    8000744c:	00600c93          	li	s9,6
    80007450:	c69ff06f          	j	800070b8 <__printf+0x260>
    80007454:	00300793          	li	a5,3
    80007458:	00200c93          	li	s9,2
    8000745c:	c5dff06f          	j	800070b8 <__printf+0x260>
    80007460:	00300793          	li	a5,3
    80007464:	00200c93          	li	s9,2
    80007468:	de9ff06f          	j	80007250 <__printf+0x3f8>
    8000746c:	00400793          	li	a5,4
    80007470:	00300c93          	li	s9,3
    80007474:	dddff06f          	j	80007250 <__printf+0x3f8>
    80007478:	00400793          	li	a5,4
    8000747c:	00300c93          	li	s9,3
    80007480:	c39ff06f          	j	800070b8 <__printf+0x260>
    80007484:	00500793          	li	a5,5
    80007488:	00400c93          	li	s9,4
    8000748c:	c2dff06f          	j	800070b8 <__printf+0x260>
    80007490:	00500793          	li	a5,5
    80007494:	00400c93          	li	s9,4
    80007498:	db9ff06f          	j	80007250 <__printf+0x3f8>
    8000749c:	00600793          	li	a5,6
    800074a0:	00500c93          	li	s9,5
    800074a4:	dadff06f          	j	80007250 <__printf+0x3f8>
    800074a8:	00600793          	li	a5,6
    800074ac:	00500c93          	li	s9,5
    800074b0:	c09ff06f          	j	800070b8 <__printf+0x260>
    800074b4:	00800793          	li	a5,8
    800074b8:	00700c93          	li	s9,7
    800074bc:	bfdff06f          	j	800070b8 <__printf+0x260>
    800074c0:	00100793          	li	a5,1
    800074c4:	d91ff06f          	j	80007254 <__printf+0x3fc>
    800074c8:	00100793          	li	a5,1
    800074cc:	bf1ff06f          	j	800070bc <__printf+0x264>
    800074d0:	00900793          	li	a5,9
    800074d4:	00800c93          	li	s9,8
    800074d8:	be1ff06f          	j	800070b8 <__printf+0x260>
    800074dc:	00002517          	auipc	a0,0x2
    800074e0:	29c50513          	addi	a0,a0,668 # 80009778 <CONSOLE_STATUS+0x768>
    800074e4:	00000097          	auipc	ra,0x0
    800074e8:	918080e7          	jalr	-1768(ra) # 80006dfc <panic>

00000000800074ec <printfinit>:
    800074ec:	fe010113          	addi	sp,sp,-32
    800074f0:	00813823          	sd	s0,16(sp)
    800074f4:	00913423          	sd	s1,8(sp)
    800074f8:	00113c23          	sd	ra,24(sp)
    800074fc:	02010413          	addi	s0,sp,32
    80007500:	00005497          	auipc	s1,0x5
    80007504:	58048493          	addi	s1,s1,1408 # 8000ca80 <pr>
    80007508:	00048513          	mv	a0,s1
    8000750c:	00002597          	auipc	a1,0x2
    80007510:	27c58593          	addi	a1,a1,636 # 80009788 <CONSOLE_STATUS+0x778>
    80007514:	00000097          	auipc	ra,0x0
    80007518:	5f4080e7          	jalr	1524(ra) # 80007b08 <initlock>
    8000751c:	01813083          	ld	ra,24(sp)
    80007520:	01013403          	ld	s0,16(sp)
    80007524:	0004ac23          	sw	zero,24(s1)
    80007528:	00813483          	ld	s1,8(sp)
    8000752c:	02010113          	addi	sp,sp,32
    80007530:	00008067          	ret

0000000080007534 <uartinit>:
    80007534:	ff010113          	addi	sp,sp,-16
    80007538:	00813423          	sd	s0,8(sp)
    8000753c:	01010413          	addi	s0,sp,16
    80007540:	100007b7          	lui	a5,0x10000
    80007544:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007548:	f8000713          	li	a4,-128
    8000754c:	00e781a3          	sb	a4,3(a5)
    80007550:	00300713          	li	a4,3
    80007554:	00e78023          	sb	a4,0(a5)
    80007558:	000780a3          	sb	zero,1(a5)
    8000755c:	00e781a3          	sb	a4,3(a5)
    80007560:	00700693          	li	a3,7
    80007564:	00d78123          	sb	a3,2(a5)
    80007568:	00e780a3          	sb	a4,1(a5)
    8000756c:	00813403          	ld	s0,8(sp)
    80007570:	01010113          	addi	sp,sp,16
    80007574:	00008067          	ret

0000000080007578 <uartputc>:
    80007578:	00004797          	auipc	a5,0x4
    8000757c:	2407a783          	lw	a5,576(a5) # 8000b7b8 <panicked>
    80007580:	00078463          	beqz	a5,80007588 <uartputc+0x10>
    80007584:	0000006f          	j	80007584 <uartputc+0xc>
    80007588:	fd010113          	addi	sp,sp,-48
    8000758c:	02813023          	sd	s0,32(sp)
    80007590:	00913c23          	sd	s1,24(sp)
    80007594:	01213823          	sd	s2,16(sp)
    80007598:	01313423          	sd	s3,8(sp)
    8000759c:	02113423          	sd	ra,40(sp)
    800075a0:	03010413          	addi	s0,sp,48
    800075a4:	00004917          	auipc	s2,0x4
    800075a8:	21c90913          	addi	s2,s2,540 # 8000b7c0 <uart_tx_r>
    800075ac:	00093783          	ld	a5,0(s2)
    800075b0:	00004497          	auipc	s1,0x4
    800075b4:	21848493          	addi	s1,s1,536 # 8000b7c8 <uart_tx_w>
    800075b8:	0004b703          	ld	a4,0(s1)
    800075bc:	02078693          	addi	a3,a5,32
    800075c0:	00050993          	mv	s3,a0
    800075c4:	02e69c63          	bne	a3,a4,800075fc <uartputc+0x84>
    800075c8:	00001097          	auipc	ra,0x1
    800075cc:	834080e7          	jalr	-1996(ra) # 80007dfc <push_on>
    800075d0:	00093783          	ld	a5,0(s2)
    800075d4:	0004b703          	ld	a4,0(s1)
    800075d8:	02078793          	addi	a5,a5,32
    800075dc:	00e79463          	bne	a5,a4,800075e4 <uartputc+0x6c>
    800075e0:	0000006f          	j	800075e0 <uartputc+0x68>
    800075e4:	00001097          	auipc	ra,0x1
    800075e8:	88c080e7          	jalr	-1908(ra) # 80007e70 <pop_on>
    800075ec:	00093783          	ld	a5,0(s2)
    800075f0:	0004b703          	ld	a4,0(s1)
    800075f4:	02078693          	addi	a3,a5,32
    800075f8:	fce688e3          	beq	a3,a4,800075c8 <uartputc+0x50>
    800075fc:	01f77693          	andi	a3,a4,31
    80007600:	00005597          	auipc	a1,0x5
    80007604:	4a058593          	addi	a1,a1,1184 # 8000caa0 <uart_tx_buf>
    80007608:	00d586b3          	add	a3,a1,a3
    8000760c:	00170713          	addi	a4,a4,1
    80007610:	01368023          	sb	s3,0(a3)
    80007614:	00e4b023          	sd	a4,0(s1)
    80007618:	10000637          	lui	a2,0x10000
    8000761c:	02f71063          	bne	a4,a5,8000763c <uartputc+0xc4>
    80007620:	0340006f          	j	80007654 <uartputc+0xdc>
    80007624:	00074703          	lbu	a4,0(a4)
    80007628:	00f93023          	sd	a5,0(s2)
    8000762c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007630:	00093783          	ld	a5,0(s2)
    80007634:	0004b703          	ld	a4,0(s1)
    80007638:	00f70e63          	beq	a4,a5,80007654 <uartputc+0xdc>
    8000763c:	00564683          	lbu	a3,5(a2)
    80007640:	01f7f713          	andi	a4,a5,31
    80007644:	00e58733          	add	a4,a1,a4
    80007648:	0206f693          	andi	a3,a3,32
    8000764c:	00178793          	addi	a5,a5,1
    80007650:	fc069ae3          	bnez	a3,80007624 <uartputc+0xac>
    80007654:	02813083          	ld	ra,40(sp)
    80007658:	02013403          	ld	s0,32(sp)
    8000765c:	01813483          	ld	s1,24(sp)
    80007660:	01013903          	ld	s2,16(sp)
    80007664:	00813983          	ld	s3,8(sp)
    80007668:	03010113          	addi	sp,sp,48
    8000766c:	00008067          	ret

0000000080007670 <uartputc_sync>:
    80007670:	ff010113          	addi	sp,sp,-16
    80007674:	00813423          	sd	s0,8(sp)
    80007678:	01010413          	addi	s0,sp,16
    8000767c:	00004717          	auipc	a4,0x4
    80007680:	13c72703          	lw	a4,316(a4) # 8000b7b8 <panicked>
    80007684:	02071663          	bnez	a4,800076b0 <uartputc_sync+0x40>
    80007688:	00050793          	mv	a5,a0
    8000768c:	100006b7          	lui	a3,0x10000
    80007690:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007694:	02077713          	andi	a4,a4,32
    80007698:	fe070ce3          	beqz	a4,80007690 <uartputc_sync+0x20>
    8000769c:	0ff7f793          	andi	a5,a5,255
    800076a0:	00f68023          	sb	a5,0(a3)
    800076a4:	00813403          	ld	s0,8(sp)
    800076a8:	01010113          	addi	sp,sp,16
    800076ac:	00008067          	ret
    800076b0:	0000006f          	j	800076b0 <uartputc_sync+0x40>

00000000800076b4 <uartstart>:
    800076b4:	ff010113          	addi	sp,sp,-16
    800076b8:	00813423          	sd	s0,8(sp)
    800076bc:	01010413          	addi	s0,sp,16
    800076c0:	00004617          	auipc	a2,0x4
    800076c4:	10060613          	addi	a2,a2,256 # 8000b7c0 <uart_tx_r>
    800076c8:	00004517          	auipc	a0,0x4
    800076cc:	10050513          	addi	a0,a0,256 # 8000b7c8 <uart_tx_w>
    800076d0:	00063783          	ld	a5,0(a2)
    800076d4:	00053703          	ld	a4,0(a0)
    800076d8:	04f70263          	beq	a4,a5,8000771c <uartstart+0x68>
    800076dc:	100005b7          	lui	a1,0x10000
    800076e0:	00005817          	auipc	a6,0x5
    800076e4:	3c080813          	addi	a6,a6,960 # 8000caa0 <uart_tx_buf>
    800076e8:	01c0006f          	j	80007704 <uartstart+0x50>
    800076ec:	0006c703          	lbu	a4,0(a3)
    800076f0:	00f63023          	sd	a5,0(a2)
    800076f4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800076f8:	00063783          	ld	a5,0(a2)
    800076fc:	00053703          	ld	a4,0(a0)
    80007700:	00f70e63          	beq	a4,a5,8000771c <uartstart+0x68>
    80007704:	01f7f713          	andi	a4,a5,31
    80007708:	00e806b3          	add	a3,a6,a4
    8000770c:	0055c703          	lbu	a4,5(a1)
    80007710:	00178793          	addi	a5,a5,1
    80007714:	02077713          	andi	a4,a4,32
    80007718:	fc071ae3          	bnez	a4,800076ec <uartstart+0x38>
    8000771c:	00813403          	ld	s0,8(sp)
    80007720:	01010113          	addi	sp,sp,16
    80007724:	00008067          	ret

0000000080007728 <uartgetc>:
    80007728:	ff010113          	addi	sp,sp,-16
    8000772c:	00813423          	sd	s0,8(sp)
    80007730:	01010413          	addi	s0,sp,16
    80007734:	10000737          	lui	a4,0x10000
    80007738:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000773c:	0017f793          	andi	a5,a5,1
    80007740:	00078c63          	beqz	a5,80007758 <uartgetc+0x30>
    80007744:	00074503          	lbu	a0,0(a4)
    80007748:	0ff57513          	andi	a0,a0,255
    8000774c:	00813403          	ld	s0,8(sp)
    80007750:	01010113          	addi	sp,sp,16
    80007754:	00008067          	ret
    80007758:	fff00513          	li	a0,-1
    8000775c:	ff1ff06f          	j	8000774c <uartgetc+0x24>

0000000080007760 <uartintr>:
    80007760:	100007b7          	lui	a5,0x10000
    80007764:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007768:	0017f793          	andi	a5,a5,1
    8000776c:	0a078463          	beqz	a5,80007814 <uartintr+0xb4>
    80007770:	fe010113          	addi	sp,sp,-32
    80007774:	00813823          	sd	s0,16(sp)
    80007778:	00913423          	sd	s1,8(sp)
    8000777c:	00113c23          	sd	ra,24(sp)
    80007780:	02010413          	addi	s0,sp,32
    80007784:	100004b7          	lui	s1,0x10000
    80007788:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000778c:	0ff57513          	andi	a0,a0,255
    80007790:	fffff097          	auipc	ra,0xfffff
    80007794:	534080e7          	jalr	1332(ra) # 80006cc4 <consoleintr>
    80007798:	0054c783          	lbu	a5,5(s1)
    8000779c:	0017f793          	andi	a5,a5,1
    800077a0:	fe0794e3          	bnez	a5,80007788 <uartintr+0x28>
    800077a4:	00004617          	auipc	a2,0x4
    800077a8:	01c60613          	addi	a2,a2,28 # 8000b7c0 <uart_tx_r>
    800077ac:	00004517          	auipc	a0,0x4
    800077b0:	01c50513          	addi	a0,a0,28 # 8000b7c8 <uart_tx_w>
    800077b4:	00063783          	ld	a5,0(a2)
    800077b8:	00053703          	ld	a4,0(a0)
    800077bc:	04f70263          	beq	a4,a5,80007800 <uartintr+0xa0>
    800077c0:	100005b7          	lui	a1,0x10000
    800077c4:	00005817          	auipc	a6,0x5
    800077c8:	2dc80813          	addi	a6,a6,732 # 8000caa0 <uart_tx_buf>
    800077cc:	01c0006f          	j	800077e8 <uartintr+0x88>
    800077d0:	0006c703          	lbu	a4,0(a3)
    800077d4:	00f63023          	sd	a5,0(a2)
    800077d8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800077dc:	00063783          	ld	a5,0(a2)
    800077e0:	00053703          	ld	a4,0(a0)
    800077e4:	00f70e63          	beq	a4,a5,80007800 <uartintr+0xa0>
    800077e8:	01f7f713          	andi	a4,a5,31
    800077ec:	00e806b3          	add	a3,a6,a4
    800077f0:	0055c703          	lbu	a4,5(a1)
    800077f4:	00178793          	addi	a5,a5,1
    800077f8:	02077713          	andi	a4,a4,32
    800077fc:	fc071ae3          	bnez	a4,800077d0 <uartintr+0x70>
    80007800:	01813083          	ld	ra,24(sp)
    80007804:	01013403          	ld	s0,16(sp)
    80007808:	00813483          	ld	s1,8(sp)
    8000780c:	02010113          	addi	sp,sp,32
    80007810:	00008067          	ret
    80007814:	00004617          	auipc	a2,0x4
    80007818:	fac60613          	addi	a2,a2,-84 # 8000b7c0 <uart_tx_r>
    8000781c:	00004517          	auipc	a0,0x4
    80007820:	fac50513          	addi	a0,a0,-84 # 8000b7c8 <uart_tx_w>
    80007824:	00063783          	ld	a5,0(a2)
    80007828:	00053703          	ld	a4,0(a0)
    8000782c:	04f70263          	beq	a4,a5,80007870 <uartintr+0x110>
    80007830:	100005b7          	lui	a1,0x10000
    80007834:	00005817          	auipc	a6,0x5
    80007838:	26c80813          	addi	a6,a6,620 # 8000caa0 <uart_tx_buf>
    8000783c:	01c0006f          	j	80007858 <uartintr+0xf8>
    80007840:	0006c703          	lbu	a4,0(a3)
    80007844:	00f63023          	sd	a5,0(a2)
    80007848:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000784c:	00063783          	ld	a5,0(a2)
    80007850:	00053703          	ld	a4,0(a0)
    80007854:	02f70063          	beq	a4,a5,80007874 <uartintr+0x114>
    80007858:	01f7f713          	andi	a4,a5,31
    8000785c:	00e806b3          	add	a3,a6,a4
    80007860:	0055c703          	lbu	a4,5(a1)
    80007864:	00178793          	addi	a5,a5,1
    80007868:	02077713          	andi	a4,a4,32
    8000786c:	fc071ae3          	bnez	a4,80007840 <uartintr+0xe0>
    80007870:	00008067          	ret
    80007874:	00008067          	ret

0000000080007878 <kinit>:
    80007878:	fc010113          	addi	sp,sp,-64
    8000787c:	02913423          	sd	s1,40(sp)
    80007880:	fffff7b7          	lui	a5,0xfffff
    80007884:	00006497          	auipc	s1,0x6
    80007888:	23b48493          	addi	s1,s1,571 # 8000dabf <end+0xfff>
    8000788c:	02813823          	sd	s0,48(sp)
    80007890:	01313c23          	sd	s3,24(sp)
    80007894:	00f4f4b3          	and	s1,s1,a5
    80007898:	02113c23          	sd	ra,56(sp)
    8000789c:	03213023          	sd	s2,32(sp)
    800078a0:	01413823          	sd	s4,16(sp)
    800078a4:	01513423          	sd	s5,8(sp)
    800078a8:	04010413          	addi	s0,sp,64
    800078ac:	000017b7          	lui	a5,0x1
    800078b0:	01100993          	li	s3,17
    800078b4:	00f487b3          	add	a5,s1,a5
    800078b8:	01b99993          	slli	s3,s3,0x1b
    800078bc:	06f9e063          	bltu	s3,a5,8000791c <kinit+0xa4>
    800078c0:	00005a97          	auipc	s5,0x5
    800078c4:	200a8a93          	addi	s5,s5,512 # 8000cac0 <end>
    800078c8:	0754ec63          	bltu	s1,s5,80007940 <kinit+0xc8>
    800078cc:	0734fa63          	bgeu	s1,s3,80007940 <kinit+0xc8>
    800078d0:	00088a37          	lui	s4,0x88
    800078d4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800078d8:	00004917          	auipc	s2,0x4
    800078dc:	ef890913          	addi	s2,s2,-264 # 8000b7d0 <kmem>
    800078e0:	00ca1a13          	slli	s4,s4,0xc
    800078e4:	0140006f          	j	800078f8 <kinit+0x80>
    800078e8:	000017b7          	lui	a5,0x1
    800078ec:	00f484b3          	add	s1,s1,a5
    800078f0:	0554e863          	bltu	s1,s5,80007940 <kinit+0xc8>
    800078f4:	0534f663          	bgeu	s1,s3,80007940 <kinit+0xc8>
    800078f8:	00001637          	lui	a2,0x1
    800078fc:	00100593          	li	a1,1
    80007900:	00048513          	mv	a0,s1
    80007904:	00000097          	auipc	ra,0x0
    80007908:	5e4080e7          	jalr	1508(ra) # 80007ee8 <__memset>
    8000790c:	00093783          	ld	a5,0(s2)
    80007910:	00f4b023          	sd	a5,0(s1)
    80007914:	00993023          	sd	s1,0(s2)
    80007918:	fd4498e3          	bne	s1,s4,800078e8 <kinit+0x70>
    8000791c:	03813083          	ld	ra,56(sp)
    80007920:	03013403          	ld	s0,48(sp)
    80007924:	02813483          	ld	s1,40(sp)
    80007928:	02013903          	ld	s2,32(sp)
    8000792c:	01813983          	ld	s3,24(sp)
    80007930:	01013a03          	ld	s4,16(sp)
    80007934:	00813a83          	ld	s5,8(sp)
    80007938:	04010113          	addi	sp,sp,64
    8000793c:	00008067          	ret
    80007940:	00002517          	auipc	a0,0x2
    80007944:	e6850513          	addi	a0,a0,-408 # 800097a8 <digits+0x18>
    80007948:	fffff097          	auipc	ra,0xfffff
    8000794c:	4b4080e7          	jalr	1204(ra) # 80006dfc <panic>

0000000080007950 <freerange>:
    80007950:	fc010113          	addi	sp,sp,-64
    80007954:	000017b7          	lui	a5,0x1
    80007958:	02913423          	sd	s1,40(sp)
    8000795c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007960:	009504b3          	add	s1,a0,s1
    80007964:	fffff537          	lui	a0,0xfffff
    80007968:	02813823          	sd	s0,48(sp)
    8000796c:	02113c23          	sd	ra,56(sp)
    80007970:	03213023          	sd	s2,32(sp)
    80007974:	01313c23          	sd	s3,24(sp)
    80007978:	01413823          	sd	s4,16(sp)
    8000797c:	01513423          	sd	s5,8(sp)
    80007980:	01613023          	sd	s6,0(sp)
    80007984:	04010413          	addi	s0,sp,64
    80007988:	00a4f4b3          	and	s1,s1,a0
    8000798c:	00f487b3          	add	a5,s1,a5
    80007990:	06f5e463          	bltu	a1,a5,800079f8 <freerange+0xa8>
    80007994:	00005a97          	auipc	s5,0x5
    80007998:	12ca8a93          	addi	s5,s5,300 # 8000cac0 <end>
    8000799c:	0954e263          	bltu	s1,s5,80007a20 <freerange+0xd0>
    800079a0:	01100993          	li	s3,17
    800079a4:	01b99993          	slli	s3,s3,0x1b
    800079a8:	0734fc63          	bgeu	s1,s3,80007a20 <freerange+0xd0>
    800079ac:	00058a13          	mv	s4,a1
    800079b0:	00004917          	auipc	s2,0x4
    800079b4:	e2090913          	addi	s2,s2,-480 # 8000b7d0 <kmem>
    800079b8:	00002b37          	lui	s6,0x2
    800079bc:	0140006f          	j	800079d0 <freerange+0x80>
    800079c0:	000017b7          	lui	a5,0x1
    800079c4:	00f484b3          	add	s1,s1,a5
    800079c8:	0554ec63          	bltu	s1,s5,80007a20 <freerange+0xd0>
    800079cc:	0534fa63          	bgeu	s1,s3,80007a20 <freerange+0xd0>
    800079d0:	00001637          	lui	a2,0x1
    800079d4:	00100593          	li	a1,1
    800079d8:	00048513          	mv	a0,s1
    800079dc:	00000097          	auipc	ra,0x0
    800079e0:	50c080e7          	jalr	1292(ra) # 80007ee8 <__memset>
    800079e4:	00093703          	ld	a4,0(s2)
    800079e8:	016487b3          	add	a5,s1,s6
    800079ec:	00e4b023          	sd	a4,0(s1)
    800079f0:	00993023          	sd	s1,0(s2)
    800079f4:	fcfa76e3          	bgeu	s4,a5,800079c0 <freerange+0x70>
    800079f8:	03813083          	ld	ra,56(sp)
    800079fc:	03013403          	ld	s0,48(sp)
    80007a00:	02813483          	ld	s1,40(sp)
    80007a04:	02013903          	ld	s2,32(sp)
    80007a08:	01813983          	ld	s3,24(sp)
    80007a0c:	01013a03          	ld	s4,16(sp)
    80007a10:	00813a83          	ld	s5,8(sp)
    80007a14:	00013b03          	ld	s6,0(sp)
    80007a18:	04010113          	addi	sp,sp,64
    80007a1c:	00008067          	ret
    80007a20:	00002517          	auipc	a0,0x2
    80007a24:	d8850513          	addi	a0,a0,-632 # 800097a8 <digits+0x18>
    80007a28:	fffff097          	auipc	ra,0xfffff
    80007a2c:	3d4080e7          	jalr	980(ra) # 80006dfc <panic>

0000000080007a30 <kfree>:
    80007a30:	fe010113          	addi	sp,sp,-32
    80007a34:	00813823          	sd	s0,16(sp)
    80007a38:	00113c23          	sd	ra,24(sp)
    80007a3c:	00913423          	sd	s1,8(sp)
    80007a40:	02010413          	addi	s0,sp,32
    80007a44:	03451793          	slli	a5,a0,0x34
    80007a48:	04079c63          	bnez	a5,80007aa0 <kfree+0x70>
    80007a4c:	00005797          	auipc	a5,0x5
    80007a50:	07478793          	addi	a5,a5,116 # 8000cac0 <end>
    80007a54:	00050493          	mv	s1,a0
    80007a58:	04f56463          	bltu	a0,a5,80007aa0 <kfree+0x70>
    80007a5c:	01100793          	li	a5,17
    80007a60:	01b79793          	slli	a5,a5,0x1b
    80007a64:	02f57e63          	bgeu	a0,a5,80007aa0 <kfree+0x70>
    80007a68:	00001637          	lui	a2,0x1
    80007a6c:	00100593          	li	a1,1
    80007a70:	00000097          	auipc	ra,0x0
    80007a74:	478080e7          	jalr	1144(ra) # 80007ee8 <__memset>
    80007a78:	00004797          	auipc	a5,0x4
    80007a7c:	d5878793          	addi	a5,a5,-680 # 8000b7d0 <kmem>
    80007a80:	0007b703          	ld	a4,0(a5)
    80007a84:	01813083          	ld	ra,24(sp)
    80007a88:	01013403          	ld	s0,16(sp)
    80007a8c:	00e4b023          	sd	a4,0(s1)
    80007a90:	0097b023          	sd	s1,0(a5)
    80007a94:	00813483          	ld	s1,8(sp)
    80007a98:	02010113          	addi	sp,sp,32
    80007a9c:	00008067          	ret
    80007aa0:	00002517          	auipc	a0,0x2
    80007aa4:	d0850513          	addi	a0,a0,-760 # 800097a8 <digits+0x18>
    80007aa8:	fffff097          	auipc	ra,0xfffff
    80007aac:	354080e7          	jalr	852(ra) # 80006dfc <panic>

0000000080007ab0 <kalloc>:
    80007ab0:	fe010113          	addi	sp,sp,-32
    80007ab4:	00813823          	sd	s0,16(sp)
    80007ab8:	00913423          	sd	s1,8(sp)
    80007abc:	00113c23          	sd	ra,24(sp)
    80007ac0:	02010413          	addi	s0,sp,32
    80007ac4:	00004797          	auipc	a5,0x4
    80007ac8:	d0c78793          	addi	a5,a5,-756 # 8000b7d0 <kmem>
    80007acc:	0007b483          	ld	s1,0(a5)
    80007ad0:	02048063          	beqz	s1,80007af0 <kalloc+0x40>
    80007ad4:	0004b703          	ld	a4,0(s1)
    80007ad8:	00001637          	lui	a2,0x1
    80007adc:	00500593          	li	a1,5
    80007ae0:	00048513          	mv	a0,s1
    80007ae4:	00e7b023          	sd	a4,0(a5)
    80007ae8:	00000097          	auipc	ra,0x0
    80007aec:	400080e7          	jalr	1024(ra) # 80007ee8 <__memset>
    80007af0:	01813083          	ld	ra,24(sp)
    80007af4:	01013403          	ld	s0,16(sp)
    80007af8:	00048513          	mv	a0,s1
    80007afc:	00813483          	ld	s1,8(sp)
    80007b00:	02010113          	addi	sp,sp,32
    80007b04:	00008067          	ret

0000000080007b08 <initlock>:
    80007b08:	ff010113          	addi	sp,sp,-16
    80007b0c:	00813423          	sd	s0,8(sp)
    80007b10:	01010413          	addi	s0,sp,16
    80007b14:	00813403          	ld	s0,8(sp)
    80007b18:	00b53423          	sd	a1,8(a0)
    80007b1c:	00052023          	sw	zero,0(a0)
    80007b20:	00053823          	sd	zero,16(a0)
    80007b24:	01010113          	addi	sp,sp,16
    80007b28:	00008067          	ret

0000000080007b2c <acquire>:
    80007b2c:	fe010113          	addi	sp,sp,-32
    80007b30:	00813823          	sd	s0,16(sp)
    80007b34:	00913423          	sd	s1,8(sp)
    80007b38:	00113c23          	sd	ra,24(sp)
    80007b3c:	01213023          	sd	s2,0(sp)
    80007b40:	02010413          	addi	s0,sp,32
    80007b44:	00050493          	mv	s1,a0
    80007b48:	10002973          	csrr	s2,sstatus
    80007b4c:	100027f3          	csrr	a5,sstatus
    80007b50:	ffd7f793          	andi	a5,a5,-3
    80007b54:	10079073          	csrw	sstatus,a5
    80007b58:	fffff097          	auipc	ra,0xfffff
    80007b5c:	8e0080e7          	jalr	-1824(ra) # 80006438 <mycpu>
    80007b60:	07852783          	lw	a5,120(a0)
    80007b64:	06078e63          	beqz	a5,80007be0 <acquire+0xb4>
    80007b68:	fffff097          	auipc	ra,0xfffff
    80007b6c:	8d0080e7          	jalr	-1840(ra) # 80006438 <mycpu>
    80007b70:	07852783          	lw	a5,120(a0)
    80007b74:	0004a703          	lw	a4,0(s1)
    80007b78:	0017879b          	addiw	a5,a5,1
    80007b7c:	06f52c23          	sw	a5,120(a0)
    80007b80:	04071063          	bnez	a4,80007bc0 <acquire+0x94>
    80007b84:	00100713          	li	a4,1
    80007b88:	00070793          	mv	a5,a4
    80007b8c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007b90:	0007879b          	sext.w	a5,a5
    80007b94:	fe079ae3          	bnez	a5,80007b88 <acquire+0x5c>
    80007b98:	0ff0000f          	fence
    80007b9c:	fffff097          	auipc	ra,0xfffff
    80007ba0:	89c080e7          	jalr	-1892(ra) # 80006438 <mycpu>
    80007ba4:	01813083          	ld	ra,24(sp)
    80007ba8:	01013403          	ld	s0,16(sp)
    80007bac:	00a4b823          	sd	a0,16(s1)
    80007bb0:	00013903          	ld	s2,0(sp)
    80007bb4:	00813483          	ld	s1,8(sp)
    80007bb8:	02010113          	addi	sp,sp,32
    80007bbc:	00008067          	ret
    80007bc0:	0104b903          	ld	s2,16(s1)
    80007bc4:	fffff097          	auipc	ra,0xfffff
    80007bc8:	874080e7          	jalr	-1932(ra) # 80006438 <mycpu>
    80007bcc:	faa91ce3          	bne	s2,a0,80007b84 <acquire+0x58>
    80007bd0:	00002517          	auipc	a0,0x2
    80007bd4:	be050513          	addi	a0,a0,-1056 # 800097b0 <digits+0x20>
    80007bd8:	fffff097          	auipc	ra,0xfffff
    80007bdc:	224080e7          	jalr	548(ra) # 80006dfc <panic>
    80007be0:	00195913          	srli	s2,s2,0x1
    80007be4:	fffff097          	auipc	ra,0xfffff
    80007be8:	854080e7          	jalr	-1964(ra) # 80006438 <mycpu>
    80007bec:	00197913          	andi	s2,s2,1
    80007bf0:	07252e23          	sw	s2,124(a0)
    80007bf4:	f75ff06f          	j	80007b68 <acquire+0x3c>

0000000080007bf8 <release>:
    80007bf8:	fe010113          	addi	sp,sp,-32
    80007bfc:	00813823          	sd	s0,16(sp)
    80007c00:	00113c23          	sd	ra,24(sp)
    80007c04:	00913423          	sd	s1,8(sp)
    80007c08:	01213023          	sd	s2,0(sp)
    80007c0c:	02010413          	addi	s0,sp,32
    80007c10:	00052783          	lw	a5,0(a0)
    80007c14:	00079a63          	bnez	a5,80007c28 <release+0x30>
    80007c18:	00002517          	auipc	a0,0x2
    80007c1c:	ba050513          	addi	a0,a0,-1120 # 800097b8 <digits+0x28>
    80007c20:	fffff097          	auipc	ra,0xfffff
    80007c24:	1dc080e7          	jalr	476(ra) # 80006dfc <panic>
    80007c28:	01053903          	ld	s2,16(a0)
    80007c2c:	00050493          	mv	s1,a0
    80007c30:	fffff097          	auipc	ra,0xfffff
    80007c34:	808080e7          	jalr	-2040(ra) # 80006438 <mycpu>
    80007c38:	fea910e3          	bne	s2,a0,80007c18 <release+0x20>
    80007c3c:	0004b823          	sd	zero,16(s1)
    80007c40:	0ff0000f          	fence
    80007c44:	0f50000f          	fence	iorw,ow
    80007c48:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007c4c:	ffffe097          	auipc	ra,0xffffe
    80007c50:	7ec080e7          	jalr	2028(ra) # 80006438 <mycpu>
    80007c54:	100027f3          	csrr	a5,sstatus
    80007c58:	0027f793          	andi	a5,a5,2
    80007c5c:	04079a63          	bnez	a5,80007cb0 <release+0xb8>
    80007c60:	07852783          	lw	a5,120(a0)
    80007c64:	02f05e63          	blez	a5,80007ca0 <release+0xa8>
    80007c68:	fff7871b          	addiw	a4,a5,-1
    80007c6c:	06e52c23          	sw	a4,120(a0)
    80007c70:	00071c63          	bnez	a4,80007c88 <release+0x90>
    80007c74:	07c52783          	lw	a5,124(a0)
    80007c78:	00078863          	beqz	a5,80007c88 <release+0x90>
    80007c7c:	100027f3          	csrr	a5,sstatus
    80007c80:	0027e793          	ori	a5,a5,2
    80007c84:	10079073          	csrw	sstatus,a5
    80007c88:	01813083          	ld	ra,24(sp)
    80007c8c:	01013403          	ld	s0,16(sp)
    80007c90:	00813483          	ld	s1,8(sp)
    80007c94:	00013903          	ld	s2,0(sp)
    80007c98:	02010113          	addi	sp,sp,32
    80007c9c:	00008067          	ret
    80007ca0:	00002517          	auipc	a0,0x2
    80007ca4:	b3850513          	addi	a0,a0,-1224 # 800097d8 <digits+0x48>
    80007ca8:	fffff097          	auipc	ra,0xfffff
    80007cac:	154080e7          	jalr	340(ra) # 80006dfc <panic>
    80007cb0:	00002517          	auipc	a0,0x2
    80007cb4:	b1050513          	addi	a0,a0,-1264 # 800097c0 <digits+0x30>
    80007cb8:	fffff097          	auipc	ra,0xfffff
    80007cbc:	144080e7          	jalr	324(ra) # 80006dfc <panic>

0000000080007cc0 <holding>:
    80007cc0:	00052783          	lw	a5,0(a0)
    80007cc4:	00079663          	bnez	a5,80007cd0 <holding+0x10>
    80007cc8:	00000513          	li	a0,0
    80007ccc:	00008067          	ret
    80007cd0:	fe010113          	addi	sp,sp,-32
    80007cd4:	00813823          	sd	s0,16(sp)
    80007cd8:	00913423          	sd	s1,8(sp)
    80007cdc:	00113c23          	sd	ra,24(sp)
    80007ce0:	02010413          	addi	s0,sp,32
    80007ce4:	01053483          	ld	s1,16(a0)
    80007ce8:	ffffe097          	auipc	ra,0xffffe
    80007cec:	750080e7          	jalr	1872(ra) # 80006438 <mycpu>
    80007cf0:	01813083          	ld	ra,24(sp)
    80007cf4:	01013403          	ld	s0,16(sp)
    80007cf8:	40a48533          	sub	a0,s1,a0
    80007cfc:	00153513          	seqz	a0,a0
    80007d00:	00813483          	ld	s1,8(sp)
    80007d04:	02010113          	addi	sp,sp,32
    80007d08:	00008067          	ret

0000000080007d0c <push_off>:
    80007d0c:	fe010113          	addi	sp,sp,-32
    80007d10:	00813823          	sd	s0,16(sp)
    80007d14:	00113c23          	sd	ra,24(sp)
    80007d18:	00913423          	sd	s1,8(sp)
    80007d1c:	02010413          	addi	s0,sp,32
    80007d20:	100024f3          	csrr	s1,sstatus
    80007d24:	100027f3          	csrr	a5,sstatus
    80007d28:	ffd7f793          	andi	a5,a5,-3
    80007d2c:	10079073          	csrw	sstatus,a5
    80007d30:	ffffe097          	auipc	ra,0xffffe
    80007d34:	708080e7          	jalr	1800(ra) # 80006438 <mycpu>
    80007d38:	07852783          	lw	a5,120(a0)
    80007d3c:	02078663          	beqz	a5,80007d68 <push_off+0x5c>
    80007d40:	ffffe097          	auipc	ra,0xffffe
    80007d44:	6f8080e7          	jalr	1784(ra) # 80006438 <mycpu>
    80007d48:	07852783          	lw	a5,120(a0)
    80007d4c:	01813083          	ld	ra,24(sp)
    80007d50:	01013403          	ld	s0,16(sp)
    80007d54:	0017879b          	addiw	a5,a5,1
    80007d58:	06f52c23          	sw	a5,120(a0)
    80007d5c:	00813483          	ld	s1,8(sp)
    80007d60:	02010113          	addi	sp,sp,32
    80007d64:	00008067          	ret
    80007d68:	0014d493          	srli	s1,s1,0x1
    80007d6c:	ffffe097          	auipc	ra,0xffffe
    80007d70:	6cc080e7          	jalr	1740(ra) # 80006438 <mycpu>
    80007d74:	0014f493          	andi	s1,s1,1
    80007d78:	06952e23          	sw	s1,124(a0)
    80007d7c:	fc5ff06f          	j	80007d40 <push_off+0x34>

0000000080007d80 <pop_off>:
    80007d80:	ff010113          	addi	sp,sp,-16
    80007d84:	00813023          	sd	s0,0(sp)
    80007d88:	00113423          	sd	ra,8(sp)
    80007d8c:	01010413          	addi	s0,sp,16
    80007d90:	ffffe097          	auipc	ra,0xffffe
    80007d94:	6a8080e7          	jalr	1704(ra) # 80006438 <mycpu>
    80007d98:	100027f3          	csrr	a5,sstatus
    80007d9c:	0027f793          	andi	a5,a5,2
    80007da0:	04079663          	bnez	a5,80007dec <pop_off+0x6c>
    80007da4:	07852783          	lw	a5,120(a0)
    80007da8:	02f05a63          	blez	a5,80007ddc <pop_off+0x5c>
    80007dac:	fff7871b          	addiw	a4,a5,-1
    80007db0:	06e52c23          	sw	a4,120(a0)
    80007db4:	00071c63          	bnez	a4,80007dcc <pop_off+0x4c>
    80007db8:	07c52783          	lw	a5,124(a0)
    80007dbc:	00078863          	beqz	a5,80007dcc <pop_off+0x4c>
    80007dc0:	100027f3          	csrr	a5,sstatus
    80007dc4:	0027e793          	ori	a5,a5,2
    80007dc8:	10079073          	csrw	sstatus,a5
    80007dcc:	00813083          	ld	ra,8(sp)
    80007dd0:	00013403          	ld	s0,0(sp)
    80007dd4:	01010113          	addi	sp,sp,16
    80007dd8:	00008067          	ret
    80007ddc:	00002517          	auipc	a0,0x2
    80007de0:	9fc50513          	addi	a0,a0,-1540 # 800097d8 <digits+0x48>
    80007de4:	fffff097          	auipc	ra,0xfffff
    80007de8:	018080e7          	jalr	24(ra) # 80006dfc <panic>
    80007dec:	00002517          	auipc	a0,0x2
    80007df0:	9d450513          	addi	a0,a0,-1580 # 800097c0 <digits+0x30>
    80007df4:	fffff097          	auipc	ra,0xfffff
    80007df8:	008080e7          	jalr	8(ra) # 80006dfc <panic>

0000000080007dfc <push_on>:
    80007dfc:	fe010113          	addi	sp,sp,-32
    80007e00:	00813823          	sd	s0,16(sp)
    80007e04:	00113c23          	sd	ra,24(sp)
    80007e08:	00913423          	sd	s1,8(sp)
    80007e0c:	02010413          	addi	s0,sp,32
    80007e10:	100024f3          	csrr	s1,sstatus
    80007e14:	100027f3          	csrr	a5,sstatus
    80007e18:	0027e793          	ori	a5,a5,2
    80007e1c:	10079073          	csrw	sstatus,a5
    80007e20:	ffffe097          	auipc	ra,0xffffe
    80007e24:	618080e7          	jalr	1560(ra) # 80006438 <mycpu>
    80007e28:	07852783          	lw	a5,120(a0)
    80007e2c:	02078663          	beqz	a5,80007e58 <push_on+0x5c>
    80007e30:	ffffe097          	auipc	ra,0xffffe
    80007e34:	608080e7          	jalr	1544(ra) # 80006438 <mycpu>
    80007e38:	07852783          	lw	a5,120(a0)
    80007e3c:	01813083          	ld	ra,24(sp)
    80007e40:	01013403          	ld	s0,16(sp)
    80007e44:	0017879b          	addiw	a5,a5,1
    80007e48:	06f52c23          	sw	a5,120(a0)
    80007e4c:	00813483          	ld	s1,8(sp)
    80007e50:	02010113          	addi	sp,sp,32
    80007e54:	00008067          	ret
    80007e58:	0014d493          	srli	s1,s1,0x1
    80007e5c:	ffffe097          	auipc	ra,0xffffe
    80007e60:	5dc080e7          	jalr	1500(ra) # 80006438 <mycpu>
    80007e64:	0014f493          	andi	s1,s1,1
    80007e68:	06952e23          	sw	s1,124(a0)
    80007e6c:	fc5ff06f          	j	80007e30 <push_on+0x34>

0000000080007e70 <pop_on>:
    80007e70:	ff010113          	addi	sp,sp,-16
    80007e74:	00813023          	sd	s0,0(sp)
    80007e78:	00113423          	sd	ra,8(sp)
    80007e7c:	01010413          	addi	s0,sp,16
    80007e80:	ffffe097          	auipc	ra,0xffffe
    80007e84:	5b8080e7          	jalr	1464(ra) # 80006438 <mycpu>
    80007e88:	100027f3          	csrr	a5,sstatus
    80007e8c:	0027f793          	andi	a5,a5,2
    80007e90:	04078463          	beqz	a5,80007ed8 <pop_on+0x68>
    80007e94:	07852783          	lw	a5,120(a0)
    80007e98:	02f05863          	blez	a5,80007ec8 <pop_on+0x58>
    80007e9c:	fff7879b          	addiw	a5,a5,-1
    80007ea0:	06f52c23          	sw	a5,120(a0)
    80007ea4:	07853783          	ld	a5,120(a0)
    80007ea8:	00079863          	bnez	a5,80007eb8 <pop_on+0x48>
    80007eac:	100027f3          	csrr	a5,sstatus
    80007eb0:	ffd7f793          	andi	a5,a5,-3
    80007eb4:	10079073          	csrw	sstatus,a5
    80007eb8:	00813083          	ld	ra,8(sp)
    80007ebc:	00013403          	ld	s0,0(sp)
    80007ec0:	01010113          	addi	sp,sp,16
    80007ec4:	00008067          	ret
    80007ec8:	00002517          	auipc	a0,0x2
    80007ecc:	93850513          	addi	a0,a0,-1736 # 80009800 <digits+0x70>
    80007ed0:	fffff097          	auipc	ra,0xfffff
    80007ed4:	f2c080e7          	jalr	-212(ra) # 80006dfc <panic>
    80007ed8:	00002517          	auipc	a0,0x2
    80007edc:	90850513          	addi	a0,a0,-1784 # 800097e0 <digits+0x50>
    80007ee0:	fffff097          	auipc	ra,0xfffff
    80007ee4:	f1c080e7          	jalr	-228(ra) # 80006dfc <panic>

0000000080007ee8 <__memset>:
    80007ee8:	ff010113          	addi	sp,sp,-16
    80007eec:	00813423          	sd	s0,8(sp)
    80007ef0:	01010413          	addi	s0,sp,16
    80007ef4:	1a060e63          	beqz	a2,800080b0 <__memset+0x1c8>
    80007ef8:	40a007b3          	neg	a5,a0
    80007efc:	0077f793          	andi	a5,a5,7
    80007f00:	00778693          	addi	a3,a5,7
    80007f04:	00b00813          	li	a6,11
    80007f08:	0ff5f593          	andi	a1,a1,255
    80007f0c:	fff6071b          	addiw	a4,a2,-1
    80007f10:	1b06e663          	bltu	a3,a6,800080bc <__memset+0x1d4>
    80007f14:	1cd76463          	bltu	a4,a3,800080dc <__memset+0x1f4>
    80007f18:	1a078e63          	beqz	a5,800080d4 <__memset+0x1ec>
    80007f1c:	00b50023          	sb	a1,0(a0)
    80007f20:	00100713          	li	a4,1
    80007f24:	1ae78463          	beq	a5,a4,800080cc <__memset+0x1e4>
    80007f28:	00b500a3          	sb	a1,1(a0)
    80007f2c:	00200713          	li	a4,2
    80007f30:	1ae78a63          	beq	a5,a4,800080e4 <__memset+0x1fc>
    80007f34:	00b50123          	sb	a1,2(a0)
    80007f38:	00300713          	li	a4,3
    80007f3c:	18e78463          	beq	a5,a4,800080c4 <__memset+0x1dc>
    80007f40:	00b501a3          	sb	a1,3(a0)
    80007f44:	00400713          	li	a4,4
    80007f48:	1ae78263          	beq	a5,a4,800080ec <__memset+0x204>
    80007f4c:	00b50223          	sb	a1,4(a0)
    80007f50:	00500713          	li	a4,5
    80007f54:	1ae78063          	beq	a5,a4,800080f4 <__memset+0x20c>
    80007f58:	00b502a3          	sb	a1,5(a0)
    80007f5c:	00700713          	li	a4,7
    80007f60:	18e79e63          	bne	a5,a4,800080fc <__memset+0x214>
    80007f64:	00b50323          	sb	a1,6(a0)
    80007f68:	00700e93          	li	t4,7
    80007f6c:	00859713          	slli	a4,a1,0x8
    80007f70:	00e5e733          	or	a4,a1,a4
    80007f74:	01059e13          	slli	t3,a1,0x10
    80007f78:	01c76e33          	or	t3,a4,t3
    80007f7c:	01859313          	slli	t1,a1,0x18
    80007f80:	006e6333          	or	t1,t3,t1
    80007f84:	02059893          	slli	a7,a1,0x20
    80007f88:	40f60e3b          	subw	t3,a2,a5
    80007f8c:	011368b3          	or	a7,t1,a7
    80007f90:	02859813          	slli	a6,a1,0x28
    80007f94:	0108e833          	or	a6,a7,a6
    80007f98:	03059693          	slli	a3,a1,0x30
    80007f9c:	003e589b          	srliw	a7,t3,0x3
    80007fa0:	00d866b3          	or	a3,a6,a3
    80007fa4:	03859713          	slli	a4,a1,0x38
    80007fa8:	00389813          	slli	a6,a7,0x3
    80007fac:	00f507b3          	add	a5,a0,a5
    80007fb0:	00e6e733          	or	a4,a3,a4
    80007fb4:	000e089b          	sext.w	a7,t3
    80007fb8:	00f806b3          	add	a3,a6,a5
    80007fbc:	00e7b023          	sd	a4,0(a5)
    80007fc0:	00878793          	addi	a5,a5,8
    80007fc4:	fed79ce3          	bne	a5,a3,80007fbc <__memset+0xd4>
    80007fc8:	ff8e7793          	andi	a5,t3,-8
    80007fcc:	0007871b          	sext.w	a4,a5
    80007fd0:	01d787bb          	addw	a5,a5,t4
    80007fd4:	0ce88e63          	beq	a7,a4,800080b0 <__memset+0x1c8>
    80007fd8:	00f50733          	add	a4,a0,a5
    80007fdc:	00b70023          	sb	a1,0(a4)
    80007fe0:	0017871b          	addiw	a4,a5,1
    80007fe4:	0cc77663          	bgeu	a4,a2,800080b0 <__memset+0x1c8>
    80007fe8:	00e50733          	add	a4,a0,a4
    80007fec:	00b70023          	sb	a1,0(a4)
    80007ff0:	0027871b          	addiw	a4,a5,2
    80007ff4:	0ac77e63          	bgeu	a4,a2,800080b0 <__memset+0x1c8>
    80007ff8:	00e50733          	add	a4,a0,a4
    80007ffc:	00b70023          	sb	a1,0(a4)
    80008000:	0037871b          	addiw	a4,a5,3
    80008004:	0ac77663          	bgeu	a4,a2,800080b0 <__memset+0x1c8>
    80008008:	00e50733          	add	a4,a0,a4
    8000800c:	00b70023          	sb	a1,0(a4)
    80008010:	0047871b          	addiw	a4,a5,4
    80008014:	08c77e63          	bgeu	a4,a2,800080b0 <__memset+0x1c8>
    80008018:	00e50733          	add	a4,a0,a4
    8000801c:	00b70023          	sb	a1,0(a4)
    80008020:	0057871b          	addiw	a4,a5,5
    80008024:	08c77663          	bgeu	a4,a2,800080b0 <__memset+0x1c8>
    80008028:	00e50733          	add	a4,a0,a4
    8000802c:	00b70023          	sb	a1,0(a4)
    80008030:	0067871b          	addiw	a4,a5,6
    80008034:	06c77e63          	bgeu	a4,a2,800080b0 <__memset+0x1c8>
    80008038:	00e50733          	add	a4,a0,a4
    8000803c:	00b70023          	sb	a1,0(a4)
    80008040:	0077871b          	addiw	a4,a5,7
    80008044:	06c77663          	bgeu	a4,a2,800080b0 <__memset+0x1c8>
    80008048:	00e50733          	add	a4,a0,a4
    8000804c:	00b70023          	sb	a1,0(a4)
    80008050:	0087871b          	addiw	a4,a5,8
    80008054:	04c77e63          	bgeu	a4,a2,800080b0 <__memset+0x1c8>
    80008058:	00e50733          	add	a4,a0,a4
    8000805c:	00b70023          	sb	a1,0(a4)
    80008060:	0097871b          	addiw	a4,a5,9
    80008064:	04c77663          	bgeu	a4,a2,800080b0 <__memset+0x1c8>
    80008068:	00e50733          	add	a4,a0,a4
    8000806c:	00b70023          	sb	a1,0(a4)
    80008070:	00a7871b          	addiw	a4,a5,10
    80008074:	02c77e63          	bgeu	a4,a2,800080b0 <__memset+0x1c8>
    80008078:	00e50733          	add	a4,a0,a4
    8000807c:	00b70023          	sb	a1,0(a4)
    80008080:	00b7871b          	addiw	a4,a5,11
    80008084:	02c77663          	bgeu	a4,a2,800080b0 <__memset+0x1c8>
    80008088:	00e50733          	add	a4,a0,a4
    8000808c:	00b70023          	sb	a1,0(a4)
    80008090:	00c7871b          	addiw	a4,a5,12
    80008094:	00c77e63          	bgeu	a4,a2,800080b0 <__memset+0x1c8>
    80008098:	00e50733          	add	a4,a0,a4
    8000809c:	00b70023          	sb	a1,0(a4)
    800080a0:	00d7879b          	addiw	a5,a5,13
    800080a4:	00c7f663          	bgeu	a5,a2,800080b0 <__memset+0x1c8>
    800080a8:	00f507b3          	add	a5,a0,a5
    800080ac:	00b78023          	sb	a1,0(a5)
    800080b0:	00813403          	ld	s0,8(sp)
    800080b4:	01010113          	addi	sp,sp,16
    800080b8:	00008067          	ret
    800080bc:	00b00693          	li	a3,11
    800080c0:	e55ff06f          	j	80007f14 <__memset+0x2c>
    800080c4:	00300e93          	li	t4,3
    800080c8:	ea5ff06f          	j	80007f6c <__memset+0x84>
    800080cc:	00100e93          	li	t4,1
    800080d0:	e9dff06f          	j	80007f6c <__memset+0x84>
    800080d4:	00000e93          	li	t4,0
    800080d8:	e95ff06f          	j	80007f6c <__memset+0x84>
    800080dc:	00000793          	li	a5,0
    800080e0:	ef9ff06f          	j	80007fd8 <__memset+0xf0>
    800080e4:	00200e93          	li	t4,2
    800080e8:	e85ff06f          	j	80007f6c <__memset+0x84>
    800080ec:	00400e93          	li	t4,4
    800080f0:	e7dff06f          	j	80007f6c <__memset+0x84>
    800080f4:	00500e93          	li	t4,5
    800080f8:	e75ff06f          	j	80007f6c <__memset+0x84>
    800080fc:	00600e93          	li	t4,6
    80008100:	e6dff06f          	j	80007f6c <__memset+0x84>

0000000080008104 <__memmove>:
    80008104:	ff010113          	addi	sp,sp,-16
    80008108:	00813423          	sd	s0,8(sp)
    8000810c:	01010413          	addi	s0,sp,16
    80008110:	0e060863          	beqz	a2,80008200 <__memmove+0xfc>
    80008114:	fff6069b          	addiw	a3,a2,-1
    80008118:	0006881b          	sext.w	a6,a3
    8000811c:	0ea5e863          	bltu	a1,a0,8000820c <__memmove+0x108>
    80008120:	00758713          	addi	a4,a1,7
    80008124:	00a5e7b3          	or	a5,a1,a0
    80008128:	40a70733          	sub	a4,a4,a0
    8000812c:	0077f793          	andi	a5,a5,7
    80008130:	00f73713          	sltiu	a4,a4,15
    80008134:	00174713          	xori	a4,a4,1
    80008138:	0017b793          	seqz	a5,a5
    8000813c:	00e7f7b3          	and	a5,a5,a4
    80008140:	10078863          	beqz	a5,80008250 <__memmove+0x14c>
    80008144:	00900793          	li	a5,9
    80008148:	1107f463          	bgeu	a5,a6,80008250 <__memmove+0x14c>
    8000814c:	0036581b          	srliw	a6,a2,0x3
    80008150:	fff8081b          	addiw	a6,a6,-1
    80008154:	02081813          	slli	a6,a6,0x20
    80008158:	01d85893          	srli	a7,a6,0x1d
    8000815c:	00858813          	addi	a6,a1,8
    80008160:	00058793          	mv	a5,a1
    80008164:	00050713          	mv	a4,a0
    80008168:	01088833          	add	a6,a7,a6
    8000816c:	0007b883          	ld	a7,0(a5)
    80008170:	00878793          	addi	a5,a5,8
    80008174:	00870713          	addi	a4,a4,8
    80008178:	ff173c23          	sd	a7,-8(a4)
    8000817c:	ff0798e3          	bne	a5,a6,8000816c <__memmove+0x68>
    80008180:	ff867713          	andi	a4,a2,-8
    80008184:	02071793          	slli	a5,a4,0x20
    80008188:	0207d793          	srli	a5,a5,0x20
    8000818c:	00f585b3          	add	a1,a1,a5
    80008190:	40e686bb          	subw	a3,a3,a4
    80008194:	00f507b3          	add	a5,a0,a5
    80008198:	06e60463          	beq	a2,a4,80008200 <__memmove+0xfc>
    8000819c:	0005c703          	lbu	a4,0(a1)
    800081a0:	00e78023          	sb	a4,0(a5)
    800081a4:	04068e63          	beqz	a3,80008200 <__memmove+0xfc>
    800081a8:	0015c603          	lbu	a2,1(a1)
    800081ac:	00100713          	li	a4,1
    800081b0:	00c780a3          	sb	a2,1(a5)
    800081b4:	04e68663          	beq	a3,a4,80008200 <__memmove+0xfc>
    800081b8:	0025c603          	lbu	a2,2(a1)
    800081bc:	00200713          	li	a4,2
    800081c0:	00c78123          	sb	a2,2(a5)
    800081c4:	02e68e63          	beq	a3,a4,80008200 <__memmove+0xfc>
    800081c8:	0035c603          	lbu	a2,3(a1)
    800081cc:	00300713          	li	a4,3
    800081d0:	00c781a3          	sb	a2,3(a5)
    800081d4:	02e68663          	beq	a3,a4,80008200 <__memmove+0xfc>
    800081d8:	0045c603          	lbu	a2,4(a1)
    800081dc:	00400713          	li	a4,4
    800081e0:	00c78223          	sb	a2,4(a5)
    800081e4:	00e68e63          	beq	a3,a4,80008200 <__memmove+0xfc>
    800081e8:	0055c603          	lbu	a2,5(a1)
    800081ec:	00500713          	li	a4,5
    800081f0:	00c782a3          	sb	a2,5(a5)
    800081f4:	00e68663          	beq	a3,a4,80008200 <__memmove+0xfc>
    800081f8:	0065c703          	lbu	a4,6(a1)
    800081fc:	00e78323          	sb	a4,6(a5)
    80008200:	00813403          	ld	s0,8(sp)
    80008204:	01010113          	addi	sp,sp,16
    80008208:	00008067          	ret
    8000820c:	02061713          	slli	a4,a2,0x20
    80008210:	02075713          	srli	a4,a4,0x20
    80008214:	00e587b3          	add	a5,a1,a4
    80008218:	f0f574e3          	bgeu	a0,a5,80008120 <__memmove+0x1c>
    8000821c:	02069613          	slli	a2,a3,0x20
    80008220:	02065613          	srli	a2,a2,0x20
    80008224:	fff64613          	not	a2,a2
    80008228:	00e50733          	add	a4,a0,a4
    8000822c:	00c78633          	add	a2,a5,a2
    80008230:	fff7c683          	lbu	a3,-1(a5)
    80008234:	fff78793          	addi	a5,a5,-1
    80008238:	fff70713          	addi	a4,a4,-1
    8000823c:	00d70023          	sb	a3,0(a4)
    80008240:	fec798e3          	bne	a5,a2,80008230 <__memmove+0x12c>
    80008244:	00813403          	ld	s0,8(sp)
    80008248:	01010113          	addi	sp,sp,16
    8000824c:	00008067          	ret
    80008250:	02069713          	slli	a4,a3,0x20
    80008254:	02075713          	srli	a4,a4,0x20
    80008258:	00170713          	addi	a4,a4,1
    8000825c:	00e50733          	add	a4,a0,a4
    80008260:	00050793          	mv	a5,a0
    80008264:	0005c683          	lbu	a3,0(a1)
    80008268:	00178793          	addi	a5,a5,1
    8000826c:	00158593          	addi	a1,a1,1
    80008270:	fed78fa3          	sb	a3,-1(a5)
    80008274:	fee798e3          	bne	a5,a4,80008264 <__memmove+0x160>
    80008278:	f89ff06f          	j	80008200 <__memmove+0xfc>

000000008000827c <__putc>:
    8000827c:	fe010113          	addi	sp,sp,-32
    80008280:	00813823          	sd	s0,16(sp)
    80008284:	00113c23          	sd	ra,24(sp)
    80008288:	02010413          	addi	s0,sp,32
    8000828c:	00050793          	mv	a5,a0
    80008290:	fef40593          	addi	a1,s0,-17
    80008294:	00100613          	li	a2,1
    80008298:	00000513          	li	a0,0
    8000829c:	fef407a3          	sb	a5,-17(s0)
    800082a0:	fffff097          	auipc	ra,0xfffff
    800082a4:	b3c080e7          	jalr	-1220(ra) # 80006ddc <console_write>
    800082a8:	01813083          	ld	ra,24(sp)
    800082ac:	01013403          	ld	s0,16(sp)
    800082b0:	02010113          	addi	sp,sp,32
    800082b4:	00008067          	ret

00000000800082b8 <__getc>:
    800082b8:	fe010113          	addi	sp,sp,-32
    800082bc:	00813823          	sd	s0,16(sp)
    800082c0:	00113c23          	sd	ra,24(sp)
    800082c4:	02010413          	addi	s0,sp,32
    800082c8:	fe840593          	addi	a1,s0,-24
    800082cc:	00100613          	li	a2,1
    800082d0:	00000513          	li	a0,0
    800082d4:	fffff097          	auipc	ra,0xfffff
    800082d8:	ae8080e7          	jalr	-1304(ra) # 80006dbc <console_read>
    800082dc:	fe844503          	lbu	a0,-24(s0)
    800082e0:	01813083          	ld	ra,24(sp)
    800082e4:	01013403          	ld	s0,16(sp)
    800082e8:	02010113          	addi	sp,sp,32
    800082ec:	00008067          	ret

00000000800082f0 <console_handler>:
    800082f0:	fe010113          	addi	sp,sp,-32
    800082f4:	00813823          	sd	s0,16(sp)
    800082f8:	00113c23          	sd	ra,24(sp)
    800082fc:	00913423          	sd	s1,8(sp)
    80008300:	02010413          	addi	s0,sp,32
    80008304:	14202773          	csrr	a4,scause
    80008308:	100027f3          	csrr	a5,sstatus
    8000830c:	0027f793          	andi	a5,a5,2
    80008310:	06079e63          	bnez	a5,8000838c <console_handler+0x9c>
    80008314:	00074c63          	bltz	a4,8000832c <console_handler+0x3c>
    80008318:	01813083          	ld	ra,24(sp)
    8000831c:	01013403          	ld	s0,16(sp)
    80008320:	00813483          	ld	s1,8(sp)
    80008324:	02010113          	addi	sp,sp,32
    80008328:	00008067          	ret
    8000832c:	0ff77713          	andi	a4,a4,255
    80008330:	00900793          	li	a5,9
    80008334:	fef712e3          	bne	a4,a5,80008318 <console_handler+0x28>
    80008338:	ffffe097          	auipc	ra,0xffffe
    8000833c:	6dc080e7          	jalr	1756(ra) # 80006a14 <plic_claim>
    80008340:	00a00793          	li	a5,10
    80008344:	00050493          	mv	s1,a0
    80008348:	02f50c63          	beq	a0,a5,80008380 <console_handler+0x90>
    8000834c:	fc0506e3          	beqz	a0,80008318 <console_handler+0x28>
    80008350:	00050593          	mv	a1,a0
    80008354:	00001517          	auipc	a0,0x1
    80008358:	3b450513          	addi	a0,a0,948 # 80009708 <CONSOLE_STATUS+0x6f8>
    8000835c:	fffff097          	auipc	ra,0xfffff
    80008360:	afc080e7          	jalr	-1284(ra) # 80006e58 <__printf>
    80008364:	01013403          	ld	s0,16(sp)
    80008368:	01813083          	ld	ra,24(sp)
    8000836c:	00048513          	mv	a0,s1
    80008370:	00813483          	ld	s1,8(sp)
    80008374:	02010113          	addi	sp,sp,32
    80008378:	ffffe317          	auipc	t1,0xffffe
    8000837c:	6d430067          	jr	1748(t1) # 80006a4c <plic_complete>
    80008380:	fffff097          	auipc	ra,0xfffff
    80008384:	3e0080e7          	jalr	992(ra) # 80007760 <uartintr>
    80008388:	fddff06f          	j	80008364 <console_handler+0x74>
    8000838c:	00001517          	auipc	a0,0x1
    80008390:	47c50513          	addi	a0,a0,1148 # 80009808 <digits+0x78>
    80008394:	fffff097          	auipc	ra,0xfffff
    80008398:	a68080e7          	jalr	-1432(ra) # 80006dfc <panic>
	...
