
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	6a013103          	ld	sp,1696(sp) # 8000b6a0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	020060ef          	jal	ra,8000603c <start>

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
    80001088:	2f1000ef          	jal	ra,80001b78 <_ZN5Riscv13obradaprekidaEmmmmm>

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
    80001720:	fe010113          	addi	sp,sp,-32
    80001724:	00113c23          	sd	ra,24(sp)
    80001728:	00813823          	sd	s0,16(sp)
    8000172c:	02010413          	addi	s0,sp,32
    MemoryAllocator::init();
    80001730:	00001097          	auipc	ra,0x1
    80001734:	ea4080e7          	jalr	-348(ra) # 800025d4 <_ZN15MemoryAllocator4initEv>
    Riscv::w_stvec((uint64) rutina);// upis adrese prekidne rutinina
    80001738:	0000a797          	auipc	a5,0xa
    8000173c:	f587b783          	ld	a5,-168(a5) # 8000b690 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001740:	10579073          	csrw	stvec,a5

    thread_t main_handle;
    thread_create(&main_handle, nullptr, nullptr);
    80001744:	00000613          	li	a2,0
    80001748:	00000593          	li	a1,0
    8000174c:	fe840513          	addi	a0,s0,-24
    80001750:	00000097          	auipc	ra,0x0
    80001754:	c28080e7          	jalr	-984(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>

    thread_t um_handle;
    thread_create(&um_handle, reinterpret_cast<void (*)(void *)>(userMain), nullptr);
    80001758:	00000613          	li	a2,0
    8000175c:	0000a597          	auipc	a1,0xa
    80001760:	f2c5b583          	ld	a1,-212(a1) # 8000b688 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001764:	fe040513          	addi	a0,s0,-32
    80001768:	00000097          	auipc	ra,0x0
    8000176c:	c10080e7          	jalr	-1008(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_join(um_handle);
    80001770:	fe043503          	ld	a0,-32(s0)
    80001774:	00000097          	auipc	ra,0x0
    80001778:	cfc080e7          	jalr	-772(ra) # 80001470 <_Z11thread_joinP3TCB>

    return 0;
}
    8000177c:	00000513          	li	a0,0
    80001780:	01813083          	ld	ra,24(sp)
    80001784:	01013403          	ld	s0,16(sp)
    80001788:	02010113          	addi	sp,sp,32
    8000178c:	00008067          	ret

0000000080001790 <_ZN6Thread10wrapperRunEPv>:

int Thread::start() {
    return thread_create(&myHandle, wrapperRun, this);
}

void Thread::wrapperRun(void *arg) {
    80001790:	ff010113          	addi	sp,sp,-16
    80001794:	00113423          	sd	ra,8(sp)
    80001798:	00813023          	sd	s0,0(sp)
    8000179c:	01010413          	addi	s0,sp,16
    auto thread = (Thread *) arg;
    if (thread->body == nullptr)
    800017a0:	01053783          	ld	a5,16(a0) # 1010 <_entry-0x7fffeff0>
    800017a4:	00078e63          	beqz	a5,800017c0 <_ZN6Thread10wrapperRunEPv+0x30>
        thread->run();
    else
        thread->body(thread->arg);
    800017a8:	01853503          	ld	a0,24(a0)
    800017ac:	000780e7          	jalr	a5
}
    800017b0:	00813083          	ld	ra,8(sp)
    800017b4:	00013403          	ld	s0,0(sp)
    800017b8:	01010113          	addi	sp,sp,16
    800017bc:	00008067          	ret
        thread->run();
    800017c0:	00053783          	ld	a5,0(a0)
    800017c4:	0107b783          	ld	a5,16(a5)
    800017c8:	000780e7          	jalr	a5
    800017cc:	fe5ff06f          	j	800017b0 <_ZN6Thread10wrapperRunEPv+0x20>

00000000800017d0 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    800017d0:	ff010113          	addi	sp,sp,-16
    800017d4:	00113423          	sd	ra,8(sp)
    800017d8:	00813023          	sd	s0,0(sp)
    800017dc:	01010413          	addi	s0,sp,16
    800017e0:	0000a797          	auipc	a5,0xa
    800017e4:	c9078793          	addi	a5,a5,-880 # 8000b470 <_ZTV6Thread+0x10>
    800017e8:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    800017ec:	00853503          	ld	a0,8(a0)
    800017f0:	00000097          	auipc	ra,0x0
    800017f4:	b48080e7          	jalr	-1208(ra) # 80001338 <_Z8mem_freePv>
}
    800017f8:	00813083          	ld	ra,8(sp)
    800017fc:	00013403          	ld	s0,0(sp)
    80001800:	01010113          	addi	sp,sp,16
    80001804:	00008067          	ret

0000000080001808 <_ZN9SemaphoreD1Ev>:
        return -1;
    }
    return sem_trywait(myHandle);
}

Semaphore::~Semaphore() {
    80001808:	ff010113          	addi	sp,sp,-16
    8000180c:	00113423          	sd	ra,8(sp)
    80001810:	00813023          	sd	s0,0(sp)
    80001814:	01010413          	addi	s0,sp,16
    80001818:	0000a797          	auipc	a5,0xa
    8000181c:	c8078793          	addi	a5,a5,-896 # 8000b498 <_ZTV9Semaphore+0x10>
    80001820:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001824:	00853503          	ld	a0,8(a0)
    80001828:	00000097          	auipc	ra,0x0
    8000182c:	d44080e7          	jalr	-700(ra) # 8000156c <_Z9sem_closeP4_sem>
}
    80001830:	00813083          	ld	ra,8(sp)
    80001834:	00013403          	ld	s0,0(sp)
    80001838:	01010113          	addi	sp,sp,16
    8000183c:	00008067          	ret

0000000080001840 <_Znwm>:
void *operator new(size_t size) {
    80001840:	ff010113          	addi	sp,sp,-16
    80001844:	00113423          	sd	ra,8(sp)
    80001848:	00813023          	sd	s0,0(sp)
    8000184c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);//MemoryAllocator::mem_alloc(size);
    80001850:	00000097          	auipc	ra,0x0
    80001854:	aa4080e7          	jalr	-1372(ra) # 800012f4 <_Z9mem_allocm>
}
    80001858:	00813083          	ld	ra,8(sp)
    8000185c:	00013403          	ld	s0,0(sp)
    80001860:	01010113          	addi	sp,sp,16
    80001864:	00008067          	ret

0000000080001868 <_Znam>:
void *operator new[](size_t size) {
    80001868:	ff010113          	addi	sp,sp,-16
    8000186c:	00113423          	sd	ra,8(sp)
    80001870:	00813023          	sd	s0,0(sp)
    80001874:	01010413          	addi	s0,sp,16
    return mem_alloc(size);//)MemoryAllocator::mem_alloc(size);
    80001878:	00000097          	auipc	ra,0x0
    8000187c:	a7c080e7          	jalr	-1412(ra) # 800012f4 <_Z9mem_allocm>
}
    80001880:	00813083          	ld	ra,8(sp)
    80001884:	00013403          	ld	s0,0(sp)
    80001888:	01010113          	addi	sp,sp,16
    8000188c:	00008067          	ret

0000000080001890 <_ZdlPv>:
void operator delete(void *p) noexcept {
    80001890:	ff010113          	addi	sp,sp,-16
    80001894:	00113423          	sd	ra,8(sp)
    80001898:	00813023          	sd	s0,0(sp)
    8000189c:	01010413          	addi	s0,sp,16
    mem_free(p);//MemoryAllocator::mem_free(p);
    800018a0:	00000097          	auipc	ra,0x0
    800018a4:	a98080e7          	jalr	-1384(ra) # 80001338 <_Z8mem_freePv>
}
    800018a8:	00813083          	ld	ra,8(sp)
    800018ac:	00013403          	ld	s0,0(sp)
    800018b0:	01010113          	addi	sp,sp,16
    800018b4:	00008067          	ret

00000000800018b8 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800018b8:	fe010113          	addi	sp,sp,-32
    800018bc:	00113c23          	sd	ra,24(sp)
    800018c0:	00813823          	sd	s0,16(sp)
    800018c4:	00913423          	sd	s1,8(sp)
    800018c8:	02010413          	addi	s0,sp,32
    800018cc:	00050493          	mv	s1,a0
}
    800018d0:	00000097          	auipc	ra,0x0
    800018d4:	f00080e7          	jalr	-256(ra) # 800017d0 <_ZN6ThreadD1Ev>
    800018d8:	00048513          	mv	a0,s1
    800018dc:	00000097          	auipc	ra,0x0
    800018e0:	fb4080e7          	jalr	-76(ra) # 80001890 <_ZdlPv>
    800018e4:	01813083          	ld	ra,24(sp)
    800018e8:	01013403          	ld	s0,16(sp)
    800018ec:	00813483          	ld	s1,8(sp)
    800018f0:	02010113          	addi	sp,sp,32
    800018f4:	00008067          	ret

00000000800018f8 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800018f8:	fe010113          	addi	sp,sp,-32
    800018fc:	00113c23          	sd	ra,24(sp)
    80001900:	00813823          	sd	s0,16(sp)
    80001904:	00913423          	sd	s1,8(sp)
    80001908:	02010413          	addi	s0,sp,32
    8000190c:	00050493          	mv	s1,a0
}
    80001910:	00000097          	auipc	ra,0x0
    80001914:	ef8080e7          	jalr	-264(ra) # 80001808 <_ZN9SemaphoreD1Ev>
    80001918:	00048513          	mv	a0,s1
    8000191c:	00000097          	auipc	ra,0x0
    80001920:	f74080e7          	jalr	-140(ra) # 80001890 <_ZdlPv>
    80001924:	01813083          	ld	ra,24(sp)
    80001928:	01013403          	ld	s0,16(sp)
    8000192c:	00813483          	ld	s1,8(sp)
    80001930:	02010113          	addi	sp,sp,32
    80001934:	00008067          	ret

0000000080001938 <_ZdaPv>:
void operator delete[](void *p) noexcept {
    80001938:	ff010113          	addi	sp,sp,-16
    8000193c:	00113423          	sd	ra,8(sp)
    80001940:	00813023          	sd	s0,0(sp)
    80001944:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001948:	00000097          	auipc	ra,0x0
    8000194c:	9f0080e7          	jalr	-1552(ra) # 80001338 <_Z8mem_freePv>
}
    80001950:	00813083          	ld	ra,8(sp)
    80001954:	00013403          	ld	s0,0(sp)
    80001958:	01010113          	addi	sp,sp,16
    8000195c:	00008067          	ret

0000000080001960 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80001960:	ff010113          	addi	sp,sp,-16
    80001964:	00813423          	sd	s0,8(sp)
    80001968:	01010413          	addi	s0,sp,16
    8000196c:	0000a797          	auipc	a5,0xa
    80001970:	b0478793          	addi	a5,a5,-1276 # 8000b470 <_ZTV6Thread+0x10>
    80001974:	00f53023          	sd	a5,0(a0)
    this->body = body;
    80001978:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    8000197c:	00c53c23          	sd	a2,24(a0)
}
    80001980:	00813403          	ld	s0,8(sp)
    80001984:	01010113          	addi	sp,sp,16
    80001988:	00008067          	ret

000000008000198c <_ZN6ThreadC1Ev>:
Thread::Thread() {
    8000198c:	ff010113          	addi	sp,sp,-16
    80001990:	00813423          	sd	s0,8(sp)
    80001994:	01010413          	addi	s0,sp,16
    80001998:	0000a797          	auipc	a5,0xa
    8000199c:	ad878793          	addi	a5,a5,-1320 # 8000b470 <_ZTV6Thread+0x10>
    800019a0:	00f53023          	sd	a5,0(a0)
    this->body = nullptr;
    800019a4:	00053823          	sd	zero,16(a0)
}
    800019a8:	00813403          	ld	s0,8(sp)
    800019ac:	01010113          	addi	sp,sp,16
    800019b0:	00008067          	ret

00000000800019b4 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800019b4:	ff010113          	addi	sp,sp,-16
    800019b8:	00113423          	sd	ra,8(sp)
    800019bc:	00813023          	sd	s0,0(sp)
    800019c0:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800019c4:	00000097          	auipc	ra,0x0
    800019c8:	a70080e7          	jalr	-1424(ra) # 80001434 <_Z15thread_dispatchv>
}
    800019cc:	00813083          	ld	ra,8(sp)
    800019d0:	00013403          	ld	s0,0(sp)
    800019d4:	01010113          	addi	sp,sp,16
    800019d8:	00008067          	ret

00000000800019dc <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t t) {
    800019dc:	ff010113          	addi	sp,sp,-16
    800019e0:	00813423          	sd	s0,8(sp)
    800019e4:	01010413          	addi	s0,sp,16
}
    800019e8:	00000513          	li	a0,0
    800019ec:	00813403          	ld	s0,8(sp)
    800019f0:	01010113          	addi	sp,sp,16
    800019f4:	00008067          	ret

00000000800019f8 <_ZN6Thread5startEv>:
int Thread::start() {
    800019f8:	ff010113          	addi	sp,sp,-16
    800019fc:	00113423          	sd	ra,8(sp)
    80001a00:	00813023          	sd	s0,0(sp)
    80001a04:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, wrapperRun, this);
    80001a08:	00050613          	mv	a2,a0
    80001a0c:	00000597          	auipc	a1,0x0
    80001a10:	d8458593          	addi	a1,a1,-636 # 80001790 <_ZN6Thread10wrapperRunEPv>
    80001a14:	00850513          	addi	a0,a0,8
    80001a18:	00000097          	auipc	ra,0x0
    80001a1c:	960080e7          	jalr	-1696(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001a20:	00813083          	ld	ra,8(sp)
    80001a24:	00013403          	ld	s0,0(sp)
    80001a28:	01010113          	addi	sp,sp,16
    80001a2c:	00008067          	ret

0000000080001a30 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80001a30:	ff010113          	addi	sp,sp,-16
    80001a34:	00113423          	sd	ra,8(sp)
    80001a38:	00813023          	sd	s0,0(sp)
    80001a3c:	01010413          	addi	s0,sp,16
    80001a40:	0000a797          	auipc	a5,0xa
    80001a44:	a5878793          	addi	a5,a5,-1448 # 8000b498 <_ZTV9Semaphore+0x10>
    80001a48:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80001a4c:	00850513          	addi	a0,a0,8
    80001a50:	00000097          	auipc	ra,0x0
    80001a54:	ad8080e7          	jalr	-1320(ra) # 80001528 <_Z8sem_openPP4_semj>
}
    80001a58:	00813083          	ld	ra,8(sp)
    80001a5c:	00013403          	ld	s0,0(sp)
    80001a60:	01010113          	addi	sp,sp,16
    80001a64:	00008067          	ret

0000000080001a68 <_ZN9Semaphore6signalEv>:
    if (myHandle == nullptr) {
    80001a68:	00853503          	ld	a0,8(a0)
    80001a6c:	02050663          	beqz	a0,80001a98 <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    80001a70:	ff010113          	addi	sp,sp,-16
    80001a74:	00113423          	sd	ra,8(sp)
    80001a78:	00813023          	sd	s0,0(sp)
    80001a7c:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001a80:	00000097          	auipc	ra,0x0
    80001a84:	b6c080e7          	jalr	-1172(ra) # 800015ec <_Z10sem_signalP4_sem>
}
    80001a88:	00813083          	ld	ra,8(sp)
    80001a8c:	00013403          	ld	s0,0(sp)
    80001a90:	01010113          	addi	sp,sp,16
    80001a94:	00008067          	ret
        return -1;
    80001a98:	fff00513          	li	a0,-1
}
    80001a9c:	00008067          	ret

0000000080001aa0 <_ZN9Semaphore4waitEv>:
    if (myHandle == nullptr) {
    80001aa0:	00853503          	ld	a0,8(a0)
    80001aa4:	02050663          	beqz	a0,80001ad0 <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    80001aa8:	ff010113          	addi	sp,sp,-16
    80001aac:	00113423          	sd	ra,8(sp)
    80001ab0:	00813023          	sd	s0,0(sp)
    80001ab4:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001ab8:	00000097          	auipc	ra,0x0
    80001abc:	af4080e7          	jalr	-1292(ra) # 800015ac <_Z8sem_waitP4_sem>
}
    80001ac0:	00813083          	ld	ra,8(sp)
    80001ac4:	00013403          	ld	s0,0(sp)
    80001ac8:	01010113          	addi	sp,sp,16
    80001acc:	00008067          	ret
        return -1;
    80001ad0:	fff00513          	li	a0,-1
}
    80001ad4:	00008067          	ret

0000000080001ad8 <_ZN9Semaphore7trywaitEv>:
    if (myHandle == nullptr) {
    80001ad8:	00853503          	ld	a0,8(a0)
    80001adc:	02050663          	beqz	a0,80001b08 <_ZN9Semaphore7trywaitEv+0x30>
int Semaphore::trywait() {
    80001ae0:	ff010113          	addi	sp,sp,-16
    80001ae4:	00113423          	sd	ra,8(sp)
    80001ae8:	00813023          	sd	s0,0(sp)
    80001aec:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    80001af0:	00000097          	auipc	ra,0x0
    80001af4:	b3c080e7          	jalr	-1220(ra) # 8000162c <_Z11sem_trywaitP4_sem>
}
    80001af8:	00813083          	ld	ra,8(sp)
    80001afc:	00013403          	ld	s0,0(sp)
    80001b00:	01010113          	addi	sp,sp,16
    80001b04:	00008067          	ret
        return -1;
    80001b08:	fff00513          	li	a0,-1
}
    80001b0c:	00008067          	ret

0000000080001b10 <_ZN7Console4getcEv>:


char Console::getc() {
    80001b10:	ff010113          	addi	sp,sp,-16
    80001b14:	00113423          	sd	ra,8(sp)
    80001b18:	00813023          	sd	s0,0(sp)
    80001b1c:	01010413          	addi	s0,sp,16
    return ::getc();
    80001b20:	00000097          	auipc	ra,0x0
    80001b24:	b4c080e7          	jalr	-1204(ra) # 8000166c <_Z4getcv>
}
    80001b28:	00813083          	ld	ra,8(sp)
    80001b2c:	00013403          	ld	s0,0(sp)
    80001b30:	01010113          	addi	sp,sp,16
    80001b34:	00008067          	ret

0000000080001b38 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80001b38:	ff010113          	addi	sp,sp,-16
    80001b3c:	00113423          	sd	ra,8(sp)
    80001b40:	00813023          	sd	s0,0(sp)
    80001b44:	01010413          	addi	s0,sp,16
    ::putc(c);
    80001b48:	00000097          	auipc	ra,0x0
    80001b4c:	b64080e7          	jalr	-1180(ra) # 800016ac <_Z4putcc>
    80001b50:	00813083          	ld	ra,8(sp)
    80001b54:	00013403          	ld	s0,0(sp)
    80001b58:	01010113          	addi	sp,sp,16
    80001b5c:	00008067          	ret

0000000080001b60 <_ZN6Thread3runEv>:
    static void wrapperRun(void *arg);

protected:
    Thread();

    virtual void run() {}
    80001b60:	ff010113          	addi	sp,sp,-16
    80001b64:	00813423          	sd	s0,8(sp)
    80001b68:	01010413          	addi	s0,sp,16
    80001b6c:	00813403          	ld	s0,8(sp)
    80001b70:	01010113          	addi	sp,sp,16
    80001b74:	00008067          	ret

0000000080001b78 <_ZN5Riscv13obradaprekidaEmmmmm>:
    ILLEGAL_INSTRTUCION = 2,
    ILLEGAL_READ_ADDRESS = 5,
    ILLEGAL_WRITE_ADDRESS = 7,
};

void Riscv::obradaprekida(uint64 code, uint64 arg1, uint64 arg2, uint64 arg3, uint64 arg4) {
    80001b78:	fc010113          	addi	sp,sp,-64
    80001b7c:	02113c23          	sd	ra,56(sp)
    80001b80:	02813823          	sd	s0,48(sp)
    80001b84:	02913423          	sd	s1,40(sp)
    80001b88:	03213023          	sd	s2,32(sp)
    80001b8c:	04010413          	addi	s0,sp,64
    80001b90:	00050793          	mv	a5,a0
    80001b94:	00058513          	mv	a0,a1
    80001b98:	00060593          	mv	a1,a2
    80001b9c:	00068613          	mv	a2,a3
    80001ba0:	00070693          	mv	a3,a4
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001ba4:	14202773          	csrr	a4,scause
    80001ba8:	fce43c23          	sd	a4,-40(s0)
    return scause;
    80001bac:	fd843703          	ld	a4,-40(s0)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001bb0:	14102873          	csrr	a6,sepc
    80001bb4:	fd043823          	sd	a6,-48(s0)
    return sepc;
    80001bb8:	fd043483          	ld	s1,-48(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001bbc:	10002873          	csrr	a6,sstatus
    80001bc0:	fd043423          	sd	a6,-56(s0)
    return sstatus;
    80001bc4:	fc843903          	ld	s2,-56(s0)
    uint64 scause = r_scause();
    uint64 sepc = r_sepc(); //cita pc
    uint64 sstatus = r_sstatus();//cita status registar

    if (scause == SYSCALL_S or scause == SYSCALL_U) {
    80001bc8:	ff870893          	addi	a7,a4,-8
    80001bcc:	00100813          	li	a6,1
    80001bd0:	05187863          	bgeu	a6,a7,80001c20 <_ZN5Riscv13obradaprekidaEmmmmm+0xa8>
                _sem::sem_trywait((sem_t) arg1);
                break;
        }
        w_sstatus(sstatus);
        w_sepc(sepc + 4);
    } else if (scause == TIMER) {
    80001bd4:	fff00793          	li	a5,-1
    80001bd8:	03f79793          	slli	a5,a5,0x3f
    80001bdc:	00178793          	addi	a5,a5,1
    80001be0:	14f70063          	beq	a4,a5,80001d20 <_ZN5Riscv13obradaprekidaEmmmmm+0x1a8>
        mc_sip(SIP_SSIE);
    } else if (scause == CONSOLE) {
    80001be4:	fff00793          	li	a5,-1
    80001be8:	03f79793          	slli	a5,a5,0x3f
    80001bec:	00978793          	addi	a5,a5,9
    80001bf0:	12f70e63          	beq	a4,a5,80001d2c <_ZN5Riscv13obradaprekidaEmmmmm+0x1b4>
        console_handler();
    } else if (scause == ILLEGAL_INSTRTUCION) {
    80001bf4:	00200793          	li	a5,2
    80001bf8:	14f70063          	beq	a4,a5,80001d38 <_ZN5Riscv13obradaprekidaEmmmmm+0x1c0>
        printString("ILLEGAL INSTRUCTION");
        while (true);
    } else if (scause == ILLEGAL_READ_ADDRESS) {
    80001bfc:	00500793          	li	a5,5
    80001c00:	14f70663          	beq	a4,a5,80001d4c <_ZN5Riscv13obradaprekidaEmmmmm+0x1d4>
        printString("ILLEGAL READ ADDRESS");
        while (true);
    } else if (scause == ILLEGAL_WRITE_ADDRESS) {
    80001c04:	00700793          	li	a5,7
    80001c08:	04f71863          	bne	a4,a5,80001c58 <_ZN5Riscv13obradaprekidaEmmmmm+0xe0>
        printString("ILLEGAL WRITE ADDRESS");
    80001c0c:	00007517          	auipc	a0,0x7
    80001c10:	44450513          	addi	a0,a0,1092 # 80009050 <CONSOLE_STATUS+0x40>
    80001c14:	00003097          	auipc	ra,0x3
    80001c18:	1e4080e7          	jalr	484(ra) # 80004df8 <_Z11printStringPKc>
        while (true);
    80001c1c:	0000006f          	j	80001c1c <_ZN5Riscv13obradaprekidaEmmmmm+0xa4>
        switch (code) {
    80001c20:	04200713          	li	a4,66
    80001c24:	02f76463          	bltu	a4,a5,80001c4c <_ZN5Riscv13obradaprekidaEmmmmm+0xd4>
    80001c28:	00279793          	slli	a5,a5,0x2
    80001c2c:	00007717          	auipc	a4,0x7
    80001c30:	43c70713          	addi	a4,a4,1084 # 80009068 <CONSOLE_STATUS+0x58>
    80001c34:	00e787b3          	add	a5,a5,a4
    80001c38:	0007a783          	lw	a5,0(a5)
    80001c3c:	00e787b3          	add	a5,a5,a4
    80001c40:	00078067          	jr	a5
                MemoryAllocator::mem_alloc(arg1);
    80001c44:	00001097          	auipc	ra,0x1
    80001c48:	9ec080e7          	jalr	-1556(ra) # 80002630 <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001c4c:	10091073          	csrw	sstatus,s2
        w_sepc(sepc + 4);
    80001c50:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001c54:	14149073          	csrw	sepc,s1
    }
}
    80001c58:	03813083          	ld	ra,56(sp)
    80001c5c:	03013403          	ld	s0,48(sp)
    80001c60:	02813483          	ld	s1,40(sp)
    80001c64:	02013903          	ld	s2,32(sp)
    80001c68:	04010113          	addi	sp,sp,64
    80001c6c:	00008067          	ret
                MemoryAllocator::mem_free((void *) arg1);
    80001c70:	00001097          	auipc	ra,0x1
    80001c74:	af8080e7          	jalr	-1288(ra) # 80002768 <_ZN15MemoryAllocator8mem_freeEPv>
                break;
    80001c78:	fd5ff06f          	j	80001c4c <_ZN5Riscv13obradaprekidaEmmmmm+0xd4>
                __getc();
    80001c7c:	00006097          	auipc	ra,0x6
    80001c80:	4bc080e7          	jalr	1212(ra) # 80008138 <__getc>
                break;
    80001c84:	fc9ff06f          	j	80001c4c <_ZN5Riscv13obradaprekidaEmmmmm+0xd4>
                __putc(arg1);
    80001c88:	0ff57513          	andi	a0,a0,255
    80001c8c:	00006097          	auipc	ra,0x6
    80001c90:	470080e7          	jalr	1136(ra) # 800080fc <__putc>
                break;
    80001c94:	fb9ff06f          	j	80001c4c <_ZN5Riscv13obradaprekidaEmmmmm+0xd4>
                TCB::createThread((thread_t *) arg1, (TCB::Body) arg2, (void *) arg3, (void *) arg4);
    80001c98:	00000097          	auipc	ra,0x0
    80001c9c:	2fc080e7          	jalr	764(ra) # 80001f94 <_ZN3TCB12createThreadEPPS_PFvPvES2_S2_>
                break;
    80001ca0:	fadff06f          	j	80001c4c <_ZN5Riscv13obradaprekidaEmmmmm+0xd4>
                TCB::thread_exit();
    80001ca4:	00000097          	auipc	ra,0x0
    80001ca8:	39c080e7          	jalr	924(ra) # 80002040 <_ZN3TCB11thread_exitEv>
                break;
    80001cac:	fa1ff06f          	j	80001c4c <_ZN5Riscv13obradaprekidaEmmmmm+0xd4>
                TCB::dispatch();
    80001cb0:	00000097          	auipc	ra,0x0
    80001cb4:	134080e7          	jalr	308(ra) # 80001de4 <_ZN3TCB8dispatchEv>
                break;
    80001cb8:	f95ff06f          	j	80001c4c <_ZN5Riscv13obradaprekidaEmmmmm+0xd4>
                ((thread_t) arg1)->join();
    80001cbc:	00000097          	auipc	ra,0x0
    80001cc0:	404080e7          	jalr	1028(ra) # 800020c0 <_ZN3TCB4joinEv>
                break;
    80001cc4:	f89ff06f          	j	80001c4c <_ZN5Riscv13obradaprekidaEmmmmm+0xd4>
                TCB::waitForAll();
    80001cc8:	00000097          	auipc	ra,0x0
    80001ccc:	438080e7          	jalr	1080(ra) # 80002100 <_ZN3TCB10waitForAllEv>
                break;
    80001cd0:	f7dff06f          	j	80001c4c <_ZN5Riscv13obradaprekidaEmmmmm+0xd4>
                TCB::setMaxThread(arg1);
    80001cd4:	0005051b          	sext.w	a0,a0
    80001cd8:	00000097          	auipc	ra,0x0
    80001cdc:	474080e7          	jalr	1140(ra) # 8000214c <_ZN3TCB12setMaxThreadEi>
                break;
    80001ce0:	f6dff06f          	j	80001c4c <_ZN5Riscv13obradaprekidaEmmmmm+0xd4>
                _sem::sem_open((sem_t *) arg1, (long) arg2);
    80001ce4:	00000097          	auipc	ra,0x0
    80001ce8:	488080e7          	jalr	1160(ra) # 8000216c <_ZN4_sem8sem_openEPPS_l>
                break;
    80001cec:	f61ff06f          	j	80001c4c <_ZN5Riscv13obradaprekidaEmmmmm+0xd4>
                _sem::sem_close((sem_t) arg1);
    80001cf0:	00000097          	auipc	ra,0x0
    80001cf4:	4fc080e7          	jalr	1276(ra) # 800021ec <_ZN4_sem9sem_closeEPS_>
                break;
    80001cf8:	f55ff06f          	j	80001c4c <_ZN5Riscv13obradaprekidaEmmmmm+0xd4>
                _sem::sem_wait((sem_t) arg1);
    80001cfc:	00000097          	auipc	ra,0x0
    80001d00:	5a8080e7          	jalr	1448(ra) # 800022a4 <_ZN4_sem8sem_waitEPS_>
                break;
    80001d04:	f49ff06f          	j	80001c4c <_ZN5Riscv13obradaprekidaEmmmmm+0xd4>
                _sem::sem_signal((sem_t) arg1);
    80001d08:	00000097          	auipc	ra,0x0
    80001d0c:	660080e7          	jalr	1632(ra) # 80002368 <_ZN4_sem10sem_signalEPS_>
                break;
    80001d10:	f3dff06f          	j	80001c4c <_ZN5Riscv13obradaprekidaEmmmmm+0xd4>
                _sem::sem_trywait((sem_t) arg1);
    80001d14:	00000097          	auipc	ra,0x0
    80001d18:	6f8080e7          	jalr	1784(ra) # 8000240c <_ZN4_sem11sem_trywaitEPS_>
                break;
    80001d1c:	f31ff06f          	j	80001c4c <_ZN5Riscv13obradaprekidaEmmmmm+0xd4>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001d20:	00200793          	li	a5,2
    80001d24:	1447b073          	csrc	sip,a5
}
    80001d28:	f31ff06f          	j	80001c58 <_ZN5Riscv13obradaprekidaEmmmmm+0xe0>
        console_handler();
    80001d2c:	00006097          	auipc	ra,0x6
    80001d30:	444080e7          	jalr	1092(ra) # 80008170 <console_handler>
    80001d34:	f25ff06f          	j	80001c58 <_ZN5Riscv13obradaprekidaEmmmmm+0xe0>
        printString("ILLEGAL INSTRUCTION");
    80001d38:	00007517          	auipc	a0,0x7
    80001d3c:	2e850513          	addi	a0,a0,744 # 80009020 <CONSOLE_STATUS+0x10>
    80001d40:	00003097          	auipc	ra,0x3
    80001d44:	0b8080e7          	jalr	184(ra) # 80004df8 <_Z11printStringPKc>
        while (true);
    80001d48:	0000006f          	j	80001d48 <_ZN5Riscv13obradaprekidaEmmmmm+0x1d0>
        printString("ILLEGAL READ ADDRESS");
    80001d4c:	00007517          	auipc	a0,0x7
    80001d50:	2ec50513          	addi	a0,a0,748 # 80009038 <CONSOLE_STATUS+0x28>
    80001d54:	00003097          	auipc	ra,0x3
    80001d58:	0a4080e7          	jalr	164(ra) # 80004df8 <_Z11printStringPKc>
        while (true);
    80001d5c:	0000006f          	j	80001d5c <_ZN5Riscv13obradaprekidaEmmmmm+0x1e4>

0000000080001d60 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie() {
    80001d60:	ff010113          	addi	sp,sp,-16
    80001d64:	00813423          	sd	s0,8(sp)
    80001d68:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001d6c:	10000793          	li	a5,256
    80001d70:	1007b073          	csrc	sstatus,a5
    Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    __asm__ volatile("csrw sepc, ra");
    80001d74:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001d78:	10200073          	sret
    80001d7c:	00813403          	ld	s0,8(sp)
    80001d80:	01010113          	addi	sp,sp,16
    80001d84:	00008067          	ret

0000000080001d88 <_ZN3TCB14thread_wrapperEv>:
    _sem::sem_signal(max_sem);
    TCB::dispatch();
    return 0;
}

void TCB::thread_wrapper() {
    80001d88:	fe010113          	addi	sp,sp,-32
    80001d8c:	00113c23          	sd	ra,24(sp)
    80001d90:	00813823          	sd	s0,16(sp)
    80001d94:	00913423          	sd	s1,8(sp)
    80001d98:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001d9c:	00000097          	auipc	ra,0x0
    80001da0:	fc4080e7          	jalr	-60(ra) # 80001d60 <_ZN5Riscv10popSppSpieEv>
    sem_wait(max_sem);
    80001da4:	0000a497          	auipc	s1,0xa
    80001da8:	95c48493          	addi	s1,s1,-1700 # 8000b700 <_ZN3TCB7max_semE>
    80001dac:	0004b503          	ld	a0,0(s1)
    80001db0:	fffff097          	auipc	ra,0xfffff
    80001db4:	7fc080e7          	jalr	2044(ra) # 800015ac <_Z8sem_waitP4_sem>
    running->body(running->arg);
    80001db8:	0084b783          	ld	a5,8(s1)
    80001dbc:	0007b703          	ld	a4,0(a5)
    80001dc0:	0087b503          	ld	a0,8(a5)
    80001dc4:	000700e7          	jalr	a4
    ::thread_exit();
    80001dc8:	fffff097          	auipc	ra,0xfffff
    80001dcc:	62c080e7          	jalr	1580(ra) # 800013f4 <_Z11thread_exitv>
}
    80001dd0:	01813083          	ld	ra,24(sp)
    80001dd4:	01013403          	ld	s0,16(sp)
    80001dd8:	00813483          	ld	s1,8(sp)
    80001ddc:	02010113          	addi	sp,sp,32
    80001de0:	00008067          	ret

0000000080001de4 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() { //promena konteksta, trenutnu zavrsenu zameni nekom drugom
    80001de4:	fe010113          	addi	sp,sp,-32
    80001de8:	00113c23          	sd	ra,24(sp)
    80001dec:	00813823          	sd	s0,16(sp)
    80001df0:	00913423          	sd	s1,8(sp)
    80001df4:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001df8:	0000a497          	auipc	s1,0xa
    80001dfc:	9104b483          	ld	s1,-1776(s1) # 8000b708 <_ZN3TCB7runningE>
    if (old != nullptr && !old->isFinished() && !old->isBlocked()) {
    80001e00:	00048a63          	beqz	s1,80001e14 <_ZN3TCB8dispatchEv+0x30>

class TCB {
public:
    using Body = void (*)(void *);

    bool isFinished() const { return finished; }
    80001e04:	0284c783          	lbu	a5,40(s1)
    80001e08:	00079663          	bnez	a5,80001e14 <_ZN3TCB8dispatchEv+0x30>

    void setFinished(bool value) { finished = value; }

    bool isBlocked() const { return blocked; }
    80001e0c:	0294c783          	lbu	a5,41(s1)
    80001e10:	02078c63          	beqz	a5,80001e48 <_ZN3TCB8dispatchEv+0x64>
    running = Scheduler::get();
    80001e14:	00000097          	auipc	ra,0x0
    80001e18:	724080e7          	jalr	1828(ra) # 80002538 <_ZN9Scheduler3getEv>
    80001e1c:	0000a797          	auipc	a5,0xa
    80001e20:	8ea7b623          	sd	a0,-1812(a5) # 8000b708 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001e24:	01850593          	addi	a1,a0,24
    80001e28:	01848513          	addi	a0,s1,24
    80001e2c:	fffff097          	auipc	ra,0xfffff
    80001e30:	374080e7          	jalr	884(ra) # 800011a0 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001e34:	01813083          	ld	ra,24(sp)
    80001e38:	01013403          	ld	s0,16(sp)
    80001e3c:	00813483          	ld	s1,8(sp)
    80001e40:	02010113          	addi	sp,sp,32
    80001e44:	00008067          	ret
        Scheduler::put(old);
    80001e48:	00048513          	mv	a0,s1
    80001e4c:	00000097          	auipc	ra,0x0
    80001e50:	680080e7          	jalr	1664(ra) # 800024cc <_ZN9Scheduler3putEP3TCB>
    80001e54:	fc1ff06f          	j	80001e14 <_ZN3TCB8dispatchEv+0x30>

0000000080001e58 <_ZN3TCB5yieldEv>:
void TCB::yield() {
    80001e58:	ff010113          	addi	sp,sp,-16
    80001e5c:	00113423          	sd	ra,8(sp)
    80001e60:	00813023          	sd	s0,0(sp)
    80001e64:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    80001e68:	fffff097          	auipc	ra,0xfffff
    80001e6c:	34c080e7          	jalr	844(ra) # 800011b4 <_ZN5Riscv13pushRegistersEv>
    TCB::dispatch();
    80001e70:	00000097          	auipc	ra,0x0
    80001e74:	f74080e7          	jalr	-140(ra) # 80001de4 <_ZN3TCB8dispatchEv>
    Riscv::popRegisters();
    80001e78:	fffff097          	auipc	ra,0xfffff
    80001e7c:	3b8080e7          	jalr	952(ra) # 80001230 <_ZN5Riscv12popRegistersEv>
}
    80001e80:	00813083          	ld	ra,8(sp)
    80001e84:	00013403          	ld	s0,0(sp)
    80001e88:	01010113          	addi	sp,sp,16
    80001e8c:	00008067          	ret

0000000080001e90 <_ZN3TCBC1EPFvPvES0_S0_>:
TCB::TCB(Body body, void *arg, void *stack_space) : body(body), arg(arg), finished(false),
    80001e90:	fe010113          	addi	sp,sp,-32
    80001e94:	00113c23          	sd	ra,24(sp)
    80001e98:	00813823          	sd	s0,16(sp)
    80001e9c:	00913423          	sd	s1,8(sp)
    80001ea0:	01213023          	sd	s2,0(sp)
    80001ea4:	02010413          	addi	s0,sp,32
    80001ea8:	00050493          	mv	s1,a0
    80001eac:	00058913          	mv	s2,a1
                                                    blocked(false) {// da li moze drugacije
    80001eb0:	00b53023          	sd	a1,0(a0)
    80001eb4:	00c53423          	sd	a2,8(a0)
    80001eb8:	02050423          	sb	zero,40(a0)
    80001ebc:	020504a3          	sb	zero,41(a0)
        };

        public:

        Elem *head, *tail;
        List() : head(0), tail(0) {}
    80001ec0:	02053c23          	sd	zero,56(a0)
    80001ec4:	04053023          	sd	zero,64(a0)
    if (stack_space) {
    80001ec8:	08068663          	beqz	a3,80001f54 <_ZN3TCBC1EPFvPvES0_S0_+0xc4>
        stack = static_cast<uint64 *>(stack_space);
    80001ecc:	00d53823          	sd	a3,16(a0)
    if (body) {
    80001ed0:	0a090263          	beqz	s2,80001f74 <_ZN3TCBC1EPFvPvES0_S0_+0xe4>
        Scheduler::put(this);
    80001ed4:	00048513          	mv	a0,s1
    80001ed8:	00000097          	auipc	ra,0x0
    80001edc:	5f4080e7          	jalr	1524(ra) # 800024cc <_ZN9Scheduler3putEP3TCB>
        running->children.addLast(this);
    80001ee0:	0000a917          	auipc	s2,0xa
    80001ee4:	82893903          	ld	s2,-2008(s2) # 8000b708 <_ZN3TCB7runningE>
            if (!tail) { tail = head; }
        }

        void addLast(T *data)
        {
            Elem *elem = new Elem(data, 0);
    80001ee8:	01000513          	li	a0,16
    80001eec:	00000097          	auipc	ra,0x0
    80001ef0:	954080e7          	jalr	-1708(ra) # 80001840 <_Znwm>
            Elem(T *data, Elem *next) : data(data), next(next) {}
    80001ef4:	00953023          	sd	s1,0(a0)
    80001ef8:	00053423          	sd	zero,8(a0)
            if (tail)
    80001efc:	04093783          	ld	a5,64(s2)
    80001f00:	06078463          	beqz	a5,80001f68 <_ZN3TCBC1EPFvPvES0_S0_+0xd8>
            {
                tail->next = elem;
    80001f04:	00a7b423          	sd	a0,8(a5)
                tail = elem;
    80001f08:	04a93023          	sd	a0,64(s2)
    sem_open(&this->joiner, 0);
    80001f0c:	00000593          	li	a1,0
    80001f10:	03048513          	addi	a0,s1,48
    80001f14:	fffff097          	auipc	ra,0xfffff
    80001f18:	614080e7          	jalr	1556(ra) # 80001528 <_Z8sem_openPP4_semj>
    context.ra = (uint64) &thread_wrapper;
    80001f1c:	00000797          	auipc	a5,0x0
    80001f20:	e6c78793          	addi	a5,a5,-404 # 80001d88 <_ZN3TCB14thread_wrapperEv>
    80001f24:	00f4bc23          	sd	a5,24(s1)
    context.sp = (uint64) ((char *) stack + DEFAULT_STACK_SIZE - 1);
    80001f28:	0104b783          	ld	a5,16(s1)
    80001f2c:	00001737          	lui	a4,0x1
    80001f30:	fff70713          	addi	a4,a4,-1 # fff <_entry-0x7ffff001>
    80001f34:	00e787b3          	add	a5,a5,a4
    80001f38:	02f4b023          	sd	a5,32(s1)
}
    80001f3c:	01813083          	ld	ra,24(sp)
    80001f40:	01013403          	ld	s0,16(sp)
    80001f44:	00813483          	ld	s1,8(sp)
    80001f48:	00013903          	ld	s2,0(sp)
    80001f4c:	02010113          	addi	sp,sp,32
    80001f50:	00008067          	ret
        stack = static_cast<uint64 *>(MemoryAllocator::mem_alloc(stack_size_in_blocks * MEM_BLOCK_SIZE));
    80001f54:	00008537          	lui	a0,0x8
    80001f58:	00000097          	auipc	ra,0x0
    80001f5c:	6d8080e7          	jalr	1752(ra) # 80002630 <_ZN15MemoryAllocator9mem_allocEm>
    80001f60:	00a4b823          	sd	a0,16(s1)
    80001f64:	f6dff06f          	j	80001ed0 <_ZN3TCBC1EPFvPvES0_S0_+0x40>
            } else
            {
                head = tail = elem;
    80001f68:	04a93023          	sd	a0,64(s2)
    80001f6c:	02a93c23          	sd	a0,56(s2)
    80001f70:	f9dff06f          	j	80001f0c <_ZN3TCBC1EPFvPvES0_S0_+0x7c>
        TCB::running = this;
    80001f74:	00009517          	auipc	a0,0x9
    80001f78:	78c50513          	addi	a0,a0,1932 # 8000b700 <_ZN3TCB7max_semE>
    80001f7c:	00953423          	sd	s1,8(a0)
        _sem::sem_open(&max_sem, max_threads);
    80001f80:	00009597          	auipc	a1,0x9
    80001f84:	5305b583          	ld	a1,1328(a1) # 8000b4b0 <_ZN3TCB11max_threadsE>
    80001f88:	00000097          	auipc	ra,0x0
    80001f8c:	1e4080e7          	jalr	484(ra) # 8000216c <_ZN4_sem8sem_openEPPS_l>
    80001f90:	f7dff06f          	j	80001f0c <_ZN3TCBC1EPFvPvES0_S0_+0x7c>

0000000080001f94 <_ZN3TCB12createThreadEPPS_PFvPvES2_S2_>:
    if (!handle) {
    80001f94:	08050463          	beqz	a0,8000201c <_ZN3TCB12createThreadEPPS_PFvPvES2_S2_+0x88>
int TCB::createThread(thread_t *handle, Body body, void *arg, void *stack_space) {
    80001f98:	fc010113          	addi	sp,sp,-64
    80001f9c:	02113c23          	sd	ra,56(sp)
    80001fa0:	02813823          	sd	s0,48(sp)
    80001fa4:	02913423          	sd	s1,40(sp)
    80001fa8:	03213023          	sd	s2,32(sp)
    80001fac:	01313c23          	sd	s3,24(sp)
    80001fb0:	01413823          	sd	s4,16(sp)
    80001fb4:	01513423          	sd	s5,8(sp)
    80001fb8:	04010413          	addi	s0,sp,64
    80001fbc:	00050493          	mv	s1,a0
    80001fc0:	00058913          	mv	s2,a1
    80001fc4:	00060993          	mv	s3,a2
    80001fc8:	00068a13          	mv	s4,a3
    TCB *new_thread = new TCB(body, arg, stack_space); //drugi konstruktor da li imati odma samo jedan ili je ovako ok
    80001fcc:	04800513          	li	a0,72
    80001fd0:	00000097          	auipc	ra,0x0
    80001fd4:	870080e7          	jalr	-1936(ra) # 80001840 <_Znwm>
    80001fd8:	00050a93          	mv	s5,a0
    80001fdc:	000a0693          	mv	a3,s4
    80001fe0:	00098613          	mv	a2,s3
    80001fe4:	00090593          	mv	a1,s2
    80001fe8:	00000097          	auipc	ra,0x0
    80001fec:	ea8080e7          	jalr	-344(ra) # 80001e90 <_ZN3TCBC1EPFvPvES0_S0_>
    *handle = new_thread;
    80001ff0:	0154b023          	sd	s5,0(s1)
    return 0;
    80001ff4:	00000513          	li	a0,0
}
    80001ff8:	03813083          	ld	ra,56(sp)
    80001ffc:	03013403          	ld	s0,48(sp)
    80002000:	02813483          	ld	s1,40(sp)
    80002004:	02013903          	ld	s2,32(sp)
    80002008:	01813983          	ld	s3,24(sp)
    8000200c:	01013a03          	ld	s4,16(sp)
    80002010:	00813a83          	ld	s5,8(sp)
    80002014:	04010113          	addi	sp,sp,64
    80002018:	00008067          	ret
        return -1;
    8000201c:	fff00513          	li	a0,-1
}
    80002020:	00008067          	ret
    80002024:	00050493          	mv	s1,a0
    TCB *new_thread = new TCB(body, arg, stack_space); //drugi konstruktor da li imati odma samo jedan ili je ovako ok
    80002028:	000a8513          	mv	a0,s5
    8000202c:	00000097          	auipc	ra,0x0
    80002030:	864080e7          	jalr	-1948(ra) # 80001890 <_ZdlPv>
    80002034:	00048513          	mv	a0,s1
    80002038:	0000b097          	auipc	ra,0xb
    8000203c:	810080e7          	jalr	-2032(ra) # 8000c848 <_Unwind_Resume>

0000000080002040 <_ZN3TCB11thread_exitEv>:
    if (running == nullptr) {
    80002040:	00009797          	auipc	a5,0x9
    80002044:	6c87b783          	ld	a5,1736(a5) # 8000b708 <_ZN3TCB7runningE>
    80002048:	06078863          	beqz	a5,800020b8 <_ZN3TCB11thread_exitEv+0x78>
int TCB::thread_exit() { // da li treba jos nesto
    8000204c:	fe010113          	addi	sp,sp,-32
    80002050:	00113c23          	sd	ra,24(sp)
    80002054:	00813823          	sd	s0,16(sp)
    80002058:	00913423          	sd	s1,8(sp)
    8000205c:	02010413          	addi	s0,sp,32
    void setFinished(bool value) { finished = value; }
    80002060:	00100713          	li	a4,1
    80002064:	02e78423          	sb	a4,40(a5)
    MemoryAllocator::mem_free(running->stack);
    80002068:	0107b503          	ld	a0,16(a5)
    8000206c:	00000097          	auipc	ra,0x0
    80002070:	6fc080e7          	jalr	1788(ra) # 80002768 <_ZN15MemoryAllocator8mem_freeEPv>
    _sem::sem_close(running->joiner);
    80002074:	00009497          	auipc	s1,0x9
    80002078:	68c48493          	addi	s1,s1,1676 # 8000b700 <_ZN3TCB7max_semE>
    8000207c:	0084b783          	ld	a5,8(s1)
    80002080:	0307b503          	ld	a0,48(a5)
    80002084:	00000097          	auipc	ra,0x0
    80002088:	168080e7          	jalr	360(ra) # 800021ec <_ZN4_sem9sem_closeEPS_>
    _sem::sem_signal(max_sem);
    8000208c:	0004b503          	ld	a0,0(s1)
    80002090:	00000097          	auipc	ra,0x0
    80002094:	2d8080e7          	jalr	728(ra) # 80002368 <_ZN4_sem10sem_signalEPS_>
    TCB::dispatch();
    80002098:	00000097          	auipc	ra,0x0
    8000209c:	d4c080e7          	jalr	-692(ra) # 80001de4 <_ZN3TCB8dispatchEv>
    return 0;
    800020a0:	00000513          	li	a0,0
}
    800020a4:	01813083          	ld	ra,24(sp)
    800020a8:	01013403          	ld	s0,16(sp)
    800020ac:	00813483          	ld	s1,8(sp)
    800020b0:	02010113          	addi	sp,sp,32
    800020b4:	00008067          	ret
        return -1;
    800020b8:	fff00513          	li	a0,-1
}
    800020bc:	00008067          	ret

00000000800020c0 <_ZN3TCB4joinEv>:
    bool isFinished() const { return finished; }
    800020c0:	02854783          	lbu	a5,40(a0)

int TCB::join() {
    if (this->isFinished()) return -1;
    800020c4:	02079a63          	bnez	a5,800020f8 <_ZN3TCB4joinEv+0x38>
int TCB::join() {
    800020c8:	ff010113          	addi	sp,sp,-16
    800020cc:	00113423          	sd	ra,8(sp)
    800020d0:	00813023          	sd	s0,0(sp)
    800020d4:	01010413          	addi	s0,sp,16
    sem_wait(this->joiner);
    800020d8:	03053503          	ld	a0,48(a0)
    800020dc:	fffff097          	auipc	ra,0xfffff
    800020e0:	4d0080e7          	jalr	1232(ra) # 800015ac <_Z8sem_waitP4_sem>
    return 0;
    800020e4:	00000513          	li	a0,0
}
    800020e8:	00813083          	ld	ra,8(sp)
    800020ec:	00013403          	ld	s0,0(sp)
    800020f0:	01010113          	addi	sp,sp,16
    800020f4:	00008067          	ret
    if (this->isFinished()) return -1;
    800020f8:	fff00513          	li	a0,-1
}
    800020fc:	00008067          	ret

0000000080002100 <_ZN3TCB10waitForAllEv>:

void TCB::waitForAll() {
    80002100:	fe010113          	addi	sp,sp,-32
    80002104:	00113c23          	sd	ra,24(sp)
    80002108:	00813823          	sd	s0,16(sp)
    8000210c:	00913423          	sd	s1,8(sp)
    80002110:	02010413          	addi	s0,sp,32
    for (auto curr = running->children.head; curr; curr = curr->next) {
    80002114:	00009797          	auipc	a5,0x9
    80002118:	5f47b783          	ld	a5,1524(a5) # 8000b708 <_ZN3TCB7runningE>
    8000211c:	0387b483          	ld	s1,56(a5)
    80002120:	00048c63          	beqz	s1,80002138 <_ZN3TCB10waitForAllEv+0x38>
        thread_join(curr->data);
    80002124:	0004b503          	ld	a0,0(s1)
    80002128:	fffff097          	auipc	ra,0xfffff
    8000212c:	348080e7          	jalr	840(ra) # 80001470 <_Z11thread_joinP3TCB>
    for (auto curr = running->children.head; curr; curr = curr->next) {
    80002130:	0084b483          	ld	s1,8(s1)
    80002134:	fedff06f          	j	80002120 <_ZN3TCB10waitForAllEv+0x20>
    }
}
    80002138:	01813083          	ld	ra,24(sp)
    8000213c:	01013403          	ld	s0,16(sp)
    80002140:	00813483          	ld	s1,8(sp)
    80002144:	02010113          	addi	sp,sp,32
    80002148:	00008067          	ret

000000008000214c <_ZN3TCB12setMaxThreadEi>:

void TCB::setMaxThread(int number) {
    8000214c:	ff010113          	addi	sp,sp,-16
    80002150:	00813423          	sd	s0,8(sp)
    80002154:	01010413          	addi	s0,sp,16
    max_threads = number;
    80002158:	00009797          	auipc	a5,0x9
    8000215c:	34a7bc23          	sd	a0,856(a5) # 8000b4b0 <_ZN3TCB11max_threadsE>
}
    80002160:	00813403          	ld	s0,8(sp)
    80002164:	01010113          	addi	sp,sp,16
    80002168:	00008067          	ret

000000008000216c <_ZN4_sem8sem_openEPPS_l>:
#include "../h/_sem.hpp"
#include "../h/scheduler.hpp"
#include "../test/printing.hpp"

int _sem::sem_open(sem_t *handle, long init) {
    if (handle == nullptr) {
    8000216c:	06050863          	beqz	a0,800021dc <_ZN4_sem8sem_openEPPS_l+0x70>
int _sem::sem_open(sem_t *handle, long init) {
    80002170:	fe010113          	addi	sp,sp,-32
    80002174:	00113c23          	sd	ra,24(sp)
    80002178:	00813823          	sd	s0,16(sp)
    8000217c:	00913423          	sd	s1,8(sp)
    80002180:	01213023          	sd	s2,0(sp)
    80002184:	02010413          	addi	s0,sp,32
    80002188:	00050493          	mv	s1,a0
    8000218c:	00058913          	mv	s2,a1
        return -1;
    }
    sem_t semaphore = new _sem();
    80002190:	02800513          	li	a0,40
    80002194:	fffff097          	auipc	ra,0xfffff
    80002198:	6ac080e7          	jalr	1708(ra) # 80001840 <_Znwm>

typedef TCB *thread_t;

class _sem {
public:
    _sem(unsigned init = 1) : value(init), closed(false) {}
    8000219c:	00009797          	auipc	a5,0x9
    800021a0:	32c78793          	addi	a5,a5,812 # 8000b4c8 <_ZTV4_sem+0x10>
    800021a4:	00f53023          	sd	a5,0(a0)
    800021a8:	00050823          	sb	zero,16(a0)
        List() : head(0), tail(0) {}
    800021ac:	00053c23          	sd	zero,24(a0)
    800021b0:	02053023          	sd	zero,32(a0)
    semaphore->value = init;
    800021b4:	01253423          	sd	s2,8(a0)
    semaphore->closed = false;
    *handle = semaphore;
    800021b8:	00a4b023          	sd	a0,0(s1)

    if (*handle == nullptr) {
    800021bc:	02050463          	beqz	a0,800021e4 <_ZN4_sem8sem_openEPPS_l+0x78>
        return -2;
    }
    return 0;
    800021c0:	00000513          	li	a0,0
}
    800021c4:	01813083          	ld	ra,24(sp)
    800021c8:	01013403          	ld	s0,16(sp)
    800021cc:	00813483          	ld	s1,8(sp)
    800021d0:	00013903          	ld	s2,0(sp)
    800021d4:	02010113          	addi	sp,sp,32
    800021d8:	00008067          	ret
        return -1;
    800021dc:	fff00513          	li	a0,-1
}
    800021e0:	00008067          	ret
        return -2;
    800021e4:	ffe00513          	li	a0,-2
    800021e8:	fddff06f          	j	800021c4 <_ZN4_sem8sem_openEPPS_l+0x58>

00000000800021ec <_ZN4_sem9sem_closeEPS_>:


int _sem::sem_close(sem_t handle) {
    if (handle == nullptr || handle->closed) {
    800021ec:	0a050063          	beqz	a0,8000228c <_ZN4_sem9sem_closeEPS_+0xa0>
int _sem::sem_close(sem_t handle) {
    800021f0:	fe010113          	addi	sp,sp,-32
    800021f4:	00113c23          	sd	ra,24(sp)
    800021f8:	00813823          	sd	s0,16(sp)
    800021fc:	00913423          	sd	s1,8(sp)
    80002200:	02010413          	addi	s0,sp,32
    80002204:	00050493          	mv	s1,a0
    if (handle == nullptr || handle->closed) {
    80002208:	01054783          	lbu	a5,16(a0)
    8000220c:	08079463          	bnez	a5,80002294 <_ZN4_sem9sem_closeEPS_+0xa8>
        return -1;
    }
    handle->closed = true;
    80002210:	00100793          	li	a5,1
    80002214:	00f50823          	sb	a5,16(a0)
            return ret;
        }

        T *peekFirst()
        {
            if (!head) { return 0; }
    80002218:	01853503          	ld	a0,24(a0)
    8000221c:	02050263          	beqz	a0,80002240 <_ZN4_sem9sem_closeEPS_+0x54>
            return head->data;
    80002220:	00053503          	ld	a0,0(a0)
    80002224:	01c0006f          	j	80002240 <_ZN4_sem9sem_closeEPS_+0x54>
            if (!head) { tail = 0; }
    80002228:	0204b023          	sd	zero,32(s1)
            delete elem;
    8000222c:	fffff097          	auipc	ra,0xfffff
    80002230:	664080e7          	jalr	1636(ra) # 80001890 <_ZdlPv>
            if (!head) { return 0; }
    80002234:	0184b783          	ld	a5,24(s1)
    80002238:	02078863          	beqz	a5,80002268 <_ZN4_sem9sem_closeEPS_+0x7c>
            return head->data;
    8000223c:	0007b503          	ld	a0,0(a5)
    for (TCB *thread = handle->blokiraneNiti.peekFirst();
         thread != nullptr; thread = handle->blokiraneNiti.peekFirst()) {
    80002240:	02050463          	beqz	a0,80002268 <_ZN4_sem9sem_closeEPS_+0x7c>

    void setBlocked(bool value) { blocked = value; }
    80002244:	020504a3          	sb	zero,41(a0)
        thread->setBlocked(false);  // Oznaci nit kao deblokiranu
        Scheduler::put(thread);     //
    80002248:	00000097          	auipc	ra,0x0
    8000224c:	284080e7          	jalr	644(ra) # 800024cc <_ZN9Scheduler3putEP3TCB>
            if (!head) { return 0; }
    80002250:	0184b503          	ld	a0,24(s1)
    80002254:	fe0500e3          	beqz	a0,80002234 <_ZN4_sem9sem_closeEPS_+0x48>
            head = head->next;
    80002258:	00853783          	ld	a5,8(a0)
    8000225c:	00f4bc23          	sd	a5,24(s1)
            if (!head) { tail = 0; }
    80002260:	fc0796e3          	bnez	a5,8000222c <_ZN4_sem9sem_closeEPS_+0x40>
    80002264:	fc5ff06f          	j	80002228 <_ZN4_sem9sem_closeEPS_+0x3c>
        handle->blokiraneNiti.removeFirst();  // ukloni  nit iz liste
    }

    if (MemoryAllocator::mem_free(handle)) {
    80002268:	00048513          	mv	a0,s1
    8000226c:	00000097          	auipc	ra,0x0
    80002270:	4fc080e7          	jalr	1276(ra) # 80002768 <_ZN15MemoryAllocator8mem_freeEPv>
    80002274:	02051463          	bnez	a0,8000229c <_ZN4_sem9sem_closeEPS_+0xb0>
        return -2;
    }

    return 0;
}
    80002278:	01813083          	ld	ra,24(sp)
    8000227c:	01013403          	ld	s0,16(sp)
    80002280:	00813483          	ld	s1,8(sp)
    80002284:	02010113          	addi	sp,sp,32
    80002288:	00008067          	ret
        return -1;
    8000228c:	fff00513          	li	a0,-1
}
    80002290:	00008067          	ret
        return -1;
    80002294:	fff00513          	li	a0,-1
    80002298:	fe1ff06f          	j	80002278 <_ZN4_sem9sem_closeEPS_+0x8c>
        return -2;
    8000229c:	ffe00513          	li	a0,-2
    800022a0:	fd9ff06f          	j	80002278 <_ZN4_sem9sem_closeEPS_+0x8c>

00000000800022a4 <_ZN4_sem8sem_waitEPS_>:


int _sem::sem_wait(sem_t id) {
    if (id == nullptr || id->closed) {
    800022a4:	0a050a63          	beqz	a0,80002358 <_ZN4_sem8sem_waitEPS_+0xb4>
int _sem::sem_wait(sem_t id) {
    800022a8:	fe010113          	addi	sp,sp,-32
    800022ac:	00113c23          	sd	ra,24(sp)
    800022b0:	00813823          	sd	s0,16(sp)
    800022b4:	00913423          	sd	s1,8(sp)
    800022b8:	01213023          	sd	s2,0(sp)
    800022bc:	02010413          	addi	s0,sp,32
    800022c0:	00050493          	mv	s1,a0
    if (id == nullptr || id->closed) {
    800022c4:	01054783          	lbu	a5,16(a0)
    800022c8:	08079c63          	bnez	a5,80002360 <_ZN4_sem8sem_waitEPS_+0xbc>
        return -1;
    }

    if (id->value-- <= 0) {//ako je semafor nula ili manji, blokiraj nit
    800022cc:	00853783          	ld	a5,8(a0)
    800022d0:	fff78713          	addi	a4,a5,-1
    800022d4:	00e53423          	sd	a4,8(a0)
    800022d8:	02f05463          	blez	a5,80002300 <_ZN4_sem8sem_waitEPS_+0x5c>
        TCB::running->setBlocked(true);  //  nit blokirana
        id->blokiraneNiti.addLast(TCB::running);  // Dodaj nit na listu blokiranih
        TCB::yield();
    }
    if (id->closed)
    800022dc:	0104c783          	lbu	a5,16(s1)
    800022e0:	06079863          	bnez	a5,80002350 <_ZN4_sem8sem_waitEPS_+0xac>
        return -1;
    else
        return 0;
    800022e4:	00000513          	li	a0,0
}
    800022e8:	01813083          	ld	ra,24(sp)
    800022ec:	01013403          	ld	s0,16(sp)
    800022f0:	00813483          	ld	s1,8(sp)
    800022f4:	00013903          	ld	s2,0(sp)
    800022f8:	02010113          	addi	sp,sp,32
    800022fc:	00008067          	ret
        TCB::running->setBlocked(true);  //  nit blokirana
    80002300:	00009797          	auipc	a5,0x9
    80002304:	3a87b783          	ld	a5,936(a5) # 8000b6a8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002308:	0007b903          	ld	s2,0(a5)
    8000230c:	00100793          	li	a5,1
    80002310:	02f904a3          	sb	a5,41(s2)
            Elem *elem = new Elem(data, 0);
    80002314:	01000513          	li	a0,16
    80002318:	fffff097          	auipc	ra,0xfffff
    8000231c:	528080e7          	jalr	1320(ra) # 80001840 <_Znwm>
            Elem(T *data, Elem *next) : data(data), next(next) {}
    80002320:	01253023          	sd	s2,0(a0)
    80002324:	00053423          	sd	zero,8(a0)
            if (tail)
    80002328:	0204b783          	ld	a5,32(s1)
    8000232c:	00078c63          	beqz	a5,80002344 <_ZN4_sem8sem_waitEPS_+0xa0>
                tail->next = elem;
    80002330:	00a7b423          	sd	a0,8(a5)
                tail = elem;
    80002334:	02a4b023          	sd	a0,32(s1)
        TCB::yield();
    80002338:	00000097          	auipc	ra,0x0
    8000233c:	b20080e7          	jalr	-1248(ra) # 80001e58 <_ZN3TCB5yieldEv>
    80002340:	f9dff06f          	j	800022dc <_ZN4_sem8sem_waitEPS_+0x38>
                head = tail = elem;
    80002344:	02a4b023          	sd	a0,32(s1)
    80002348:	00a4bc23          	sd	a0,24(s1)
    8000234c:	fedff06f          	j	80002338 <_ZN4_sem8sem_waitEPS_+0x94>
        return -1;
    80002350:	fff00513          	li	a0,-1
    80002354:	f95ff06f          	j	800022e8 <_ZN4_sem8sem_waitEPS_+0x44>
        return -1;
    80002358:	fff00513          	li	a0,-1
}
    8000235c:	00008067          	ret
        return -1;
    80002360:	fff00513          	li	a0,-1
    80002364:	f85ff06f          	j	800022e8 <_ZN4_sem8sem_waitEPS_+0x44>

0000000080002368 <_ZN4_sem10sem_signalEPS_>:


int _sem::sem_signal(sem_t id) {
    if (id == nullptr) {
    80002368:	08050a63          	beqz	a0,800023fc <_ZN4_sem10sem_signalEPS_+0x94>
int _sem::sem_signal(sem_t id) {
    8000236c:	fe010113          	addi	sp,sp,-32
    80002370:	00113c23          	sd	ra,24(sp)
    80002374:	00813823          	sd	s0,16(sp)
    80002378:	00913423          	sd	s1,8(sp)
    8000237c:	01213023          	sd	s2,0(sp)
    80002380:	02010413          	addi	s0,sp,32
    80002384:	00050493          	mv	s1,a0
        return -1;
    }

    if (id->closed) {
    80002388:	01054783          	lbu	a5,16(a0)
    8000238c:	06079c63          	bnez	a5,80002404 <_ZN4_sem10sem_signalEPS_+0x9c>
            if (!tail) { return 0; }
            return tail->data;
        }

        bool isEmpty() const {
            return head == nullptr or tail == nullptr;
    80002390:	01853503          	ld	a0,24(a0)
    80002394:	02050c63          	beqz	a0,800023cc <_ZN4_sem10sem_signalEPS_+0x64>
    80002398:	0204b783          	ld	a5,32(s1)
    8000239c:	02078863          	beqz	a5,800023cc <_ZN4_sem10sem_signalEPS_+0x64>
            head = head->next;
    800023a0:	00853783          	ld	a5,8(a0)
    800023a4:	00f4bc23          	sd	a5,24(s1)
            if (!head) { tail = 0; }
    800023a8:	04078663          	beqz	a5,800023f4 <_ZN4_sem10sem_signalEPS_+0x8c>
            T *ret = elem->data;
    800023ac:	00053903          	ld	s2,0(a0)
            delete elem;
    800023b0:	fffff097          	auipc	ra,0xfffff
    800023b4:	4e0080e7          	jalr	1248(ra) # 80001890 <_ZdlPv>

    // da li postoji neka blokirana nit

    if (!id->blokiraneNiti.isEmpty()) {
        TCB *thread = id->blokiraneNiti.removeFirst();  // ako da  deblokiraj prvu
        if (thread != nullptr) {
    800023b8:	00090a63          	beqz	s2,800023cc <_ZN4_sem10sem_signalEPS_+0x64>
    800023bc:	020904a3          	sb	zero,41(s2)

            thread->setBlocked(false);  // nije blokirana
            Scheduler::put(thread);  // ubaci
    800023c0:	00090513          	mv	a0,s2
    800023c4:	00000097          	auipc	ra,0x0
    800023c8:	108080e7          	jalr	264(ra) # 800024cc <_ZN9Scheduler3putEP3TCB>
        }
    }
    id->value++;
    800023cc:	0084b783          	ld	a5,8(s1)
    800023d0:	00178793          	addi	a5,a5,1
    800023d4:	00f4b423          	sd	a5,8(s1)
    return 0;
    800023d8:	00000513          	li	a0,0
}
    800023dc:	01813083          	ld	ra,24(sp)
    800023e0:	01013403          	ld	s0,16(sp)
    800023e4:	00813483          	ld	s1,8(sp)
    800023e8:	00013903          	ld	s2,0(sp)
    800023ec:	02010113          	addi	sp,sp,32
    800023f0:	00008067          	ret
            if (!head) { tail = 0; }
    800023f4:	0204b023          	sd	zero,32(s1)
    800023f8:	fb5ff06f          	j	800023ac <_ZN4_sem10sem_signalEPS_+0x44>
        return -1;
    800023fc:	fff00513          	li	a0,-1
}
    80002400:	00008067          	ret
        return -2;
    80002404:	ffe00513          	li	a0,-2
    80002408:	fd5ff06f          	j	800023dc <_ZN4_sem10sem_signalEPS_+0x74>

000000008000240c <_ZN4_sem11sem_trywaitEPS_>:

int _sem::sem_trywait(sem_t id) {
    8000240c:	ff010113          	addi	sp,sp,-16
    80002410:	00813423          	sd	s0,8(sp)
    80002414:	01010413          	addi	s0,sp,16
    if (id == nullptr) return -1;
    80002418:	02050263          	beqz	a0,8000243c <_ZN4_sem11sem_trywaitEPS_+0x30>
    if (id->value <= 0) { // Ako je semafor vec zaključan, vraca 1
    8000241c:	00853783          	ld	a5,8(a0)
    80002420:	02f05263          	blez	a5,80002444 <_ZN4_sem11sem_trywaitEPS_+0x38>
        return 1;
    }
    id->value--; // semafor nije zaključan, smanji vrednost semafora i vrati 0
    80002424:	fff78793          	addi	a5,a5,-1
    80002428:	00f53423          	sd	a5,8(a0)
    return 0;
    8000242c:	00000513          	li	a0,0
}
    80002430:	00813403          	ld	s0,8(sp)
    80002434:	01010113          	addi	sp,sp,16
    80002438:	00008067          	ret
    if (id == nullptr) return -1;
    8000243c:	fff00513          	li	a0,-1
    80002440:	ff1ff06f          	j	80002430 <_ZN4_sem11sem_trywaitEPS_+0x24>
        return 1;
    80002444:	00100513          	li	a0,1
    80002448:	fe9ff06f          	j	80002430 <_ZN4_sem11sem_trywaitEPS_+0x24>

000000008000244c <_ZN4_semD1Ev>:

    static int sem_signal(sem_t id);

    static int sem_trywait(sem_t id);

    virtual ~_sem() {}
    8000244c:	ff010113          	addi	sp,sp,-16
    80002450:	00813423          	sd	s0,8(sp)
    80002454:	01010413          	addi	s0,sp,16
    80002458:	00813403          	ld	s0,8(sp)
    8000245c:	01010113          	addi	sp,sp,16
    80002460:	00008067          	ret

0000000080002464 <_ZN4_semD0Ev>:
    80002464:	ff010113          	addi	sp,sp,-16
    80002468:	00113423          	sd	ra,8(sp)
    8000246c:	00813023          	sd	s0,0(sp)
    80002470:	01010413          	addi	s0,sp,16
    80002474:	fffff097          	auipc	ra,0xfffff
    80002478:	41c080e7          	jalr	1052(ra) # 80001890 <_ZdlPv>
    8000247c:	00813083          	ld	ra,8(sp)
    80002480:	00013403          	ld	s0,0(sp)
    80002484:	01010113          	addi	sp,sp,16
    80002488:	00008067          	ret

000000008000248c <_Z41__static_initialization_and_destruction_0ii>:
}


TCB *Scheduler::get() {
    return readyThreadQueue.removeFirst();
    8000248c:	ff010113          	addi	sp,sp,-16
    80002490:	00813423          	sd	s0,8(sp)
    80002494:	01010413          	addi	s0,sp,16
    80002498:	00100793          	li	a5,1
    8000249c:	00f50863          	beq	a0,a5,800024ac <_Z41__static_initialization_and_destruction_0ii+0x20>
    800024a0:	00813403          	ld	s0,8(sp)
    800024a4:	01010113          	addi	sp,sp,16
    800024a8:	00008067          	ret
    800024ac:	000107b7          	lui	a5,0x10
    800024b0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800024b4:	fef596e3          	bne	a1,a5,800024a0 <_Z41__static_initialization_and_destruction_0ii+0x14>
        List() : head(0), tail(0) {}
    800024b8:	00009797          	auipc	a5,0x9
    800024bc:	25878793          	addi	a5,a5,600 # 8000b710 <_ZN9Scheduler16readyThreadQueueE>
    800024c0:	0007b023          	sd	zero,0(a5)
    800024c4:	0007b423          	sd	zero,8(a5)
    800024c8:	fd9ff06f          	j	800024a0 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800024cc <_ZN9Scheduler3putEP3TCB>:
void Scheduler::put(TCB *ccb) {
    800024cc:	fe010113          	addi	sp,sp,-32
    800024d0:	00113c23          	sd	ra,24(sp)
    800024d4:	00813823          	sd	s0,16(sp)
    800024d8:	00913423          	sd	s1,8(sp)
    800024dc:	02010413          	addi	s0,sp,32
    800024e0:	00050493          	mv	s1,a0
            Elem *elem = new Elem(data, 0);
    800024e4:	01000513          	li	a0,16
    800024e8:	fffff097          	auipc	ra,0xfffff
    800024ec:	358080e7          	jalr	856(ra) # 80001840 <_Znwm>
            Elem(T *data, Elem *next) : data(data), next(next) {}
    800024f0:	00953023          	sd	s1,0(a0)
    800024f4:	00053423          	sd	zero,8(a0)
            if (tail)
    800024f8:	00009797          	auipc	a5,0x9
    800024fc:	2207b783          	ld	a5,544(a5) # 8000b718 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002500:	02078263          	beqz	a5,80002524 <_ZN9Scheduler3putEP3TCB+0x58>
                tail->next = elem;
    80002504:	00a7b423          	sd	a0,8(a5)
                tail = elem;
    80002508:	00009797          	auipc	a5,0x9
    8000250c:	20a7b823          	sd	a0,528(a5) # 8000b718 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    80002510:	01813083          	ld	ra,24(sp)
    80002514:	01013403          	ld	s0,16(sp)
    80002518:	00813483          	ld	s1,8(sp)
    8000251c:	02010113          	addi	sp,sp,32
    80002520:	00008067          	ret
                head = tail = elem;
    80002524:	00009797          	auipc	a5,0x9
    80002528:	1ec78793          	addi	a5,a5,492 # 8000b710 <_ZN9Scheduler16readyThreadQueueE>
    8000252c:	00a7b423          	sd	a0,8(a5)
    80002530:	00a7b023          	sd	a0,0(a5)
    80002534:	fddff06f          	j	80002510 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002538 <_ZN9Scheduler3getEv>:
TCB *Scheduler::get() {
    80002538:	fe010113          	addi	sp,sp,-32
    8000253c:	00113c23          	sd	ra,24(sp)
    80002540:	00813823          	sd	s0,16(sp)
    80002544:	00913423          	sd	s1,8(sp)
    80002548:	02010413          	addi	s0,sp,32
            if (!head) { return 0; }
    8000254c:	00009517          	auipc	a0,0x9
    80002550:	1c453503          	ld	a0,452(a0) # 8000b710 <_ZN9Scheduler16readyThreadQueueE>
    80002554:	04050263          	beqz	a0,80002598 <_ZN9Scheduler3getEv+0x60>
            head = head->next;
    80002558:	00853783          	ld	a5,8(a0)
    8000255c:	00009717          	auipc	a4,0x9
    80002560:	1af73a23          	sd	a5,436(a4) # 8000b710 <_ZN9Scheduler16readyThreadQueueE>
            if (!head) { tail = 0; }
    80002564:	02078463          	beqz	a5,8000258c <_ZN9Scheduler3getEv+0x54>
            T *ret = elem->data;
    80002568:	00053483          	ld	s1,0(a0)
            delete elem;
    8000256c:	fffff097          	auipc	ra,0xfffff
    80002570:	324080e7          	jalr	804(ra) # 80001890 <_ZdlPv>
    80002574:	00048513          	mv	a0,s1
    80002578:	01813083          	ld	ra,24(sp)
    8000257c:	01013403          	ld	s0,16(sp)
    80002580:	00813483          	ld	s1,8(sp)
    80002584:	02010113          	addi	sp,sp,32
    80002588:	00008067          	ret
            if (!head) { tail = 0; }
    8000258c:	00009797          	auipc	a5,0x9
    80002590:	1807b623          	sd	zero,396(a5) # 8000b718 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002594:	fd5ff06f          	j	80002568 <_ZN9Scheduler3getEv+0x30>
            if (!head) { return 0; }
    80002598:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    8000259c:	fd9ff06f          	j	80002574 <_ZN9Scheduler3getEv+0x3c>

00000000800025a0 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    800025a0:	ff010113          	addi	sp,sp,-16
    800025a4:	00113423          	sd	ra,8(sp)
    800025a8:	00813023          	sd	s0,0(sp)
    800025ac:	01010413          	addi	s0,sp,16
    800025b0:	000105b7          	lui	a1,0x10
    800025b4:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800025b8:	00100513          	li	a0,1
    800025bc:	00000097          	auipc	ra,0x0
    800025c0:	ed0080e7          	jalr	-304(ra) # 8000248c <_Z41__static_initialization_and_destruction_0ii>
    800025c4:	00813083          	ld	ra,8(sp)
    800025c8:	00013403          	ld	s0,0(sp)
    800025cc:	01010113          	addi	sp,sp,16
    800025d0:	00008067          	ret

00000000800025d4 <_ZN15MemoryAllocator4initEv>:
#include "../h/MemoryAllocator.hpp"
#include "../test/printing.hpp"

Block *MemoryAllocator::head = nullptr;

void MemoryAllocator::init() {
    800025d4:	ff010113          	addi	sp,sp,-16
    800025d8:	00813423          	sd	s0,8(sp)
    800025dc:	01010413          	addi	s0,sp,16
    size_t total_heap_size = (char *) HEAP_END_ADDR - (char *) HEAP_START_ADDR;
    800025e0:	00009797          	auipc	a5,0x9
    800025e4:	0d07b783          	ld	a5,208(a5) # 8000b6b0 <_GLOBAL_OFFSET_TABLE_+0x30>
    800025e8:	0007b703          	ld	a4,0(a5)
    800025ec:	00009797          	auipc	a5,0x9
    800025f0:	0ac7b783          	ld	a5,172(a5) # 8000b698 <_GLOBAL_OFFSET_TABLE_+0x18>
    800025f4:	0007b783          	ld	a5,0(a5)
    800025f8:	40f70733          	sub	a4,a4,a5

    head = (Block *) HEAP_START_ADDR; //incijalizujemo listu blokova
    800025fc:	00009697          	auipc	a3,0x9
    80002600:	12468693          	addi	a3,a3,292 # 8000b720 <_ZN15MemoryAllocator4headE>
    80002604:	00f6b023          	sd	a5,0(a3)
    head->size = total_heap_size - sizeof(Block); //velicina 1.blk
    80002608:	fe87071b          	addiw	a4,a4,-24
    8000260c:	00e7a823          	sw	a4,16(a5)
    head->free = true;
    80002610:	00100713          	li	a4,1
    80002614:	00e78a23          	sb	a4,20(a5)
    head->next = nullptr; //nema sl nema prethodni
    80002618:	0007b023          	sd	zero,0(a5)
    head->prev = nullptr;
    8000261c:	0006b783          	ld	a5,0(a3)
    80002620:	0007b423          	sd	zero,8(a5)
}
    80002624:	00813403          	ld	s0,8(sp)
    80002628:	01010113          	addi	sp,sp,16
    8000262c:	00008067          	ret

0000000080002630 <_ZN15MemoryAllocator9mem_allocEm>:

void *MemoryAllocator::mem_alloc(size_t s) {
    80002630:	ff010113          	addi	sp,sp,-16
    80002634:	00813423          	sd	s0,8(sp)
    80002638:	01010413          	addi	s0,sp,16
    if (s <= 0) return nullptr;
    8000263c:	0c050463          	beqz	a0,80002704 <_ZN15MemoryAllocator9mem_allocEm+0xd4>

    size_t size = s * MEM_BLOCK_SIZE;
    80002640:	00651713          	slli	a4,a0,0x6
    Block *blk = head;
    80002644:	00009517          	auipc	a0,0x9
    80002648:	0dc53503          	ld	a0,220(a0) # 8000b720 <_ZN15MemoryAllocator4headE>
    8000264c:	0080006f          	j	80002654 <_ZN15MemoryAllocator9mem_allocEm+0x24>

    while (blk != nullptr) {
        if (blk->free && blk->size >= size) {
            break;
        }
        blk = blk->next;
    80002650:	00053503          	ld	a0,0(a0)
    while (blk != nullptr) {
    80002654:	00050a63          	beqz	a0,80002668 <_ZN15MemoryAllocator9mem_allocEm+0x38>
        if (blk->free && blk->size >= size) {
    80002658:	01454783          	lbu	a5,20(a0)
    8000265c:	fe078ae3          	beqz	a5,80002650 <_ZN15MemoryAllocator9mem_allocEm+0x20>
    80002660:	01056783          	lwu	a5,16(a0)
    80002664:	fee7e6e3          	bltu	a5,a4,80002650 <_ZN15MemoryAllocator9mem_allocEm+0x20>
    }

    if (blk == nullptr) return nullptr; // nema dovoljno velikog bloka
    80002668:	04050e63          	beqz	a0,800026c4 <_ZN15MemoryAllocator9mem_allocEm+0x94>
    if (blk->size > size + sizeof(Block)) {
    8000266c:	01052683          	lw	a3,16(a0)
    80002670:	02069613          	slli	a2,a3,0x20
    80002674:	02065613          	srli	a2,a2,0x20
    80002678:	01870793          	addi	a5,a4,24
    8000267c:	04c7fa63          	bgeu	a5,a2,800026d0 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
        Block *newBlock = (Block *) ((char *) blk + sizeof(Block) + size);
    80002680:	00f507b3          	add	a5,a0,a5
        newBlock->size = blk->size - size - sizeof(Block);
    80002684:	40e686bb          	subw	a3,a3,a4
    80002688:	fe86869b          	addiw	a3,a3,-24
    8000268c:	00d7a823          	sw	a3,16(a5)
        newBlock->free = true;
    80002690:	00100693          	li	a3,1
    80002694:	00d78a23          	sb	a3,20(a5)
        newBlock->next = blk->next;
    80002698:	00053683          	ld	a3,0(a0)
    8000269c:	00d7b023          	sd	a3,0(a5)
        newBlock->prev = blk->prev;
    800026a0:	00853683          	ld	a3,8(a0)
    800026a4:	00d7b423          	sd	a3,8(a5)

        blk->next = newBlock;
    800026a8:	00f53023          	sd	a5,0(a0)
        blk->size = size;
    800026ac:	00e52823          	sw	a4,16(a0)
    } else {
        if (blk->prev) blk->prev->next = blk->next;
        if (blk->next) blk->next->prev = blk->prev;
    }
    if (blk == head) head = blk->next;
    800026b0:	00009797          	auipc	a5,0x9
    800026b4:	0707b783          	ld	a5,112(a5) # 8000b720 <_ZN15MemoryAllocator4headE>
    800026b8:	02a78e63          	beq	a5,a0,800026f4 <_ZN15MemoryAllocator9mem_allocEm+0xc4>
    blk->free = false;
    800026bc:	00050a23          	sb	zero,20(a0)
    return (void *) ((char *) blk + sizeof(Block));
    800026c0:	01850513          	addi	a0,a0,24
}
    800026c4:	00813403          	ld	s0,8(sp)
    800026c8:	01010113          	addi	sp,sp,16
    800026cc:	00008067          	ret
        if (blk->prev) blk->prev->next = blk->next;
    800026d0:	00853783          	ld	a5,8(a0)
    800026d4:	00078663          	beqz	a5,800026e0 <_ZN15MemoryAllocator9mem_allocEm+0xb0>
    800026d8:	00053703          	ld	a4,0(a0)
    800026dc:	00e7b023          	sd	a4,0(a5)
        if (blk->next) blk->next->prev = blk->prev;
    800026e0:	00053783          	ld	a5,0(a0)
    800026e4:	fc0786e3          	beqz	a5,800026b0 <_ZN15MemoryAllocator9mem_allocEm+0x80>
    800026e8:	00853703          	ld	a4,8(a0)
    800026ec:	00e7b423          	sd	a4,8(a5)
    800026f0:	fc1ff06f          	j	800026b0 <_ZN15MemoryAllocator9mem_allocEm+0x80>
    if (blk == head) head = blk->next;
    800026f4:	00053783          	ld	a5,0(a0)
    800026f8:	00009717          	auipc	a4,0x9
    800026fc:	02f73423          	sd	a5,40(a4) # 8000b720 <_ZN15MemoryAllocator4headE>
    80002700:	fbdff06f          	j	800026bc <_ZN15MemoryAllocator9mem_allocEm+0x8c>
    if (s <= 0) return nullptr;
    80002704:	00000513          	li	a0,0
    80002708:	fbdff06f          	j	800026c4 <_ZN15MemoryAllocator9mem_allocEm+0x94>

000000008000270c <_ZN15MemoryAllocator5mergeEP5BlockS1_>:

    return 0;
}


void MemoryAllocator::merge(Block *prvi, Block *drugi) {
    8000270c:	ff010113          	addi	sp,sp,-16
    80002710:	00813423          	sd	s0,8(sp)
    80002714:	01010413          	addi	s0,sp,16
    if (prvi == nullptr || drugi == nullptr) {
    80002718:	02050063          	beqz	a0,80002738 <_ZN15MemoryAllocator5mergeEP5BlockS1_+0x2c>
    8000271c:	00058e63          	beqz	a1,80002738 <_ZN15MemoryAllocator5mergeEP5BlockS1_+0x2c>
        return;
    }
    if ((char *) prvi + prvi->size + sizeof(Block) != (char *) drugi) {
    80002720:	01052703          	lw	a4,16(a0)
    80002724:	02071793          	slli	a5,a4,0x20
    80002728:	0207d793          	srli	a5,a5,0x20
    8000272c:	01878793          	addi	a5,a5,24
    80002730:	00f507b3          	add	a5,a0,a5
    80002734:	00b78863          	beq	a5,a1,80002744 <_ZN15MemoryAllocator5mergeEP5BlockS1_+0x38>
    prvi->next = drugi->next;
    if (prvi->next != nullptr) {
        prvi->next->prev = prvi;
    }

}
    80002738:	00813403          	ld	s0,8(sp)
    8000273c:	01010113          	addi	sp,sp,16
    80002740:	00008067          	ret
    prvi->size += drugi->size + sizeof(Block);
    80002744:	0105a783          	lw	a5,16(a1)
    80002748:	00f7073b          	addw	a4,a4,a5
    8000274c:	0187071b          	addiw	a4,a4,24
    80002750:	00e52823          	sw	a4,16(a0)
    prvi->next = drugi->next;
    80002754:	0005b783          	ld	a5,0(a1)
    80002758:	00f53023          	sd	a5,0(a0)
    if (prvi->next != nullptr) {
    8000275c:	fc078ee3          	beqz	a5,80002738 <_ZN15MemoryAllocator5mergeEP5BlockS1_+0x2c>
        prvi->next->prev = prvi;
    80002760:	00a7b423          	sd	a0,8(a5)
    80002764:	fd5ff06f          	j	80002738 <_ZN15MemoryAllocator5mergeEP5BlockS1_+0x2c>

0000000080002768 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (addr == nullptr || addr > HEAP_END_ADDR || addr < HEAP_START_ADDR) return -1;
    80002768:	0e050463          	beqz	a0,80002850 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    8000276c:	00009797          	auipc	a5,0x9
    80002770:	f447b783          	ld	a5,-188(a5) # 8000b6b0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002774:	0007b783          	ld	a5,0(a5)
    80002778:	0ea7e063          	bltu	a5,a0,80002858 <_ZN15MemoryAllocator8mem_freeEPv+0xf0>
    8000277c:	00009797          	auipc	a5,0x9
    80002780:	f1c7b783          	ld	a5,-228(a5) # 8000b698 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002784:	0007b783          	ld	a5,0(a5)
    80002788:	0cf56c63          	bltu	a0,a5,80002860 <_ZN15MemoryAllocator8mem_freeEPv+0xf8>
int MemoryAllocator::mem_free(void *addr) {
    8000278c:	fe010113          	addi	sp,sp,-32
    80002790:	00113c23          	sd	ra,24(sp)
    80002794:	00813823          	sd	s0,16(sp)
    80002798:	00913423          	sd	s1,8(sp)
    8000279c:	01213023          	sd	s2,0(sp)
    800027a0:	02010413          	addi	s0,sp,32
    Block *trenutni = (Block *) ((char *) addr - sizeof(Block)); // predji na blok
    800027a4:	fe850493          	addi	s1,a0,-24
    if (trenutni->free) return -2; //slobodan
    800027a8:	ffc54783          	lbu	a5,-4(a0)
    800027ac:	0a079e63          	bnez	a5,80002868 <_ZN15MemoryAllocator8mem_freeEPv+0x100>
    trenutni->free = true;
    800027b0:	00100793          	li	a5,1
    800027b4:	fef50e23          	sb	a5,-4(a0)
    for (sledeci = head; sledeci->next; sledeci = sledeci->next) {
    800027b8:	00009797          	auipc	a5,0x9
    800027bc:	f687b783          	ld	a5,-152(a5) # 8000b720 <_ZN15MemoryAllocator4headE>
    800027c0:	00078593          	mv	a1,a5
    800027c4:	0007b783          	ld	a5,0(a5)
    800027c8:	00078463          	beqz	a5,800027d0 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
        if (sledeci > trenutni) break;
    800027cc:	feb4fae3          	bgeu	s1,a1,800027c0 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    if (!sledeci->next and trenutni > sledeci) {
    800027d0:	06078263          	beqz	a5,80002834 <_ZN15MemoryAllocator8mem_freeEPv+0xcc>
    else predhodni = sledeci->prev;
    800027d4:	0085b903          	ld	s2,8(a1)
    if (predhodni) predhodni->next = trenutni;
    800027d8:	00090463          	beqz	s2,800027e0 <_ZN15MemoryAllocator8mem_freeEPv+0x78>
    800027dc:	00993023          	sd	s1,0(s2)
    trenutni->prev = predhodni;
    800027e0:	ff253823          	sd	s2,-16(a0)
    if (sledeci) sledeci->prev = trenutni;
    800027e4:	00058463          	beqz	a1,800027ec <_ZN15MemoryAllocator8mem_freeEPv+0x84>
    800027e8:	0095b423          	sd	s1,8(a1)
    trenutni->next = sledeci;
    800027ec:	feb53423          	sd	a1,-24(a0)
    if (sledeci == head) head = trenutni;
    800027f0:	00009797          	auipc	a5,0x9
    800027f4:	f307b783          	ld	a5,-208(a5) # 8000b720 <_ZN15MemoryAllocator4headE>
    800027f8:	04b78663          	beq	a5,a1,80002844 <_ZN15MemoryAllocator8mem_freeEPv+0xdc>
    merge(trenutni, sledeci); // spoji sa sl blokom ako je slobodan
    800027fc:	00048513          	mv	a0,s1
    80002800:	00000097          	auipc	ra,0x0
    80002804:	f0c080e7          	jalr	-244(ra) # 8000270c <_ZN15MemoryAllocator5mergeEP5BlockS1_>
    merge(predhodni, trenutni); // sa prethodnim  ako je slobodan
    80002808:	00048593          	mv	a1,s1
    8000280c:	00090513          	mv	a0,s2
    80002810:	00000097          	auipc	ra,0x0
    80002814:	efc080e7          	jalr	-260(ra) # 8000270c <_ZN15MemoryAllocator5mergeEP5BlockS1_>
    return 0;
    80002818:	00000513          	li	a0,0
}
    8000281c:	01813083          	ld	ra,24(sp)
    80002820:	01013403          	ld	s0,16(sp)
    80002824:	00813483          	ld	s1,8(sp)
    80002828:	00013903          	ld	s2,0(sp)
    8000282c:	02010113          	addi	sp,sp,32
    80002830:	00008067          	ret
    if (!sledeci->next and trenutni > sledeci) {
    80002834:	fa95f0e3          	bgeu	a1,s1,800027d4 <_ZN15MemoryAllocator8mem_freeEPv+0x6c>
        predhodni = sledeci; sledeci = nullptr;
    80002838:	00058913          	mv	s2,a1
    8000283c:	00078593          	mv	a1,a5
    80002840:	f99ff06f          	j	800027d8 <_ZN15MemoryAllocator8mem_freeEPv+0x70>
    if (sledeci == head) head = trenutni;
    80002844:	00009797          	auipc	a5,0x9
    80002848:	ec97be23          	sd	s1,-292(a5) # 8000b720 <_ZN15MemoryAllocator4headE>
    8000284c:	fb1ff06f          	j	800027fc <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    if (addr == nullptr || addr > HEAP_END_ADDR || addr < HEAP_START_ADDR) return -1;
    80002850:	fff00513          	li	a0,-1
    80002854:	00008067          	ret
    80002858:	fff00513          	li	a0,-1
    8000285c:	00008067          	ret
    80002860:	fff00513          	li	a0,-1
}
    80002864:	00008067          	ret
    if (trenutni->free) return -2; //slobodan
    80002868:	ffe00513          	li	a0,-2
    8000286c:	fb1ff06f          	j	8000281c <_ZN15MemoryAllocator8mem_freeEPv+0xb4>

0000000080002870 <_ZN15MemoryAllocator5printEv>:

void MemoryAllocator::print() {
    80002870:	fe010113          	addi	sp,sp,-32
    80002874:	00113c23          	sd	ra,24(sp)
    80002878:	00813823          	sd	s0,16(sp)
    8000287c:	00913423          	sd	s1,8(sp)
    80002880:	02010413          	addi	s0,sp,32
    printString("--------------------------------------------------\n");
    80002884:	00007517          	auipc	a0,0x7
    80002888:	8f450513          	addi	a0,a0,-1804 # 80009178 <CONSOLE_STATUS+0x168>
    8000288c:	00002097          	auipc	ra,0x2
    80002890:	56c080e7          	jalr	1388(ra) # 80004df8 <_Z11printStringPKc>
    for (Block *curr = head; curr; curr = curr->next) {
    80002894:	00009497          	auipc	s1,0x9
    80002898:	e8c4b483          	ld	s1,-372(s1) # 8000b720 <_ZN15MemoryAllocator4headE>
    8000289c:	0c048063          	beqz	s1,8000295c <_ZN15MemoryAllocator5printEv+0xec>
        printInt((uint64) curr);
    800028a0:	00000613          	li	a2,0
    800028a4:	00a00593          	li	a1,10
    800028a8:	0004851b          	sext.w	a0,s1
    800028ac:	00002097          	auipc	ra,0x2
    800028b0:	6fc080e7          	jalr	1788(ra) # 80004fa8 <_Z8printIntiii>
        printString(": ");
    800028b4:	00007517          	auipc	a0,0x7
    800028b8:	8fc50513          	addi	a0,a0,-1796 # 800091b0 <CONSOLE_STATUS+0x1a0>
    800028bc:	00002097          	auipc	ra,0x2
    800028c0:	53c080e7          	jalr	1340(ra) # 80004df8 <_Z11printStringPKc>
        printInt((uint64) curr->prev);
    800028c4:	00000613          	li	a2,0
    800028c8:	00a00593          	li	a1,10
    800028cc:	0084a503          	lw	a0,8(s1)
    800028d0:	00002097          	auipc	ra,0x2
    800028d4:	6d8080e7          	jalr	1752(ra) # 80004fa8 <_Z8printIntiii>
        printString(" ");
    800028d8:	00007517          	auipc	a0,0x7
    800028dc:	8e050513          	addi	a0,a0,-1824 # 800091b8 <CONSOLE_STATUS+0x1a8>
    800028e0:	00002097          	auipc	ra,0x2
    800028e4:	518080e7          	jalr	1304(ra) # 80004df8 <_Z11printStringPKc>
        printInt(curr->size);
    800028e8:	00000613          	li	a2,0
    800028ec:	00a00593          	li	a1,10
    800028f0:	0104a503          	lw	a0,16(s1)
    800028f4:	00002097          	auipc	ra,0x2
    800028f8:	6b4080e7          	jalr	1716(ra) # 80004fa8 <_Z8printIntiii>
        printString(" ");
    800028fc:	00007517          	auipc	a0,0x7
    80002900:	8bc50513          	addi	a0,a0,-1860 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80002904:	00002097          	auipc	ra,0x2
    80002908:	4f4080e7          	jalr	1268(ra) # 80004df8 <_Z11printStringPKc>
        printInt(curr->free);
    8000290c:	00000613          	li	a2,0
    80002910:	00a00593          	li	a1,10
    80002914:	0144c503          	lbu	a0,20(s1)
    80002918:	00002097          	auipc	ra,0x2
    8000291c:	690080e7          	jalr	1680(ra) # 80004fa8 <_Z8printIntiii>
        printString(" ");
    80002920:	00007517          	auipc	a0,0x7
    80002924:	89850513          	addi	a0,a0,-1896 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80002928:	00002097          	auipc	ra,0x2
    8000292c:	4d0080e7          	jalr	1232(ra) # 80004df8 <_Z11printStringPKc>
        printInt((uint64) curr->next);
    80002930:	00000613          	li	a2,0
    80002934:	00a00593          	li	a1,10
    80002938:	0004a503          	lw	a0,0(s1)
    8000293c:	00002097          	auipc	ra,0x2
    80002940:	66c080e7          	jalr	1644(ra) # 80004fa8 <_Z8printIntiii>
        printString("\n");
    80002944:	00007517          	auipc	a0,0x7
    80002948:	c1c50513          	addi	a0,a0,-996 # 80009560 <CONSOLE_STATUS+0x550>
    8000294c:	00002097          	auipc	ra,0x2
    80002950:	4ac080e7          	jalr	1196(ra) # 80004df8 <_Z11printStringPKc>
    for (Block *curr = head; curr; curr = curr->next) {
    80002954:	0004b483          	ld	s1,0(s1)
    80002958:	f45ff06f          	j	8000289c <_ZN15MemoryAllocator5printEv+0x2c>
    }
    printString("__________________________________________________\n");
    8000295c:	00007517          	auipc	a0,0x7
    80002960:	86450513          	addi	a0,a0,-1948 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80002964:	00002097          	auipc	ra,0x2
    80002968:	494080e7          	jalr	1172(ra) # 80004df8 <_Z11printStringPKc>
}
    8000296c:	01813083          	ld	ra,24(sp)
    80002970:	01013403          	ld	s0,16(sp)
    80002974:	00813483          	ld	s1,8(sp)
    80002978:	02010113          	addi	sp,sp,32
    8000297c:	00008067          	ret

0000000080002980 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002980:	fe010113          	addi	sp,sp,-32
    80002984:	00113c23          	sd	ra,24(sp)
    80002988:	00813823          	sd	s0,16(sp)
    8000298c:	00913423          	sd	s1,8(sp)
    80002990:	01213023          	sd	s2,0(sp)
    80002994:	02010413          	addi	s0,sp,32
    80002998:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000299c:	00000913          	li	s2,0
    800029a0:	00c0006f          	j	800029ac <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800029a4:	fffff097          	auipc	ra,0xfffff
    800029a8:	a90080e7          	jalr	-1392(ra) # 80001434 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800029ac:	fffff097          	auipc	ra,0xfffff
    800029b0:	cc0080e7          	jalr	-832(ra) # 8000166c <_Z4getcv>
    800029b4:	0005059b          	sext.w	a1,a0
    800029b8:	01b00793          	li	a5,27
    800029bc:	02f58a63          	beq	a1,a5,800029f0 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800029c0:	0084b503          	ld	a0,8(s1)
    800029c4:	00003097          	auipc	ra,0x3
    800029c8:	3f4080e7          	jalr	1012(ra) # 80005db8 <_ZN6Buffer3putEi>
        i++;
    800029cc:	0019071b          	addiw	a4,s2,1
    800029d0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800029d4:	0004a683          	lw	a3,0(s1)
    800029d8:	0026979b          	slliw	a5,a3,0x2
    800029dc:	00d787bb          	addw	a5,a5,a3
    800029e0:	0017979b          	slliw	a5,a5,0x1
    800029e4:	02f767bb          	remw	a5,a4,a5
    800029e8:	fc0792e3          	bnez	a5,800029ac <_ZL16producerKeyboardPv+0x2c>
    800029ec:	fb9ff06f          	j	800029a4 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800029f0:	00100793          	li	a5,1
    800029f4:	00009717          	auipc	a4,0x9
    800029f8:	d2f72a23          	sw	a5,-716(a4) # 8000b728 <_ZL9threadEnd>
    data->buffer->put('!');
    800029fc:	02100593          	li	a1,33
    80002a00:	0084b503          	ld	a0,8(s1)
    80002a04:	00003097          	auipc	ra,0x3
    80002a08:	3b4080e7          	jalr	948(ra) # 80005db8 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002a0c:	0104b503          	ld	a0,16(s1)
    80002a10:	fffff097          	auipc	ra,0xfffff
    80002a14:	bdc080e7          	jalr	-1060(ra) # 800015ec <_Z10sem_signalP4_sem>
}
    80002a18:	01813083          	ld	ra,24(sp)
    80002a1c:	01013403          	ld	s0,16(sp)
    80002a20:	00813483          	ld	s1,8(sp)
    80002a24:	00013903          	ld	s2,0(sp)
    80002a28:	02010113          	addi	sp,sp,32
    80002a2c:	00008067          	ret

0000000080002a30 <_ZL8producerPv>:

static void producer(void *arg) {
    80002a30:	fe010113          	addi	sp,sp,-32
    80002a34:	00113c23          	sd	ra,24(sp)
    80002a38:	00813823          	sd	s0,16(sp)
    80002a3c:	00913423          	sd	s1,8(sp)
    80002a40:	01213023          	sd	s2,0(sp)
    80002a44:	02010413          	addi	s0,sp,32
    80002a48:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002a4c:	00000913          	li	s2,0
    80002a50:	00c0006f          	j	80002a5c <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002a54:	fffff097          	auipc	ra,0xfffff
    80002a58:	9e0080e7          	jalr	-1568(ra) # 80001434 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002a5c:	00009797          	auipc	a5,0x9
    80002a60:	ccc7a783          	lw	a5,-820(a5) # 8000b728 <_ZL9threadEnd>
    80002a64:	02079e63          	bnez	a5,80002aa0 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002a68:	0004a583          	lw	a1,0(s1)
    80002a6c:	0305859b          	addiw	a1,a1,48
    80002a70:	0084b503          	ld	a0,8(s1)
    80002a74:	00003097          	auipc	ra,0x3
    80002a78:	344080e7          	jalr	836(ra) # 80005db8 <_ZN6Buffer3putEi>
        i++;
    80002a7c:	0019071b          	addiw	a4,s2,1
    80002a80:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002a84:	0004a683          	lw	a3,0(s1)
    80002a88:	0026979b          	slliw	a5,a3,0x2
    80002a8c:	00d787bb          	addw	a5,a5,a3
    80002a90:	0017979b          	slliw	a5,a5,0x1
    80002a94:	02f767bb          	remw	a5,a4,a5
    80002a98:	fc0792e3          	bnez	a5,80002a5c <_ZL8producerPv+0x2c>
    80002a9c:	fb9ff06f          	j	80002a54 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002aa0:	0104b503          	ld	a0,16(s1)
    80002aa4:	fffff097          	auipc	ra,0xfffff
    80002aa8:	b48080e7          	jalr	-1208(ra) # 800015ec <_Z10sem_signalP4_sem>
}
    80002aac:	01813083          	ld	ra,24(sp)
    80002ab0:	01013403          	ld	s0,16(sp)
    80002ab4:	00813483          	ld	s1,8(sp)
    80002ab8:	00013903          	ld	s2,0(sp)
    80002abc:	02010113          	addi	sp,sp,32
    80002ac0:	00008067          	ret

0000000080002ac4 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002ac4:	fd010113          	addi	sp,sp,-48
    80002ac8:	02113423          	sd	ra,40(sp)
    80002acc:	02813023          	sd	s0,32(sp)
    80002ad0:	00913c23          	sd	s1,24(sp)
    80002ad4:	01213823          	sd	s2,16(sp)
    80002ad8:	01313423          	sd	s3,8(sp)
    80002adc:	03010413          	addi	s0,sp,48
    80002ae0:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002ae4:	00000993          	li	s3,0
    80002ae8:	01c0006f          	j	80002b04 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002aec:	fffff097          	auipc	ra,0xfffff
    80002af0:	948080e7          	jalr	-1720(ra) # 80001434 <_Z15thread_dispatchv>
    80002af4:	0500006f          	j	80002b44 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002af8:	00a00513          	li	a0,10
    80002afc:	fffff097          	auipc	ra,0xfffff
    80002b00:	bb0080e7          	jalr	-1104(ra) # 800016ac <_Z4putcc>
    while (!threadEnd) {
    80002b04:	00009797          	auipc	a5,0x9
    80002b08:	c247a783          	lw	a5,-988(a5) # 8000b728 <_ZL9threadEnd>
    80002b0c:	06079063          	bnez	a5,80002b6c <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002b10:	00893503          	ld	a0,8(s2)
    80002b14:	00003097          	auipc	ra,0x3
    80002b18:	334080e7          	jalr	820(ra) # 80005e48 <_ZN6Buffer3getEv>
        i++;
    80002b1c:	0019849b          	addiw	s1,s3,1
    80002b20:	0004899b          	sext.w	s3,s1
        putc(key);
    80002b24:	0ff57513          	andi	a0,a0,255
    80002b28:	fffff097          	auipc	ra,0xfffff
    80002b2c:	b84080e7          	jalr	-1148(ra) # 800016ac <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002b30:	00092703          	lw	a4,0(s2)
    80002b34:	0027179b          	slliw	a5,a4,0x2
    80002b38:	00e787bb          	addw	a5,a5,a4
    80002b3c:	02f4e7bb          	remw	a5,s1,a5
    80002b40:	fa0786e3          	beqz	a5,80002aec <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002b44:	05000793          	li	a5,80
    80002b48:	02f4e4bb          	remw	s1,s1,a5
    80002b4c:	fa049ce3          	bnez	s1,80002b04 <_ZL8consumerPv+0x40>
    80002b50:	fa9ff06f          	j	80002af8 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002b54:	00893503          	ld	a0,8(s2)
    80002b58:	00003097          	auipc	ra,0x3
    80002b5c:	2f0080e7          	jalr	752(ra) # 80005e48 <_ZN6Buffer3getEv>
        putc(key);
    80002b60:	0ff57513          	andi	a0,a0,255
    80002b64:	fffff097          	auipc	ra,0xfffff
    80002b68:	b48080e7          	jalr	-1208(ra) # 800016ac <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002b6c:	00893503          	ld	a0,8(s2)
    80002b70:	00003097          	auipc	ra,0x3
    80002b74:	364080e7          	jalr	868(ra) # 80005ed4 <_ZN6Buffer6getCntEv>
    80002b78:	fca04ee3          	bgtz	a0,80002b54 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002b7c:	01093503          	ld	a0,16(s2)
    80002b80:	fffff097          	auipc	ra,0xfffff
    80002b84:	a6c080e7          	jalr	-1428(ra) # 800015ec <_Z10sem_signalP4_sem>
}
    80002b88:	02813083          	ld	ra,40(sp)
    80002b8c:	02013403          	ld	s0,32(sp)
    80002b90:	01813483          	ld	s1,24(sp)
    80002b94:	01013903          	ld	s2,16(sp)
    80002b98:	00813983          	ld	s3,8(sp)
    80002b9c:	03010113          	addi	sp,sp,48
    80002ba0:	00008067          	ret

0000000080002ba4 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002ba4:	f9010113          	addi	sp,sp,-112
    80002ba8:	06113423          	sd	ra,104(sp)
    80002bac:	06813023          	sd	s0,96(sp)
    80002bb0:	04913c23          	sd	s1,88(sp)
    80002bb4:	05213823          	sd	s2,80(sp)
    80002bb8:	05313423          	sd	s3,72(sp)
    80002bbc:	05413023          	sd	s4,64(sp)
    80002bc0:	03513c23          	sd	s5,56(sp)
    80002bc4:	03613823          	sd	s6,48(sp)
    80002bc8:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80002bcc:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80002bd0:	00006517          	auipc	a0,0x6
    80002bd4:	62850513          	addi	a0,a0,1576 # 800091f8 <CONSOLE_STATUS+0x1e8>
    80002bd8:	00002097          	auipc	ra,0x2
    80002bdc:	220080e7          	jalr	544(ra) # 80004df8 <_Z11printStringPKc>
    getString(input, 30);
    80002be0:	01e00593          	li	a1,30
    80002be4:	fa040493          	addi	s1,s0,-96
    80002be8:	00048513          	mv	a0,s1
    80002bec:	00002097          	auipc	ra,0x2
    80002bf0:	294080e7          	jalr	660(ra) # 80004e80 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80002bf4:	00048513          	mv	a0,s1
    80002bf8:	00002097          	auipc	ra,0x2
    80002bfc:	360080e7          	jalr	864(ra) # 80004f58 <_Z11stringToIntPKc>
    80002c00:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80002c04:	00006517          	auipc	a0,0x6
    80002c08:	61450513          	addi	a0,a0,1556 # 80009218 <CONSOLE_STATUS+0x208>
    80002c0c:	00002097          	auipc	ra,0x2
    80002c10:	1ec080e7          	jalr	492(ra) # 80004df8 <_Z11printStringPKc>
    getString(input, 30);
    80002c14:	01e00593          	li	a1,30
    80002c18:	00048513          	mv	a0,s1
    80002c1c:	00002097          	auipc	ra,0x2
    80002c20:	264080e7          	jalr	612(ra) # 80004e80 <_Z9getStringPci>
    n = stringToInt(input);
    80002c24:	00048513          	mv	a0,s1
    80002c28:	00002097          	auipc	ra,0x2
    80002c2c:	330080e7          	jalr	816(ra) # 80004f58 <_Z11stringToIntPKc>
    80002c30:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80002c34:	00006517          	auipc	a0,0x6
    80002c38:	60450513          	addi	a0,a0,1540 # 80009238 <CONSOLE_STATUS+0x228>
    80002c3c:	00002097          	auipc	ra,0x2
    80002c40:	1bc080e7          	jalr	444(ra) # 80004df8 <_Z11printStringPKc>
    80002c44:	00000613          	li	a2,0
    80002c48:	00a00593          	li	a1,10
    80002c4c:	00090513          	mv	a0,s2
    80002c50:	00002097          	auipc	ra,0x2
    80002c54:	358080e7          	jalr	856(ra) # 80004fa8 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80002c58:	00006517          	auipc	a0,0x6
    80002c5c:	5f850513          	addi	a0,a0,1528 # 80009250 <CONSOLE_STATUS+0x240>
    80002c60:	00002097          	auipc	ra,0x2
    80002c64:	198080e7          	jalr	408(ra) # 80004df8 <_Z11printStringPKc>
    80002c68:	00000613          	li	a2,0
    80002c6c:	00a00593          	li	a1,10
    80002c70:	00048513          	mv	a0,s1
    80002c74:	00002097          	auipc	ra,0x2
    80002c78:	334080e7          	jalr	820(ra) # 80004fa8 <_Z8printIntiii>
    printString(".\n");
    80002c7c:	00006517          	auipc	a0,0x6
    80002c80:	5ec50513          	addi	a0,a0,1516 # 80009268 <CONSOLE_STATUS+0x258>
    80002c84:	00002097          	auipc	ra,0x2
    80002c88:	174080e7          	jalr	372(ra) # 80004df8 <_Z11printStringPKc>
    if(threadNum > n) {
    80002c8c:	0324c463          	blt	s1,s2,80002cb4 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80002c90:	03205c63          	blez	s2,80002cc8 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80002c94:	03800513          	li	a0,56
    80002c98:	fffff097          	auipc	ra,0xfffff
    80002c9c:	ba8080e7          	jalr	-1112(ra) # 80001840 <_Znwm>
    80002ca0:	00050a13          	mv	s4,a0
    80002ca4:	00048593          	mv	a1,s1
    80002ca8:	00003097          	auipc	ra,0x3
    80002cac:	074080e7          	jalr	116(ra) # 80005d1c <_ZN6BufferC1Ei>
    80002cb0:	0300006f          	j	80002ce0 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80002cb4:	00006517          	auipc	a0,0x6
    80002cb8:	5bc50513          	addi	a0,a0,1468 # 80009270 <CONSOLE_STATUS+0x260>
    80002cbc:	00002097          	auipc	ra,0x2
    80002cc0:	13c080e7          	jalr	316(ra) # 80004df8 <_Z11printStringPKc>
        return;
    80002cc4:	0140006f          	j	80002cd8 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80002cc8:	00006517          	auipc	a0,0x6
    80002ccc:	5e850513          	addi	a0,a0,1512 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80002cd0:	00002097          	auipc	ra,0x2
    80002cd4:	128080e7          	jalr	296(ra) # 80004df8 <_Z11printStringPKc>
        return;
    80002cd8:	000b0113          	mv	sp,s6
    80002cdc:	1500006f          	j	80002e2c <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80002ce0:	00000593          	li	a1,0
    80002ce4:	00009517          	auipc	a0,0x9
    80002ce8:	a4c50513          	addi	a0,a0,-1460 # 8000b730 <_ZL10waitForAll>
    80002cec:	fffff097          	auipc	ra,0xfffff
    80002cf0:	83c080e7          	jalr	-1988(ra) # 80001528 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    80002cf4:	00391793          	slli	a5,s2,0x3
    80002cf8:	00f78793          	addi	a5,a5,15
    80002cfc:	ff07f793          	andi	a5,a5,-16
    80002d00:	40f10133          	sub	sp,sp,a5
    80002d04:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80002d08:	0019071b          	addiw	a4,s2,1
    80002d0c:	00171793          	slli	a5,a4,0x1
    80002d10:	00e787b3          	add	a5,a5,a4
    80002d14:	00379793          	slli	a5,a5,0x3
    80002d18:	00f78793          	addi	a5,a5,15
    80002d1c:	ff07f793          	andi	a5,a5,-16
    80002d20:	40f10133          	sub	sp,sp,a5
    80002d24:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80002d28:	00191613          	slli	a2,s2,0x1
    80002d2c:	012607b3          	add	a5,a2,s2
    80002d30:	00379793          	slli	a5,a5,0x3
    80002d34:	00f987b3          	add	a5,s3,a5
    80002d38:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80002d3c:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80002d40:	00009717          	auipc	a4,0x9
    80002d44:	9f073703          	ld	a4,-1552(a4) # 8000b730 <_ZL10waitForAll>
    80002d48:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80002d4c:	00078613          	mv	a2,a5
    80002d50:	00000597          	auipc	a1,0x0
    80002d54:	d7458593          	addi	a1,a1,-652 # 80002ac4 <_ZL8consumerPv>
    80002d58:	f9840513          	addi	a0,s0,-104
    80002d5c:	ffffe097          	auipc	ra,0xffffe
    80002d60:	61c080e7          	jalr	1564(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002d64:	00000493          	li	s1,0
    80002d68:	0280006f          	j	80002d90 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80002d6c:	00000597          	auipc	a1,0x0
    80002d70:	c1458593          	addi	a1,a1,-1004 # 80002980 <_ZL16producerKeyboardPv>
                      data + i);
    80002d74:	00179613          	slli	a2,a5,0x1
    80002d78:	00f60633          	add	a2,a2,a5
    80002d7c:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80002d80:	00c98633          	add	a2,s3,a2
    80002d84:	ffffe097          	auipc	ra,0xffffe
    80002d88:	5f4080e7          	jalr	1524(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002d8c:	0014849b          	addiw	s1,s1,1
    80002d90:	0524d263          	bge	s1,s2,80002dd4 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80002d94:	00149793          	slli	a5,s1,0x1
    80002d98:	009787b3          	add	a5,a5,s1
    80002d9c:	00379793          	slli	a5,a5,0x3
    80002da0:	00f987b3          	add	a5,s3,a5
    80002da4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80002da8:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80002dac:	00009717          	auipc	a4,0x9
    80002db0:	98473703          	ld	a4,-1660(a4) # 8000b730 <_ZL10waitForAll>
    80002db4:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80002db8:	00048793          	mv	a5,s1
    80002dbc:	00349513          	slli	a0,s1,0x3
    80002dc0:	00aa8533          	add	a0,s5,a0
    80002dc4:	fa9054e3          	blez	s1,80002d6c <_Z22producerConsumer_C_APIv+0x1c8>
    80002dc8:	00000597          	auipc	a1,0x0
    80002dcc:	c6858593          	addi	a1,a1,-920 # 80002a30 <_ZL8producerPv>
    80002dd0:	fa5ff06f          	j	80002d74 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80002dd4:	ffffe097          	auipc	ra,0xffffe
    80002dd8:	660080e7          	jalr	1632(ra) # 80001434 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80002ddc:	00000493          	li	s1,0
    80002de0:	00994e63          	blt	s2,s1,80002dfc <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80002de4:	00009517          	auipc	a0,0x9
    80002de8:	94c53503          	ld	a0,-1716(a0) # 8000b730 <_ZL10waitForAll>
    80002dec:	ffffe097          	auipc	ra,0xffffe
    80002df0:	7c0080e7          	jalr	1984(ra) # 800015ac <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    80002df4:	0014849b          	addiw	s1,s1,1
    80002df8:	fe9ff06f          	j	80002de0 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80002dfc:	00009517          	auipc	a0,0x9
    80002e00:	93453503          	ld	a0,-1740(a0) # 8000b730 <_ZL10waitForAll>
    80002e04:	ffffe097          	auipc	ra,0xffffe
    80002e08:	768080e7          	jalr	1896(ra) # 8000156c <_Z9sem_closeP4_sem>
    delete buffer;
    80002e0c:	000a0e63          	beqz	s4,80002e28 <_Z22producerConsumer_C_APIv+0x284>
    80002e10:	000a0513          	mv	a0,s4
    80002e14:	00003097          	auipc	ra,0x3
    80002e18:	148080e7          	jalr	328(ra) # 80005f5c <_ZN6BufferD1Ev>
    80002e1c:	000a0513          	mv	a0,s4
    80002e20:	fffff097          	auipc	ra,0xfffff
    80002e24:	a70080e7          	jalr	-1424(ra) # 80001890 <_ZdlPv>
    80002e28:	000b0113          	mv	sp,s6

}
    80002e2c:	f9040113          	addi	sp,s0,-112
    80002e30:	06813083          	ld	ra,104(sp)
    80002e34:	06013403          	ld	s0,96(sp)
    80002e38:	05813483          	ld	s1,88(sp)
    80002e3c:	05013903          	ld	s2,80(sp)
    80002e40:	04813983          	ld	s3,72(sp)
    80002e44:	04013a03          	ld	s4,64(sp)
    80002e48:	03813a83          	ld	s5,56(sp)
    80002e4c:	03013b03          	ld	s6,48(sp)
    80002e50:	07010113          	addi	sp,sp,112
    80002e54:	00008067          	ret
    80002e58:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80002e5c:	000a0513          	mv	a0,s4
    80002e60:	fffff097          	auipc	ra,0xfffff
    80002e64:	a30080e7          	jalr	-1488(ra) # 80001890 <_ZdlPv>
    80002e68:	00048513          	mv	a0,s1
    80002e6c:	0000a097          	auipc	ra,0xa
    80002e70:	9dc080e7          	jalr	-1572(ra) # 8000c848 <_Unwind_Resume>

0000000080002e74 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002e74:	fe010113          	addi	sp,sp,-32
    80002e78:	00113c23          	sd	ra,24(sp)
    80002e7c:	00813823          	sd	s0,16(sp)
    80002e80:	00913423          	sd	s1,8(sp)
    80002e84:	01213023          	sd	s2,0(sp)
    80002e88:	02010413          	addi	s0,sp,32
    80002e8c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002e90:	00100793          	li	a5,1
    80002e94:	02a7f863          	bgeu	a5,a0,80002ec4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002e98:	00a00793          	li	a5,10
    80002e9c:	02f577b3          	remu	a5,a0,a5
    80002ea0:	02078e63          	beqz	a5,80002edc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002ea4:	fff48513          	addi	a0,s1,-1
    80002ea8:	00000097          	auipc	ra,0x0
    80002eac:	fcc080e7          	jalr	-52(ra) # 80002e74 <_ZL9fibonaccim>
    80002eb0:	00050913          	mv	s2,a0
    80002eb4:	ffe48513          	addi	a0,s1,-2
    80002eb8:	00000097          	auipc	ra,0x0
    80002ebc:	fbc080e7          	jalr	-68(ra) # 80002e74 <_ZL9fibonaccim>
    80002ec0:	00a90533          	add	a0,s2,a0
}
    80002ec4:	01813083          	ld	ra,24(sp)
    80002ec8:	01013403          	ld	s0,16(sp)
    80002ecc:	00813483          	ld	s1,8(sp)
    80002ed0:	00013903          	ld	s2,0(sp)
    80002ed4:	02010113          	addi	sp,sp,32
    80002ed8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002edc:	ffffe097          	auipc	ra,0xffffe
    80002ee0:	558080e7          	jalr	1368(ra) # 80001434 <_Z15thread_dispatchv>
    80002ee4:	fc1ff06f          	j	80002ea4 <_ZL9fibonaccim+0x30>

0000000080002ee8 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80002ee8:	fe010113          	addi	sp,sp,-32
    80002eec:	00113c23          	sd	ra,24(sp)
    80002ef0:	00813823          	sd	s0,16(sp)
    80002ef4:	00913423          	sd	s1,8(sp)
    80002ef8:	01213023          	sd	s2,0(sp)
    80002efc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002f00:	00000913          	li	s2,0
    80002f04:	0380006f          	j	80002f3c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002f08:	ffffe097          	auipc	ra,0xffffe
    80002f0c:	52c080e7          	jalr	1324(ra) # 80001434 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002f10:	00148493          	addi	s1,s1,1
    80002f14:	000027b7          	lui	a5,0x2
    80002f18:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002f1c:	0097ee63          	bltu	a5,s1,80002f38 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002f20:	00000713          	li	a4,0
    80002f24:	000077b7          	lui	a5,0x7
    80002f28:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002f2c:	fce7eee3          	bltu	a5,a4,80002f08 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002f30:	00170713          	addi	a4,a4,1
    80002f34:	ff1ff06f          	j	80002f24 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002f38:	00190913          	addi	s2,s2,1
    80002f3c:	00900793          	li	a5,9
    80002f40:	0527e063          	bltu	a5,s2,80002f80 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002f44:	00006517          	auipc	a0,0x6
    80002f48:	39c50513          	addi	a0,a0,924 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80002f4c:	00002097          	auipc	ra,0x2
    80002f50:	eac080e7          	jalr	-340(ra) # 80004df8 <_Z11printStringPKc>
    80002f54:	00000613          	li	a2,0
    80002f58:	00a00593          	li	a1,10
    80002f5c:	0009051b          	sext.w	a0,s2
    80002f60:	00002097          	auipc	ra,0x2
    80002f64:	048080e7          	jalr	72(ra) # 80004fa8 <_Z8printIntiii>
    80002f68:	00006517          	auipc	a0,0x6
    80002f6c:	5f850513          	addi	a0,a0,1528 # 80009560 <CONSOLE_STATUS+0x550>
    80002f70:	00002097          	auipc	ra,0x2
    80002f74:	e88080e7          	jalr	-376(ra) # 80004df8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002f78:	00000493          	li	s1,0
    80002f7c:	f99ff06f          	j	80002f14 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002f80:	00006517          	auipc	a0,0x6
    80002f84:	36850513          	addi	a0,a0,872 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80002f88:	00002097          	auipc	ra,0x2
    80002f8c:	e70080e7          	jalr	-400(ra) # 80004df8 <_Z11printStringPKc>
    finishedA = true;
    80002f90:	00100793          	li	a5,1
    80002f94:	00008717          	auipc	a4,0x8
    80002f98:	7af70223          	sb	a5,1956(a4) # 8000b738 <_ZL9finishedA>
}
    80002f9c:	01813083          	ld	ra,24(sp)
    80002fa0:	01013403          	ld	s0,16(sp)
    80002fa4:	00813483          	ld	s1,8(sp)
    80002fa8:	00013903          	ld	s2,0(sp)
    80002fac:	02010113          	addi	sp,sp,32
    80002fb0:	00008067          	ret

0000000080002fb4 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80002fb4:	fe010113          	addi	sp,sp,-32
    80002fb8:	00113c23          	sd	ra,24(sp)
    80002fbc:	00813823          	sd	s0,16(sp)
    80002fc0:	00913423          	sd	s1,8(sp)
    80002fc4:	01213023          	sd	s2,0(sp)
    80002fc8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002fcc:	00000913          	li	s2,0
    80002fd0:	0380006f          	j	80003008 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002fd4:	ffffe097          	auipc	ra,0xffffe
    80002fd8:	460080e7          	jalr	1120(ra) # 80001434 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002fdc:	00148493          	addi	s1,s1,1
    80002fe0:	000027b7          	lui	a5,0x2
    80002fe4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002fe8:	0097ee63          	bltu	a5,s1,80003004 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002fec:	00000713          	li	a4,0
    80002ff0:	000077b7          	lui	a5,0x7
    80002ff4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002ff8:	fce7eee3          	bltu	a5,a4,80002fd4 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80002ffc:	00170713          	addi	a4,a4,1
    80003000:	ff1ff06f          	j	80002ff0 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003004:	00190913          	addi	s2,s2,1
    80003008:	00f00793          	li	a5,15
    8000300c:	0527e063          	bltu	a5,s2,8000304c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003010:	00006517          	auipc	a0,0x6
    80003014:	2e850513          	addi	a0,a0,744 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80003018:	00002097          	auipc	ra,0x2
    8000301c:	de0080e7          	jalr	-544(ra) # 80004df8 <_Z11printStringPKc>
    80003020:	00000613          	li	a2,0
    80003024:	00a00593          	li	a1,10
    80003028:	0009051b          	sext.w	a0,s2
    8000302c:	00002097          	auipc	ra,0x2
    80003030:	f7c080e7          	jalr	-132(ra) # 80004fa8 <_Z8printIntiii>
    80003034:	00006517          	auipc	a0,0x6
    80003038:	52c50513          	addi	a0,a0,1324 # 80009560 <CONSOLE_STATUS+0x550>
    8000303c:	00002097          	auipc	ra,0x2
    80003040:	dbc080e7          	jalr	-580(ra) # 80004df8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003044:	00000493          	li	s1,0
    80003048:	f99ff06f          	j	80002fe0 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    8000304c:	00006517          	auipc	a0,0x6
    80003050:	2b450513          	addi	a0,a0,692 # 80009300 <CONSOLE_STATUS+0x2f0>
    80003054:	00002097          	auipc	ra,0x2
    80003058:	da4080e7          	jalr	-604(ra) # 80004df8 <_Z11printStringPKc>
    finishedB = true;
    8000305c:	00100793          	li	a5,1
    80003060:	00008717          	auipc	a4,0x8
    80003064:	6cf70ca3          	sb	a5,1753(a4) # 8000b739 <_ZL9finishedB>
    thread_dispatch();
    80003068:	ffffe097          	auipc	ra,0xffffe
    8000306c:	3cc080e7          	jalr	972(ra) # 80001434 <_Z15thread_dispatchv>
}
    80003070:	01813083          	ld	ra,24(sp)
    80003074:	01013403          	ld	s0,16(sp)
    80003078:	00813483          	ld	s1,8(sp)
    8000307c:	00013903          	ld	s2,0(sp)
    80003080:	02010113          	addi	sp,sp,32
    80003084:	00008067          	ret

0000000080003088 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003088:	fe010113          	addi	sp,sp,-32
    8000308c:	00113c23          	sd	ra,24(sp)
    80003090:	00813823          	sd	s0,16(sp)
    80003094:	00913423          	sd	s1,8(sp)
    80003098:	01213023          	sd	s2,0(sp)
    8000309c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800030a0:	00000493          	li	s1,0
    800030a4:	0400006f          	j	800030e4 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800030a8:	00006517          	auipc	a0,0x6
    800030ac:	26850513          	addi	a0,a0,616 # 80009310 <CONSOLE_STATUS+0x300>
    800030b0:	00002097          	auipc	ra,0x2
    800030b4:	d48080e7          	jalr	-696(ra) # 80004df8 <_Z11printStringPKc>
    800030b8:	00000613          	li	a2,0
    800030bc:	00a00593          	li	a1,10
    800030c0:	00048513          	mv	a0,s1
    800030c4:	00002097          	auipc	ra,0x2
    800030c8:	ee4080e7          	jalr	-284(ra) # 80004fa8 <_Z8printIntiii>
    800030cc:	00006517          	auipc	a0,0x6
    800030d0:	49450513          	addi	a0,a0,1172 # 80009560 <CONSOLE_STATUS+0x550>
    800030d4:	00002097          	auipc	ra,0x2
    800030d8:	d24080e7          	jalr	-732(ra) # 80004df8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800030dc:	0014849b          	addiw	s1,s1,1
    800030e0:	0ff4f493          	andi	s1,s1,255
    800030e4:	00200793          	li	a5,2
    800030e8:	fc97f0e3          	bgeu	a5,s1,800030a8 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800030ec:	00006517          	auipc	a0,0x6
    800030f0:	22c50513          	addi	a0,a0,556 # 80009318 <CONSOLE_STATUS+0x308>
    800030f4:	00002097          	auipc	ra,0x2
    800030f8:	d04080e7          	jalr	-764(ra) # 80004df8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800030fc:	00700313          	li	t1,7
    thread_dispatch();
    80003100:	ffffe097          	auipc	ra,0xffffe
    80003104:	334080e7          	jalr	820(ra) # 80001434 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003108:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    8000310c:	00006517          	auipc	a0,0x6
    80003110:	21c50513          	addi	a0,a0,540 # 80009328 <CONSOLE_STATUS+0x318>
    80003114:	00002097          	auipc	ra,0x2
    80003118:	ce4080e7          	jalr	-796(ra) # 80004df8 <_Z11printStringPKc>
    8000311c:	00000613          	li	a2,0
    80003120:	00a00593          	li	a1,10
    80003124:	0009051b          	sext.w	a0,s2
    80003128:	00002097          	auipc	ra,0x2
    8000312c:	e80080e7          	jalr	-384(ra) # 80004fa8 <_Z8printIntiii>
    80003130:	00006517          	auipc	a0,0x6
    80003134:	43050513          	addi	a0,a0,1072 # 80009560 <CONSOLE_STATUS+0x550>
    80003138:	00002097          	auipc	ra,0x2
    8000313c:	cc0080e7          	jalr	-832(ra) # 80004df8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003140:	00c00513          	li	a0,12
    80003144:	00000097          	auipc	ra,0x0
    80003148:	d30080e7          	jalr	-720(ra) # 80002e74 <_ZL9fibonaccim>
    8000314c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003150:	00006517          	auipc	a0,0x6
    80003154:	1e050513          	addi	a0,a0,480 # 80009330 <CONSOLE_STATUS+0x320>
    80003158:	00002097          	auipc	ra,0x2
    8000315c:	ca0080e7          	jalr	-864(ra) # 80004df8 <_Z11printStringPKc>
    80003160:	00000613          	li	a2,0
    80003164:	00a00593          	li	a1,10
    80003168:	0009051b          	sext.w	a0,s2
    8000316c:	00002097          	auipc	ra,0x2
    80003170:	e3c080e7          	jalr	-452(ra) # 80004fa8 <_Z8printIntiii>
    80003174:	00006517          	auipc	a0,0x6
    80003178:	3ec50513          	addi	a0,a0,1004 # 80009560 <CONSOLE_STATUS+0x550>
    8000317c:	00002097          	auipc	ra,0x2
    80003180:	c7c080e7          	jalr	-900(ra) # 80004df8 <_Z11printStringPKc>
    80003184:	0400006f          	j	800031c4 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003188:	00006517          	auipc	a0,0x6
    8000318c:	18850513          	addi	a0,a0,392 # 80009310 <CONSOLE_STATUS+0x300>
    80003190:	00002097          	auipc	ra,0x2
    80003194:	c68080e7          	jalr	-920(ra) # 80004df8 <_Z11printStringPKc>
    80003198:	00000613          	li	a2,0
    8000319c:	00a00593          	li	a1,10
    800031a0:	00048513          	mv	a0,s1
    800031a4:	00002097          	auipc	ra,0x2
    800031a8:	e04080e7          	jalr	-508(ra) # 80004fa8 <_Z8printIntiii>
    800031ac:	00006517          	auipc	a0,0x6
    800031b0:	3b450513          	addi	a0,a0,948 # 80009560 <CONSOLE_STATUS+0x550>
    800031b4:	00002097          	auipc	ra,0x2
    800031b8:	c44080e7          	jalr	-956(ra) # 80004df8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800031bc:	0014849b          	addiw	s1,s1,1
    800031c0:	0ff4f493          	andi	s1,s1,255
    800031c4:	00500793          	li	a5,5
    800031c8:	fc97f0e3          	bgeu	a5,s1,80003188 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    800031cc:	00006517          	auipc	a0,0x6
    800031d0:	11c50513          	addi	a0,a0,284 # 800092e8 <CONSOLE_STATUS+0x2d8>
    800031d4:	00002097          	auipc	ra,0x2
    800031d8:	c24080e7          	jalr	-988(ra) # 80004df8 <_Z11printStringPKc>
    finishedC = true;
    800031dc:	00100793          	li	a5,1
    800031e0:	00008717          	auipc	a4,0x8
    800031e4:	54f70d23          	sb	a5,1370(a4) # 8000b73a <_ZL9finishedC>
    thread_dispatch();
    800031e8:	ffffe097          	auipc	ra,0xffffe
    800031ec:	24c080e7          	jalr	588(ra) # 80001434 <_Z15thread_dispatchv>
}
    800031f0:	01813083          	ld	ra,24(sp)
    800031f4:	01013403          	ld	s0,16(sp)
    800031f8:	00813483          	ld	s1,8(sp)
    800031fc:	00013903          	ld	s2,0(sp)
    80003200:	02010113          	addi	sp,sp,32
    80003204:	00008067          	ret

0000000080003208 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003208:	fe010113          	addi	sp,sp,-32
    8000320c:	00113c23          	sd	ra,24(sp)
    80003210:	00813823          	sd	s0,16(sp)
    80003214:	00913423          	sd	s1,8(sp)
    80003218:	01213023          	sd	s2,0(sp)
    8000321c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003220:	00a00493          	li	s1,10
    80003224:	0400006f          	j	80003264 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003228:	00006517          	auipc	a0,0x6
    8000322c:	11850513          	addi	a0,a0,280 # 80009340 <CONSOLE_STATUS+0x330>
    80003230:	00002097          	auipc	ra,0x2
    80003234:	bc8080e7          	jalr	-1080(ra) # 80004df8 <_Z11printStringPKc>
    80003238:	00000613          	li	a2,0
    8000323c:	00a00593          	li	a1,10
    80003240:	00048513          	mv	a0,s1
    80003244:	00002097          	auipc	ra,0x2
    80003248:	d64080e7          	jalr	-668(ra) # 80004fa8 <_Z8printIntiii>
    8000324c:	00006517          	auipc	a0,0x6
    80003250:	31450513          	addi	a0,a0,788 # 80009560 <CONSOLE_STATUS+0x550>
    80003254:	00002097          	auipc	ra,0x2
    80003258:	ba4080e7          	jalr	-1116(ra) # 80004df8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000325c:	0014849b          	addiw	s1,s1,1
    80003260:	0ff4f493          	andi	s1,s1,255
    80003264:	00c00793          	li	a5,12
    80003268:	fc97f0e3          	bgeu	a5,s1,80003228 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    8000326c:	00006517          	auipc	a0,0x6
    80003270:	0dc50513          	addi	a0,a0,220 # 80009348 <CONSOLE_STATUS+0x338>
    80003274:	00002097          	auipc	ra,0x2
    80003278:	b84080e7          	jalr	-1148(ra) # 80004df8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000327c:	00500313          	li	t1,5
    thread_dispatch();
    80003280:	ffffe097          	auipc	ra,0xffffe
    80003284:	1b4080e7          	jalr	436(ra) # 80001434 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003288:	01000513          	li	a0,16
    8000328c:	00000097          	auipc	ra,0x0
    80003290:	be8080e7          	jalr	-1048(ra) # 80002e74 <_ZL9fibonaccim>
    80003294:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003298:	00006517          	auipc	a0,0x6
    8000329c:	0c050513          	addi	a0,a0,192 # 80009358 <CONSOLE_STATUS+0x348>
    800032a0:	00002097          	auipc	ra,0x2
    800032a4:	b58080e7          	jalr	-1192(ra) # 80004df8 <_Z11printStringPKc>
    800032a8:	00000613          	li	a2,0
    800032ac:	00a00593          	li	a1,10
    800032b0:	0009051b          	sext.w	a0,s2
    800032b4:	00002097          	auipc	ra,0x2
    800032b8:	cf4080e7          	jalr	-780(ra) # 80004fa8 <_Z8printIntiii>
    800032bc:	00006517          	auipc	a0,0x6
    800032c0:	2a450513          	addi	a0,a0,676 # 80009560 <CONSOLE_STATUS+0x550>
    800032c4:	00002097          	auipc	ra,0x2
    800032c8:	b34080e7          	jalr	-1228(ra) # 80004df8 <_Z11printStringPKc>
    800032cc:	0400006f          	j	8000330c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800032d0:	00006517          	auipc	a0,0x6
    800032d4:	07050513          	addi	a0,a0,112 # 80009340 <CONSOLE_STATUS+0x330>
    800032d8:	00002097          	auipc	ra,0x2
    800032dc:	b20080e7          	jalr	-1248(ra) # 80004df8 <_Z11printStringPKc>
    800032e0:	00000613          	li	a2,0
    800032e4:	00a00593          	li	a1,10
    800032e8:	00048513          	mv	a0,s1
    800032ec:	00002097          	auipc	ra,0x2
    800032f0:	cbc080e7          	jalr	-836(ra) # 80004fa8 <_Z8printIntiii>
    800032f4:	00006517          	auipc	a0,0x6
    800032f8:	26c50513          	addi	a0,a0,620 # 80009560 <CONSOLE_STATUS+0x550>
    800032fc:	00002097          	auipc	ra,0x2
    80003300:	afc080e7          	jalr	-1284(ra) # 80004df8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003304:	0014849b          	addiw	s1,s1,1
    80003308:	0ff4f493          	andi	s1,s1,255
    8000330c:	00f00793          	li	a5,15
    80003310:	fc97f0e3          	bgeu	a5,s1,800032d0 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003314:	00006517          	auipc	a0,0x6
    80003318:	05450513          	addi	a0,a0,84 # 80009368 <CONSOLE_STATUS+0x358>
    8000331c:	00002097          	auipc	ra,0x2
    80003320:	adc080e7          	jalr	-1316(ra) # 80004df8 <_Z11printStringPKc>
    finishedD = true;
    80003324:	00100793          	li	a5,1
    80003328:	00008717          	auipc	a4,0x8
    8000332c:	40f709a3          	sb	a5,1043(a4) # 8000b73b <_ZL9finishedD>
    thread_dispatch();
    80003330:	ffffe097          	auipc	ra,0xffffe
    80003334:	104080e7          	jalr	260(ra) # 80001434 <_Z15thread_dispatchv>
}
    80003338:	01813083          	ld	ra,24(sp)
    8000333c:	01013403          	ld	s0,16(sp)
    80003340:	00813483          	ld	s1,8(sp)
    80003344:	00013903          	ld	s2,0(sp)
    80003348:	02010113          	addi	sp,sp,32
    8000334c:	00008067          	ret

0000000080003350 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003350:	fc010113          	addi	sp,sp,-64
    80003354:	02113c23          	sd	ra,56(sp)
    80003358:	02813823          	sd	s0,48(sp)
    8000335c:	02913423          	sd	s1,40(sp)
    80003360:	03213023          	sd	s2,32(sp)
    80003364:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003368:	02000513          	li	a0,32
    8000336c:	ffffe097          	auipc	ra,0xffffe
    80003370:	4d4080e7          	jalr	1236(ra) # 80001840 <_Znwm>
    80003374:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003378:	ffffe097          	auipc	ra,0xffffe
    8000337c:	614080e7          	jalr	1556(ra) # 8000198c <_ZN6ThreadC1Ev>
    80003380:	00008797          	auipc	a5,0x8
    80003384:	16878793          	addi	a5,a5,360 # 8000b4e8 <_ZTV7WorkerA+0x10>
    80003388:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    8000338c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003390:	00006517          	auipc	a0,0x6
    80003394:	fe850513          	addi	a0,a0,-24 # 80009378 <CONSOLE_STATUS+0x368>
    80003398:	00002097          	auipc	ra,0x2
    8000339c:	a60080e7          	jalr	-1440(ra) # 80004df8 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800033a0:	02000513          	li	a0,32
    800033a4:	ffffe097          	auipc	ra,0xffffe
    800033a8:	49c080e7          	jalr	1180(ra) # 80001840 <_Znwm>
    800033ac:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800033b0:	ffffe097          	auipc	ra,0xffffe
    800033b4:	5dc080e7          	jalr	1500(ra) # 8000198c <_ZN6ThreadC1Ev>
    800033b8:	00008797          	auipc	a5,0x8
    800033bc:	15878793          	addi	a5,a5,344 # 8000b510 <_ZTV7WorkerB+0x10>
    800033c0:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800033c4:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800033c8:	00006517          	auipc	a0,0x6
    800033cc:	fc850513          	addi	a0,a0,-56 # 80009390 <CONSOLE_STATUS+0x380>
    800033d0:	00002097          	auipc	ra,0x2
    800033d4:	a28080e7          	jalr	-1496(ra) # 80004df8 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800033d8:	02000513          	li	a0,32
    800033dc:	ffffe097          	auipc	ra,0xffffe
    800033e0:	464080e7          	jalr	1124(ra) # 80001840 <_Znwm>
    800033e4:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800033e8:	ffffe097          	auipc	ra,0xffffe
    800033ec:	5a4080e7          	jalr	1444(ra) # 8000198c <_ZN6ThreadC1Ev>
    800033f0:	00008797          	auipc	a5,0x8
    800033f4:	14878793          	addi	a5,a5,328 # 8000b538 <_ZTV7WorkerC+0x10>
    800033f8:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800033fc:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003400:	00006517          	auipc	a0,0x6
    80003404:	fa850513          	addi	a0,a0,-88 # 800093a8 <CONSOLE_STATUS+0x398>
    80003408:	00002097          	auipc	ra,0x2
    8000340c:	9f0080e7          	jalr	-1552(ra) # 80004df8 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003410:	02000513          	li	a0,32
    80003414:	ffffe097          	auipc	ra,0xffffe
    80003418:	42c080e7          	jalr	1068(ra) # 80001840 <_Znwm>
    8000341c:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003420:	ffffe097          	auipc	ra,0xffffe
    80003424:	56c080e7          	jalr	1388(ra) # 8000198c <_ZN6ThreadC1Ev>
    80003428:	00008797          	auipc	a5,0x8
    8000342c:	13878793          	addi	a5,a5,312 # 8000b560 <_ZTV7WorkerD+0x10>
    80003430:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003434:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003438:	00006517          	auipc	a0,0x6
    8000343c:	f8850513          	addi	a0,a0,-120 # 800093c0 <CONSOLE_STATUS+0x3b0>
    80003440:	00002097          	auipc	ra,0x2
    80003444:	9b8080e7          	jalr	-1608(ra) # 80004df8 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003448:	00000493          	li	s1,0
    8000344c:	00300793          	li	a5,3
    80003450:	0297c663          	blt	a5,s1,8000347c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003454:	00349793          	slli	a5,s1,0x3
    80003458:	fe040713          	addi	a4,s0,-32
    8000345c:	00f707b3          	add	a5,a4,a5
    80003460:	fe07b503          	ld	a0,-32(a5)
    80003464:	ffffe097          	auipc	ra,0xffffe
    80003468:	594080e7          	jalr	1428(ra) # 800019f8 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    8000346c:	0014849b          	addiw	s1,s1,1
    80003470:	fddff06f          	j	8000344c <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003474:	ffffe097          	auipc	ra,0xffffe
    80003478:	540080e7          	jalr	1344(ra) # 800019b4 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000347c:	00008797          	auipc	a5,0x8
    80003480:	2bc7c783          	lbu	a5,700(a5) # 8000b738 <_ZL9finishedA>
    80003484:	fe0788e3          	beqz	a5,80003474 <_Z20Threads_CPP_API_testv+0x124>
    80003488:	00008797          	auipc	a5,0x8
    8000348c:	2b17c783          	lbu	a5,689(a5) # 8000b739 <_ZL9finishedB>
    80003490:	fe0782e3          	beqz	a5,80003474 <_Z20Threads_CPP_API_testv+0x124>
    80003494:	00008797          	auipc	a5,0x8
    80003498:	2a67c783          	lbu	a5,678(a5) # 8000b73a <_ZL9finishedC>
    8000349c:	fc078ce3          	beqz	a5,80003474 <_Z20Threads_CPP_API_testv+0x124>
    800034a0:	00008797          	auipc	a5,0x8
    800034a4:	29b7c783          	lbu	a5,667(a5) # 8000b73b <_ZL9finishedD>
    800034a8:	fc0786e3          	beqz	a5,80003474 <_Z20Threads_CPP_API_testv+0x124>
    800034ac:	fc040493          	addi	s1,s0,-64
    800034b0:	0080006f          	j	800034b8 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800034b4:	00848493          	addi	s1,s1,8
    800034b8:	fe040793          	addi	a5,s0,-32
    800034bc:	08f48663          	beq	s1,a5,80003548 <_Z20Threads_CPP_API_testv+0x1f8>
    800034c0:	0004b503          	ld	a0,0(s1)
    800034c4:	fe0508e3          	beqz	a0,800034b4 <_Z20Threads_CPP_API_testv+0x164>
    800034c8:	00053783          	ld	a5,0(a0)
    800034cc:	0087b783          	ld	a5,8(a5)
    800034d0:	000780e7          	jalr	a5
    800034d4:	fe1ff06f          	j	800034b4 <_Z20Threads_CPP_API_testv+0x164>
    800034d8:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800034dc:	00048513          	mv	a0,s1
    800034e0:	ffffe097          	auipc	ra,0xffffe
    800034e4:	3b0080e7          	jalr	944(ra) # 80001890 <_ZdlPv>
    800034e8:	00090513          	mv	a0,s2
    800034ec:	00009097          	auipc	ra,0x9
    800034f0:	35c080e7          	jalr	860(ra) # 8000c848 <_Unwind_Resume>
    800034f4:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800034f8:	00048513          	mv	a0,s1
    800034fc:	ffffe097          	auipc	ra,0xffffe
    80003500:	394080e7          	jalr	916(ra) # 80001890 <_ZdlPv>
    80003504:	00090513          	mv	a0,s2
    80003508:	00009097          	auipc	ra,0x9
    8000350c:	340080e7          	jalr	832(ra) # 8000c848 <_Unwind_Resume>
    80003510:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003514:	00048513          	mv	a0,s1
    80003518:	ffffe097          	auipc	ra,0xffffe
    8000351c:	378080e7          	jalr	888(ra) # 80001890 <_ZdlPv>
    80003520:	00090513          	mv	a0,s2
    80003524:	00009097          	auipc	ra,0x9
    80003528:	324080e7          	jalr	804(ra) # 8000c848 <_Unwind_Resume>
    8000352c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003530:	00048513          	mv	a0,s1
    80003534:	ffffe097          	auipc	ra,0xffffe
    80003538:	35c080e7          	jalr	860(ra) # 80001890 <_ZdlPv>
    8000353c:	00090513          	mv	a0,s2
    80003540:	00009097          	auipc	ra,0x9
    80003544:	308080e7          	jalr	776(ra) # 8000c848 <_Unwind_Resume>
}
    80003548:	03813083          	ld	ra,56(sp)
    8000354c:	03013403          	ld	s0,48(sp)
    80003550:	02813483          	ld	s1,40(sp)
    80003554:	02013903          	ld	s2,32(sp)
    80003558:	04010113          	addi	sp,sp,64
    8000355c:	00008067          	ret

0000000080003560 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003560:	ff010113          	addi	sp,sp,-16
    80003564:	00113423          	sd	ra,8(sp)
    80003568:	00813023          	sd	s0,0(sp)
    8000356c:	01010413          	addi	s0,sp,16
    80003570:	00008797          	auipc	a5,0x8
    80003574:	f7878793          	addi	a5,a5,-136 # 8000b4e8 <_ZTV7WorkerA+0x10>
    80003578:	00f53023          	sd	a5,0(a0)
    8000357c:	ffffe097          	auipc	ra,0xffffe
    80003580:	254080e7          	jalr	596(ra) # 800017d0 <_ZN6ThreadD1Ev>
    80003584:	00813083          	ld	ra,8(sp)
    80003588:	00013403          	ld	s0,0(sp)
    8000358c:	01010113          	addi	sp,sp,16
    80003590:	00008067          	ret

0000000080003594 <_ZN7WorkerAD0Ev>:
    80003594:	fe010113          	addi	sp,sp,-32
    80003598:	00113c23          	sd	ra,24(sp)
    8000359c:	00813823          	sd	s0,16(sp)
    800035a0:	00913423          	sd	s1,8(sp)
    800035a4:	02010413          	addi	s0,sp,32
    800035a8:	00050493          	mv	s1,a0
    800035ac:	00008797          	auipc	a5,0x8
    800035b0:	f3c78793          	addi	a5,a5,-196 # 8000b4e8 <_ZTV7WorkerA+0x10>
    800035b4:	00f53023          	sd	a5,0(a0)
    800035b8:	ffffe097          	auipc	ra,0xffffe
    800035bc:	218080e7          	jalr	536(ra) # 800017d0 <_ZN6ThreadD1Ev>
    800035c0:	00048513          	mv	a0,s1
    800035c4:	ffffe097          	auipc	ra,0xffffe
    800035c8:	2cc080e7          	jalr	716(ra) # 80001890 <_ZdlPv>
    800035cc:	01813083          	ld	ra,24(sp)
    800035d0:	01013403          	ld	s0,16(sp)
    800035d4:	00813483          	ld	s1,8(sp)
    800035d8:	02010113          	addi	sp,sp,32
    800035dc:	00008067          	ret

00000000800035e0 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800035e0:	ff010113          	addi	sp,sp,-16
    800035e4:	00113423          	sd	ra,8(sp)
    800035e8:	00813023          	sd	s0,0(sp)
    800035ec:	01010413          	addi	s0,sp,16
    800035f0:	00008797          	auipc	a5,0x8
    800035f4:	f2078793          	addi	a5,a5,-224 # 8000b510 <_ZTV7WorkerB+0x10>
    800035f8:	00f53023          	sd	a5,0(a0)
    800035fc:	ffffe097          	auipc	ra,0xffffe
    80003600:	1d4080e7          	jalr	468(ra) # 800017d0 <_ZN6ThreadD1Ev>
    80003604:	00813083          	ld	ra,8(sp)
    80003608:	00013403          	ld	s0,0(sp)
    8000360c:	01010113          	addi	sp,sp,16
    80003610:	00008067          	ret

0000000080003614 <_ZN7WorkerBD0Ev>:
    80003614:	fe010113          	addi	sp,sp,-32
    80003618:	00113c23          	sd	ra,24(sp)
    8000361c:	00813823          	sd	s0,16(sp)
    80003620:	00913423          	sd	s1,8(sp)
    80003624:	02010413          	addi	s0,sp,32
    80003628:	00050493          	mv	s1,a0
    8000362c:	00008797          	auipc	a5,0x8
    80003630:	ee478793          	addi	a5,a5,-284 # 8000b510 <_ZTV7WorkerB+0x10>
    80003634:	00f53023          	sd	a5,0(a0)
    80003638:	ffffe097          	auipc	ra,0xffffe
    8000363c:	198080e7          	jalr	408(ra) # 800017d0 <_ZN6ThreadD1Ev>
    80003640:	00048513          	mv	a0,s1
    80003644:	ffffe097          	auipc	ra,0xffffe
    80003648:	24c080e7          	jalr	588(ra) # 80001890 <_ZdlPv>
    8000364c:	01813083          	ld	ra,24(sp)
    80003650:	01013403          	ld	s0,16(sp)
    80003654:	00813483          	ld	s1,8(sp)
    80003658:	02010113          	addi	sp,sp,32
    8000365c:	00008067          	ret

0000000080003660 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003660:	ff010113          	addi	sp,sp,-16
    80003664:	00113423          	sd	ra,8(sp)
    80003668:	00813023          	sd	s0,0(sp)
    8000366c:	01010413          	addi	s0,sp,16
    80003670:	00008797          	auipc	a5,0x8
    80003674:	ec878793          	addi	a5,a5,-312 # 8000b538 <_ZTV7WorkerC+0x10>
    80003678:	00f53023          	sd	a5,0(a0)
    8000367c:	ffffe097          	auipc	ra,0xffffe
    80003680:	154080e7          	jalr	340(ra) # 800017d0 <_ZN6ThreadD1Ev>
    80003684:	00813083          	ld	ra,8(sp)
    80003688:	00013403          	ld	s0,0(sp)
    8000368c:	01010113          	addi	sp,sp,16
    80003690:	00008067          	ret

0000000080003694 <_ZN7WorkerCD0Ev>:
    80003694:	fe010113          	addi	sp,sp,-32
    80003698:	00113c23          	sd	ra,24(sp)
    8000369c:	00813823          	sd	s0,16(sp)
    800036a0:	00913423          	sd	s1,8(sp)
    800036a4:	02010413          	addi	s0,sp,32
    800036a8:	00050493          	mv	s1,a0
    800036ac:	00008797          	auipc	a5,0x8
    800036b0:	e8c78793          	addi	a5,a5,-372 # 8000b538 <_ZTV7WorkerC+0x10>
    800036b4:	00f53023          	sd	a5,0(a0)
    800036b8:	ffffe097          	auipc	ra,0xffffe
    800036bc:	118080e7          	jalr	280(ra) # 800017d0 <_ZN6ThreadD1Ev>
    800036c0:	00048513          	mv	a0,s1
    800036c4:	ffffe097          	auipc	ra,0xffffe
    800036c8:	1cc080e7          	jalr	460(ra) # 80001890 <_ZdlPv>
    800036cc:	01813083          	ld	ra,24(sp)
    800036d0:	01013403          	ld	s0,16(sp)
    800036d4:	00813483          	ld	s1,8(sp)
    800036d8:	02010113          	addi	sp,sp,32
    800036dc:	00008067          	ret

00000000800036e0 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800036e0:	ff010113          	addi	sp,sp,-16
    800036e4:	00113423          	sd	ra,8(sp)
    800036e8:	00813023          	sd	s0,0(sp)
    800036ec:	01010413          	addi	s0,sp,16
    800036f0:	00008797          	auipc	a5,0x8
    800036f4:	e7078793          	addi	a5,a5,-400 # 8000b560 <_ZTV7WorkerD+0x10>
    800036f8:	00f53023          	sd	a5,0(a0)
    800036fc:	ffffe097          	auipc	ra,0xffffe
    80003700:	0d4080e7          	jalr	212(ra) # 800017d0 <_ZN6ThreadD1Ev>
    80003704:	00813083          	ld	ra,8(sp)
    80003708:	00013403          	ld	s0,0(sp)
    8000370c:	01010113          	addi	sp,sp,16
    80003710:	00008067          	ret

0000000080003714 <_ZN7WorkerDD0Ev>:
    80003714:	fe010113          	addi	sp,sp,-32
    80003718:	00113c23          	sd	ra,24(sp)
    8000371c:	00813823          	sd	s0,16(sp)
    80003720:	00913423          	sd	s1,8(sp)
    80003724:	02010413          	addi	s0,sp,32
    80003728:	00050493          	mv	s1,a0
    8000372c:	00008797          	auipc	a5,0x8
    80003730:	e3478793          	addi	a5,a5,-460 # 8000b560 <_ZTV7WorkerD+0x10>
    80003734:	00f53023          	sd	a5,0(a0)
    80003738:	ffffe097          	auipc	ra,0xffffe
    8000373c:	098080e7          	jalr	152(ra) # 800017d0 <_ZN6ThreadD1Ev>
    80003740:	00048513          	mv	a0,s1
    80003744:	ffffe097          	auipc	ra,0xffffe
    80003748:	14c080e7          	jalr	332(ra) # 80001890 <_ZdlPv>
    8000374c:	01813083          	ld	ra,24(sp)
    80003750:	01013403          	ld	s0,16(sp)
    80003754:	00813483          	ld	s1,8(sp)
    80003758:	02010113          	addi	sp,sp,32
    8000375c:	00008067          	ret

0000000080003760 <_ZN7WorkerA3runEv>:
    void run() override {
    80003760:	ff010113          	addi	sp,sp,-16
    80003764:	00113423          	sd	ra,8(sp)
    80003768:	00813023          	sd	s0,0(sp)
    8000376c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003770:	00000593          	li	a1,0
    80003774:	fffff097          	auipc	ra,0xfffff
    80003778:	774080e7          	jalr	1908(ra) # 80002ee8 <_ZN7WorkerA11workerBodyAEPv>
    }
    8000377c:	00813083          	ld	ra,8(sp)
    80003780:	00013403          	ld	s0,0(sp)
    80003784:	01010113          	addi	sp,sp,16
    80003788:	00008067          	ret

000000008000378c <_ZN7WorkerB3runEv>:
    void run() override {
    8000378c:	ff010113          	addi	sp,sp,-16
    80003790:	00113423          	sd	ra,8(sp)
    80003794:	00813023          	sd	s0,0(sp)
    80003798:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    8000379c:	00000593          	li	a1,0
    800037a0:	00000097          	auipc	ra,0x0
    800037a4:	814080e7          	jalr	-2028(ra) # 80002fb4 <_ZN7WorkerB11workerBodyBEPv>
    }
    800037a8:	00813083          	ld	ra,8(sp)
    800037ac:	00013403          	ld	s0,0(sp)
    800037b0:	01010113          	addi	sp,sp,16
    800037b4:	00008067          	ret

00000000800037b8 <_ZN7WorkerC3runEv>:
    void run() override {
    800037b8:	ff010113          	addi	sp,sp,-16
    800037bc:	00113423          	sd	ra,8(sp)
    800037c0:	00813023          	sd	s0,0(sp)
    800037c4:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800037c8:	00000593          	li	a1,0
    800037cc:	00000097          	auipc	ra,0x0
    800037d0:	8bc080e7          	jalr	-1860(ra) # 80003088 <_ZN7WorkerC11workerBodyCEPv>
    }
    800037d4:	00813083          	ld	ra,8(sp)
    800037d8:	00013403          	ld	s0,0(sp)
    800037dc:	01010113          	addi	sp,sp,16
    800037e0:	00008067          	ret

00000000800037e4 <_ZN7WorkerD3runEv>:
    void run() override {
    800037e4:	ff010113          	addi	sp,sp,-16
    800037e8:	00113423          	sd	ra,8(sp)
    800037ec:	00813023          	sd	s0,0(sp)
    800037f0:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800037f4:	00000593          	li	a1,0
    800037f8:	00000097          	auipc	ra,0x0
    800037fc:	a10080e7          	jalr	-1520(ra) # 80003208 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003800:	00813083          	ld	ra,8(sp)
    80003804:	00013403          	ld	s0,0(sp)
    80003808:	01010113          	addi	sp,sp,16
    8000380c:	00008067          	ret

0000000080003810 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003810:	f8010113          	addi	sp,sp,-128
    80003814:	06113c23          	sd	ra,120(sp)
    80003818:	06813823          	sd	s0,112(sp)
    8000381c:	06913423          	sd	s1,104(sp)
    80003820:	07213023          	sd	s2,96(sp)
    80003824:	05313c23          	sd	s3,88(sp)
    80003828:	05413823          	sd	s4,80(sp)
    8000382c:	05513423          	sd	s5,72(sp)
    80003830:	05613023          	sd	s6,64(sp)
    80003834:	03713c23          	sd	s7,56(sp)
    80003838:	03813823          	sd	s8,48(sp)
    8000383c:	03913423          	sd	s9,40(sp)
    80003840:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003844:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003848:	00006517          	auipc	a0,0x6
    8000384c:	9b050513          	addi	a0,a0,-1616 # 800091f8 <CONSOLE_STATUS+0x1e8>
    80003850:	00001097          	auipc	ra,0x1
    80003854:	5a8080e7          	jalr	1448(ra) # 80004df8 <_Z11printStringPKc>
    getString(input, 30);
    80003858:	01e00593          	li	a1,30
    8000385c:	f8040493          	addi	s1,s0,-128
    80003860:	00048513          	mv	a0,s1
    80003864:	00001097          	auipc	ra,0x1
    80003868:	61c080e7          	jalr	1564(ra) # 80004e80 <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000386c:	00048513          	mv	a0,s1
    80003870:	00001097          	auipc	ra,0x1
    80003874:	6e8080e7          	jalr	1768(ra) # 80004f58 <_Z11stringToIntPKc>
    80003878:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    8000387c:	00006517          	auipc	a0,0x6
    80003880:	99c50513          	addi	a0,a0,-1636 # 80009218 <CONSOLE_STATUS+0x208>
    80003884:	00001097          	auipc	ra,0x1
    80003888:	574080e7          	jalr	1396(ra) # 80004df8 <_Z11printStringPKc>
    getString(input, 30);
    8000388c:	01e00593          	li	a1,30
    80003890:	00048513          	mv	a0,s1
    80003894:	00001097          	auipc	ra,0x1
    80003898:	5ec080e7          	jalr	1516(ra) # 80004e80 <_Z9getStringPci>
    n = stringToInt(input);
    8000389c:	00048513          	mv	a0,s1
    800038a0:	00001097          	auipc	ra,0x1
    800038a4:	6b8080e7          	jalr	1720(ra) # 80004f58 <_Z11stringToIntPKc>
    800038a8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    800038ac:	00006517          	auipc	a0,0x6
    800038b0:	98c50513          	addi	a0,a0,-1652 # 80009238 <CONSOLE_STATUS+0x228>
    800038b4:	00001097          	auipc	ra,0x1
    800038b8:	544080e7          	jalr	1348(ra) # 80004df8 <_Z11printStringPKc>
    printInt(threadNum);
    800038bc:	00000613          	li	a2,0
    800038c0:	00a00593          	li	a1,10
    800038c4:	00098513          	mv	a0,s3
    800038c8:	00001097          	auipc	ra,0x1
    800038cc:	6e0080e7          	jalr	1760(ra) # 80004fa8 <_Z8printIntiii>
    printString(" i velicina bafera ");
    800038d0:	00006517          	auipc	a0,0x6
    800038d4:	98050513          	addi	a0,a0,-1664 # 80009250 <CONSOLE_STATUS+0x240>
    800038d8:	00001097          	auipc	ra,0x1
    800038dc:	520080e7          	jalr	1312(ra) # 80004df8 <_Z11printStringPKc>
    printInt(n);
    800038e0:	00000613          	li	a2,0
    800038e4:	00a00593          	li	a1,10
    800038e8:	00048513          	mv	a0,s1
    800038ec:	00001097          	auipc	ra,0x1
    800038f0:	6bc080e7          	jalr	1724(ra) # 80004fa8 <_Z8printIntiii>
    printString(".\n");
    800038f4:	00006517          	auipc	a0,0x6
    800038f8:	97450513          	addi	a0,a0,-1676 # 80009268 <CONSOLE_STATUS+0x258>
    800038fc:	00001097          	auipc	ra,0x1
    80003900:	4fc080e7          	jalr	1276(ra) # 80004df8 <_Z11printStringPKc>
    if (threadNum > n) {
    80003904:	0334c463          	blt	s1,s3,8000392c <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003908:	03305c63          	blez	s3,80003940 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    8000390c:	03800513          	li	a0,56
    80003910:	ffffe097          	auipc	ra,0xffffe
    80003914:	f30080e7          	jalr	-208(ra) # 80001840 <_Znwm>
    80003918:	00050a93          	mv	s5,a0
    8000391c:	00048593          	mv	a1,s1
    80003920:	00001097          	auipc	ra,0x1
    80003924:	7a8080e7          	jalr	1960(ra) # 800050c8 <_ZN9BufferCPPC1Ei>
    80003928:	0300006f          	j	80003958 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000392c:	00006517          	auipc	a0,0x6
    80003930:	94450513          	addi	a0,a0,-1724 # 80009270 <CONSOLE_STATUS+0x260>
    80003934:	00001097          	auipc	ra,0x1
    80003938:	4c4080e7          	jalr	1220(ra) # 80004df8 <_Z11printStringPKc>
        return;
    8000393c:	0140006f          	j	80003950 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003940:	00006517          	auipc	a0,0x6
    80003944:	97050513          	addi	a0,a0,-1680 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80003948:	00001097          	auipc	ra,0x1
    8000394c:	4b0080e7          	jalr	1200(ra) # 80004df8 <_Z11printStringPKc>
        return;
    80003950:	000c0113          	mv	sp,s8
    80003954:	2140006f          	j	80003b68 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003958:	01000513          	li	a0,16
    8000395c:	ffffe097          	auipc	ra,0xffffe
    80003960:	ee4080e7          	jalr	-284(ra) # 80001840 <_Znwm>
    80003964:	00050913          	mv	s2,a0
    80003968:	00000593          	li	a1,0
    8000396c:	ffffe097          	auipc	ra,0xffffe
    80003970:	0c4080e7          	jalr	196(ra) # 80001a30 <_ZN9SemaphoreC1Ej>
    80003974:	00008797          	auipc	a5,0x8
    80003978:	dd27ba23          	sd	s2,-556(a5) # 8000b748 <_ZL10waitForAll>
    Thread *producers[threadNum];
    8000397c:	00399793          	slli	a5,s3,0x3
    80003980:	00f78793          	addi	a5,a5,15
    80003984:	ff07f793          	andi	a5,a5,-16
    80003988:	40f10133          	sub	sp,sp,a5
    8000398c:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003990:	0019871b          	addiw	a4,s3,1
    80003994:	00171793          	slli	a5,a4,0x1
    80003998:	00e787b3          	add	a5,a5,a4
    8000399c:	00379793          	slli	a5,a5,0x3
    800039a0:	00f78793          	addi	a5,a5,15
    800039a4:	ff07f793          	andi	a5,a5,-16
    800039a8:	40f10133          	sub	sp,sp,a5
    800039ac:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    800039b0:	00199493          	slli	s1,s3,0x1
    800039b4:	013484b3          	add	s1,s1,s3
    800039b8:	00349493          	slli	s1,s1,0x3
    800039bc:	009b04b3          	add	s1,s6,s1
    800039c0:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    800039c4:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    800039c8:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800039cc:	02800513          	li	a0,40
    800039d0:	ffffe097          	auipc	ra,0xffffe
    800039d4:	e70080e7          	jalr	-400(ra) # 80001840 <_Znwm>
    800039d8:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800039dc:	ffffe097          	auipc	ra,0xffffe
    800039e0:	fb0080e7          	jalr	-80(ra) # 8000198c <_ZN6ThreadC1Ev>
    800039e4:	00008797          	auipc	a5,0x8
    800039e8:	bf478793          	addi	a5,a5,-1036 # 8000b5d8 <_ZTV8Consumer+0x10>
    800039ec:	00fbb023          	sd	a5,0(s7)
    800039f0:	029bb023          	sd	s1,32(s7)
    consumer->start();
    800039f4:	000b8513          	mv	a0,s7
    800039f8:	ffffe097          	auipc	ra,0xffffe
    800039fc:	000080e7          	jalr	ra # 800019f8 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003a00:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80003a04:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003a08:	00008797          	auipc	a5,0x8
    80003a0c:	d407b783          	ld	a5,-704(a5) # 8000b748 <_ZL10waitForAll>
    80003a10:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003a14:	02800513          	li	a0,40
    80003a18:	ffffe097          	auipc	ra,0xffffe
    80003a1c:	e28080e7          	jalr	-472(ra) # 80001840 <_Znwm>
    80003a20:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003a24:	ffffe097          	auipc	ra,0xffffe
    80003a28:	f68080e7          	jalr	-152(ra) # 8000198c <_ZN6ThreadC1Ev>
    80003a2c:	00008797          	auipc	a5,0x8
    80003a30:	b5c78793          	addi	a5,a5,-1188 # 8000b588 <_ZTV16ProducerKeyborad+0x10>
    80003a34:	00f4b023          	sd	a5,0(s1)
    80003a38:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003a3c:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003a40:	00048513          	mv	a0,s1
    80003a44:	ffffe097          	auipc	ra,0xffffe
    80003a48:	fb4080e7          	jalr	-76(ra) # 800019f8 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003a4c:	00100913          	li	s2,1
    80003a50:	0300006f          	j	80003a80 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003a54:	00008797          	auipc	a5,0x8
    80003a58:	b5c78793          	addi	a5,a5,-1188 # 8000b5b0 <_ZTV8Producer+0x10>
    80003a5c:	00fcb023          	sd	a5,0(s9)
    80003a60:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003a64:	00391793          	slli	a5,s2,0x3
    80003a68:	00fa07b3          	add	a5,s4,a5
    80003a6c:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003a70:	000c8513          	mv	a0,s9
    80003a74:	ffffe097          	auipc	ra,0xffffe
    80003a78:	f84080e7          	jalr	-124(ra) # 800019f8 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003a7c:	0019091b          	addiw	s2,s2,1
    80003a80:	05395263          	bge	s2,s3,80003ac4 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003a84:	00191493          	slli	s1,s2,0x1
    80003a88:	012484b3          	add	s1,s1,s2
    80003a8c:	00349493          	slli	s1,s1,0x3
    80003a90:	009b04b3          	add	s1,s6,s1
    80003a94:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003a98:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003a9c:	00008797          	auipc	a5,0x8
    80003aa0:	cac7b783          	ld	a5,-852(a5) # 8000b748 <_ZL10waitForAll>
    80003aa4:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003aa8:	02800513          	li	a0,40
    80003aac:	ffffe097          	auipc	ra,0xffffe
    80003ab0:	d94080e7          	jalr	-620(ra) # 80001840 <_Znwm>
    80003ab4:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003ab8:	ffffe097          	auipc	ra,0xffffe
    80003abc:	ed4080e7          	jalr	-300(ra) # 8000198c <_ZN6ThreadC1Ev>
    80003ac0:	f95ff06f          	j	80003a54 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80003ac4:	ffffe097          	auipc	ra,0xffffe
    80003ac8:	ef0080e7          	jalr	-272(ra) # 800019b4 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003acc:	00000493          	li	s1,0
    80003ad0:	0099ce63          	blt	s3,s1,80003aec <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80003ad4:	00008517          	auipc	a0,0x8
    80003ad8:	c7453503          	ld	a0,-908(a0) # 8000b748 <_ZL10waitForAll>
    80003adc:	ffffe097          	auipc	ra,0xffffe
    80003ae0:	fc4080e7          	jalr	-60(ra) # 80001aa0 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003ae4:	0014849b          	addiw	s1,s1,1
    80003ae8:	fe9ff06f          	j	80003ad0 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80003aec:	00008517          	auipc	a0,0x8
    80003af0:	c5c53503          	ld	a0,-932(a0) # 8000b748 <_ZL10waitForAll>
    80003af4:	00050863          	beqz	a0,80003b04 <_Z20testConsumerProducerv+0x2f4>
    80003af8:	00053783          	ld	a5,0(a0)
    80003afc:	0087b783          	ld	a5,8(a5)
    80003b00:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80003b04:	00000493          	li	s1,0
    80003b08:	0080006f          	j	80003b10 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80003b0c:	0014849b          	addiw	s1,s1,1
    80003b10:	0334d263          	bge	s1,s3,80003b34 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80003b14:	00349793          	slli	a5,s1,0x3
    80003b18:	00fa07b3          	add	a5,s4,a5
    80003b1c:	0007b503          	ld	a0,0(a5)
    80003b20:	fe0506e3          	beqz	a0,80003b0c <_Z20testConsumerProducerv+0x2fc>
    80003b24:	00053783          	ld	a5,0(a0)
    80003b28:	0087b783          	ld	a5,8(a5)
    80003b2c:	000780e7          	jalr	a5
    80003b30:	fddff06f          	j	80003b0c <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80003b34:	000b8a63          	beqz	s7,80003b48 <_Z20testConsumerProducerv+0x338>
    80003b38:	000bb783          	ld	a5,0(s7)
    80003b3c:	0087b783          	ld	a5,8(a5)
    80003b40:	000b8513          	mv	a0,s7
    80003b44:	000780e7          	jalr	a5
    delete buffer;
    80003b48:	000a8e63          	beqz	s5,80003b64 <_Z20testConsumerProducerv+0x354>
    80003b4c:	000a8513          	mv	a0,s5
    80003b50:	00002097          	auipc	ra,0x2
    80003b54:	870080e7          	jalr	-1936(ra) # 800053c0 <_ZN9BufferCPPD1Ev>
    80003b58:	000a8513          	mv	a0,s5
    80003b5c:	ffffe097          	auipc	ra,0xffffe
    80003b60:	d34080e7          	jalr	-716(ra) # 80001890 <_ZdlPv>
    80003b64:	000c0113          	mv	sp,s8
}
    80003b68:	f8040113          	addi	sp,s0,-128
    80003b6c:	07813083          	ld	ra,120(sp)
    80003b70:	07013403          	ld	s0,112(sp)
    80003b74:	06813483          	ld	s1,104(sp)
    80003b78:	06013903          	ld	s2,96(sp)
    80003b7c:	05813983          	ld	s3,88(sp)
    80003b80:	05013a03          	ld	s4,80(sp)
    80003b84:	04813a83          	ld	s5,72(sp)
    80003b88:	04013b03          	ld	s6,64(sp)
    80003b8c:	03813b83          	ld	s7,56(sp)
    80003b90:	03013c03          	ld	s8,48(sp)
    80003b94:	02813c83          	ld	s9,40(sp)
    80003b98:	08010113          	addi	sp,sp,128
    80003b9c:	00008067          	ret
    80003ba0:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003ba4:	000a8513          	mv	a0,s5
    80003ba8:	ffffe097          	auipc	ra,0xffffe
    80003bac:	ce8080e7          	jalr	-792(ra) # 80001890 <_ZdlPv>
    80003bb0:	00048513          	mv	a0,s1
    80003bb4:	00009097          	auipc	ra,0x9
    80003bb8:	c94080e7          	jalr	-876(ra) # 8000c848 <_Unwind_Resume>
    80003bbc:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80003bc0:	00090513          	mv	a0,s2
    80003bc4:	ffffe097          	auipc	ra,0xffffe
    80003bc8:	ccc080e7          	jalr	-820(ra) # 80001890 <_ZdlPv>
    80003bcc:	00048513          	mv	a0,s1
    80003bd0:	00009097          	auipc	ra,0x9
    80003bd4:	c78080e7          	jalr	-904(ra) # 8000c848 <_Unwind_Resume>
    80003bd8:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003bdc:	000b8513          	mv	a0,s7
    80003be0:	ffffe097          	auipc	ra,0xffffe
    80003be4:	cb0080e7          	jalr	-848(ra) # 80001890 <_ZdlPv>
    80003be8:	00048513          	mv	a0,s1
    80003bec:	00009097          	auipc	ra,0x9
    80003bf0:	c5c080e7          	jalr	-932(ra) # 8000c848 <_Unwind_Resume>
    80003bf4:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003bf8:	00048513          	mv	a0,s1
    80003bfc:	ffffe097          	auipc	ra,0xffffe
    80003c00:	c94080e7          	jalr	-876(ra) # 80001890 <_ZdlPv>
    80003c04:	00090513          	mv	a0,s2
    80003c08:	00009097          	auipc	ra,0x9
    80003c0c:	c40080e7          	jalr	-960(ra) # 8000c848 <_Unwind_Resume>
    80003c10:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80003c14:	000c8513          	mv	a0,s9
    80003c18:	ffffe097          	auipc	ra,0xffffe
    80003c1c:	c78080e7          	jalr	-904(ra) # 80001890 <_ZdlPv>
    80003c20:	00048513          	mv	a0,s1
    80003c24:	00009097          	auipc	ra,0x9
    80003c28:	c24080e7          	jalr	-988(ra) # 8000c848 <_Unwind_Resume>

0000000080003c2c <_ZN8Consumer3runEv>:
    void run() override {
    80003c2c:	fd010113          	addi	sp,sp,-48
    80003c30:	02113423          	sd	ra,40(sp)
    80003c34:	02813023          	sd	s0,32(sp)
    80003c38:	00913c23          	sd	s1,24(sp)
    80003c3c:	01213823          	sd	s2,16(sp)
    80003c40:	01313423          	sd	s3,8(sp)
    80003c44:	03010413          	addi	s0,sp,48
    80003c48:	00050913          	mv	s2,a0
        int i = 0;
    80003c4c:	00000993          	li	s3,0
    80003c50:	0100006f          	j	80003c60 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80003c54:	00a00513          	li	a0,10
    80003c58:	ffffe097          	auipc	ra,0xffffe
    80003c5c:	ee0080e7          	jalr	-288(ra) # 80001b38 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80003c60:	00008797          	auipc	a5,0x8
    80003c64:	ae07a783          	lw	a5,-1312(a5) # 8000b740 <_ZL9threadEnd>
    80003c68:	04079a63          	bnez	a5,80003cbc <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80003c6c:	02093783          	ld	a5,32(s2)
    80003c70:	0087b503          	ld	a0,8(a5)
    80003c74:	00001097          	auipc	ra,0x1
    80003c78:	638080e7          	jalr	1592(ra) # 800052ac <_ZN9BufferCPP3getEv>
            i++;
    80003c7c:	0019849b          	addiw	s1,s3,1
    80003c80:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80003c84:	0ff57513          	andi	a0,a0,255
    80003c88:	ffffe097          	auipc	ra,0xffffe
    80003c8c:	eb0080e7          	jalr	-336(ra) # 80001b38 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80003c90:	05000793          	li	a5,80
    80003c94:	02f4e4bb          	remw	s1,s1,a5
    80003c98:	fc0494e3          	bnez	s1,80003c60 <_ZN8Consumer3runEv+0x34>
    80003c9c:	fb9ff06f          	j	80003c54 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80003ca0:	02093783          	ld	a5,32(s2)
    80003ca4:	0087b503          	ld	a0,8(a5)
    80003ca8:	00001097          	auipc	ra,0x1
    80003cac:	604080e7          	jalr	1540(ra) # 800052ac <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80003cb0:	0ff57513          	andi	a0,a0,255
    80003cb4:	ffffe097          	auipc	ra,0xffffe
    80003cb8:	e84080e7          	jalr	-380(ra) # 80001b38 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80003cbc:	02093783          	ld	a5,32(s2)
    80003cc0:	0087b503          	ld	a0,8(a5)
    80003cc4:	00001097          	auipc	ra,0x1
    80003cc8:	674080e7          	jalr	1652(ra) # 80005338 <_ZN9BufferCPP6getCntEv>
    80003ccc:	fca04ae3          	bgtz	a0,80003ca0 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80003cd0:	02093783          	ld	a5,32(s2)
    80003cd4:	0107b503          	ld	a0,16(a5)
    80003cd8:	ffffe097          	auipc	ra,0xffffe
    80003cdc:	d90080e7          	jalr	-624(ra) # 80001a68 <_ZN9Semaphore6signalEv>
    }
    80003ce0:	02813083          	ld	ra,40(sp)
    80003ce4:	02013403          	ld	s0,32(sp)
    80003ce8:	01813483          	ld	s1,24(sp)
    80003cec:	01013903          	ld	s2,16(sp)
    80003cf0:	00813983          	ld	s3,8(sp)
    80003cf4:	03010113          	addi	sp,sp,48
    80003cf8:	00008067          	ret

0000000080003cfc <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80003cfc:	ff010113          	addi	sp,sp,-16
    80003d00:	00113423          	sd	ra,8(sp)
    80003d04:	00813023          	sd	s0,0(sp)
    80003d08:	01010413          	addi	s0,sp,16
    80003d0c:	00008797          	auipc	a5,0x8
    80003d10:	8cc78793          	addi	a5,a5,-1844 # 8000b5d8 <_ZTV8Consumer+0x10>
    80003d14:	00f53023          	sd	a5,0(a0)
    80003d18:	ffffe097          	auipc	ra,0xffffe
    80003d1c:	ab8080e7          	jalr	-1352(ra) # 800017d0 <_ZN6ThreadD1Ev>
    80003d20:	00813083          	ld	ra,8(sp)
    80003d24:	00013403          	ld	s0,0(sp)
    80003d28:	01010113          	addi	sp,sp,16
    80003d2c:	00008067          	ret

0000000080003d30 <_ZN8ConsumerD0Ev>:
    80003d30:	fe010113          	addi	sp,sp,-32
    80003d34:	00113c23          	sd	ra,24(sp)
    80003d38:	00813823          	sd	s0,16(sp)
    80003d3c:	00913423          	sd	s1,8(sp)
    80003d40:	02010413          	addi	s0,sp,32
    80003d44:	00050493          	mv	s1,a0
    80003d48:	00008797          	auipc	a5,0x8
    80003d4c:	89078793          	addi	a5,a5,-1904 # 8000b5d8 <_ZTV8Consumer+0x10>
    80003d50:	00f53023          	sd	a5,0(a0)
    80003d54:	ffffe097          	auipc	ra,0xffffe
    80003d58:	a7c080e7          	jalr	-1412(ra) # 800017d0 <_ZN6ThreadD1Ev>
    80003d5c:	00048513          	mv	a0,s1
    80003d60:	ffffe097          	auipc	ra,0xffffe
    80003d64:	b30080e7          	jalr	-1232(ra) # 80001890 <_ZdlPv>
    80003d68:	01813083          	ld	ra,24(sp)
    80003d6c:	01013403          	ld	s0,16(sp)
    80003d70:	00813483          	ld	s1,8(sp)
    80003d74:	02010113          	addi	sp,sp,32
    80003d78:	00008067          	ret

0000000080003d7c <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80003d7c:	ff010113          	addi	sp,sp,-16
    80003d80:	00113423          	sd	ra,8(sp)
    80003d84:	00813023          	sd	s0,0(sp)
    80003d88:	01010413          	addi	s0,sp,16
    80003d8c:	00007797          	auipc	a5,0x7
    80003d90:	7fc78793          	addi	a5,a5,2044 # 8000b588 <_ZTV16ProducerKeyborad+0x10>
    80003d94:	00f53023          	sd	a5,0(a0)
    80003d98:	ffffe097          	auipc	ra,0xffffe
    80003d9c:	a38080e7          	jalr	-1480(ra) # 800017d0 <_ZN6ThreadD1Ev>
    80003da0:	00813083          	ld	ra,8(sp)
    80003da4:	00013403          	ld	s0,0(sp)
    80003da8:	01010113          	addi	sp,sp,16
    80003dac:	00008067          	ret

0000000080003db0 <_ZN16ProducerKeyboradD0Ev>:
    80003db0:	fe010113          	addi	sp,sp,-32
    80003db4:	00113c23          	sd	ra,24(sp)
    80003db8:	00813823          	sd	s0,16(sp)
    80003dbc:	00913423          	sd	s1,8(sp)
    80003dc0:	02010413          	addi	s0,sp,32
    80003dc4:	00050493          	mv	s1,a0
    80003dc8:	00007797          	auipc	a5,0x7
    80003dcc:	7c078793          	addi	a5,a5,1984 # 8000b588 <_ZTV16ProducerKeyborad+0x10>
    80003dd0:	00f53023          	sd	a5,0(a0)
    80003dd4:	ffffe097          	auipc	ra,0xffffe
    80003dd8:	9fc080e7          	jalr	-1540(ra) # 800017d0 <_ZN6ThreadD1Ev>
    80003ddc:	00048513          	mv	a0,s1
    80003de0:	ffffe097          	auipc	ra,0xffffe
    80003de4:	ab0080e7          	jalr	-1360(ra) # 80001890 <_ZdlPv>
    80003de8:	01813083          	ld	ra,24(sp)
    80003dec:	01013403          	ld	s0,16(sp)
    80003df0:	00813483          	ld	s1,8(sp)
    80003df4:	02010113          	addi	sp,sp,32
    80003df8:	00008067          	ret

0000000080003dfc <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80003dfc:	ff010113          	addi	sp,sp,-16
    80003e00:	00113423          	sd	ra,8(sp)
    80003e04:	00813023          	sd	s0,0(sp)
    80003e08:	01010413          	addi	s0,sp,16
    80003e0c:	00007797          	auipc	a5,0x7
    80003e10:	7a478793          	addi	a5,a5,1956 # 8000b5b0 <_ZTV8Producer+0x10>
    80003e14:	00f53023          	sd	a5,0(a0)
    80003e18:	ffffe097          	auipc	ra,0xffffe
    80003e1c:	9b8080e7          	jalr	-1608(ra) # 800017d0 <_ZN6ThreadD1Ev>
    80003e20:	00813083          	ld	ra,8(sp)
    80003e24:	00013403          	ld	s0,0(sp)
    80003e28:	01010113          	addi	sp,sp,16
    80003e2c:	00008067          	ret

0000000080003e30 <_ZN8ProducerD0Ev>:
    80003e30:	fe010113          	addi	sp,sp,-32
    80003e34:	00113c23          	sd	ra,24(sp)
    80003e38:	00813823          	sd	s0,16(sp)
    80003e3c:	00913423          	sd	s1,8(sp)
    80003e40:	02010413          	addi	s0,sp,32
    80003e44:	00050493          	mv	s1,a0
    80003e48:	00007797          	auipc	a5,0x7
    80003e4c:	76878793          	addi	a5,a5,1896 # 8000b5b0 <_ZTV8Producer+0x10>
    80003e50:	00f53023          	sd	a5,0(a0)
    80003e54:	ffffe097          	auipc	ra,0xffffe
    80003e58:	97c080e7          	jalr	-1668(ra) # 800017d0 <_ZN6ThreadD1Ev>
    80003e5c:	00048513          	mv	a0,s1
    80003e60:	ffffe097          	auipc	ra,0xffffe
    80003e64:	a30080e7          	jalr	-1488(ra) # 80001890 <_ZdlPv>
    80003e68:	01813083          	ld	ra,24(sp)
    80003e6c:	01013403          	ld	s0,16(sp)
    80003e70:	00813483          	ld	s1,8(sp)
    80003e74:	02010113          	addi	sp,sp,32
    80003e78:	00008067          	ret

0000000080003e7c <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80003e7c:	fe010113          	addi	sp,sp,-32
    80003e80:	00113c23          	sd	ra,24(sp)
    80003e84:	00813823          	sd	s0,16(sp)
    80003e88:	00913423          	sd	s1,8(sp)
    80003e8c:	02010413          	addi	s0,sp,32
    80003e90:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80003e94:	ffffd097          	auipc	ra,0xffffd
    80003e98:	7d8080e7          	jalr	2008(ra) # 8000166c <_Z4getcv>
    80003e9c:	0005059b          	sext.w	a1,a0
    80003ea0:	01b00793          	li	a5,27
    80003ea4:	00f58c63          	beq	a1,a5,80003ebc <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80003ea8:	0204b783          	ld	a5,32(s1)
    80003eac:	0087b503          	ld	a0,8(a5)
    80003eb0:	00001097          	auipc	ra,0x1
    80003eb4:	36c080e7          	jalr	876(ra) # 8000521c <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80003eb8:	fddff06f          	j	80003e94 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80003ebc:	00100793          	li	a5,1
    80003ec0:	00008717          	auipc	a4,0x8
    80003ec4:	88f72023          	sw	a5,-1920(a4) # 8000b740 <_ZL9threadEnd>
        td->buffer->put('!');
    80003ec8:	0204b783          	ld	a5,32(s1)
    80003ecc:	02100593          	li	a1,33
    80003ed0:	0087b503          	ld	a0,8(a5)
    80003ed4:	00001097          	auipc	ra,0x1
    80003ed8:	348080e7          	jalr	840(ra) # 8000521c <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80003edc:	0204b783          	ld	a5,32(s1)
    80003ee0:	0107b503          	ld	a0,16(a5)
    80003ee4:	ffffe097          	auipc	ra,0xffffe
    80003ee8:	b84080e7          	jalr	-1148(ra) # 80001a68 <_ZN9Semaphore6signalEv>
    }
    80003eec:	01813083          	ld	ra,24(sp)
    80003ef0:	01013403          	ld	s0,16(sp)
    80003ef4:	00813483          	ld	s1,8(sp)
    80003ef8:	02010113          	addi	sp,sp,32
    80003efc:	00008067          	ret

0000000080003f00 <_ZN8Producer3runEv>:
    void run() override {
    80003f00:	fe010113          	addi	sp,sp,-32
    80003f04:	00113c23          	sd	ra,24(sp)
    80003f08:	00813823          	sd	s0,16(sp)
    80003f0c:	00913423          	sd	s1,8(sp)
    80003f10:	01213023          	sd	s2,0(sp)
    80003f14:	02010413          	addi	s0,sp,32
    80003f18:	00050493          	mv	s1,a0
        int i = 0;
    80003f1c:	00000913          	li	s2,0
        while (!threadEnd) {
    80003f20:	00008797          	auipc	a5,0x8
    80003f24:	8207a783          	lw	a5,-2016(a5) # 8000b740 <_ZL9threadEnd>
    80003f28:	04079263          	bnez	a5,80003f6c <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80003f2c:	0204b783          	ld	a5,32(s1)
    80003f30:	0007a583          	lw	a1,0(a5)
    80003f34:	0305859b          	addiw	a1,a1,48
    80003f38:	0087b503          	ld	a0,8(a5)
    80003f3c:	00001097          	auipc	ra,0x1
    80003f40:	2e0080e7          	jalr	736(ra) # 8000521c <_ZN9BufferCPP3putEi>
            i++;
    80003f44:	0019071b          	addiw	a4,s2,1
    80003f48:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80003f4c:	0204b783          	ld	a5,32(s1)
    80003f50:	0007a783          	lw	a5,0(a5)
    80003f54:	00e787bb          	addw	a5,a5,a4
    80003f58:	00500513          	li	a0,5
    80003f5c:	02a7e53b          	remw	a0,a5,a0
    80003f60:	ffffe097          	auipc	ra,0xffffe
    80003f64:	a7c080e7          	jalr	-1412(ra) # 800019dc <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80003f68:	fb9ff06f          	j	80003f20 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80003f6c:	0204b783          	ld	a5,32(s1)
    80003f70:	0107b503          	ld	a0,16(a5)
    80003f74:	ffffe097          	auipc	ra,0xffffe
    80003f78:	af4080e7          	jalr	-1292(ra) # 80001a68 <_ZN9Semaphore6signalEv>
    }
    80003f7c:	01813083          	ld	ra,24(sp)
    80003f80:	01013403          	ld	s0,16(sp)
    80003f84:	00813483          	ld	s1,8(sp)
    80003f88:	00013903          	ld	s2,0(sp)
    80003f8c:	02010113          	addi	sp,sp,32
    80003f90:	00008067          	ret

0000000080003f94 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003f94:	fe010113          	addi	sp,sp,-32
    80003f98:	00113c23          	sd	ra,24(sp)
    80003f9c:	00813823          	sd	s0,16(sp)
    80003fa0:	00913423          	sd	s1,8(sp)
    80003fa4:	01213023          	sd	s2,0(sp)
    80003fa8:	02010413          	addi	s0,sp,32
    80003fac:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003fb0:	00100793          	li	a5,1
    80003fb4:	02a7f863          	bgeu	a5,a0,80003fe4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003fb8:	00a00793          	li	a5,10
    80003fbc:	02f577b3          	remu	a5,a0,a5
    80003fc0:	02078e63          	beqz	a5,80003ffc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003fc4:	fff48513          	addi	a0,s1,-1
    80003fc8:	00000097          	auipc	ra,0x0
    80003fcc:	fcc080e7          	jalr	-52(ra) # 80003f94 <_ZL9fibonaccim>
    80003fd0:	00050913          	mv	s2,a0
    80003fd4:	ffe48513          	addi	a0,s1,-2
    80003fd8:	00000097          	auipc	ra,0x0
    80003fdc:	fbc080e7          	jalr	-68(ra) # 80003f94 <_ZL9fibonaccim>
    80003fe0:	00a90533          	add	a0,s2,a0
}
    80003fe4:	01813083          	ld	ra,24(sp)
    80003fe8:	01013403          	ld	s0,16(sp)
    80003fec:	00813483          	ld	s1,8(sp)
    80003ff0:	00013903          	ld	s2,0(sp)
    80003ff4:	02010113          	addi	sp,sp,32
    80003ff8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003ffc:	ffffd097          	auipc	ra,0xffffd
    80004000:	438080e7          	jalr	1080(ra) # 80001434 <_Z15thread_dispatchv>
    80004004:	fc1ff06f          	j	80003fc4 <_ZL9fibonaccim+0x30>

0000000080004008 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004008:	fe010113          	addi	sp,sp,-32
    8000400c:	00113c23          	sd	ra,24(sp)
    80004010:	00813823          	sd	s0,16(sp)
    80004014:	00913423          	sd	s1,8(sp)
    80004018:	01213023          	sd	s2,0(sp)
    8000401c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004020:	00a00493          	li	s1,10
    80004024:	0400006f          	j	80004064 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004028:	00005517          	auipc	a0,0x5
    8000402c:	31850513          	addi	a0,a0,792 # 80009340 <CONSOLE_STATUS+0x330>
    80004030:	00001097          	auipc	ra,0x1
    80004034:	dc8080e7          	jalr	-568(ra) # 80004df8 <_Z11printStringPKc>
    80004038:	00000613          	li	a2,0
    8000403c:	00a00593          	li	a1,10
    80004040:	00048513          	mv	a0,s1
    80004044:	00001097          	auipc	ra,0x1
    80004048:	f64080e7          	jalr	-156(ra) # 80004fa8 <_Z8printIntiii>
    8000404c:	00005517          	auipc	a0,0x5
    80004050:	51450513          	addi	a0,a0,1300 # 80009560 <CONSOLE_STATUS+0x550>
    80004054:	00001097          	auipc	ra,0x1
    80004058:	da4080e7          	jalr	-604(ra) # 80004df8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000405c:	0014849b          	addiw	s1,s1,1
    80004060:	0ff4f493          	andi	s1,s1,255
    80004064:	00c00793          	li	a5,12
    80004068:	fc97f0e3          	bgeu	a5,s1,80004028 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000406c:	00005517          	auipc	a0,0x5
    80004070:	2dc50513          	addi	a0,a0,732 # 80009348 <CONSOLE_STATUS+0x338>
    80004074:	00001097          	auipc	ra,0x1
    80004078:	d84080e7          	jalr	-636(ra) # 80004df8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000407c:	00500313          	li	t1,5
    thread_dispatch();
    80004080:	ffffd097          	auipc	ra,0xffffd
    80004084:	3b4080e7          	jalr	948(ra) # 80001434 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004088:	01000513          	li	a0,16
    8000408c:	00000097          	auipc	ra,0x0
    80004090:	f08080e7          	jalr	-248(ra) # 80003f94 <_ZL9fibonaccim>
    80004094:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004098:	00005517          	auipc	a0,0x5
    8000409c:	2c050513          	addi	a0,a0,704 # 80009358 <CONSOLE_STATUS+0x348>
    800040a0:	00001097          	auipc	ra,0x1
    800040a4:	d58080e7          	jalr	-680(ra) # 80004df8 <_Z11printStringPKc>
    800040a8:	00000613          	li	a2,0
    800040ac:	00a00593          	li	a1,10
    800040b0:	0009051b          	sext.w	a0,s2
    800040b4:	00001097          	auipc	ra,0x1
    800040b8:	ef4080e7          	jalr	-268(ra) # 80004fa8 <_Z8printIntiii>
    800040bc:	00005517          	auipc	a0,0x5
    800040c0:	4a450513          	addi	a0,a0,1188 # 80009560 <CONSOLE_STATUS+0x550>
    800040c4:	00001097          	auipc	ra,0x1
    800040c8:	d34080e7          	jalr	-716(ra) # 80004df8 <_Z11printStringPKc>
    800040cc:	0400006f          	j	8000410c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800040d0:	00005517          	auipc	a0,0x5
    800040d4:	27050513          	addi	a0,a0,624 # 80009340 <CONSOLE_STATUS+0x330>
    800040d8:	00001097          	auipc	ra,0x1
    800040dc:	d20080e7          	jalr	-736(ra) # 80004df8 <_Z11printStringPKc>
    800040e0:	00000613          	li	a2,0
    800040e4:	00a00593          	li	a1,10
    800040e8:	00048513          	mv	a0,s1
    800040ec:	00001097          	auipc	ra,0x1
    800040f0:	ebc080e7          	jalr	-324(ra) # 80004fa8 <_Z8printIntiii>
    800040f4:	00005517          	auipc	a0,0x5
    800040f8:	46c50513          	addi	a0,a0,1132 # 80009560 <CONSOLE_STATUS+0x550>
    800040fc:	00001097          	auipc	ra,0x1
    80004100:	cfc080e7          	jalr	-772(ra) # 80004df8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004104:	0014849b          	addiw	s1,s1,1
    80004108:	0ff4f493          	andi	s1,s1,255
    8000410c:	00f00793          	li	a5,15
    80004110:	fc97f0e3          	bgeu	a5,s1,800040d0 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004114:	00005517          	auipc	a0,0x5
    80004118:	25450513          	addi	a0,a0,596 # 80009368 <CONSOLE_STATUS+0x358>
    8000411c:	00001097          	auipc	ra,0x1
    80004120:	cdc080e7          	jalr	-804(ra) # 80004df8 <_Z11printStringPKc>
    finishedD = true;
    80004124:	00100793          	li	a5,1
    80004128:	00007717          	auipc	a4,0x7
    8000412c:	62f70423          	sb	a5,1576(a4) # 8000b750 <_ZL9finishedD>
    thread_dispatch();
    80004130:	ffffd097          	auipc	ra,0xffffd
    80004134:	304080e7          	jalr	772(ra) # 80001434 <_Z15thread_dispatchv>
}
    80004138:	01813083          	ld	ra,24(sp)
    8000413c:	01013403          	ld	s0,16(sp)
    80004140:	00813483          	ld	s1,8(sp)
    80004144:	00013903          	ld	s2,0(sp)
    80004148:	02010113          	addi	sp,sp,32
    8000414c:	00008067          	ret

0000000080004150 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004150:	fe010113          	addi	sp,sp,-32
    80004154:	00113c23          	sd	ra,24(sp)
    80004158:	00813823          	sd	s0,16(sp)
    8000415c:	00913423          	sd	s1,8(sp)
    80004160:	01213023          	sd	s2,0(sp)
    80004164:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004168:	00000493          	li	s1,0
    8000416c:	0400006f          	j	800041ac <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004170:	00005517          	auipc	a0,0x5
    80004174:	1a050513          	addi	a0,a0,416 # 80009310 <CONSOLE_STATUS+0x300>
    80004178:	00001097          	auipc	ra,0x1
    8000417c:	c80080e7          	jalr	-896(ra) # 80004df8 <_Z11printStringPKc>
    80004180:	00000613          	li	a2,0
    80004184:	00a00593          	li	a1,10
    80004188:	00048513          	mv	a0,s1
    8000418c:	00001097          	auipc	ra,0x1
    80004190:	e1c080e7          	jalr	-484(ra) # 80004fa8 <_Z8printIntiii>
    80004194:	00005517          	auipc	a0,0x5
    80004198:	3cc50513          	addi	a0,a0,972 # 80009560 <CONSOLE_STATUS+0x550>
    8000419c:	00001097          	auipc	ra,0x1
    800041a0:	c5c080e7          	jalr	-932(ra) # 80004df8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800041a4:	0014849b          	addiw	s1,s1,1
    800041a8:	0ff4f493          	andi	s1,s1,255
    800041ac:	00200793          	li	a5,2
    800041b0:	fc97f0e3          	bgeu	a5,s1,80004170 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800041b4:	00005517          	auipc	a0,0x5
    800041b8:	16450513          	addi	a0,a0,356 # 80009318 <CONSOLE_STATUS+0x308>
    800041bc:	00001097          	auipc	ra,0x1
    800041c0:	c3c080e7          	jalr	-964(ra) # 80004df8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800041c4:	00700313          	li	t1,7
    thread_dispatch();
    800041c8:	ffffd097          	auipc	ra,0xffffd
    800041cc:	26c080e7          	jalr	620(ra) # 80001434 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800041d0:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800041d4:	00005517          	auipc	a0,0x5
    800041d8:	15450513          	addi	a0,a0,340 # 80009328 <CONSOLE_STATUS+0x318>
    800041dc:	00001097          	auipc	ra,0x1
    800041e0:	c1c080e7          	jalr	-996(ra) # 80004df8 <_Z11printStringPKc>
    800041e4:	00000613          	li	a2,0
    800041e8:	00a00593          	li	a1,10
    800041ec:	0009051b          	sext.w	a0,s2
    800041f0:	00001097          	auipc	ra,0x1
    800041f4:	db8080e7          	jalr	-584(ra) # 80004fa8 <_Z8printIntiii>
    800041f8:	00005517          	auipc	a0,0x5
    800041fc:	36850513          	addi	a0,a0,872 # 80009560 <CONSOLE_STATUS+0x550>
    80004200:	00001097          	auipc	ra,0x1
    80004204:	bf8080e7          	jalr	-1032(ra) # 80004df8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004208:	00c00513          	li	a0,12
    8000420c:	00000097          	auipc	ra,0x0
    80004210:	d88080e7          	jalr	-632(ra) # 80003f94 <_ZL9fibonaccim>
    80004214:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004218:	00005517          	auipc	a0,0x5
    8000421c:	11850513          	addi	a0,a0,280 # 80009330 <CONSOLE_STATUS+0x320>
    80004220:	00001097          	auipc	ra,0x1
    80004224:	bd8080e7          	jalr	-1064(ra) # 80004df8 <_Z11printStringPKc>
    80004228:	00000613          	li	a2,0
    8000422c:	00a00593          	li	a1,10
    80004230:	0009051b          	sext.w	a0,s2
    80004234:	00001097          	auipc	ra,0x1
    80004238:	d74080e7          	jalr	-652(ra) # 80004fa8 <_Z8printIntiii>
    8000423c:	00005517          	auipc	a0,0x5
    80004240:	32450513          	addi	a0,a0,804 # 80009560 <CONSOLE_STATUS+0x550>
    80004244:	00001097          	auipc	ra,0x1
    80004248:	bb4080e7          	jalr	-1100(ra) # 80004df8 <_Z11printStringPKc>
    8000424c:	0400006f          	j	8000428c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004250:	00005517          	auipc	a0,0x5
    80004254:	0c050513          	addi	a0,a0,192 # 80009310 <CONSOLE_STATUS+0x300>
    80004258:	00001097          	auipc	ra,0x1
    8000425c:	ba0080e7          	jalr	-1120(ra) # 80004df8 <_Z11printStringPKc>
    80004260:	00000613          	li	a2,0
    80004264:	00a00593          	li	a1,10
    80004268:	00048513          	mv	a0,s1
    8000426c:	00001097          	auipc	ra,0x1
    80004270:	d3c080e7          	jalr	-708(ra) # 80004fa8 <_Z8printIntiii>
    80004274:	00005517          	auipc	a0,0x5
    80004278:	2ec50513          	addi	a0,a0,748 # 80009560 <CONSOLE_STATUS+0x550>
    8000427c:	00001097          	auipc	ra,0x1
    80004280:	b7c080e7          	jalr	-1156(ra) # 80004df8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004284:	0014849b          	addiw	s1,s1,1
    80004288:	0ff4f493          	andi	s1,s1,255
    8000428c:	00500793          	li	a5,5
    80004290:	fc97f0e3          	bgeu	a5,s1,80004250 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004294:	00005517          	auipc	a0,0x5
    80004298:	05450513          	addi	a0,a0,84 # 800092e8 <CONSOLE_STATUS+0x2d8>
    8000429c:	00001097          	auipc	ra,0x1
    800042a0:	b5c080e7          	jalr	-1188(ra) # 80004df8 <_Z11printStringPKc>
    finishedC = true;
    800042a4:	00100793          	li	a5,1
    800042a8:	00007717          	auipc	a4,0x7
    800042ac:	4af704a3          	sb	a5,1193(a4) # 8000b751 <_ZL9finishedC>
    thread_dispatch();
    800042b0:	ffffd097          	auipc	ra,0xffffd
    800042b4:	184080e7          	jalr	388(ra) # 80001434 <_Z15thread_dispatchv>
}
    800042b8:	01813083          	ld	ra,24(sp)
    800042bc:	01013403          	ld	s0,16(sp)
    800042c0:	00813483          	ld	s1,8(sp)
    800042c4:	00013903          	ld	s2,0(sp)
    800042c8:	02010113          	addi	sp,sp,32
    800042cc:	00008067          	ret

00000000800042d0 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800042d0:	fe010113          	addi	sp,sp,-32
    800042d4:	00113c23          	sd	ra,24(sp)
    800042d8:	00813823          	sd	s0,16(sp)
    800042dc:	00913423          	sd	s1,8(sp)
    800042e0:	01213023          	sd	s2,0(sp)
    800042e4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800042e8:	00000913          	li	s2,0
    800042ec:	0380006f          	j	80004324 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800042f0:	ffffd097          	auipc	ra,0xffffd
    800042f4:	144080e7          	jalr	324(ra) # 80001434 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800042f8:	00148493          	addi	s1,s1,1
    800042fc:	000027b7          	lui	a5,0x2
    80004300:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004304:	0097ee63          	bltu	a5,s1,80004320 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004308:	00000713          	li	a4,0
    8000430c:	000077b7          	lui	a5,0x7
    80004310:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004314:	fce7eee3          	bltu	a5,a4,800042f0 <_ZL11workerBodyBPv+0x20>
    80004318:	00170713          	addi	a4,a4,1
    8000431c:	ff1ff06f          	j	8000430c <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004320:	00190913          	addi	s2,s2,1
    80004324:	00f00793          	li	a5,15
    80004328:	0527e063          	bltu	a5,s2,80004368 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    8000432c:	00005517          	auipc	a0,0x5
    80004330:	fcc50513          	addi	a0,a0,-52 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80004334:	00001097          	auipc	ra,0x1
    80004338:	ac4080e7          	jalr	-1340(ra) # 80004df8 <_Z11printStringPKc>
    8000433c:	00000613          	li	a2,0
    80004340:	00a00593          	li	a1,10
    80004344:	0009051b          	sext.w	a0,s2
    80004348:	00001097          	auipc	ra,0x1
    8000434c:	c60080e7          	jalr	-928(ra) # 80004fa8 <_Z8printIntiii>
    80004350:	00005517          	auipc	a0,0x5
    80004354:	21050513          	addi	a0,a0,528 # 80009560 <CONSOLE_STATUS+0x550>
    80004358:	00001097          	auipc	ra,0x1
    8000435c:	aa0080e7          	jalr	-1376(ra) # 80004df8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004360:	00000493          	li	s1,0
    80004364:	f99ff06f          	j	800042fc <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004368:	00005517          	auipc	a0,0x5
    8000436c:	f9850513          	addi	a0,a0,-104 # 80009300 <CONSOLE_STATUS+0x2f0>
    80004370:	00001097          	auipc	ra,0x1
    80004374:	a88080e7          	jalr	-1400(ra) # 80004df8 <_Z11printStringPKc>
    finishedB = true;
    80004378:	00100793          	li	a5,1
    8000437c:	00007717          	auipc	a4,0x7
    80004380:	3cf70b23          	sb	a5,982(a4) # 8000b752 <_ZL9finishedB>
    thread_dispatch();
    80004384:	ffffd097          	auipc	ra,0xffffd
    80004388:	0b0080e7          	jalr	176(ra) # 80001434 <_Z15thread_dispatchv>
}
    8000438c:	01813083          	ld	ra,24(sp)
    80004390:	01013403          	ld	s0,16(sp)
    80004394:	00813483          	ld	s1,8(sp)
    80004398:	00013903          	ld	s2,0(sp)
    8000439c:	02010113          	addi	sp,sp,32
    800043a0:	00008067          	ret

00000000800043a4 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800043a4:	fe010113          	addi	sp,sp,-32
    800043a8:	00113c23          	sd	ra,24(sp)
    800043ac:	00813823          	sd	s0,16(sp)
    800043b0:	00913423          	sd	s1,8(sp)
    800043b4:	01213023          	sd	s2,0(sp)
    800043b8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800043bc:	00000913          	li	s2,0
    800043c0:	0380006f          	j	800043f8 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800043c4:	ffffd097          	auipc	ra,0xffffd
    800043c8:	070080e7          	jalr	112(ra) # 80001434 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800043cc:	00148493          	addi	s1,s1,1
    800043d0:	000027b7          	lui	a5,0x2
    800043d4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800043d8:	0097ee63          	bltu	a5,s1,800043f4 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800043dc:	00000713          	li	a4,0
    800043e0:	000077b7          	lui	a5,0x7
    800043e4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800043e8:	fce7eee3          	bltu	a5,a4,800043c4 <_ZL11workerBodyAPv+0x20>
    800043ec:	00170713          	addi	a4,a4,1
    800043f0:	ff1ff06f          	j	800043e0 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800043f4:	00190913          	addi	s2,s2,1
    800043f8:	00900793          	li	a5,9
    800043fc:	0527e063          	bltu	a5,s2,8000443c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004400:	00005517          	auipc	a0,0x5
    80004404:	ee050513          	addi	a0,a0,-288 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80004408:	00001097          	auipc	ra,0x1
    8000440c:	9f0080e7          	jalr	-1552(ra) # 80004df8 <_Z11printStringPKc>
    80004410:	00000613          	li	a2,0
    80004414:	00a00593          	li	a1,10
    80004418:	0009051b          	sext.w	a0,s2
    8000441c:	00001097          	auipc	ra,0x1
    80004420:	b8c080e7          	jalr	-1140(ra) # 80004fa8 <_Z8printIntiii>
    80004424:	00005517          	auipc	a0,0x5
    80004428:	13c50513          	addi	a0,a0,316 # 80009560 <CONSOLE_STATUS+0x550>
    8000442c:	00001097          	auipc	ra,0x1
    80004430:	9cc080e7          	jalr	-1588(ra) # 80004df8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004434:	00000493          	li	s1,0
    80004438:	f99ff06f          	j	800043d0 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    8000443c:	00005517          	auipc	a0,0x5
    80004440:	eac50513          	addi	a0,a0,-340 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80004444:	00001097          	auipc	ra,0x1
    80004448:	9b4080e7          	jalr	-1612(ra) # 80004df8 <_Z11printStringPKc>
    finishedA = true;
    8000444c:	00100793          	li	a5,1
    80004450:	00007717          	auipc	a4,0x7
    80004454:	30f701a3          	sb	a5,771(a4) # 8000b753 <_ZL9finishedA>
}
    80004458:	01813083          	ld	ra,24(sp)
    8000445c:	01013403          	ld	s0,16(sp)
    80004460:	00813483          	ld	s1,8(sp)
    80004464:	00013903          	ld	s2,0(sp)
    80004468:	02010113          	addi	sp,sp,32
    8000446c:	00008067          	ret

0000000080004470 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004470:	fd010113          	addi	sp,sp,-48
    80004474:	02113423          	sd	ra,40(sp)
    80004478:	02813023          	sd	s0,32(sp)
    8000447c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004480:	00000613          	li	a2,0
    80004484:	00000597          	auipc	a1,0x0
    80004488:	f2058593          	addi	a1,a1,-224 # 800043a4 <_ZL11workerBodyAPv>
    8000448c:	fd040513          	addi	a0,s0,-48
    80004490:	ffffd097          	auipc	ra,0xffffd
    80004494:	ee8080e7          	jalr	-280(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004498:	00005517          	auipc	a0,0x5
    8000449c:	ee050513          	addi	a0,a0,-288 # 80009378 <CONSOLE_STATUS+0x368>
    800044a0:	00001097          	auipc	ra,0x1
    800044a4:	958080e7          	jalr	-1704(ra) # 80004df8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800044a8:	00000613          	li	a2,0
    800044ac:	00000597          	auipc	a1,0x0
    800044b0:	e2458593          	addi	a1,a1,-476 # 800042d0 <_ZL11workerBodyBPv>
    800044b4:	fd840513          	addi	a0,s0,-40
    800044b8:	ffffd097          	auipc	ra,0xffffd
    800044bc:	ec0080e7          	jalr	-320(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800044c0:	00005517          	auipc	a0,0x5
    800044c4:	ed050513          	addi	a0,a0,-304 # 80009390 <CONSOLE_STATUS+0x380>
    800044c8:	00001097          	auipc	ra,0x1
    800044cc:	930080e7          	jalr	-1744(ra) # 80004df8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800044d0:	00000613          	li	a2,0
    800044d4:	00000597          	auipc	a1,0x0
    800044d8:	c7c58593          	addi	a1,a1,-900 # 80004150 <_ZL11workerBodyCPv>
    800044dc:	fe040513          	addi	a0,s0,-32
    800044e0:	ffffd097          	auipc	ra,0xffffd
    800044e4:	e98080e7          	jalr	-360(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800044e8:	00005517          	auipc	a0,0x5
    800044ec:	ec050513          	addi	a0,a0,-320 # 800093a8 <CONSOLE_STATUS+0x398>
    800044f0:	00001097          	auipc	ra,0x1
    800044f4:	908080e7          	jalr	-1784(ra) # 80004df8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800044f8:	00000613          	li	a2,0
    800044fc:	00000597          	auipc	a1,0x0
    80004500:	b0c58593          	addi	a1,a1,-1268 # 80004008 <_ZL11workerBodyDPv>
    80004504:	fe840513          	addi	a0,s0,-24
    80004508:	ffffd097          	auipc	ra,0xffffd
    8000450c:	e70080e7          	jalr	-400(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004510:	00005517          	auipc	a0,0x5
    80004514:	eb050513          	addi	a0,a0,-336 # 800093c0 <CONSOLE_STATUS+0x3b0>
    80004518:	00001097          	auipc	ra,0x1
    8000451c:	8e0080e7          	jalr	-1824(ra) # 80004df8 <_Z11printStringPKc>
    80004520:	00c0006f          	j	8000452c <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004524:	ffffd097          	auipc	ra,0xffffd
    80004528:	f10080e7          	jalr	-240(ra) # 80001434 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000452c:	00007797          	auipc	a5,0x7
    80004530:	2277c783          	lbu	a5,551(a5) # 8000b753 <_ZL9finishedA>
    80004534:	fe0788e3          	beqz	a5,80004524 <_Z18Threads_C_API_testv+0xb4>
    80004538:	00007797          	auipc	a5,0x7
    8000453c:	21a7c783          	lbu	a5,538(a5) # 8000b752 <_ZL9finishedB>
    80004540:	fe0782e3          	beqz	a5,80004524 <_Z18Threads_C_API_testv+0xb4>
    80004544:	00007797          	auipc	a5,0x7
    80004548:	20d7c783          	lbu	a5,525(a5) # 8000b751 <_ZL9finishedC>
    8000454c:	fc078ce3          	beqz	a5,80004524 <_Z18Threads_C_API_testv+0xb4>
    80004550:	00007797          	auipc	a5,0x7
    80004554:	2007c783          	lbu	a5,512(a5) # 8000b750 <_ZL9finishedD>
    80004558:	fc0786e3          	beqz	a5,80004524 <_Z18Threads_C_API_testv+0xb4>
    }

}
    8000455c:	02813083          	ld	ra,40(sp)
    80004560:	02013403          	ld	s0,32(sp)
    80004564:	03010113          	addi	sp,sp,48
    80004568:	00008067          	ret

000000008000456c <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    8000456c:	fd010113          	addi	sp,sp,-48
    80004570:	02113423          	sd	ra,40(sp)
    80004574:	02813023          	sd	s0,32(sp)
    80004578:	00913c23          	sd	s1,24(sp)
    8000457c:	01213823          	sd	s2,16(sp)
    80004580:	01313423          	sd	s3,8(sp)
    80004584:	03010413          	addi	s0,sp,48
    80004588:	00050993          	mv	s3,a0
    8000458c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004590:	00000913          	li	s2,0
    80004594:	00c0006f          	j	800045a0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004598:	ffffd097          	auipc	ra,0xffffd
    8000459c:	41c080e7          	jalr	1052(ra) # 800019b4 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    800045a0:	ffffd097          	auipc	ra,0xffffd
    800045a4:	0cc080e7          	jalr	204(ra) # 8000166c <_Z4getcv>
    800045a8:	0005059b          	sext.w	a1,a0
    800045ac:	01b00793          	li	a5,27
    800045b0:	02f58a63          	beq	a1,a5,800045e4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    800045b4:	0084b503          	ld	a0,8(s1)
    800045b8:	00001097          	auipc	ra,0x1
    800045bc:	c64080e7          	jalr	-924(ra) # 8000521c <_ZN9BufferCPP3putEi>
        i++;
    800045c0:	0019071b          	addiw	a4,s2,1
    800045c4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800045c8:	0004a683          	lw	a3,0(s1)
    800045cc:	0026979b          	slliw	a5,a3,0x2
    800045d0:	00d787bb          	addw	a5,a5,a3
    800045d4:	0017979b          	slliw	a5,a5,0x1
    800045d8:	02f767bb          	remw	a5,a4,a5
    800045dc:	fc0792e3          	bnez	a5,800045a0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    800045e0:	fb9ff06f          	j	80004598 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    800045e4:	00100793          	li	a5,1
    800045e8:	00007717          	auipc	a4,0x7
    800045ec:	16f72823          	sw	a5,368(a4) # 8000b758 <_ZL9threadEnd>
    td->buffer->put('!');
    800045f0:	0209b783          	ld	a5,32(s3)
    800045f4:	02100593          	li	a1,33
    800045f8:	0087b503          	ld	a0,8(a5)
    800045fc:	00001097          	auipc	ra,0x1
    80004600:	c20080e7          	jalr	-992(ra) # 8000521c <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004604:	0104b503          	ld	a0,16(s1)
    80004608:	ffffd097          	auipc	ra,0xffffd
    8000460c:	460080e7          	jalr	1120(ra) # 80001a68 <_ZN9Semaphore6signalEv>
}
    80004610:	02813083          	ld	ra,40(sp)
    80004614:	02013403          	ld	s0,32(sp)
    80004618:	01813483          	ld	s1,24(sp)
    8000461c:	01013903          	ld	s2,16(sp)
    80004620:	00813983          	ld	s3,8(sp)
    80004624:	03010113          	addi	sp,sp,48
    80004628:	00008067          	ret

000000008000462c <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    8000462c:	fe010113          	addi	sp,sp,-32
    80004630:	00113c23          	sd	ra,24(sp)
    80004634:	00813823          	sd	s0,16(sp)
    80004638:	00913423          	sd	s1,8(sp)
    8000463c:	01213023          	sd	s2,0(sp)
    80004640:	02010413          	addi	s0,sp,32
    80004644:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004648:	00000913          	li	s2,0
    8000464c:	00c0006f          	j	80004658 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004650:	ffffd097          	auipc	ra,0xffffd
    80004654:	364080e7          	jalr	868(ra) # 800019b4 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004658:	00007797          	auipc	a5,0x7
    8000465c:	1007a783          	lw	a5,256(a5) # 8000b758 <_ZL9threadEnd>
    80004660:	02079e63          	bnez	a5,8000469c <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004664:	0004a583          	lw	a1,0(s1)
    80004668:	0305859b          	addiw	a1,a1,48
    8000466c:	0084b503          	ld	a0,8(s1)
    80004670:	00001097          	auipc	ra,0x1
    80004674:	bac080e7          	jalr	-1108(ra) # 8000521c <_ZN9BufferCPP3putEi>
        i++;
    80004678:	0019071b          	addiw	a4,s2,1
    8000467c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004680:	0004a683          	lw	a3,0(s1)
    80004684:	0026979b          	slliw	a5,a3,0x2
    80004688:	00d787bb          	addw	a5,a5,a3
    8000468c:	0017979b          	slliw	a5,a5,0x1
    80004690:	02f767bb          	remw	a5,a4,a5
    80004694:	fc0792e3          	bnez	a5,80004658 <_ZN12ProducerSync8producerEPv+0x2c>
    80004698:	fb9ff06f          	j	80004650 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    8000469c:	0104b503          	ld	a0,16(s1)
    800046a0:	ffffd097          	auipc	ra,0xffffd
    800046a4:	3c8080e7          	jalr	968(ra) # 80001a68 <_ZN9Semaphore6signalEv>
}
    800046a8:	01813083          	ld	ra,24(sp)
    800046ac:	01013403          	ld	s0,16(sp)
    800046b0:	00813483          	ld	s1,8(sp)
    800046b4:	00013903          	ld	s2,0(sp)
    800046b8:	02010113          	addi	sp,sp,32
    800046bc:	00008067          	ret

00000000800046c0 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    800046c0:	fd010113          	addi	sp,sp,-48
    800046c4:	02113423          	sd	ra,40(sp)
    800046c8:	02813023          	sd	s0,32(sp)
    800046cc:	00913c23          	sd	s1,24(sp)
    800046d0:	01213823          	sd	s2,16(sp)
    800046d4:	01313423          	sd	s3,8(sp)
    800046d8:	01413023          	sd	s4,0(sp)
    800046dc:	03010413          	addi	s0,sp,48
    800046e0:	00050993          	mv	s3,a0
    800046e4:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800046e8:	00000a13          	li	s4,0
    800046ec:	01c0006f          	j	80004708 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    800046f0:	ffffd097          	auipc	ra,0xffffd
    800046f4:	2c4080e7          	jalr	708(ra) # 800019b4 <_ZN6Thread8dispatchEv>
    800046f8:	0500006f          	j	80004748 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    800046fc:	00a00513          	li	a0,10
    80004700:	ffffd097          	auipc	ra,0xffffd
    80004704:	fac080e7          	jalr	-84(ra) # 800016ac <_Z4putcc>
    while (!threadEnd) {
    80004708:	00007797          	auipc	a5,0x7
    8000470c:	0507a783          	lw	a5,80(a5) # 8000b758 <_ZL9threadEnd>
    80004710:	06079263          	bnez	a5,80004774 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004714:	00893503          	ld	a0,8(s2)
    80004718:	00001097          	auipc	ra,0x1
    8000471c:	b94080e7          	jalr	-1132(ra) # 800052ac <_ZN9BufferCPP3getEv>
        i++;
    80004720:	001a049b          	addiw	s1,s4,1
    80004724:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004728:	0ff57513          	andi	a0,a0,255
    8000472c:	ffffd097          	auipc	ra,0xffffd
    80004730:	f80080e7          	jalr	-128(ra) # 800016ac <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004734:	00092703          	lw	a4,0(s2)
    80004738:	0027179b          	slliw	a5,a4,0x2
    8000473c:	00e787bb          	addw	a5,a5,a4
    80004740:	02f4e7bb          	remw	a5,s1,a5
    80004744:	fa0786e3          	beqz	a5,800046f0 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004748:	05000793          	li	a5,80
    8000474c:	02f4e4bb          	remw	s1,s1,a5
    80004750:	fa049ce3          	bnez	s1,80004708 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004754:	fa9ff06f          	j	800046fc <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004758:	0209b783          	ld	a5,32(s3)
    8000475c:	0087b503          	ld	a0,8(a5)
    80004760:	00001097          	auipc	ra,0x1
    80004764:	b4c080e7          	jalr	-1204(ra) # 800052ac <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004768:	0ff57513          	andi	a0,a0,255
    8000476c:	ffffd097          	auipc	ra,0xffffd
    80004770:	3cc080e7          	jalr	972(ra) # 80001b38 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004774:	0209b783          	ld	a5,32(s3)
    80004778:	0087b503          	ld	a0,8(a5)
    8000477c:	00001097          	auipc	ra,0x1
    80004780:	bbc080e7          	jalr	-1092(ra) # 80005338 <_ZN9BufferCPP6getCntEv>
    80004784:	fca04ae3          	bgtz	a0,80004758 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004788:	01093503          	ld	a0,16(s2)
    8000478c:	ffffd097          	auipc	ra,0xffffd
    80004790:	2dc080e7          	jalr	732(ra) # 80001a68 <_ZN9Semaphore6signalEv>
}
    80004794:	02813083          	ld	ra,40(sp)
    80004798:	02013403          	ld	s0,32(sp)
    8000479c:	01813483          	ld	s1,24(sp)
    800047a0:	01013903          	ld	s2,16(sp)
    800047a4:	00813983          	ld	s3,8(sp)
    800047a8:	00013a03          	ld	s4,0(sp)
    800047ac:	03010113          	addi	sp,sp,48
    800047b0:	00008067          	ret

00000000800047b4 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    800047b4:	f8010113          	addi	sp,sp,-128
    800047b8:	06113c23          	sd	ra,120(sp)
    800047bc:	06813823          	sd	s0,112(sp)
    800047c0:	06913423          	sd	s1,104(sp)
    800047c4:	07213023          	sd	s2,96(sp)
    800047c8:	05313c23          	sd	s3,88(sp)
    800047cc:	05413823          	sd	s4,80(sp)
    800047d0:	05513423          	sd	s5,72(sp)
    800047d4:	05613023          	sd	s6,64(sp)
    800047d8:	03713c23          	sd	s7,56(sp)
    800047dc:	03813823          	sd	s8,48(sp)
    800047e0:	03913423          	sd	s9,40(sp)
    800047e4:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    800047e8:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    800047ec:	00005517          	auipc	a0,0x5
    800047f0:	a0c50513          	addi	a0,a0,-1524 # 800091f8 <CONSOLE_STATUS+0x1e8>
    800047f4:	00000097          	auipc	ra,0x0
    800047f8:	604080e7          	jalr	1540(ra) # 80004df8 <_Z11printStringPKc>
    getString(input, 30);
    800047fc:	01e00593          	li	a1,30
    80004800:	f8040493          	addi	s1,s0,-128
    80004804:	00048513          	mv	a0,s1
    80004808:	00000097          	auipc	ra,0x0
    8000480c:	678080e7          	jalr	1656(ra) # 80004e80 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004810:	00048513          	mv	a0,s1
    80004814:	00000097          	auipc	ra,0x0
    80004818:	744080e7          	jalr	1860(ra) # 80004f58 <_Z11stringToIntPKc>
    8000481c:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004820:	00005517          	auipc	a0,0x5
    80004824:	9f850513          	addi	a0,a0,-1544 # 80009218 <CONSOLE_STATUS+0x208>
    80004828:	00000097          	auipc	ra,0x0
    8000482c:	5d0080e7          	jalr	1488(ra) # 80004df8 <_Z11printStringPKc>
    getString(input, 30);
    80004830:	01e00593          	li	a1,30
    80004834:	00048513          	mv	a0,s1
    80004838:	00000097          	auipc	ra,0x0
    8000483c:	648080e7          	jalr	1608(ra) # 80004e80 <_Z9getStringPci>
    n = stringToInt(input);
    80004840:	00048513          	mv	a0,s1
    80004844:	00000097          	auipc	ra,0x0
    80004848:	714080e7          	jalr	1812(ra) # 80004f58 <_Z11stringToIntPKc>
    8000484c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004850:	00005517          	auipc	a0,0x5
    80004854:	9e850513          	addi	a0,a0,-1560 # 80009238 <CONSOLE_STATUS+0x228>
    80004858:	00000097          	auipc	ra,0x0
    8000485c:	5a0080e7          	jalr	1440(ra) # 80004df8 <_Z11printStringPKc>
    80004860:	00000613          	li	a2,0
    80004864:	00a00593          	li	a1,10
    80004868:	00090513          	mv	a0,s2
    8000486c:	00000097          	auipc	ra,0x0
    80004870:	73c080e7          	jalr	1852(ra) # 80004fa8 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004874:	00005517          	auipc	a0,0x5
    80004878:	9dc50513          	addi	a0,a0,-1572 # 80009250 <CONSOLE_STATUS+0x240>
    8000487c:	00000097          	auipc	ra,0x0
    80004880:	57c080e7          	jalr	1404(ra) # 80004df8 <_Z11printStringPKc>
    80004884:	00000613          	li	a2,0
    80004888:	00a00593          	li	a1,10
    8000488c:	00048513          	mv	a0,s1
    80004890:	00000097          	auipc	ra,0x0
    80004894:	718080e7          	jalr	1816(ra) # 80004fa8 <_Z8printIntiii>
    printString(".\n");
    80004898:	00005517          	auipc	a0,0x5
    8000489c:	9d050513          	addi	a0,a0,-1584 # 80009268 <CONSOLE_STATUS+0x258>
    800048a0:	00000097          	auipc	ra,0x0
    800048a4:	558080e7          	jalr	1368(ra) # 80004df8 <_Z11printStringPKc>
    if(threadNum > n) {
    800048a8:	0324c463          	blt	s1,s2,800048d0 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    800048ac:	03205c63          	blez	s2,800048e4 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800048b0:	03800513          	li	a0,56
    800048b4:	ffffd097          	auipc	ra,0xffffd
    800048b8:	f8c080e7          	jalr	-116(ra) # 80001840 <_Znwm>
    800048bc:	00050a93          	mv	s5,a0
    800048c0:	00048593          	mv	a1,s1
    800048c4:	00001097          	auipc	ra,0x1
    800048c8:	804080e7          	jalr	-2044(ra) # 800050c8 <_ZN9BufferCPPC1Ei>
    800048cc:	0300006f          	j	800048fc <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800048d0:	00005517          	auipc	a0,0x5
    800048d4:	9a050513          	addi	a0,a0,-1632 # 80009270 <CONSOLE_STATUS+0x260>
    800048d8:	00000097          	auipc	ra,0x0
    800048dc:	520080e7          	jalr	1312(ra) # 80004df8 <_Z11printStringPKc>
        return;
    800048e0:	0140006f          	j	800048f4 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800048e4:	00005517          	auipc	a0,0x5
    800048e8:	9cc50513          	addi	a0,a0,-1588 # 800092b0 <CONSOLE_STATUS+0x2a0>
    800048ec:	00000097          	auipc	ra,0x0
    800048f0:	50c080e7          	jalr	1292(ra) # 80004df8 <_Z11printStringPKc>
        return;
    800048f4:	000b8113          	mv	sp,s7
    800048f8:	2380006f          	j	80004b30 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    800048fc:	01000513          	li	a0,16
    80004900:	ffffd097          	auipc	ra,0xffffd
    80004904:	f40080e7          	jalr	-192(ra) # 80001840 <_Znwm>
    80004908:	00050493          	mv	s1,a0
    8000490c:	00000593          	li	a1,0
    80004910:	ffffd097          	auipc	ra,0xffffd
    80004914:	120080e7          	jalr	288(ra) # 80001a30 <_ZN9SemaphoreC1Ej>
    80004918:	00007797          	auipc	a5,0x7
    8000491c:	e497b423          	sd	s1,-440(a5) # 8000b760 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004920:	00391793          	slli	a5,s2,0x3
    80004924:	00f78793          	addi	a5,a5,15
    80004928:	ff07f793          	andi	a5,a5,-16
    8000492c:	40f10133          	sub	sp,sp,a5
    80004930:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004934:	0019071b          	addiw	a4,s2,1
    80004938:	00171793          	slli	a5,a4,0x1
    8000493c:	00e787b3          	add	a5,a5,a4
    80004940:	00379793          	slli	a5,a5,0x3
    80004944:	00f78793          	addi	a5,a5,15
    80004948:	ff07f793          	andi	a5,a5,-16
    8000494c:	40f10133          	sub	sp,sp,a5
    80004950:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004954:	00191c13          	slli	s8,s2,0x1
    80004958:	012c07b3          	add	a5,s8,s2
    8000495c:	00379793          	slli	a5,a5,0x3
    80004960:	00fa07b3          	add	a5,s4,a5
    80004964:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004968:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    8000496c:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004970:	02800513          	li	a0,40
    80004974:	ffffd097          	auipc	ra,0xffffd
    80004978:	ecc080e7          	jalr	-308(ra) # 80001840 <_Znwm>
    8000497c:	00050b13          	mv	s6,a0
    80004980:	012c0c33          	add	s8,s8,s2
    80004984:	003c1c13          	slli	s8,s8,0x3
    80004988:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    8000498c:	ffffd097          	auipc	ra,0xffffd
    80004990:	000080e7          	jalr	ra # 8000198c <_ZN6ThreadC1Ev>
    80004994:	00007797          	auipc	a5,0x7
    80004998:	cbc78793          	addi	a5,a5,-836 # 8000b650 <_ZTV12ConsumerSync+0x10>
    8000499c:	00fb3023          	sd	a5,0(s6)
    800049a0:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    800049a4:	000b0513          	mv	a0,s6
    800049a8:	ffffd097          	auipc	ra,0xffffd
    800049ac:	050080e7          	jalr	80(ra) # 800019f8 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800049b0:	00000493          	li	s1,0
    800049b4:	0380006f          	j	800049ec <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800049b8:	00007797          	auipc	a5,0x7
    800049bc:	c7078793          	addi	a5,a5,-912 # 8000b628 <_ZTV12ProducerSync+0x10>
    800049c0:	00fcb023          	sd	a5,0(s9)
    800049c4:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    800049c8:	00349793          	slli	a5,s1,0x3
    800049cc:	00f987b3          	add	a5,s3,a5
    800049d0:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    800049d4:	00349793          	slli	a5,s1,0x3
    800049d8:	00f987b3          	add	a5,s3,a5
    800049dc:	0007b503          	ld	a0,0(a5)
    800049e0:	ffffd097          	auipc	ra,0xffffd
    800049e4:	018080e7          	jalr	24(ra) # 800019f8 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800049e8:	0014849b          	addiw	s1,s1,1
    800049ec:	0b24d063          	bge	s1,s2,80004a8c <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    800049f0:	00149793          	slli	a5,s1,0x1
    800049f4:	009787b3          	add	a5,a5,s1
    800049f8:	00379793          	slli	a5,a5,0x3
    800049fc:	00fa07b3          	add	a5,s4,a5
    80004a00:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004a04:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004a08:	00007717          	auipc	a4,0x7
    80004a0c:	d5873703          	ld	a4,-680(a4) # 8000b760 <_ZL10waitForAll>
    80004a10:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004a14:	02905863          	blez	s1,80004a44 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004a18:	02800513          	li	a0,40
    80004a1c:	ffffd097          	auipc	ra,0xffffd
    80004a20:	e24080e7          	jalr	-476(ra) # 80001840 <_Znwm>
    80004a24:	00050c93          	mv	s9,a0
    80004a28:	00149c13          	slli	s8,s1,0x1
    80004a2c:	009c0c33          	add	s8,s8,s1
    80004a30:	003c1c13          	slli	s8,s8,0x3
    80004a34:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004a38:	ffffd097          	auipc	ra,0xffffd
    80004a3c:	f54080e7          	jalr	-172(ra) # 8000198c <_ZN6ThreadC1Ev>
    80004a40:	f79ff06f          	j	800049b8 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004a44:	02800513          	li	a0,40
    80004a48:	ffffd097          	auipc	ra,0xffffd
    80004a4c:	df8080e7          	jalr	-520(ra) # 80001840 <_Znwm>
    80004a50:	00050c93          	mv	s9,a0
    80004a54:	00149c13          	slli	s8,s1,0x1
    80004a58:	009c0c33          	add	s8,s8,s1
    80004a5c:	003c1c13          	slli	s8,s8,0x3
    80004a60:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004a64:	ffffd097          	auipc	ra,0xffffd
    80004a68:	f28080e7          	jalr	-216(ra) # 8000198c <_ZN6ThreadC1Ev>
    80004a6c:	00007797          	auipc	a5,0x7
    80004a70:	b9478793          	addi	a5,a5,-1132 # 8000b600 <_ZTV16ProducerKeyboard+0x10>
    80004a74:	00fcb023          	sd	a5,0(s9)
    80004a78:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004a7c:	00349793          	slli	a5,s1,0x3
    80004a80:	00f987b3          	add	a5,s3,a5
    80004a84:	0197b023          	sd	s9,0(a5)
    80004a88:	f4dff06f          	j	800049d4 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004a8c:	ffffd097          	auipc	ra,0xffffd
    80004a90:	f28080e7          	jalr	-216(ra) # 800019b4 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004a94:	00000493          	li	s1,0
    80004a98:	00994e63          	blt	s2,s1,80004ab4 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004a9c:	00007517          	auipc	a0,0x7
    80004aa0:	cc453503          	ld	a0,-828(a0) # 8000b760 <_ZL10waitForAll>
    80004aa4:	ffffd097          	auipc	ra,0xffffd
    80004aa8:	ffc080e7          	jalr	-4(ra) # 80001aa0 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004aac:	0014849b          	addiw	s1,s1,1
    80004ab0:	fe9ff06f          	j	80004a98 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004ab4:	00000493          	li	s1,0
    80004ab8:	0080006f          	j	80004ac0 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004abc:	0014849b          	addiw	s1,s1,1
    80004ac0:	0324d263          	bge	s1,s2,80004ae4 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004ac4:	00349793          	slli	a5,s1,0x3
    80004ac8:	00f987b3          	add	a5,s3,a5
    80004acc:	0007b503          	ld	a0,0(a5)
    80004ad0:	fe0506e3          	beqz	a0,80004abc <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004ad4:	00053783          	ld	a5,0(a0)
    80004ad8:	0087b783          	ld	a5,8(a5)
    80004adc:	000780e7          	jalr	a5
    80004ae0:	fddff06f          	j	80004abc <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004ae4:	000b0a63          	beqz	s6,80004af8 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004ae8:	000b3783          	ld	a5,0(s6)
    80004aec:	0087b783          	ld	a5,8(a5)
    80004af0:	000b0513          	mv	a0,s6
    80004af4:	000780e7          	jalr	a5
    delete waitForAll;
    80004af8:	00007517          	auipc	a0,0x7
    80004afc:	c6853503          	ld	a0,-920(a0) # 8000b760 <_ZL10waitForAll>
    80004b00:	00050863          	beqz	a0,80004b10 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004b04:	00053783          	ld	a5,0(a0)
    80004b08:	0087b783          	ld	a5,8(a5)
    80004b0c:	000780e7          	jalr	a5
    delete buffer;
    80004b10:	000a8e63          	beqz	s5,80004b2c <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004b14:	000a8513          	mv	a0,s5
    80004b18:	00001097          	auipc	ra,0x1
    80004b1c:	8a8080e7          	jalr	-1880(ra) # 800053c0 <_ZN9BufferCPPD1Ev>
    80004b20:	000a8513          	mv	a0,s5
    80004b24:	ffffd097          	auipc	ra,0xffffd
    80004b28:	d6c080e7          	jalr	-660(ra) # 80001890 <_ZdlPv>
    80004b2c:	000b8113          	mv	sp,s7

}
    80004b30:	f8040113          	addi	sp,s0,-128
    80004b34:	07813083          	ld	ra,120(sp)
    80004b38:	07013403          	ld	s0,112(sp)
    80004b3c:	06813483          	ld	s1,104(sp)
    80004b40:	06013903          	ld	s2,96(sp)
    80004b44:	05813983          	ld	s3,88(sp)
    80004b48:	05013a03          	ld	s4,80(sp)
    80004b4c:	04813a83          	ld	s5,72(sp)
    80004b50:	04013b03          	ld	s6,64(sp)
    80004b54:	03813b83          	ld	s7,56(sp)
    80004b58:	03013c03          	ld	s8,48(sp)
    80004b5c:	02813c83          	ld	s9,40(sp)
    80004b60:	08010113          	addi	sp,sp,128
    80004b64:	00008067          	ret
    80004b68:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004b6c:	000a8513          	mv	a0,s5
    80004b70:	ffffd097          	auipc	ra,0xffffd
    80004b74:	d20080e7          	jalr	-736(ra) # 80001890 <_ZdlPv>
    80004b78:	00048513          	mv	a0,s1
    80004b7c:	00008097          	auipc	ra,0x8
    80004b80:	ccc080e7          	jalr	-820(ra) # 8000c848 <_Unwind_Resume>
    80004b84:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004b88:	00048513          	mv	a0,s1
    80004b8c:	ffffd097          	auipc	ra,0xffffd
    80004b90:	d04080e7          	jalr	-764(ra) # 80001890 <_ZdlPv>
    80004b94:	00090513          	mv	a0,s2
    80004b98:	00008097          	auipc	ra,0x8
    80004b9c:	cb0080e7          	jalr	-848(ra) # 8000c848 <_Unwind_Resume>
    80004ba0:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004ba4:	000b0513          	mv	a0,s6
    80004ba8:	ffffd097          	auipc	ra,0xffffd
    80004bac:	ce8080e7          	jalr	-792(ra) # 80001890 <_ZdlPv>
    80004bb0:	00048513          	mv	a0,s1
    80004bb4:	00008097          	auipc	ra,0x8
    80004bb8:	c94080e7          	jalr	-876(ra) # 8000c848 <_Unwind_Resume>
    80004bbc:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80004bc0:	000c8513          	mv	a0,s9
    80004bc4:	ffffd097          	auipc	ra,0xffffd
    80004bc8:	ccc080e7          	jalr	-820(ra) # 80001890 <_ZdlPv>
    80004bcc:	00048513          	mv	a0,s1
    80004bd0:	00008097          	auipc	ra,0x8
    80004bd4:	c78080e7          	jalr	-904(ra) # 8000c848 <_Unwind_Resume>
    80004bd8:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80004bdc:	000c8513          	mv	a0,s9
    80004be0:	ffffd097          	auipc	ra,0xffffd
    80004be4:	cb0080e7          	jalr	-848(ra) # 80001890 <_ZdlPv>
    80004be8:	00048513          	mv	a0,s1
    80004bec:	00008097          	auipc	ra,0x8
    80004bf0:	c5c080e7          	jalr	-932(ra) # 8000c848 <_Unwind_Resume>

0000000080004bf4 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80004bf4:	ff010113          	addi	sp,sp,-16
    80004bf8:	00113423          	sd	ra,8(sp)
    80004bfc:	00813023          	sd	s0,0(sp)
    80004c00:	01010413          	addi	s0,sp,16
    80004c04:	00007797          	auipc	a5,0x7
    80004c08:	a4c78793          	addi	a5,a5,-1460 # 8000b650 <_ZTV12ConsumerSync+0x10>
    80004c0c:	00f53023          	sd	a5,0(a0)
    80004c10:	ffffd097          	auipc	ra,0xffffd
    80004c14:	bc0080e7          	jalr	-1088(ra) # 800017d0 <_ZN6ThreadD1Ev>
    80004c18:	00813083          	ld	ra,8(sp)
    80004c1c:	00013403          	ld	s0,0(sp)
    80004c20:	01010113          	addi	sp,sp,16
    80004c24:	00008067          	ret

0000000080004c28 <_ZN12ConsumerSyncD0Ev>:
    80004c28:	fe010113          	addi	sp,sp,-32
    80004c2c:	00113c23          	sd	ra,24(sp)
    80004c30:	00813823          	sd	s0,16(sp)
    80004c34:	00913423          	sd	s1,8(sp)
    80004c38:	02010413          	addi	s0,sp,32
    80004c3c:	00050493          	mv	s1,a0
    80004c40:	00007797          	auipc	a5,0x7
    80004c44:	a1078793          	addi	a5,a5,-1520 # 8000b650 <_ZTV12ConsumerSync+0x10>
    80004c48:	00f53023          	sd	a5,0(a0)
    80004c4c:	ffffd097          	auipc	ra,0xffffd
    80004c50:	b84080e7          	jalr	-1148(ra) # 800017d0 <_ZN6ThreadD1Ev>
    80004c54:	00048513          	mv	a0,s1
    80004c58:	ffffd097          	auipc	ra,0xffffd
    80004c5c:	c38080e7          	jalr	-968(ra) # 80001890 <_ZdlPv>
    80004c60:	01813083          	ld	ra,24(sp)
    80004c64:	01013403          	ld	s0,16(sp)
    80004c68:	00813483          	ld	s1,8(sp)
    80004c6c:	02010113          	addi	sp,sp,32
    80004c70:	00008067          	ret

0000000080004c74 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80004c74:	ff010113          	addi	sp,sp,-16
    80004c78:	00113423          	sd	ra,8(sp)
    80004c7c:	00813023          	sd	s0,0(sp)
    80004c80:	01010413          	addi	s0,sp,16
    80004c84:	00007797          	auipc	a5,0x7
    80004c88:	9a478793          	addi	a5,a5,-1628 # 8000b628 <_ZTV12ProducerSync+0x10>
    80004c8c:	00f53023          	sd	a5,0(a0)
    80004c90:	ffffd097          	auipc	ra,0xffffd
    80004c94:	b40080e7          	jalr	-1216(ra) # 800017d0 <_ZN6ThreadD1Ev>
    80004c98:	00813083          	ld	ra,8(sp)
    80004c9c:	00013403          	ld	s0,0(sp)
    80004ca0:	01010113          	addi	sp,sp,16
    80004ca4:	00008067          	ret

0000000080004ca8 <_ZN12ProducerSyncD0Ev>:
    80004ca8:	fe010113          	addi	sp,sp,-32
    80004cac:	00113c23          	sd	ra,24(sp)
    80004cb0:	00813823          	sd	s0,16(sp)
    80004cb4:	00913423          	sd	s1,8(sp)
    80004cb8:	02010413          	addi	s0,sp,32
    80004cbc:	00050493          	mv	s1,a0
    80004cc0:	00007797          	auipc	a5,0x7
    80004cc4:	96878793          	addi	a5,a5,-1688 # 8000b628 <_ZTV12ProducerSync+0x10>
    80004cc8:	00f53023          	sd	a5,0(a0)
    80004ccc:	ffffd097          	auipc	ra,0xffffd
    80004cd0:	b04080e7          	jalr	-1276(ra) # 800017d0 <_ZN6ThreadD1Ev>
    80004cd4:	00048513          	mv	a0,s1
    80004cd8:	ffffd097          	auipc	ra,0xffffd
    80004cdc:	bb8080e7          	jalr	-1096(ra) # 80001890 <_ZdlPv>
    80004ce0:	01813083          	ld	ra,24(sp)
    80004ce4:	01013403          	ld	s0,16(sp)
    80004ce8:	00813483          	ld	s1,8(sp)
    80004cec:	02010113          	addi	sp,sp,32
    80004cf0:	00008067          	ret

0000000080004cf4 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80004cf4:	ff010113          	addi	sp,sp,-16
    80004cf8:	00113423          	sd	ra,8(sp)
    80004cfc:	00813023          	sd	s0,0(sp)
    80004d00:	01010413          	addi	s0,sp,16
    80004d04:	00007797          	auipc	a5,0x7
    80004d08:	8fc78793          	addi	a5,a5,-1796 # 8000b600 <_ZTV16ProducerKeyboard+0x10>
    80004d0c:	00f53023          	sd	a5,0(a0)
    80004d10:	ffffd097          	auipc	ra,0xffffd
    80004d14:	ac0080e7          	jalr	-1344(ra) # 800017d0 <_ZN6ThreadD1Ev>
    80004d18:	00813083          	ld	ra,8(sp)
    80004d1c:	00013403          	ld	s0,0(sp)
    80004d20:	01010113          	addi	sp,sp,16
    80004d24:	00008067          	ret

0000000080004d28 <_ZN16ProducerKeyboardD0Ev>:
    80004d28:	fe010113          	addi	sp,sp,-32
    80004d2c:	00113c23          	sd	ra,24(sp)
    80004d30:	00813823          	sd	s0,16(sp)
    80004d34:	00913423          	sd	s1,8(sp)
    80004d38:	02010413          	addi	s0,sp,32
    80004d3c:	00050493          	mv	s1,a0
    80004d40:	00007797          	auipc	a5,0x7
    80004d44:	8c078793          	addi	a5,a5,-1856 # 8000b600 <_ZTV16ProducerKeyboard+0x10>
    80004d48:	00f53023          	sd	a5,0(a0)
    80004d4c:	ffffd097          	auipc	ra,0xffffd
    80004d50:	a84080e7          	jalr	-1404(ra) # 800017d0 <_ZN6ThreadD1Ev>
    80004d54:	00048513          	mv	a0,s1
    80004d58:	ffffd097          	auipc	ra,0xffffd
    80004d5c:	b38080e7          	jalr	-1224(ra) # 80001890 <_ZdlPv>
    80004d60:	01813083          	ld	ra,24(sp)
    80004d64:	01013403          	ld	s0,16(sp)
    80004d68:	00813483          	ld	s1,8(sp)
    80004d6c:	02010113          	addi	sp,sp,32
    80004d70:	00008067          	ret

0000000080004d74 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80004d74:	ff010113          	addi	sp,sp,-16
    80004d78:	00113423          	sd	ra,8(sp)
    80004d7c:	00813023          	sd	s0,0(sp)
    80004d80:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80004d84:	02053583          	ld	a1,32(a0)
    80004d88:	fffff097          	auipc	ra,0xfffff
    80004d8c:	7e4080e7          	jalr	2020(ra) # 8000456c <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80004d90:	00813083          	ld	ra,8(sp)
    80004d94:	00013403          	ld	s0,0(sp)
    80004d98:	01010113          	addi	sp,sp,16
    80004d9c:	00008067          	ret

0000000080004da0 <_ZN12ProducerSync3runEv>:
    void run() override {
    80004da0:	ff010113          	addi	sp,sp,-16
    80004da4:	00113423          	sd	ra,8(sp)
    80004da8:	00813023          	sd	s0,0(sp)
    80004dac:	01010413          	addi	s0,sp,16
        producer(td);
    80004db0:	02053583          	ld	a1,32(a0)
    80004db4:	00000097          	auipc	ra,0x0
    80004db8:	878080e7          	jalr	-1928(ra) # 8000462c <_ZN12ProducerSync8producerEPv>
    }
    80004dbc:	00813083          	ld	ra,8(sp)
    80004dc0:	00013403          	ld	s0,0(sp)
    80004dc4:	01010113          	addi	sp,sp,16
    80004dc8:	00008067          	ret

0000000080004dcc <_ZN12ConsumerSync3runEv>:
    void run() override {
    80004dcc:	ff010113          	addi	sp,sp,-16
    80004dd0:	00113423          	sd	ra,8(sp)
    80004dd4:	00813023          	sd	s0,0(sp)
    80004dd8:	01010413          	addi	s0,sp,16
        consumer(td);
    80004ddc:	02053583          	ld	a1,32(a0)
    80004de0:	00000097          	auipc	ra,0x0
    80004de4:	8e0080e7          	jalr	-1824(ra) # 800046c0 <_ZN12ConsumerSync8consumerEPv>
    }
    80004de8:	00813083          	ld	ra,8(sp)
    80004dec:	00013403          	ld	s0,0(sp)
    80004df0:	01010113          	addi	sp,sp,16
    80004df4:	00008067          	ret

0000000080004df8 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80004df8:	fe010113          	addi	sp,sp,-32
    80004dfc:	00113c23          	sd	ra,24(sp)
    80004e00:	00813823          	sd	s0,16(sp)
    80004e04:	00913423          	sd	s1,8(sp)
    80004e08:	02010413          	addi	s0,sp,32
    80004e0c:	00050493          	mv	s1,a0
    LOCK();
    80004e10:	00100613          	li	a2,1
    80004e14:	00000593          	li	a1,0
    80004e18:	00007517          	auipc	a0,0x7
    80004e1c:	95050513          	addi	a0,a0,-1712 # 8000b768 <lockPrint>
    80004e20:	ffffc097          	auipc	ra,0xffffc
    80004e24:	48c080e7          	jalr	1164(ra) # 800012ac <copy_and_swap>
    80004e28:	00050863          	beqz	a0,80004e38 <_Z11printStringPKc+0x40>
    80004e2c:	ffffc097          	auipc	ra,0xffffc
    80004e30:	608080e7          	jalr	1544(ra) # 80001434 <_Z15thread_dispatchv>
    80004e34:	fddff06f          	j	80004e10 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80004e38:	0004c503          	lbu	a0,0(s1)
    80004e3c:	00050a63          	beqz	a0,80004e50 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80004e40:	ffffd097          	auipc	ra,0xffffd
    80004e44:	86c080e7          	jalr	-1940(ra) # 800016ac <_Z4putcc>
        string++;
    80004e48:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80004e4c:	fedff06f          	j	80004e38 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80004e50:	00000613          	li	a2,0
    80004e54:	00100593          	li	a1,1
    80004e58:	00007517          	auipc	a0,0x7
    80004e5c:	91050513          	addi	a0,a0,-1776 # 8000b768 <lockPrint>
    80004e60:	ffffc097          	auipc	ra,0xffffc
    80004e64:	44c080e7          	jalr	1100(ra) # 800012ac <copy_and_swap>
    80004e68:	fe0514e3          	bnez	a0,80004e50 <_Z11printStringPKc+0x58>
}
    80004e6c:	01813083          	ld	ra,24(sp)
    80004e70:	01013403          	ld	s0,16(sp)
    80004e74:	00813483          	ld	s1,8(sp)
    80004e78:	02010113          	addi	sp,sp,32
    80004e7c:	00008067          	ret

0000000080004e80 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80004e80:	fd010113          	addi	sp,sp,-48
    80004e84:	02113423          	sd	ra,40(sp)
    80004e88:	02813023          	sd	s0,32(sp)
    80004e8c:	00913c23          	sd	s1,24(sp)
    80004e90:	01213823          	sd	s2,16(sp)
    80004e94:	01313423          	sd	s3,8(sp)
    80004e98:	01413023          	sd	s4,0(sp)
    80004e9c:	03010413          	addi	s0,sp,48
    80004ea0:	00050993          	mv	s3,a0
    80004ea4:	00058a13          	mv	s4,a1
    LOCK();
    80004ea8:	00100613          	li	a2,1
    80004eac:	00000593          	li	a1,0
    80004eb0:	00007517          	auipc	a0,0x7
    80004eb4:	8b850513          	addi	a0,a0,-1864 # 8000b768 <lockPrint>
    80004eb8:	ffffc097          	auipc	ra,0xffffc
    80004ebc:	3f4080e7          	jalr	1012(ra) # 800012ac <copy_and_swap>
    80004ec0:	00050863          	beqz	a0,80004ed0 <_Z9getStringPci+0x50>
    80004ec4:	ffffc097          	auipc	ra,0xffffc
    80004ec8:	570080e7          	jalr	1392(ra) # 80001434 <_Z15thread_dispatchv>
    80004ecc:	fddff06f          	j	80004ea8 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80004ed0:	00000913          	li	s2,0
    80004ed4:	00090493          	mv	s1,s2
    80004ed8:	0019091b          	addiw	s2,s2,1
    80004edc:	03495a63          	bge	s2,s4,80004f10 <_Z9getStringPci+0x90>
        cc = getc();
    80004ee0:	ffffc097          	auipc	ra,0xffffc
    80004ee4:	78c080e7          	jalr	1932(ra) # 8000166c <_Z4getcv>
        if(cc < 1)
    80004ee8:	02050463          	beqz	a0,80004f10 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80004eec:	009984b3          	add	s1,s3,s1
    80004ef0:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004ef4:	00a00793          	li	a5,10
    80004ef8:	00f50a63          	beq	a0,a5,80004f0c <_Z9getStringPci+0x8c>
    80004efc:	00d00793          	li	a5,13
    80004f00:	fcf51ae3          	bne	a0,a5,80004ed4 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80004f04:	00090493          	mv	s1,s2
    80004f08:	0080006f          	j	80004f10 <_Z9getStringPci+0x90>
    80004f0c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004f10:	009984b3          	add	s1,s3,s1
    80004f14:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004f18:	00000613          	li	a2,0
    80004f1c:	00100593          	li	a1,1
    80004f20:	00007517          	auipc	a0,0x7
    80004f24:	84850513          	addi	a0,a0,-1976 # 8000b768 <lockPrint>
    80004f28:	ffffc097          	auipc	ra,0xffffc
    80004f2c:	384080e7          	jalr	900(ra) # 800012ac <copy_and_swap>
    80004f30:	fe0514e3          	bnez	a0,80004f18 <_Z9getStringPci+0x98>
    return buf;
}
    80004f34:	00098513          	mv	a0,s3
    80004f38:	02813083          	ld	ra,40(sp)
    80004f3c:	02013403          	ld	s0,32(sp)
    80004f40:	01813483          	ld	s1,24(sp)
    80004f44:	01013903          	ld	s2,16(sp)
    80004f48:	00813983          	ld	s3,8(sp)
    80004f4c:	00013a03          	ld	s4,0(sp)
    80004f50:	03010113          	addi	sp,sp,48
    80004f54:	00008067          	ret

0000000080004f58 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004f58:	ff010113          	addi	sp,sp,-16
    80004f5c:	00813423          	sd	s0,8(sp)
    80004f60:	01010413          	addi	s0,sp,16
    80004f64:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004f68:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80004f6c:	0006c603          	lbu	a2,0(a3)
    80004f70:	fd06071b          	addiw	a4,a2,-48
    80004f74:	0ff77713          	andi	a4,a4,255
    80004f78:	00900793          	li	a5,9
    80004f7c:	02e7e063          	bltu	a5,a4,80004f9c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80004f80:	0025179b          	slliw	a5,a0,0x2
    80004f84:	00a787bb          	addw	a5,a5,a0
    80004f88:	0017979b          	slliw	a5,a5,0x1
    80004f8c:	00168693          	addi	a3,a3,1
    80004f90:	00c787bb          	addw	a5,a5,a2
    80004f94:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80004f98:	fd5ff06f          	j	80004f6c <_Z11stringToIntPKc+0x14>
    return n;
}
    80004f9c:	00813403          	ld	s0,8(sp)
    80004fa0:	01010113          	addi	sp,sp,16
    80004fa4:	00008067          	ret

0000000080004fa8 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80004fa8:	fc010113          	addi	sp,sp,-64
    80004fac:	02113c23          	sd	ra,56(sp)
    80004fb0:	02813823          	sd	s0,48(sp)
    80004fb4:	02913423          	sd	s1,40(sp)
    80004fb8:	03213023          	sd	s2,32(sp)
    80004fbc:	01313c23          	sd	s3,24(sp)
    80004fc0:	04010413          	addi	s0,sp,64
    80004fc4:	00050493          	mv	s1,a0
    80004fc8:	00058913          	mv	s2,a1
    80004fcc:	00060993          	mv	s3,a2
    LOCK();
    80004fd0:	00100613          	li	a2,1
    80004fd4:	00000593          	li	a1,0
    80004fd8:	00006517          	auipc	a0,0x6
    80004fdc:	79050513          	addi	a0,a0,1936 # 8000b768 <lockPrint>
    80004fe0:	ffffc097          	auipc	ra,0xffffc
    80004fe4:	2cc080e7          	jalr	716(ra) # 800012ac <copy_and_swap>
    80004fe8:	00050863          	beqz	a0,80004ff8 <_Z8printIntiii+0x50>
    80004fec:	ffffc097          	auipc	ra,0xffffc
    80004ff0:	448080e7          	jalr	1096(ra) # 80001434 <_Z15thread_dispatchv>
    80004ff4:	fddff06f          	j	80004fd0 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80004ff8:	00098463          	beqz	s3,80005000 <_Z8printIntiii+0x58>
    80004ffc:	0804c463          	bltz	s1,80005084 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005000:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005004:	00000593          	li	a1,0
    }

    i = 0;
    80005008:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    8000500c:	0009079b          	sext.w	a5,s2
    80005010:	0325773b          	remuw	a4,a0,s2
    80005014:	00048613          	mv	a2,s1
    80005018:	0014849b          	addiw	s1,s1,1
    8000501c:	02071693          	slli	a3,a4,0x20
    80005020:	0206d693          	srli	a3,a3,0x20
    80005024:	00006717          	auipc	a4,0x6
    80005028:	64470713          	addi	a4,a4,1604 # 8000b668 <digits>
    8000502c:	00d70733          	add	a4,a4,a3
    80005030:	00074683          	lbu	a3,0(a4)
    80005034:	fd040713          	addi	a4,s0,-48
    80005038:	00c70733          	add	a4,a4,a2
    8000503c:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005040:	0005071b          	sext.w	a4,a0
    80005044:	0325553b          	divuw	a0,a0,s2
    80005048:	fcf772e3          	bgeu	a4,a5,8000500c <_Z8printIntiii+0x64>
    if(neg)
    8000504c:	00058c63          	beqz	a1,80005064 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005050:	fd040793          	addi	a5,s0,-48
    80005054:	009784b3          	add	s1,a5,s1
    80005058:	02d00793          	li	a5,45
    8000505c:	fef48823          	sb	a5,-16(s1)
    80005060:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005064:	fff4849b          	addiw	s1,s1,-1
    80005068:	0204c463          	bltz	s1,80005090 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    8000506c:	fd040793          	addi	a5,s0,-48
    80005070:	009787b3          	add	a5,a5,s1
    80005074:	ff07c503          	lbu	a0,-16(a5)
    80005078:	ffffc097          	auipc	ra,0xffffc
    8000507c:	634080e7          	jalr	1588(ra) # 800016ac <_Z4putcc>
    80005080:	fe5ff06f          	j	80005064 <_Z8printIntiii+0xbc>
        x = -xx;
    80005084:	4090053b          	negw	a0,s1
        neg = 1;
    80005088:	00100593          	li	a1,1
        x = -xx;
    8000508c:	f7dff06f          	j	80005008 <_Z8printIntiii+0x60>

    UNLOCK();
    80005090:	00000613          	li	a2,0
    80005094:	00100593          	li	a1,1
    80005098:	00006517          	auipc	a0,0x6
    8000509c:	6d050513          	addi	a0,a0,1744 # 8000b768 <lockPrint>
    800050a0:	ffffc097          	auipc	ra,0xffffc
    800050a4:	20c080e7          	jalr	524(ra) # 800012ac <copy_and_swap>
    800050a8:	fe0514e3          	bnez	a0,80005090 <_Z8printIntiii+0xe8>
    800050ac:	03813083          	ld	ra,56(sp)
    800050b0:	03013403          	ld	s0,48(sp)
    800050b4:	02813483          	ld	s1,40(sp)
    800050b8:	02013903          	ld	s2,32(sp)
    800050bc:	01813983          	ld	s3,24(sp)
    800050c0:	04010113          	addi	sp,sp,64
    800050c4:	00008067          	ret

00000000800050c8 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800050c8:	fd010113          	addi	sp,sp,-48
    800050cc:	02113423          	sd	ra,40(sp)
    800050d0:	02813023          	sd	s0,32(sp)
    800050d4:	00913c23          	sd	s1,24(sp)
    800050d8:	01213823          	sd	s2,16(sp)
    800050dc:	01313423          	sd	s3,8(sp)
    800050e0:	03010413          	addi	s0,sp,48
    800050e4:	00050493          	mv	s1,a0
    800050e8:	00058913          	mv	s2,a1
    800050ec:	0015879b          	addiw	a5,a1,1
    800050f0:	0007851b          	sext.w	a0,a5
    800050f4:	00f4a023          	sw	a5,0(s1)
    800050f8:	0004a823          	sw	zero,16(s1)
    800050fc:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005100:	00251513          	slli	a0,a0,0x2
    80005104:	ffffc097          	auipc	ra,0xffffc
    80005108:	1f0080e7          	jalr	496(ra) # 800012f4 <_Z9mem_allocm>
    8000510c:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005110:	01000513          	li	a0,16
    80005114:	ffffc097          	auipc	ra,0xffffc
    80005118:	72c080e7          	jalr	1836(ra) # 80001840 <_Znwm>
    8000511c:	00050993          	mv	s3,a0
    80005120:	00000593          	li	a1,0
    80005124:	ffffd097          	auipc	ra,0xffffd
    80005128:	90c080e7          	jalr	-1780(ra) # 80001a30 <_ZN9SemaphoreC1Ej>
    8000512c:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005130:	01000513          	li	a0,16
    80005134:	ffffc097          	auipc	ra,0xffffc
    80005138:	70c080e7          	jalr	1804(ra) # 80001840 <_Znwm>
    8000513c:	00050993          	mv	s3,a0
    80005140:	00090593          	mv	a1,s2
    80005144:	ffffd097          	auipc	ra,0xffffd
    80005148:	8ec080e7          	jalr	-1812(ra) # 80001a30 <_ZN9SemaphoreC1Ej>
    8000514c:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005150:	01000513          	li	a0,16
    80005154:	ffffc097          	auipc	ra,0xffffc
    80005158:	6ec080e7          	jalr	1772(ra) # 80001840 <_Znwm>
    8000515c:	00050913          	mv	s2,a0
    80005160:	00100593          	li	a1,1
    80005164:	ffffd097          	auipc	ra,0xffffd
    80005168:	8cc080e7          	jalr	-1844(ra) # 80001a30 <_ZN9SemaphoreC1Ej>
    8000516c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005170:	01000513          	li	a0,16
    80005174:	ffffc097          	auipc	ra,0xffffc
    80005178:	6cc080e7          	jalr	1740(ra) # 80001840 <_Znwm>
    8000517c:	00050913          	mv	s2,a0
    80005180:	00100593          	li	a1,1
    80005184:	ffffd097          	auipc	ra,0xffffd
    80005188:	8ac080e7          	jalr	-1876(ra) # 80001a30 <_ZN9SemaphoreC1Ej>
    8000518c:	0324b823          	sd	s2,48(s1)
}
    80005190:	02813083          	ld	ra,40(sp)
    80005194:	02013403          	ld	s0,32(sp)
    80005198:	01813483          	ld	s1,24(sp)
    8000519c:	01013903          	ld	s2,16(sp)
    800051a0:	00813983          	ld	s3,8(sp)
    800051a4:	03010113          	addi	sp,sp,48
    800051a8:	00008067          	ret
    800051ac:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800051b0:	00098513          	mv	a0,s3
    800051b4:	ffffc097          	auipc	ra,0xffffc
    800051b8:	6dc080e7          	jalr	1756(ra) # 80001890 <_ZdlPv>
    800051bc:	00048513          	mv	a0,s1
    800051c0:	00007097          	auipc	ra,0x7
    800051c4:	688080e7          	jalr	1672(ra) # 8000c848 <_Unwind_Resume>
    800051c8:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800051cc:	00098513          	mv	a0,s3
    800051d0:	ffffc097          	auipc	ra,0xffffc
    800051d4:	6c0080e7          	jalr	1728(ra) # 80001890 <_ZdlPv>
    800051d8:	00048513          	mv	a0,s1
    800051dc:	00007097          	auipc	ra,0x7
    800051e0:	66c080e7          	jalr	1644(ra) # 8000c848 <_Unwind_Resume>
    800051e4:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800051e8:	00090513          	mv	a0,s2
    800051ec:	ffffc097          	auipc	ra,0xffffc
    800051f0:	6a4080e7          	jalr	1700(ra) # 80001890 <_ZdlPv>
    800051f4:	00048513          	mv	a0,s1
    800051f8:	00007097          	auipc	ra,0x7
    800051fc:	650080e7          	jalr	1616(ra) # 8000c848 <_Unwind_Resume>
    80005200:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005204:	00090513          	mv	a0,s2
    80005208:	ffffc097          	auipc	ra,0xffffc
    8000520c:	688080e7          	jalr	1672(ra) # 80001890 <_ZdlPv>
    80005210:	00048513          	mv	a0,s1
    80005214:	00007097          	auipc	ra,0x7
    80005218:	634080e7          	jalr	1588(ra) # 8000c848 <_Unwind_Resume>

000000008000521c <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    8000521c:	fe010113          	addi	sp,sp,-32
    80005220:	00113c23          	sd	ra,24(sp)
    80005224:	00813823          	sd	s0,16(sp)
    80005228:	00913423          	sd	s1,8(sp)
    8000522c:	01213023          	sd	s2,0(sp)
    80005230:	02010413          	addi	s0,sp,32
    80005234:	00050493          	mv	s1,a0
    80005238:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    8000523c:	01853503          	ld	a0,24(a0)
    80005240:	ffffd097          	auipc	ra,0xffffd
    80005244:	860080e7          	jalr	-1952(ra) # 80001aa0 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005248:	0304b503          	ld	a0,48(s1)
    8000524c:	ffffd097          	auipc	ra,0xffffd
    80005250:	854080e7          	jalr	-1964(ra) # 80001aa0 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005254:	0084b783          	ld	a5,8(s1)
    80005258:	0144a703          	lw	a4,20(s1)
    8000525c:	00271713          	slli	a4,a4,0x2
    80005260:	00e787b3          	add	a5,a5,a4
    80005264:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005268:	0144a783          	lw	a5,20(s1)
    8000526c:	0017879b          	addiw	a5,a5,1
    80005270:	0004a703          	lw	a4,0(s1)
    80005274:	02e7e7bb          	remw	a5,a5,a4
    80005278:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    8000527c:	0304b503          	ld	a0,48(s1)
    80005280:	ffffc097          	auipc	ra,0xffffc
    80005284:	7e8080e7          	jalr	2024(ra) # 80001a68 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005288:	0204b503          	ld	a0,32(s1)
    8000528c:	ffffc097          	auipc	ra,0xffffc
    80005290:	7dc080e7          	jalr	2012(ra) # 80001a68 <_ZN9Semaphore6signalEv>

}
    80005294:	01813083          	ld	ra,24(sp)
    80005298:	01013403          	ld	s0,16(sp)
    8000529c:	00813483          	ld	s1,8(sp)
    800052a0:	00013903          	ld	s2,0(sp)
    800052a4:	02010113          	addi	sp,sp,32
    800052a8:	00008067          	ret

00000000800052ac <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800052ac:	fe010113          	addi	sp,sp,-32
    800052b0:	00113c23          	sd	ra,24(sp)
    800052b4:	00813823          	sd	s0,16(sp)
    800052b8:	00913423          	sd	s1,8(sp)
    800052bc:	01213023          	sd	s2,0(sp)
    800052c0:	02010413          	addi	s0,sp,32
    800052c4:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800052c8:	02053503          	ld	a0,32(a0)
    800052cc:	ffffc097          	auipc	ra,0xffffc
    800052d0:	7d4080e7          	jalr	2004(ra) # 80001aa0 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800052d4:	0284b503          	ld	a0,40(s1)
    800052d8:	ffffc097          	auipc	ra,0xffffc
    800052dc:	7c8080e7          	jalr	1992(ra) # 80001aa0 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800052e0:	0084b703          	ld	a4,8(s1)
    800052e4:	0104a783          	lw	a5,16(s1)
    800052e8:	00279693          	slli	a3,a5,0x2
    800052ec:	00d70733          	add	a4,a4,a3
    800052f0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800052f4:	0017879b          	addiw	a5,a5,1
    800052f8:	0004a703          	lw	a4,0(s1)
    800052fc:	02e7e7bb          	remw	a5,a5,a4
    80005300:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005304:	0284b503          	ld	a0,40(s1)
    80005308:	ffffc097          	auipc	ra,0xffffc
    8000530c:	760080e7          	jalr	1888(ra) # 80001a68 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005310:	0184b503          	ld	a0,24(s1)
    80005314:	ffffc097          	auipc	ra,0xffffc
    80005318:	754080e7          	jalr	1876(ra) # 80001a68 <_ZN9Semaphore6signalEv>

    return ret;
}
    8000531c:	00090513          	mv	a0,s2
    80005320:	01813083          	ld	ra,24(sp)
    80005324:	01013403          	ld	s0,16(sp)
    80005328:	00813483          	ld	s1,8(sp)
    8000532c:	00013903          	ld	s2,0(sp)
    80005330:	02010113          	addi	sp,sp,32
    80005334:	00008067          	ret

0000000080005338 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005338:	fe010113          	addi	sp,sp,-32
    8000533c:	00113c23          	sd	ra,24(sp)
    80005340:	00813823          	sd	s0,16(sp)
    80005344:	00913423          	sd	s1,8(sp)
    80005348:	01213023          	sd	s2,0(sp)
    8000534c:	02010413          	addi	s0,sp,32
    80005350:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005354:	02853503          	ld	a0,40(a0)
    80005358:	ffffc097          	auipc	ra,0xffffc
    8000535c:	748080e7          	jalr	1864(ra) # 80001aa0 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005360:	0304b503          	ld	a0,48(s1)
    80005364:	ffffc097          	auipc	ra,0xffffc
    80005368:	73c080e7          	jalr	1852(ra) # 80001aa0 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    8000536c:	0144a783          	lw	a5,20(s1)
    80005370:	0104a903          	lw	s2,16(s1)
    80005374:	0327ce63          	blt	a5,s2,800053b0 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005378:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    8000537c:	0304b503          	ld	a0,48(s1)
    80005380:	ffffc097          	auipc	ra,0xffffc
    80005384:	6e8080e7          	jalr	1768(ra) # 80001a68 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005388:	0284b503          	ld	a0,40(s1)
    8000538c:	ffffc097          	auipc	ra,0xffffc
    80005390:	6dc080e7          	jalr	1756(ra) # 80001a68 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005394:	00090513          	mv	a0,s2
    80005398:	01813083          	ld	ra,24(sp)
    8000539c:	01013403          	ld	s0,16(sp)
    800053a0:	00813483          	ld	s1,8(sp)
    800053a4:	00013903          	ld	s2,0(sp)
    800053a8:	02010113          	addi	sp,sp,32
    800053ac:	00008067          	ret
        ret = cap - head + tail;
    800053b0:	0004a703          	lw	a4,0(s1)
    800053b4:	4127093b          	subw	s2,a4,s2
    800053b8:	00f9093b          	addw	s2,s2,a5
    800053bc:	fc1ff06f          	j	8000537c <_ZN9BufferCPP6getCntEv+0x44>

00000000800053c0 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800053c0:	fe010113          	addi	sp,sp,-32
    800053c4:	00113c23          	sd	ra,24(sp)
    800053c8:	00813823          	sd	s0,16(sp)
    800053cc:	00913423          	sd	s1,8(sp)
    800053d0:	02010413          	addi	s0,sp,32
    800053d4:	00050493          	mv	s1,a0
    Console::putc('\n');
    800053d8:	00a00513          	li	a0,10
    800053dc:	ffffc097          	auipc	ra,0xffffc
    800053e0:	75c080e7          	jalr	1884(ra) # 80001b38 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800053e4:	00004517          	auipc	a0,0x4
    800053e8:	ff450513          	addi	a0,a0,-12 # 800093d8 <CONSOLE_STATUS+0x3c8>
    800053ec:	00000097          	auipc	ra,0x0
    800053f0:	a0c080e7          	jalr	-1524(ra) # 80004df8 <_Z11printStringPKc>
    while (getCnt()) {
    800053f4:	00048513          	mv	a0,s1
    800053f8:	00000097          	auipc	ra,0x0
    800053fc:	f40080e7          	jalr	-192(ra) # 80005338 <_ZN9BufferCPP6getCntEv>
    80005400:	02050c63          	beqz	a0,80005438 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005404:	0084b783          	ld	a5,8(s1)
    80005408:	0104a703          	lw	a4,16(s1)
    8000540c:	00271713          	slli	a4,a4,0x2
    80005410:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005414:	0007c503          	lbu	a0,0(a5)
    80005418:	ffffc097          	auipc	ra,0xffffc
    8000541c:	720080e7          	jalr	1824(ra) # 80001b38 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005420:	0104a783          	lw	a5,16(s1)
    80005424:	0017879b          	addiw	a5,a5,1
    80005428:	0004a703          	lw	a4,0(s1)
    8000542c:	02e7e7bb          	remw	a5,a5,a4
    80005430:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005434:	fc1ff06f          	j	800053f4 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005438:	02100513          	li	a0,33
    8000543c:	ffffc097          	auipc	ra,0xffffc
    80005440:	6fc080e7          	jalr	1788(ra) # 80001b38 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005444:	00a00513          	li	a0,10
    80005448:	ffffc097          	auipc	ra,0xffffc
    8000544c:	6f0080e7          	jalr	1776(ra) # 80001b38 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005450:	0084b503          	ld	a0,8(s1)
    80005454:	ffffc097          	auipc	ra,0xffffc
    80005458:	ee4080e7          	jalr	-284(ra) # 80001338 <_Z8mem_freePv>
    delete itemAvailable;
    8000545c:	0204b503          	ld	a0,32(s1)
    80005460:	00050863          	beqz	a0,80005470 <_ZN9BufferCPPD1Ev+0xb0>
    80005464:	00053783          	ld	a5,0(a0)
    80005468:	0087b783          	ld	a5,8(a5)
    8000546c:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005470:	0184b503          	ld	a0,24(s1)
    80005474:	00050863          	beqz	a0,80005484 <_ZN9BufferCPPD1Ev+0xc4>
    80005478:	00053783          	ld	a5,0(a0)
    8000547c:	0087b783          	ld	a5,8(a5)
    80005480:	000780e7          	jalr	a5
    delete mutexTail;
    80005484:	0304b503          	ld	a0,48(s1)
    80005488:	00050863          	beqz	a0,80005498 <_ZN9BufferCPPD1Ev+0xd8>
    8000548c:	00053783          	ld	a5,0(a0)
    80005490:	0087b783          	ld	a5,8(a5)
    80005494:	000780e7          	jalr	a5
    delete mutexHead;
    80005498:	0284b503          	ld	a0,40(s1)
    8000549c:	00050863          	beqz	a0,800054ac <_ZN9BufferCPPD1Ev+0xec>
    800054a0:	00053783          	ld	a5,0(a0)
    800054a4:	0087b783          	ld	a5,8(a5)
    800054a8:	000780e7          	jalr	a5
}
    800054ac:	01813083          	ld	ra,24(sp)
    800054b0:	01013403          	ld	s0,16(sp)
    800054b4:	00813483          	ld	s1,8(sp)
    800054b8:	02010113          	addi	sp,sp,32
    800054bc:	00008067          	ret

00000000800054c0 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800054c0:	fe010113          	addi	sp,sp,-32
    800054c4:	00113c23          	sd	ra,24(sp)
    800054c8:	00813823          	sd	s0,16(sp)
    800054cc:	00913423          	sd	s1,8(sp)
    800054d0:	01213023          	sd	s2,0(sp)
    800054d4:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800054d8:	00004517          	auipc	a0,0x4
    800054dc:	f1850513          	addi	a0,a0,-232 # 800093f0 <CONSOLE_STATUS+0x3e0>
    800054e0:	00000097          	auipc	ra,0x0
    800054e4:	918080e7          	jalr	-1768(ra) # 80004df8 <_Z11printStringPKc>
    int test = getc() - '0';
    800054e8:	ffffc097          	auipc	ra,0xffffc
    800054ec:	184080e7          	jalr	388(ra) # 8000166c <_Z4getcv>
    800054f0:	00050913          	mv	s2,a0
    800054f4:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    800054f8:	ffffc097          	auipc	ra,0xffffc
    800054fc:	174080e7          	jalr	372(ra) # 8000166c <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80005500:	fcb9091b          	addiw	s2,s2,-53
    80005504:	00100793          	li	a5,1
    80005508:	0327f463          	bgeu	a5,s2,80005530 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    8000550c:	00700793          	li	a5,7
    80005510:	0e97e263          	bltu	a5,s1,800055f4 <_Z8userMainv+0x134>
    80005514:	00249493          	slli	s1,s1,0x2
    80005518:	00004717          	auipc	a4,0x4
    8000551c:	0f070713          	addi	a4,a4,240 # 80009608 <CONSOLE_STATUS+0x5f8>
    80005520:	00e484b3          	add	s1,s1,a4
    80005524:	0004a783          	lw	a5,0(s1)
    80005528:	00e787b3          	add	a5,a5,a4
    8000552c:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80005530:	00004517          	auipc	a0,0x4
    80005534:	ee050513          	addi	a0,a0,-288 # 80009410 <CONSOLE_STATUS+0x400>
    80005538:	00000097          	auipc	ra,0x0
    8000553c:	8c0080e7          	jalr	-1856(ra) # 80004df8 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80005540:	01813083          	ld	ra,24(sp)
    80005544:	01013403          	ld	s0,16(sp)
    80005548:	00813483          	ld	s1,8(sp)
    8000554c:	00013903          	ld	s2,0(sp)
    80005550:	02010113          	addi	sp,sp,32
    80005554:	00008067          	ret
            Threads_C_API_test();
    80005558:	fffff097          	auipc	ra,0xfffff
    8000555c:	f18080e7          	jalr	-232(ra) # 80004470 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005560:	00004517          	auipc	a0,0x4
    80005564:	ee050513          	addi	a0,a0,-288 # 80009440 <CONSOLE_STATUS+0x430>
    80005568:	00000097          	auipc	ra,0x0
    8000556c:	890080e7          	jalr	-1904(ra) # 80004df8 <_Z11printStringPKc>
            break;
    80005570:	fd1ff06f          	j	80005540 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80005574:	ffffe097          	auipc	ra,0xffffe
    80005578:	ddc080e7          	jalr	-548(ra) # 80003350 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    8000557c:	00004517          	auipc	a0,0x4
    80005580:	f0450513          	addi	a0,a0,-252 # 80009480 <CONSOLE_STATUS+0x470>
    80005584:	00000097          	auipc	ra,0x0
    80005588:	874080e7          	jalr	-1932(ra) # 80004df8 <_Z11printStringPKc>
            break;
    8000558c:	fb5ff06f          	j	80005540 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    80005590:	ffffd097          	auipc	ra,0xffffd
    80005594:	614080e7          	jalr	1556(ra) # 80002ba4 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005598:	00004517          	auipc	a0,0x4
    8000559c:	f2850513          	addi	a0,a0,-216 # 800094c0 <CONSOLE_STATUS+0x4b0>
    800055a0:	00000097          	auipc	ra,0x0
    800055a4:	858080e7          	jalr	-1960(ra) # 80004df8 <_Z11printStringPKc>
            break;
    800055a8:	f99ff06f          	j	80005540 <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    800055ac:	fffff097          	auipc	ra,0xfffff
    800055b0:	208080e7          	jalr	520(ra) # 800047b4 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    800055b4:	00004517          	auipc	a0,0x4
    800055b8:	f5c50513          	addi	a0,a0,-164 # 80009510 <CONSOLE_STATUS+0x500>
    800055bc:	00000097          	auipc	ra,0x0
    800055c0:	83c080e7          	jalr	-1988(ra) # 80004df8 <_Z11printStringPKc>
            break;
    800055c4:	f7dff06f          	j	80005540 <_Z8userMainv+0x80>
            System_Mode_test();
    800055c8:	00000097          	auipc	ra,0x0
    800055cc:	658080e7          	jalr	1624(ra) # 80005c20 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    800055d0:	00004517          	auipc	a0,0x4
    800055d4:	f9850513          	addi	a0,a0,-104 # 80009568 <CONSOLE_STATUS+0x558>
    800055d8:	00000097          	auipc	ra,0x0
    800055dc:	820080e7          	jalr	-2016(ra) # 80004df8 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800055e0:	00004517          	auipc	a0,0x4
    800055e4:	fa850513          	addi	a0,a0,-88 # 80009588 <CONSOLE_STATUS+0x578>
    800055e8:	00000097          	auipc	ra,0x0
    800055ec:	810080e7          	jalr	-2032(ra) # 80004df8 <_Z11printStringPKc>
            break;
    800055f0:	f51ff06f          	j	80005540 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    800055f4:	00004517          	auipc	a0,0x4
    800055f8:	fec50513          	addi	a0,a0,-20 # 800095e0 <CONSOLE_STATUS+0x5d0>
    800055fc:	fffff097          	auipc	ra,0xfffff
    80005600:	7fc080e7          	jalr	2044(ra) # 80004df8 <_Z11printStringPKc>
    80005604:	f3dff06f          	j	80005540 <_Z8userMainv+0x80>

0000000080005608 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005608:	fe010113          	addi	sp,sp,-32
    8000560c:	00113c23          	sd	ra,24(sp)
    80005610:	00813823          	sd	s0,16(sp)
    80005614:	00913423          	sd	s1,8(sp)
    80005618:	01213023          	sd	s2,0(sp)
    8000561c:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005620:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005624:	00600493          	li	s1,6
    while (--i > 0) {
    80005628:	fff4849b          	addiw	s1,s1,-1
    8000562c:	04905463          	blez	s1,80005674 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005630:	00004517          	auipc	a0,0x4
    80005634:	ff850513          	addi	a0,a0,-8 # 80009628 <CONSOLE_STATUS+0x618>
    80005638:	fffff097          	auipc	ra,0xfffff
    8000563c:	7c0080e7          	jalr	1984(ra) # 80004df8 <_Z11printStringPKc>
        printInt(sleep_time);
    80005640:	00000613          	li	a2,0
    80005644:	00a00593          	li	a1,10
    80005648:	0009051b          	sext.w	a0,s2
    8000564c:	00000097          	auipc	ra,0x0
    80005650:	95c080e7          	jalr	-1700(ra) # 80004fa8 <_Z8printIntiii>
        printString(" !\n");
    80005654:	00004517          	auipc	a0,0x4
    80005658:	fdc50513          	addi	a0,a0,-36 # 80009630 <CONSOLE_STATUS+0x620>
    8000565c:	fffff097          	auipc	ra,0xfffff
    80005660:	79c080e7          	jalr	1948(ra) # 80004df8 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005664:	00090513          	mv	a0,s2
    80005668:	ffffc097          	auipc	ra,0xffffc
    8000566c:	09c080e7          	jalr	156(ra) # 80001704 <_Z10time_sleepm>
    while (--i > 0) {
    80005670:	fb9ff06f          	j	80005628 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005674:	00a00793          	li	a5,10
    80005678:	02f95933          	divu	s2,s2,a5
    8000567c:	fff90913          	addi	s2,s2,-1
    80005680:	00006797          	auipc	a5,0x6
    80005684:	0f078793          	addi	a5,a5,240 # 8000b770 <_ZL8finished>
    80005688:	01278933          	add	s2,a5,s2
    8000568c:	00100793          	li	a5,1
    80005690:	00f90023          	sb	a5,0(s2)
}
    80005694:	01813083          	ld	ra,24(sp)
    80005698:	01013403          	ld	s0,16(sp)
    8000569c:	00813483          	ld	s1,8(sp)
    800056a0:	00013903          	ld	s2,0(sp)
    800056a4:	02010113          	addi	sp,sp,32
    800056a8:	00008067          	ret

00000000800056ac <_Z12testSleepingv>:

void testSleeping() {
    800056ac:	fc010113          	addi	sp,sp,-64
    800056b0:	02113c23          	sd	ra,56(sp)
    800056b4:	02813823          	sd	s0,48(sp)
    800056b8:	02913423          	sd	s1,40(sp)
    800056bc:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800056c0:	00a00793          	li	a5,10
    800056c4:	fcf43823          	sd	a5,-48(s0)
    800056c8:	01400793          	li	a5,20
    800056cc:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800056d0:	00000493          	li	s1,0
    800056d4:	02c0006f          	j	80005700 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800056d8:	00349793          	slli	a5,s1,0x3
    800056dc:	fd040613          	addi	a2,s0,-48
    800056e0:	00f60633          	add	a2,a2,a5
    800056e4:	00000597          	auipc	a1,0x0
    800056e8:	f2458593          	addi	a1,a1,-220 # 80005608 <_ZL9sleepyRunPv>
    800056ec:	fc040513          	addi	a0,s0,-64
    800056f0:	00f50533          	add	a0,a0,a5
    800056f4:	ffffc097          	auipc	ra,0xffffc
    800056f8:	c84080e7          	jalr	-892(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800056fc:	0014849b          	addiw	s1,s1,1
    80005700:	00100793          	li	a5,1
    80005704:	fc97dae3          	bge	a5,s1,800056d8 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005708:	00006797          	auipc	a5,0x6
    8000570c:	0687c783          	lbu	a5,104(a5) # 8000b770 <_ZL8finished>
    80005710:	fe078ce3          	beqz	a5,80005708 <_Z12testSleepingv+0x5c>
    80005714:	00006797          	auipc	a5,0x6
    80005718:	05d7c783          	lbu	a5,93(a5) # 8000b771 <_ZL8finished+0x1>
    8000571c:	fe0786e3          	beqz	a5,80005708 <_Z12testSleepingv+0x5c>
}
    80005720:	03813083          	ld	ra,56(sp)
    80005724:	03013403          	ld	s0,48(sp)
    80005728:	02813483          	ld	s1,40(sp)
    8000572c:	04010113          	addi	sp,sp,64
    80005730:	00008067          	ret

0000000080005734 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005734:	fe010113          	addi	sp,sp,-32
    80005738:	00113c23          	sd	ra,24(sp)
    8000573c:	00813823          	sd	s0,16(sp)
    80005740:	00913423          	sd	s1,8(sp)
    80005744:	01213023          	sd	s2,0(sp)
    80005748:	02010413          	addi	s0,sp,32
    8000574c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005750:	00100793          	li	a5,1
    80005754:	02a7f863          	bgeu	a5,a0,80005784 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005758:	00a00793          	li	a5,10
    8000575c:	02f577b3          	remu	a5,a0,a5
    80005760:	02078e63          	beqz	a5,8000579c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005764:	fff48513          	addi	a0,s1,-1
    80005768:	00000097          	auipc	ra,0x0
    8000576c:	fcc080e7          	jalr	-52(ra) # 80005734 <_ZL9fibonaccim>
    80005770:	00050913          	mv	s2,a0
    80005774:	ffe48513          	addi	a0,s1,-2
    80005778:	00000097          	auipc	ra,0x0
    8000577c:	fbc080e7          	jalr	-68(ra) # 80005734 <_ZL9fibonaccim>
    80005780:	00a90533          	add	a0,s2,a0
}
    80005784:	01813083          	ld	ra,24(sp)
    80005788:	01013403          	ld	s0,16(sp)
    8000578c:	00813483          	ld	s1,8(sp)
    80005790:	00013903          	ld	s2,0(sp)
    80005794:	02010113          	addi	sp,sp,32
    80005798:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000579c:	ffffc097          	auipc	ra,0xffffc
    800057a0:	c98080e7          	jalr	-872(ra) # 80001434 <_Z15thread_dispatchv>
    800057a4:	fc1ff06f          	j	80005764 <_ZL9fibonaccim+0x30>

00000000800057a8 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800057a8:	fe010113          	addi	sp,sp,-32
    800057ac:	00113c23          	sd	ra,24(sp)
    800057b0:	00813823          	sd	s0,16(sp)
    800057b4:	00913423          	sd	s1,8(sp)
    800057b8:	01213023          	sd	s2,0(sp)
    800057bc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800057c0:	00a00493          	li	s1,10
    800057c4:	0400006f          	j	80005804 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800057c8:	00004517          	auipc	a0,0x4
    800057cc:	b7850513          	addi	a0,a0,-1160 # 80009340 <CONSOLE_STATUS+0x330>
    800057d0:	fffff097          	auipc	ra,0xfffff
    800057d4:	628080e7          	jalr	1576(ra) # 80004df8 <_Z11printStringPKc>
    800057d8:	00000613          	li	a2,0
    800057dc:	00a00593          	li	a1,10
    800057e0:	00048513          	mv	a0,s1
    800057e4:	fffff097          	auipc	ra,0xfffff
    800057e8:	7c4080e7          	jalr	1988(ra) # 80004fa8 <_Z8printIntiii>
    800057ec:	00004517          	auipc	a0,0x4
    800057f0:	d7450513          	addi	a0,a0,-652 # 80009560 <CONSOLE_STATUS+0x550>
    800057f4:	fffff097          	auipc	ra,0xfffff
    800057f8:	604080e7          	jalr	1540(ra) # 80004df8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800057fc:	0014849b          	addiw	s1,s1,1
    80005800:	0ff4f493          	andi	s1,s1,255
    80005804:	00c00793          	li	a5,12
    80005808:	fc97f0e3          	bgeu	a5,s1,800057c8 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000580c:	00004517          	auipc	a0,0x4
    80005810:	b3c50513          	addi	a0,a0,-1220 # 80009348 <CONSOLE_STATUS+0x338>
    80005814:	fffff097          	auipc	ra,0xfffff
    80005818:	5e4080e7          	jalr	1508(ra) # 80004df8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000581c:	00500313          	li	t1,5
    thread_dispatch();
    80005820:	ffffc097          	auipc	ra,0xffffc
    80005824:	c14080e7          	jalr	-1004(ra) # 80001434 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005828:	01000513          	li	a0,16
    8000582c:	00000097          	auipc	ra,0x0
    80005830:	f08080e7          	jalr	-248(ra) # 80005734 <_ZL9fibonaccim>
    80005834:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005838:	00004517          	auipc	a0,0x4
    8000583c:	b2050513          	addi	a0,a0,-1248 # 80009358 <CONSOLE_STATUS+0x348>
    80005840:	fffff097          	auipc	ra,0xfffff
    80005844:	5b8080e7          	jalr	1464(ra) # 80004df8 <_Z11printStringPKc>
    80005848:	00000613          	li	a2,0
    8000584c:	00a00593          	li	a1,10
    80005850:	0009051b          	sext.w	a0,s2
    80005854:	fffff097          	auipc	ra,0xfffff
    80005858:	754080e7          	jalr	1876(ra) # 80004fa8 <_Z8printIntiii>
    8000585c:	00004517          	auipc	a0,0x4
    80005860:	d0450513          	addi	a0,a0,-764 # 80009560 <CONSOLE_STATUS+0x550>
    80005864:	fffff097          	auipc	ra,0xfffff
    80005868:	594080e7          	jalr	1428(ra) # 80004df8 <_Z11printStringPKc>
    8000586c:	0400006f          	j	800058ac <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005870:	00004517          	auipc	a0,0x4
    80005874:	ad050513          	addi	a0,a0,-1328 # 80009340 <CONSOLE_STATUS+0x330>
    80005878:	fffff097          	auipc	ra,0xfffff
    8000587c:	580080e7          	jalr	1408(ra) # 80004df8 <_Z11printStringPKc>
    80005880:	00000613          	li	a2,0
    80005884:	00a00593          	li	a1,10
    80005888:	00048513          	mv	a0,s1
    8000588c:	fffff097          	auipc	ra,0xfffff
    80005890:	71c080e7          	jalr	1820(ra) # 80004fa8 <_Z8printIntiii>
    80005894:	00004517          	auipc	a0,0x4
    80005898:	ccc50513          	addi	a0,a0,-820 # 80009560 <CONSOLE_STATUS+0x550>
    8000589c:	fffff097          	auipc	ra,0xfffff
    800058a0:	55c080e7          	jalr	1372(ra) # 80004df8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800058a4:	0014849b          	addiw	s1,s1,1
    800058a8:	0ff4f493          	andi	s1,s1,255
    800058ac:	00f00793          	li	a5,15
    800058b0:	fc97f0e3          	bgeu	a5,s1,80005870 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800058b4:	00004517          	auipc	a0,0x4
    800058b8:	ab450513          	addi	a0,a0,-1356 # 80009368 <CONSOLE_STATUS+0x358>
    800058bc:	fffff097          	auipc	ra,0xfffff
    800058c0:	53c080e7          	jalr	1340(ra) # 80004df8 <_Z11printStringPKc>
    finishedD = true;
    800058c4:	00100793          	li	a5,1
    800058c8:	00006717          	auipc	a4,0x6
    800058cc:	eaf70523          	sb	a5,-342(a4) # 8000b772 <_ZL9finishedD>
    thread_dispatch();
    800058d0:	ffffc097          	auipc	ra,0xffffc
    800058d4:	b64080e7          	jalr	-1180(ra) # 80001434 <_Z15thread_dispatchv>
}
    800058d8:	01813083          	ld	ra,24(sp)
    800058dc:	01013403          	ld	s0,16(sp)
    800058e0:	00813483          	ld	s1,8(sp)
    800058e4:	00013903          	ld	s2,0(sp)
    800058e8:	02010113          	addi	sp,sp,32
    800058ec:	00008067          	ret

00000000800058f0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800058f0:	fe010113          	addi	sp,sp,-32
    800058f4:	00113c23          	sd	ra,24(sp)
    800058f8:	00813823          	sd	s0,16(sp)
    800058fc:	00913423          	sd	s1,8(sp)
    80005900:	01213023          	sd	s2,0(sp)
    80005904:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005908:	00000493          	li	s1,0
    8000590c:	0400006f          	j	8000594c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005910:	00004517          	auipc	a0,0x4
    80005914:	a0050513          	addi	a0,a0,-1536 # 80009310 <CONSOLE_STATUS+0x300>
    80005918:	fffff097          	auipc	ra,0xfffff
    8000591c:	4e0080e7          	jalr	1248(ra) # 80004df8 <_Z11printStringPKc>
    80005920:	00000613          	li	a2,0
    80005924:	00a00593          	li	a1,10
    80005928:	00048513          	mv	a0,s1
    8000592c:	fffff097          	auipc	ra,0xfffff
    80005930:	67c080e7          	jalr	1660(ra) # 80004fa8 <_Z8printIntiii>
    80005934:	00004517          	auipc	a0,0x4
    80005938:	c2c50513          	addi	a0,a0,-980 # 80009560 <CONSOLE_STATUS+0x550>
    8000593c:	fffff097          	auipc	ra,0xfffff
    80005940:	4bc080e7          	jalr	1212(ra) # 80004df8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005944:	0014849b          	addiw	s1,s1,1
    80005948:	0ff4f493          	andi	s1,s1,255
    8000594c:	00200793          	li	a5,2
    80005950:	fc97f0e3          	bgeu	a5,s1,80005910 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005954:	00004517          	auipc	a0,0x4
    80005958:	9c450513          	addi	a0,a0,-1596 # 80009318 <CONSOLE_STATUS+0x308>
    8000595c:	fffff097          	auipc	ra,0xfffff
    80005960:	49c080e7          	jalr	1180(ra) # 80004df8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005964:	00700313          	li	t1,7
    thread_dispatch();
    80005968:	ffffc097          	auipc	ra,0xffffc
    8000596c:	acc080e7          	jalr	-1332(ra) # 80001434 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005970:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005974:	00004517          	auipc	a0,0x4
    80005978:	9b450513          	addi	a0,a0,-1612 # 80009328 <CONSOLE_STATUS+0x318>
    8000597c:	fffff097          	auipc	ra,0xfffff
    80005980:	47c080e7          	jalr	1148(ra) # 80004df8 <_Z11printStringPKc>
    80005984:	00000613          	li	a2,0
    80005988:	00a00593          	li	a1,10
    8000598c:	0009051b          	sext.w	a0,s2
    80005990:	fffff097          	auipc	ra,0xfffff
    80005994:	618080e7          	jalr	1560(ra) # 80004fa8 <_Z8printIntiii>
    80005998:	00004517          	auipc	a0,0x4
    8000599c:	bc850513          	addi	a0,a0,-1080 # 80009560 <CONSOLE_STATUS+0x550>
    800059a0:	fffff097          	auipc	ra,0xfffff
    800059a4:	458080e7          	jalr	1112(ra) # 80004df8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800059a8:	00c00513          	li	a0,12
    800059ac:	00000097          	auipc	ra,0x0
    800059b0:	d88080e7          	jalr	-632(ra) # 80005734 <_ZL9fibonaccim>
    800059b4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800059b8:	00004517          	auipc	a0,0x4
    800059bc:	97850513          	addi	a0,a0,-1672 # 80009330 <CONSOLE_STATUS+0x320>
    800059c0:	fffff097          	auipc	ra,0xfffff
    800059c4:	438080e7          	jalr	1080(ra) # 80004df8 <_Z11printStringPKc>
    800059c8:	00000613          	li	a2,0
    800059cc:	00a00593          	li	a1,10
    800059d0:	0009051b          	sext.w	a0,s2
    800059d4:	fffff097          	auipc	ra,0xfffff
    800059d8:	5d4080e7          	jalr	1492(ra) # 80004fa8 <_Z8printIntiii>
    800059dc:	00004517          	auipc	a0,0x4
    800059e0:	b8450513          	addi	a0,a0,-1148 # 80009560 <CONSOLE_STATUS+0x550>
    800059e4:	fffff097          	auipc	ra,0xfffff
    800059e8:	414080e7          	jalr	1044(ra) # 80004df8 <_Z11printStringPKc>
    800059ec:	0400006f          	j	80005a2c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800059f0:	00004517          	auipc	a0,0x4
    800059f4:	92050513          	addi	a0,a0,-1760 # 80009310 <CONSOLE_STATUS+0x300>
    800059f8:	fffff097          	auipc	ra,0xfffff
    800059fc:	400080e7          	jalr	1024(ra) # 80004df8 <_Z11printStringPKc>
    80005a00:	00000613          	li	a2,0
    80005a04:	00a00593          	li	a1,10
    80005a08:	00048513          	mv	a0,s1
    80005a0c:	fffff097          	auipc	ra,0xfffff
    80005a10:	59c080e7          	jalr	1436(ra) # 80004fa8 <_Z8printIntiii>
    80005a14:	00004517          	auipc	a0,0x4
    80005a18:	b4c50513          	addi	a0,a0,-1204 # 80009560 <CONSOLE_STATUS+0x550>
    80005a1c:	fffff097          	auipc	ra,0xfffff
    80005a20:	3dc080e7          	jalr	988(ra) # 80004df8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005a24:	0014849b          	addiw	s1,s1,1
    80005a28:	0ff4f493          	andi	s1,s1,255
    80005a2c:	00500793          	li	a5,5
    80005a30:	fc97f0e3          	bgeu	a5,s1,800059f0 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005a34:	00004517          	auipc	a0,0x4
    80005a38:	8b450513          	addi	a0,a0,-1868 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80005a3c:	fffff097          	auipc	ra,0xfffff
    80005a40:	3bc080e7          	jalr	956(ra) # 80004df8 <_Z11printStringPKc>
    finishedC = true;
    80005a44:	00100793          	li	a5,1
    80005a48:	00006717          	auipc	a4,0x6
    80005a4c:	d2f705a3          	sb	a5,-725(a4) # 8000b773 <_ZL9finishedC>
    thread_dispatch();
    80005a50:	ffffc097          	auipc	ra,0xffffc
    80005a54:	9e4080e7          	jalr	-1564(ra) # 80001434 <_Z15thread_dispatchv>
}
    80005a58:	01813083          	ld	ra,24(sp)
    80005a5c:	01013403          	ld	s0,16(sp)
    80005a60:	00813483          	ld	s1,8(sp)
    80005a64:	00013903          	ld	s2,0(sp)
    80005a68:	02010113          	addi	sp,sp,32
    80005a6c:	00008067          	ret

0000000080005a70 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005a70:	fe010113          	addi	sp,sp,-32
    80005a74:	00113c23          	sd	ra,24(sp)
    80005a78:	00813823          	sd	s0,16(sp)
    80005a7c:	00913423          	sd	s1,8(sp)
    80005a80:	01213023          	sd	s2,0(sp)
    80005a84:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005a88:	00000913          	li	s2,0
    80005a8c:	0400006f          	j	80005acc <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005a90:	ffffc097          	auipc	ra,0xffffc
    80005a94:	9a4080e7          	jalr	-1628(ra) # 80001434 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005a98:	00148493          	addi	s1,s1,1
    80005a9c:	000027b7          	lui	a5,0x2
    80005aa0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005aa4:	0097ee63          	bltu	a5,s1,80005ac0 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005aa8:	00000713          	li	a4,0
    80005aac:	000077b7          	lui	a5,0x7
    80005ab0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005ab4:	fce7eee3          	bltu	a5,a4,80005a90 <_ZL11workerBodyBPv+0x20>
    80005ab8:	00170713          	addi	a4,a4,1
    80005abc:	ff1ff06f          	j	80005aac <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005ac0:	00a00793          	li	a5,10
    80005ac4:	04f90663          	beq	s2,a5,80005b10 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005ac8:	00190913          	addi	s2,s2,1
    80005acc:	00f00793          	li	a5,15
    80005ad0:	0527e463          	bltu	a5,s2,80005b18 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005ad4:	00004517          	auipc	a0,0x4
    80005ad8:	82450513          	addi	a0,a0,-2012 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80005adc:	fffff097          	auipc	ra,0xfffff
    80005ae0:	31c080e7          	jalr	796(ra) # 80004df8 <_Z11printStringPKc>
    80005ae4:	00000613          	li	a2,0
    80005ae8:	00a00593          	li	a1,10
    80005aec:	0009051b          	sext.w	a0,s2
    80005af0:	fffff097          	auipc	ra,0xfffff
    80005af4:	4b8080e7          	jalr	1208(ra) # 80004fa8 <_Z8printIntiii>
    80005af8:	00004517          	auipc	a0,0x4
    80005afc:	a6850513          	addi	a0,a0,-1432 # 80009560 <CONSOLE_STATUS+0x550>
    80005b00:	fffff097          	auipc	ra,0xfffff
    80005b04:	2f8080e7          	jalr	760(ra) # 80004df8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005b08:	00000493          	li	s1,0
    80005b0c:	f91ff06f          	j	80005a9c <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005b10:	14102ff3          	csrr	t6,sepc
    80005b14:	fb5ff06f          	j	80005ac8 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80005b18:	00003517          	auipc	a0,0x3
    80005b1c:	7e850513          	addi	a0,a0,2024 # 80009300 <CONSOLE_STATUS+0x2f0>
    80005b20:	fffff097          	auipc	ra,0xfffff
    80005b24:	2d8080e7          	jalr	728(ra) # 80004df8 <_Z11printStringPKc>
    finishedB = true;
    80005b28:	00100793          	li	a5,1
    80005b2c:	00006717          	auipc	a4,0x6
    80005b30:	c4f70423          	sb	a5,-952(a4) # 8000b774 <_ZL9finishedB>
    thread_dispatch();
    80005b34:	ffffc097          	auipc	ra,0xffffc
    80005b38:	900080e7          	jalr	-1792(ra) # 80001434 <_Z15thread_dispatchv>
}
    80005b3c:	01813083          	ld	ra,24(sp)
    80005b40:	01013403          	ld	s0,16(sp)
    80005b44:	00813483          	ld	s1,8(sp)
    80005b48:	00013903          	ld	s2,0(sp)
    80005b4c:	02010113          	addi	sp,sp,32
    80005b50:	00008067          	ret

0000000080005b54 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005b54:	fe010113          	addi	sp,sp,-32
    80005b58:	00113c23          	sd	ra,24(sp)
    80005b5c:	00813823          	sd	s0,16(sp)
    80005b60:	00913423          	sd	s1,8(sp)
    80005b64:	01213023          	sd	s2,0(sp)
    80005b68:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005b6c:	00000913          	li	s2,0
    80005b70:	0380006f          	j	80005ba8 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005b74:	ffffc097          	auipc	ra,0xffffc
    80005b78:	8c0080e7          	jalr	-1856(ra) # 80001434 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005b7c:	00148493          	addi	s1,s1,1
    80005b80:	000027b7          	lui	a5,0x2
    80005b84:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005b88:	0097ee63          	bltu	a5,s1,80005ba4 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005b8c:	00000713          	li	a4,0
    80005b90:	000077b7          	lui	a5,0x7
    80005b94:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005b98:	fce7eee3          	bltu	a5,a4,80005b74 <_ZL11workerBodyAPv+0x20>
    80005b9c:	00170713          	addi	a4,a4,1
    80005ba0:	ff1ff06f          	j	80005b90 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005ba4:	00190913          	addi	s2,s2,1
    80005ba8:	00900793          	li	a5,9
    80005bac:	0527e063          	bltu	a5,s2,80005bec <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005bb0:	00003517          	auipc	a0,0x3
    80005bb4:	73050513          	addi	a0,a0,1840 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80005bb8:	fffff097          	auipc	ra,0xfffff
    80005bbc:	240080e7          	jalr	576(ra) # 80004df8 <_Z11printStringPKc>
    80005bc0:	00000613          	li	a2,0
    80005bc4:	00a00593          	li	a1,10
    80005bc8:	0009051b          	sext.w	a0,s2
    80005bcc:	fffff097          	auipc	ra,0xfffff
    80005bd0:	3dc080e7          	jalr	988(ra) # 80004fa8 <_Z8printIntiii>
    80005bd4:	00004517          	auipc	a0,0x4
    80005bd8:	98c50513          	addi	a0,a0,-1652 # 80009560 <CONSOLE_STATUS+0x550>
    80005bdc:	fffff097          	auipc	ra,0xfffff
    80005be0:	21c080e7          	jalr	540(ra) # 80004df8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005be4:	00000493          	li	s1,0
    80005be8:	f99ff06f          	j	80005b80 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005bec:	00003517          	auipc	a0,0x3
    80005bf0:	6fc50513          	addi	a0,a0,1788 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80005bf4:	fffff097          	auipc	ra,0xfffff
    80005bf8:	204080e7          	jalr	516(ra) # 80004df8 <_Z11printStringPKc>
    finishedA = true;
    80005bfc:	00100793          	li	a5,1
    80005c00:	00006717          	auipc	a4,0x6
    80005c04:	b6f70aa3          	sb	a5,-1163(a4) # 8000b775 <_ZL9finishedA>
}
    80005c08:	01813083          	ld	ra,24(sp)
    80005c0c:	01013403          	ld	s0,16(sp)
    80005c10:	00813483          	ld	s1,8(sp)
    80005c14:	00013903          	ld	s2,0(sp)
    80005c18:	02010113          	addi	sp,sp,32
    80005c1c:	00008067          	ret

0000000080005c20 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80005c20:	fd010113          	addi	sp,sp,-48
    80005c24:	02113423          	sd	ra,40(sp)
    80005c28:	02813023          	sd	s0,32(sp)
    80005c2c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005c30:	00000613          	li	a2,0
    80005c34:	00000597          	auipc	a1,0x0
    80005c38:	f2058593          	addi	a1,a1,-224 # 80005b54 <_ZL11workerBodyAPv>
    80005c3c:	fd040513          	addi	a0,s0,-48
    80005c40:	ffffb097          	auipc	ra,0xffffb
    80005c44:	738080e7          	jalr	1848(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80005c48:	00003517          	auipc	a0,0x3
    80005c4c:	73050513          	addi	a0,a0,1840 # 80009378 <CONSOLE_STATUS+0x368>
    80005c50:	fffff097          	auipc	ra,0xfffff
    80005c54:	1a8080e7          	jalr	424(ra) # 80004df8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005c58:	00000613          	li	a2,0
    80005c5c:	00000597          	auipc	a1,0x0
    80005c60:	e1458593          	addi	a1,a1,-492 # 80005a70 <_ZL11workerBodyBPv>
    80005c64:	fd840513          	addi	a0,s0,-40
    80005c68:	ffffb097          	auipc	ra,0xffffb
    80005c6c:	710080e7          	jalr	1808(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80005c70:	00003517          	auipc	a0,0x3
    80005c74:	72050513          	addi	a0,a0,1824 # 80009390 <CONSOLE_STATUS+0x380>
    80005c78:	fffff097          	auipc	ra,0xfffff
    80005c7c:	180080e7          	jalr	384(ra) # 80004df8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005c80:	00000613          	li	a2,0
    80005c84:	00000597          	auipc	a1,0x0
    80005c88:	c6c58593          	addi	a1,a1,-916 # 800058f0 <_ZL11workerBodyCPv>
    80005c8c:	fe040513          	addi	a0,s0,-32
    80005c90:	ffffb097          	auipc	ra,0xffffb
    80005c94:	6e8080e7          	jalr	1768(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80005c98:	00003517          	auipc	a0,0x3
    80005c9c:	71050513          	addi	a0,a0,1808 # 800093a8 <CONSOLE_STATUS+0x398>
    80005ca0:	fffff097          	auipc	ra,0xfffff
    80005ca4:	158080e7          	jalr	344(ra) # 80004df8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005ca8:	00000613          	li	a2,0
    80005cac:	00000597          	auipc	a1,0x0
    80005cb0:	afc58593          	addi	a1,a1,-1284 # 800057a8 <_ZL11workerBodyDPv>
    80005cb4:	fe840513          	addi	a0,s0,-24
    80005cb8:	ffffb097          	auipc	ra,0xffffb
    80005cbc:	6c0080e7          	jalr	1728(ra) # 80001378 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005cc0:	00003517          	auipc	a0,0x3
    80005cc4:	70050513          	addi	a0,a0,1792 # 800093c0 <CONSOLE_STATUS+0x3b0>
    80005cc8:	fffff097          	auipc	ra,0xfffff
    80005ccc:	130080e7          	jalr	304(ra) # 80004df8 <_Z11printStringPKc>
    80005cd0:	00c0006f          	j	80005cdc <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005cd4:	ffffb097          	auipc	ra,0xffffb
    80005cd8:	760080e7          	jalr	1888(ra) # 80001434 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005cdc:	00006797          	auipc	a5,0x6
    80005ce0:	a997c783          	lbu	a5,-1383(a5) # 8000b775 <_ZL9finishedA>
    80005ce4:	fe0788e3          	beqz	a5,80005cd4 <_Z16System_Mode_testv+0xb4>
    80005ce8:	00006797          	auipc	a5,0x6
    80005cec:	a8c7c783          	lbu	a5,-1396(a5) # 8000b774 <_ZL9finishedB>
    80005cf0:	fe0782e3          	beqz	a5,80005cd4 <_Z16System_Mode_testv+0xb4>
    80005cf4:	00006797          	auipc	a5,0x6
    80005cf8:	a7f7c783          	lbu	a5,-1409(a5) # 8000b773 <_ZL9finishedC>
    80005cfc:	fc078ce3          	beqz	a5,80005cd4 <_Z16System_Mode_testv+0xb4>
    80005d00:	00006797          	auipc	a5,0x6
    80005d04:	a727c783          	lbu	a5,-1422(a5) # 8000b772 <_ZL9finishedD>
    80005d08:	fc0786e3          	beqz	a5,80005cd4 <_Z16System_Mode_testv+0xb4>
    }

}
    80005d0c:	02813083          	ld	ra,40(sp)
    80005d10:	02013403          	ld	s0,32(sp)
    80005d14:	03010113          	addi	sp,sp,48
    80005d18:	00008067          	ret

0000000080005d1c <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005d1c:	fe010113          	addi	sp,sp,-32
    80005d20:	00113c23          	sd	ra,24(sp)
    80005d24:	00813823          	sd	s0,16(sp)
    80005d28:	00913423          	sd	s1,8(sp)
    80005d2c:	01213023          	sd	s2,0(sp)
    80005d30:	02010413          	addi	s0,sp,32
    80005d34:	00050493          	mv	s1,a0
    80005d38:	00058913          	mv	s2,a1
    80005d3c:	0015879b          	addiw	a5,a1,1
    80005d40:	0007851b          	sext.w	a0,a5
    80005d44:	00f4a023          	sw	a5,0(s1)
    80005d48:	0004a823          	sw	zero,16(s1)
    80005d4c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005d50:	00251513          	slli	a0,a0,0x2
    80005d54:	ffffb097          	auipc	ra,0xffffb
    80005d58:	5a0080e7          	jalr	1440(ra) # 800012f4 <_Z9mem_allocm>
    80005d5c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005d60:	00000593          	li	a1,0
    80005d64:	02048513          	addi	a0,s1,32
    80005d68:	ffffb097          	auipc	ra,0xffffb
    80005d6c:	7c0080e7          	jalr	1984(ra) # 80001528 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80005d70:	00090593          	mv	a1,s2
    80005d74:	01848513          	addi	a0,s1,24
    80005d78:	ffffb097          	auipc	ra,0xffffb
    80005d7c:	7b0080e7          	jalr	1968(ra) # 80001528 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80005d80:	00100593          	li	a1,1
    80005d84:	02848513          	addi	a0,s1,40
    80005d88:	ffffb097          	auipc	ra,0xffffb
    80005d8c:	7a0080e7          	jalr	1952(ra) # 80001528 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80005d90:	00100593          	li	a1,1
    80005d94:	03048513          	addi	a0,s1,48
    80005d98:	ffffb097          	auipc	ra,0xffffb
    80005d9c:	790080e7          	jalr	1936(ra) # 80001528 <_Z8sem_openPP4_semj>
}
    80005da0:	01813083          	ld	ra,24(sp)
    80005da4:	01013403          	ld	s0,16(sp)
    80005da8:	00813483          	ld	s1,8(sp)
    80005dac:	00013903          	ld	s2,0(sp)
    80005db0:	02010113          	addi	sp,sp,32
    80005db4:	00008067          	ret

0000000080005db8 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005db8:	fe010113          	addi	sp,sp,-32
    80005dbc:	00113c23          	sd	ra,24(sp)
    80005dc0:	00813823          	sd	s0,16(sp)
    80005dc4:	00913423          	sd	s1,8(sp)
    80005dc8:	01213023          	sd	s2,0(sp)
    80005dcc:	02010413          	addi	s0,sp,32
    80005dd0:	00050493          	mv	s1,a0
    80005dd4:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005dd8:	01853503          	ld	a0,24(a0)
    80005ddc:	ffffb097          	auipc	ra,0xffffb
    80005de0:	7d0080e7          	jalr	2000(ra) # 800015ac <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80005de4:	0304b503          	ld	a0,48(s1)
    80005de8:	ffffb097          	auipc	ra,0xffffb
    80005dec:	7c4080e7          	jalr	1988(ra) # 800015ac <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80005df0:	0084b783          	ld	a5,8(s1)
    80005df4:	0144a703          	lw	a4,20(s1)
    80005df8:	00271713          	slli	a4,a4,0x2
    80005dfc:	00e787b3          	add	a5,a5,a4
    80005e00:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005e04:	0144a783          	lw	a5,20(s1)
    80005e08:	0017879b          	addiw	a5,a5,1
    80005e0c:	0004a703          	lw	a4,0(s1)
    80005e10:	02e7e7bb          	remw	a5,a5,a4
    80005e14:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005e18:	0304b503          	ld	a0,48(s1)
    80005e1c:	ffffb097          	auipc	ra,0xffffb
    80005e20:	7d0080e7          	jalr	2000(ra) # 800015ec <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80005e24:	0204b503          	ld	a0,32(s1)
    80005e28:	ffffb097          	auipc	ra,0xffffb
    80005e2c:	7c4080e7          	jalr	1988(ra) # 800015ec <_Z10sem_signalP4_sem>

}
    80005e30:	01813083          	ld	ra,24(sp)
    80005e34:	01013403          	ld	s0,16(sp)
    80005e38:	00813483          	ld	s1,8(sp)
    80005e3c:	00013903          	ld	s2,0(sp)
    80005e40:	02010113          	addi	sp,sp,32
    80005e44:	00008067          	ret

0000000080005e48 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005e48:	fe010113          	addi	sp,sp,-32
    80005e4c:	00113c23          	sd	ra,24(sp)
    80005e50:	00813823          	sd	s0,16(sp)
    80005e54:	00913423          	sd	s1,8(sp)
    80005e58:	01213023          	sd	s2,0(sp)
    80005e5c:	02010413          	addi	s0,sp,32
    80005e60:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005e64:	02053503          	ld	a0,32(a0)
    80005e68:	ffffb097          	auipc	ra,0xffffb
    80005e6c:	744080e7          	jalr	1860(ra) # 800015ac <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80005e70:	0284b503          	ld	a0,40(s1)
    80005e74:	ffffb097          	auipc	ra,0xffffb
    80005e78:	738080e7          	jalr	1848(ra) # 800015ac <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80005e7c:	0084b703          	ld	a4,8(s1)
    80005e80:	0104a783          	lw	a5,16(s1)
    80005e84:	00279693          	slli	a3,a5,0x2
    80005e88:	00d70733          	add	a4,a4,a3
    80005e8c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005e90:	0017879b          	addiw	a5,a5,1
    80005e94:	0004a703          	lw	a4,0(s1)
    80005e98:	02e7e7bb          	remw	a5,a5,a4
    80005e9c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005ea0:	0284b503          	ld	a0,40(s1)
    80005ea4:	ffffb097          	auipc	ra,0xffffb
    80005ea8:	748080e7          	jalr	1864(ra) # 800015ec <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80005eac:	0184b503          	ld	a0,24(s1)
    80005eb0:	ffffb097          	auipc	ra,0xffffb
    80005eb4:	73c080e7          	jalr	1852(ra) # 800015ec <_Z10sem_signalP4_sem>

    return ret;
}
    80005eb8:	00090513          	mv	a0,s2
    80005ebc:	01813083          	ld	ra,24(sp)
    80005ec0:	01013403          	ld	s0,16(sp)
    80005ec4:	00813483          	ld	s1,8(sp)
    80005ec8:	00013903          	ld	s2,0(sp)
    80005ecc:	02010113          	addi	sp,sp,32
    80005ed0:	00008067          	ret

0000000080005ed4 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005ed4:	fe010113          	addi	sp,sp,-32
    80005ed8:	00113c23          	sd	ra,24(sp)
    80005edc:	00813823          	sd	s0,16(sp)
    80005ee0:	00913423          	sd	s1,8(sp)
    80005ee4:	01213023          	sd	s2,0(sp)
    80005ee8:	02010413          	addi	s0,sp,32
    80005eec:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005ef0:	02853503          	ld	a0,40(a0)
    80005ef4:	ffffb097          	auipc	ra,0xffffb
    80005ef8:	6b8080e7          	jalr	1720(ra) # 800015ac <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80005efc:	0304b503          	ld	a0,48(s1)
    80005f00:	ffffb097          	auipc	ra,0xffffb
    80005f04:	6ac080e7          	jalr	1708(ra) # 800015ac <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80005f08:	0144a783          	lw	a5,20(s1)
    80005f0c:	0104a903          	lw	s2,16(s1)
    80005f10:	0327ce63          	blt	a5,s2,80005f4c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80005f14:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80005f18:	0304b503          	ld	a0,48(s1)
    80005f1c:	ffffb097          	auipc	ra,0xffffb
    80005f20:	6d0080e7          	jalr	1744(ra) # 800015ec <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80005f24:	0284b503          	ld	a0,40(s1)
    80005f28:	ffffb097          	auipc	ra,0xffffb
    80005f2c:	6c4080e7          	jalr	1732(ra) # 800015ec <_Z10sem_signalP4_sem>

    return ret;
}
    80005f30:	00090513          	mv	a0,s2
    80005f34:	01813083          	ld	ra,24(sp)
    80005f38:	01013403          	ld	s0,16(sp)
    80005f3c:	00813483          	ld	s1,8(sp)
    80005f40:	00013903          	ld	s2,0(sp)
    80005f44:	02010113          	addi	sp,sp,32
    80005f48:	00008067          	ret
        ret = cap - head + tail;
    80005f4c:	0004a703          	lw	a4,0(s1)
    80005f50:	4127093b          	subw	s2,a4,s2
    80005f54:	00f9093b          	addw	s2,s2,a5
    80005f58:	fc1ff06f          	j	80005f18 <_ZN6Buffer6getCntEv+0x44>

0000000080005f5c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80005f5c:	fe010113          	addi	sp,sp,-32
    80005f60:	00113c23          	sd	ra,24(sp)
    80005f64:	00813823          	sd	s0,16(sp)
    80005f68:	00913423          	sd	s1,8(sp)
    80005f6c:	02010413          	addi	s0,sp,32
    80005f70:	00050493          	mv	s1,a0
    putc('\n');
    80005f74:	00a00513          	li	a0,10
    80005f78:	ffffb097          	auipc	ra,0xffffb
    80005f7c:	734080e7          	jalr	1844(ra) # 800016ac <_Z4putcc>
    printString("Buffer deleted!\n");
    80005f80:	00003517          	auipc	a0,0x3
    80005f84:	45850513          	addi	a0,a0,1112 # 800093d8 <CONSOLE_STATUS+0x3c8>
    80005f88:	fffff097          	auipc	ra,0xfffff
    80005f8c:	e70080e7          	jalr	-400(ra) # 80004df8 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80005f90:	00048513          	mv	a0,s1
    80005f94:	00000097          	auipc	ra,0x0
    80005f98:	f40080e7          	jalr	-192(ra) # 80005ed4 <_ZN6Buffer6getCntEv>
    80005f9c:	02a05c63          	blez	a0,80005fd4 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005fa0:	0084b783          	ld	a5,8(s1)
    80005fa4:	0104a703          	lw	a4,16(s1)
    80005fa8:	00271713          	slli	a4,a4,0x2
    80005fac:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005fb0:	0007c503          	lbu	a0,0(a5)
    80005fb4:	ffffb097          	auipc	ra,0xffffb
    80005fb8:	6f8080e7          	jalr	1784(ra) # 800016ac <_Z4putcc>
        head = (head + 1) % cap;
    80005fbc:	0104a783          	lw	a5,16(s1)
    80005fc0:	0017879b          	addiw	a5,a5,1
    80005fc4:	0004a703          	lw	a4,0(s1)
    80005fc8:	02e7e7bb          	remw	a5,a5,a4
    80005fcc:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005fd0:	fc1ff06f          	j	80005f90 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005fd4:	02100513          	li	a0,33
    80005fd8:	ffffb097          	auipc	ra,0xffffb
    80005fdc:	6d4080e7          	jalr	1748(ra) # 800016ac <_Z4putcc>
    putc('\n');
    80005fe0:	00a00513          	li	a0,10
    80005fe4:	ffffb097          	auipc	ra,0xffffb
    80005fe8:	6c8080e7          	jalr	1736(ra) # 800016ac <_Z4putcc>
    mem_free(buffer);
    80005fec:	0084b503          	ld	a0,8(s1)
    80005ff0:	ffffb097          	auipc	ra,0xffffb
    80005ff4:	348080e7          	jalr	840(ra) # 80001338 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80005ff8:	0204b503          	ld	a0,32(s1)
    80005ffc:	ffffb097          	auipc	ra,0xffffb
    80006000:	570080e7          	jalr	1392(ra) # 8000156c <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80006004:	0184b503          	ld	a0,24(s1)
    80006008:	ffffb097          	auipc	ra,0xffffb
    8000600c:	564080e7          	jalr	1380(ra) # 8000156c <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80006010:	0304b503          	ld	a0,48(s1)
    80006014:	ffffb097          	auipc	ra,0xffffb
    80006018:	558080e7          	jalr	1368(ra) # 8000156c <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    8000601c:	0284b503          	ld	a0,40(s1)
    80006020:	ffffb097          	auipc	ra,0xffffb
    80006024:	54c080e7          	jalr	1356(ra) # 8000156c <_Z9sem_closeP4_sem>
}
    80006028:	01813083          	ld	ra,24(sp)
    8000602c:	01013403          	ld	s0,16(sp)
    80006030:	00813483          	ld	s1,8(sp)
    80006034:	02010113          	addi	sp,sp,32
    80006038:	00008067          	ret

000000008000603c <start>:
    8000603c:	ff010113          	addi	sp,sp,-16
    80006040:	00813423          	sd	s0,8(sp)
    80006044:	01010413          	addi	s0,sp,16
    80006048:	300027f3          	csrr	a5,mstatus
    8000604c:	ffffe737          	lui	a4,0xffffe
    80006050:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1e1f>
    80006054:	00e7f7b3          	and	a5,a5,a4
    80006058:	00001737          	lui	a4,0x1
    8000605c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006060:	00e7e7b3          	or	a5,a5,a4
    80006064:	30079073          	csrw	mstatus,a5
    80006068:	00000797          	auipc	a5,0x0
    8000606c:	16078793          	addi	a5,a5,352 # 800061c8 <system_main>
    80006070:	34179073          	csrw	mepc,a5
    80006074:	00000793          	li	a5,0
    80006078:	18079073          	csrw	satp,a5
    8000607c:	000107b7          	lui	a5,0x10
    80006080:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006084:	30279073          	csrw	medeleg,a5
    80006088:	30379073          	csrw	mideleg,a5
    8000608c:	104027f3          	csrr	a5,sie
    80006090:	2227e793          	ori	a5,a5,546
    80006094:	10479073          	csrw	sie,a5
    80006098:	fff00793          	li	a5,-1
    8000609c:	00a7d793          	srli	a5,a5,0xa
    800060a0:	3b079073          	csrw	pmpaddr0,a5
    800060a4:	00f00793          	li	a5,15
    800060a8:	3a079073          	csrw	pmpcfg0,a5
    800060ac:	f14027f3          	csrr	a5,mhartid
    800060b0:	0200c737          	lui	a4,0x200c
    800060b4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800060b8:	0007869b          	sext.w	a3,a5
    800060bc:	00269713          	slli	a4,a3,0x2
    800060c0:	000f4637          	lui	a2,0xf4
    800060c4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800060c8:	00d70733          	add	a4,a4,a3
    800060cc:	0037979b          	slliw	a5,a5,0x3
    800060d0:	020046b7          	lui	a3,0x2004
    800060d4:	00d787b3          	add	a5,a5,a3
    800060d8:	00c585b3          	add	a1,a1,a2
    800060dc:	00371693          	slli	a3,a4,0x3
    800060e0:	00005717          	auipc	a4,0x5
    800060e4:	6a070713          	addi	a4,a4,1696 # 8000b780 <timer_scratch>
    800060e8:	00b7b023          	sd	a1,0(a5)
    800060ec:	00d70733          	add	a4,a4,a3
    800060f0:	00f73c23          	sd	a5,24(a4)
    800060f4:	02c73023          	sd	a2,32(a4)
    800060f8:	34071073          	csrw	mscratch,a4
    800060fc:	00000797          	auipc	a5,0x0
    80006100:	6e478793          	addi	a5,a5,1764 # 800067e0 <timervec>
    80006104:	30579073          	csrw	mtvec,a5
    80006108:	300027f3          	csrr	a5,mstatus
    8000610c:	0087e793          	ori	a5,a5,8
    80006110:	30079073          	csrw	mstatus,a5
    80006114:	304027f3          	csrr	a5,mie
    80006118:	0807e793          	ori	a5,a5,128
    8000611c:	30479073          	csrw	mie,a5
    80006120:	f14027f3          	csrr	a5,mhartid
    80006124:	0007879b          	sext.w	a5,a5
    80006128:	00078213          	mv	tp,a5
    8000612c:	30200073          	mret
    80006130:	00813403          	ld	s0,8(sp)
    80006134:	01010113          	addi	sp,sp,16
    80006138:	00008067          	ret

000000008000613c <timerinit>:
    8000613c:	ff010113          	addi	sp,sp,-16
    80006140:	00813423          	sd	s0,8(sp)
    80006144:	01010413          	addi	s0,sp,16
    80006148:	f14027f3          	csrr	a5,mhartid
    8000614c:	0200c737          	lui	a4,0x200c
    80006150:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006154:	0007869b          	sext.w	a3,a5
    80006158:	00269713          	slli	a4,a3,0x2
    8000615c:	000f4637          	lui	a2,0xf4
    80006160:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006164:	00d70733          	add	a4,a4,a3
    80006168:	0037979b          	slliw	a5,a5,0x3
    8000616c:	020046b7          	lui	a3,0x2004
    80006170:	00d787b3          	add	a5,a5,a3
    80006174:	00c585b3          	add	a1,a1,a2
    80006178:	00371693          	slli	a3,a4,0x3
    8000617c:	00005717          	auipc	a4,0x5
    80006180:	60470713          	addi	a4,a4,1540 # 8000b780 <timer_scratch>
    80006184:	00b7b023          	sd	a1,0(a5)
    80006188:	00d70733          	add	a4,a4,a3
    8000618c:	00f73c23          	sd	a5,24(a4)
    80006190:	02c73023          	sd	a2,32(a4)
    80006194:	34071073          	csrw	mscratch,a4
    80006198:	00000797          	auipc	a5,0x0
    8000619c:	64878793          	addi	a5,a5,1608 # 800067e0 <timervec>
    800061a0:	30579073          	csrw	mtvec,a5
    800061a4:	300027f3          	csrr	a5,mstatus
    800061a8:	0087e793          	ori	a5,a5,8
    800061ac:	30079073          	csrw	mstatus,a5
    800061b0:	304027f3          	csrr	a5,mie
    800061b4:	0807e793          	ori	a5,a5,128
    800061b8:	30479073          	csrw	mie,a5
    800061bc:	00813403          	ld	s0,8(sp)
    800061c0:	01010113          	addi	sp,sp,16
    800061c4:	00008067          	ret

00000000800061c8 <system_main>:
    800061c8:	fe010113          	addi	sp,sp,-32
    800061cc:	00813823          	sd	s0,16(sp)
    800061d0:	00913423          	sd	s1,8(sp)
    800061d4:	00113c23          	sd	ra,24(sp)
    800061d8:	02010413          	addi	s0,sp,32
    800061dc:	00000097          	auipc	ra,0x0
    800061e0:	0c4080e7          	jalr	196(ra) # 800062a0 <cpuid>
    800061e4:	00005497          	auipc	s1,0x5
    800061e8:	4ec48493          	addi	s1,s1,1260 # 8000b6d0 <started>
    800061ec:	02050263          	beqz	a0,80006210 <system_main+0x48>
    800061f0:	0004a783          	lw	a5,0(s1)
    800061f4:	0007879b          	sext.w	a5,a5
    800061f8:	fe078ce3          	beqz	a5,800061f0 <system_main+0x28>
    800061fc:	0ff0000f          	fence
    80006200:	00003517          	auipc	a0,0x3
    80006204:	46850513          	addi	a0,a0,1128 # 80009668 <CONSOLE_STATUS+0x658>
    80006208:	00001097          	auipc	ra,0x1
    8000620c:	a74080e7          	jalr	-1420(ra) # 80006c7c <panic>
    80006210:	00001097          	auipc	ra,0x1
    80006214:	9c8080e7          	jalr	-1592(ra) # 80006bd8 <consoleinit>
    80006218:	00001097          	auipc	ra,0x1
    8000621c:	154080e7          	jalr	340(ra) # 8000736c <printfinit>
    80006220:	00003517          	auipc	a0,0x3
    80006224:	34050513          	addi	a0,a0,832 # 80009560 <CONSOLE_STATUS+0x550>
    80006228:	00001097          	auipc	ra,0x1
    8000622c:	ab0080e7          	jalr	-1360(ra) # 80006cd8 <__printf>
    80006230:	00003517          	auipc	a0,0x3
    80006234:	40850513          	addi	a0,a0,1032 # 80009638 <CONSOLE_STATUS+0x628>
    80006238:	00001097          	auipc	ra,0x1
    8000623c:	aa0080e7          	jalr	-1376(ra) # 80006cd8 <__printf>
    80006240:	00003517          	auipc	a0,0x3
    80006244:	32050513          	addi	a0,a0,800 # 80009560 <CONSOLE_STATUS+0x550>
    80006248:	00001097          	auipc	ra,0x1
    8000624c:	a90080e7          	jalr	-1392(ra) # 80006cd8 <__printf>
    80006250:	00001097          	auipc	ra,0x1
    80006254:	4a8080e7          	jalr	1192(ra) # 800076f8 <kinit>
    80006258:	00000097          	auipc	ra,0x0
    8000625c:	148080e7          	jalr	328(ra) # 800063a0 <trapinit>
    80006260:	00000097          	auipc	ra,0x0
    80006264:	16c080e7          	jalr	364(ra) # 800063cc <trapinithart>
    80006268:	00000097          	auipc	ra,0x0
    8000626c:	5b8080e7          	jalr	1464(ra) # 80006820 <plicinit>
    80006270:	00000097          	auipc	ra,0x0
    80006274:	5d8080e7          	jalr	1496(ra) # 80006848 <plicinithart>
    80006278:	00000097          	auipc	ra,0x0
    8000627c:	078080e7          	jalr	120(ra) # 800062f0 <userinit>
    80006280:	0ff0000f          	fence
    80006284:	00100793          	li	a5,1
    80006288:	00003517          	auipc	a0,0x3
    8000628c:	3c850513          	addi	a0,a0,968 # 80009650 <CONSOLE_STATUS+0x640>
    80006290:	00f4a023          	sw	a5,0(s1)
    80006294:	00001097          	auipc	ra,0x1
    80006298:	a44080e7          	jalr	-1468(ra) # 80006cd8 <__printf>
    8000629c:	0000006f          	j	8000629c <system_main+0xd4>

00000000800062a0 <cpuid>:
    800062a0:	ff010113          	addi	sp,sp,-16
    800062a4:	00813423          	sd	s0,8(sp)
    800062a8:	01010413          	addi	s0,sp,16
    800062ac:	00020513          	mv	a0,tp
    800062b0:	00813403          	ld	s0,8(sp)
    800062b4:	0005051b          	sext.w	a0,a0
    800062b8:	01010113          	addi	sp,sp,16
    800062bc:	00008067          	ret

00000000800062c0 <mycpu>:
    800062c0:	ff010113          	addi	sp,sp,-16
    800062c4:	00813423          	sd	s0,8(sp)
    800062c8:	01010413          	addi	s0,sp,16
    800062cc:	00020793          	mv	a5,tp
    800062d0:	00813403          	ld	s0,8(sp)
    800062d4:	0007879b          	sext.w	a5,a5
    800062d8:	00779793          	slli	a5,a5,0x7
    800062dc:	00006517          	auipc	a0,0x6
    800062e0:	4d450513          	addi	a0,a0,1236 # 8000c7b0 <cpus>
    800062e4:	00f50533          	add	a0,a0,a5
    800062e8:	01010113          	addi	sp,sp,16
    800062ec:	00008067          	ret

00000000800062f0 <userinit>:
    800062f0:	ff010113          	addi	sp,sp,-16
    800062f4:	00813423          	sd	s0,8(sp)
    800062f8:	01010413          	addi	s0,sp,16
    800062fc:	00813403          	ld	s0,8(sp)
    80006300:	01010113          	addi	sp,sp,16
    80006304:	ffffb317          	auipc	t1,0xffffb
    80006308:	41c30067          	jr	1052(t1) # 80001720 <main>

000000008000630c <either_copyout>:
    8000630c:	ff010113          	addi	sp,sp,-16
    80006310:	00813023          	sd	s0,0(sp)
    80006314:	00113423          	sd	ra,8(sp)
    80006318:	01010413          	addi	s0,sp,16
    8000631c:	02051663          	bnez	a0,80006348 <either_copyout+0x3c>
    80006320:	00058513          	mv	a0,a1
    80006324:	00060593          	mv	a1,a2
    80006328:	0006861b          	sext.w	a2,a3
    8000632c:	00002097          	auipc	ra,0x2
    80006330:	c58080e7          	jalr	-936(ra) # 80007f84 <__memmove>
    80006334:	00813083          	ld	ra,8(sp)
    80006338:	00013403          	ld	s0,0(sp)
    8000633c:	00000513          	li	a0,0
    80006340:	01010113          	addi	sp,sp,16
    80006344:	00008067          	ret
    80006348:	00003517          	auipc	a0,0x3
    8000634c:	34850513          	addi	a0,a0,840 # 80009690 <CONSOLE_STATUS+0x680>
    80006350:	00001097          	auipc	ra,0x1
    80006354:	92c080e7          	jalr	-1748(ra) # 80006c7c <panic>

0000000080006358 <either_copyin>:
    80006358:	ff010113          	addi	sp,sp,-16
    8000635c:	00813023          	sd	s0,0(sp)
    80006360:	00113423          	sd	ra,8(sp)
    80006364:	01010413          	addi	s0,sp,16
    80006368:	02059463          	bnez	a1,80006390 <either_copyin+0x38>
    8000636c:	00060593          	mv	a1,a2
    80006370:	0006861b          	sext.w	a2,a3
    80006374:	00002097          	auipc	ra,0x2
    80006378:	c10080e7          	jalr	-1008(ra) # 80007f84 <__memmove>
    8000637c:	00813083          	ld	ra,8(sp)
    80006380:	00013403          	ld	s0,0(sp)
    80006384:	00000513          	li	a0,0
    80006388:	01010113          	addi	sp,sp,16
    8000638c:	00008067          	ret
    80006390:	00003517          	auipc	a0,0x3
    80006394:	32850513          	addi	a0,a0,808 # 800096b8 <CONSOLE_STATUS+0x6a8>
    80006398:	00001097          	auipc	ra,0x1
    8000639c:	8e4080e7          	jalr	-1820(ra) # 80006c7c <panic>

00000000800063a0 <trapinit>:
    800063a0:	ff010113          	addi	sp,sp,-16
    800063a4:	00813423          	sd	s0,8(sp)
    800063a8:	01010413          	addi	s0,sp,16
    800063ac:	00813403          	ld	s0,8(sp)
    800063b0:	00003597          	auipc	a1,0x3
    800063b4:	33058593          	addi	a1,a1,816 # 800096e0 <CONSOLE_STATUS+0x6d0>
    800063b8:	00006517          	auipc	a0,0x6
    800063bc:	47850513          	addi	a0,a0,1144 # 8000c830 <tickslock>
    800063c0:	01010113          	addi	sp,sp,16
    800063c4:	00001317          	auipc	t1,0x1
    800063c8:	5c430067          	jr	1476(t1) # 80007988 <initlock>

00000000800063cc <trapinithart>:
    800063cc:	ff010113          	addi	sp,sp,-16
    800063d0:	00813423          	sd	s0,8(sp)
    800063d4:	01010413          	addi	s0,sp,16
    800063d8:	00000797          	auipc	a5,0x0
    800063dc:	2f878793          	addi	a5,a5,760 # 800066d0 <kernelvec>
    800063e0:	10579073          	csrw	stvec,a5
    800063e4:	00813403          	ld	s0,8(sp)
    800063e8:	01010113          	addi	sp,sp,16
    800063ec:	00008067          	ret

00000000800063f0 <usertrap>:
    800063f0:	ff010113          	addi	sp,sp,-16
    800063f4:	00813423          	sd	s0,8(sp)
    800063f8:	01010413          	addi	s0,sp,16
    800063fc:	00813403          	ld	s0,8(sp)
    80006400:	01010113          	addi	sp,sp,16
    80006404:	00008067          	ret

0000000080006408 <usertrapret>:
    80006408:	ff010113          	addi	sp,sp,-16
    8000640c:	00813423          	sd	s0,8(sp)
    80006410:	01010413          	addi	s0,sp,16
    80006414:	00813403          	ld	s0,8(sp)
    80006418:	01010113          	addi	sp,sp,16
    8000641c:	00008067          	ret

0000000080006420 <kerneltrap>:
    80006420:	fe010113          	addi	sp,sp,-32
    80006424:	00813823          	sd	s0,16(sp)
    80006428:	00113c23          	sd	ra,24(sp)
    8000642c:	00913423          	sd	s1,8(sp)
    80006430:	02010413          	addi	s0,sp,32
    80006434:	142025f3          	csrr	a1,scause
    80006438:	100027f3          	csrr	a5,sstatus
    8000643c:	0027f793          	andi	a5,a5,2
    80006440:	10079c63          	bnez	a5,80006558 <kerneltrap+0x138>
    80006444:	142027f3          	csrr	a5,scause
    80006448:	0207ce63          	bltz	a5,80006484 <kerneltrap+0x64>
    8000644c:	00003517          	auipc	a0,0x3
    80006450:	2dc50513          	addi	a0,a0,732 # 80009728 <CONSOLE_STATUS+0x718>
    80006454:	00001097          	auipc	ra,0x1
    80006458:	884080e7          	jalr	-1916(ra) # 80006cd8 <__printf>
    8000645c:	141025f3          	csrr	a1,sepc
    80006460:	14302673          	csrr	a2,stval
    80006464:	00003517          	auipc	a0,0x3
    80006468:	2d450513          	addi	a0,a0,724 # 80009738 <CONSOLE_STATUS+0x728>
    8000646c:	00001097          	auipc	ra,0x1
    80006470:	86c080e7          	jalr	-1940(ra) # 80006cd8 <__printf>
    80006474:	00003517          	auipc	a0,0x3
    80006478:	2dc50513          	addi	a0,a0,732 # 80009750 <CONSOLE_STATUS+0x740>
    8000647c:	00001097          	auipc	ra,0x1
    80006480:	800080e7          	jalr	-2048(ra) # 80006c7c <panic>
    80006484:	0ff7f713          	andi	a4,a5,255
    80006488:	00900693          	li	a3,9
    8000648c:	04d70063          	beq	a4,a3,800064cc <kerneltrap+0xac>
    80006490:	fff00713          	li	a4,-1
    80006494:	03f71713          	slli	a4,a4,0x3f
    80006498:	00170713          	addi	a4,a4,1
    8000649c:	fae798e3          	bne	a5,a4,8000644c <kerneltrap+0x2c>
    800064a0:	00000097          	auipc	ra,0x0
    800064a4:	e00080e7          	jalr	-512(ra) # 800062a0 <cpuid>
    800064a8:	06050663          	beqz	a0,80006514 <kerneltrap+0xf4>
    800064ac:	144027f3          	csrr	a5,sip
    800064b0:	ffd7f793          	andi	a5,a5,-3
    800064b4:	14479073          	csrw	sip,a5
    800064b8:	01813083          	ld	ra,24(sp)
    800064bc:	01013403          	ld	s0,16(sp)
    800064c0:	00813483          	ld	s1,8(sp)
    800064c4:	02010113          	addi	sp,sp,32
    800064c8:	00008067          	ret
    800064cc:	00000097          	auipc	ra,0x0
    800064d0:	3c8080e7          	jalr	968(ra) # 80006894 <plic_claim>
    800064d4:	00a00793          	li	a5,10
    800064d8:	00050493          	mv	s1,a0
    800064dc:	06f50863          	beq	a0,a5,8000654c <kerneltrap+0x12c>
    800064e0:	fc050ce3          	beqz	a0,800064b8 <kerneltrap+0x98>
    800064e4:	00050593          	mv	a1,a0
    800064e8:	00003517          	auipc	a0,0x3
    800064ec:	22050513          	addi	a0,a0,544 # 80009708 <CONSOLE_STATUS+0x6f8>
    800064f0:	00000097          	auipc	ra,0x0
    800064f4:	7e8080e7          	jalr	2024(ra) # 80006cd8 <__printf>
    800064f8:	01013403          	ld	s0,16(sp)
    800064fc:	01813083          	ld	ra,24(sp)
    80006500:	00048513          	mv	a0,s1
    80006504:	00813483          	ld	s1,8(sp)
    80006508:	02010113          	addi	sp,sp,32
    8000650c:	00000317          	auipc	t1,0x0
    80006510:	3c030067          	jr	960(t1) # 800068cc <plic_complete>
    80006514:	00006517          	auipc	a0,0x6
    80006518:	31c50513          	addi	a0,a0,796 # 8000c830 <tickslock>
    8000651c:	00001097          	auipc	ra,0x1
    80006520:	490080e7          	jalr	1168(ra) # 800079ac <acquire>
    80006524:	00005717          	auipc	a4,0x5
    80006528:	1b070713          	addi	a4,a4,432 # 8000b6d4 <ticks>
    8000652c:	00072783          	lw	a5,0(a4)
    80006530:	00006517          	auipc	a0,0x6
    80006534:	30050513          	addi	a0,a0,768 # 8000c830 <tickslock>
    80006538:	0017879b          	addiw	a5,a5,1
    8000653c:	00f72023          	sw	a5,0(a4)
    80006540:	00001097          	auipc	ra,0x1
    80006544:	538080e7          	jalr	1336(ra) # 80007a78 <release>
    80006548:	f65ff06f          	j	800064ac <kerneltrap+0x8c>
    8000654c:	00001097          	auipc	ra,0x1
    80006550:	094080e7          	jalr	148(ra) # 800075e0 <uartintr>
    80006554:	fa5ff06f          	j	800064f8 <kerneltrap+0xd8>
    80006558:	00003517          	auipc	a0,0x3
    8000655c:	19050513          	addi	a0,a0,400 # 800096e8 <CONSOLE_STATUS+0x6d8>
    80006560:	00000097          	auipc	ra,0x0
    80006564:	71c080e7          	jalr	1820(ra) # 80006c7c <panic>

0000000080006568 <clockintr>:
    80006568:	fe010113          	addi	sp,sp,-32
    8000656c:	00813823          	sd	s0,16(sp)
    80006570:	00913423          	sd	s1,8(sp)
    80006574:	00113c23          	sd	ra,24(sp)
    80006578:	02010413          	addi	s0,sp,32
    8000657c:	00006497          	auipc	s1,0x6
    80006580:	2b448493          	addi	s1,s1,692 # 8000c830 <tickslock>
    80006584:	00048513          	mv	a0,s1
    80006588:	00001097          	auipc	ra,0x1
    8000658c:	424080e7          	jalr	1060(ra) # 800079ac <acquire>
    80006590:	00005717          	auipc	a4,0x5
    80006594:	14470713          	addi	a4,a4,324 # 8000b6d4 <ticks>
    80006598:	00072783          	lw	a5,0(a4)
    8000659c:	01013403          	ld	s0,16(sp)
    800065a0:	01813083          	ld	ra,24(sp)
    800065a4:	00048513          	mv	a0,s1
    800065a8:	0017879b          	addiw	a5,a5,1
    800065ac:	00813483          	ld	s1,8(sp)
    800065b0:	00f72023          	sw	a5,0(a4)
    800065b4:	02010113          	addi	sp,sp,32
    800065b8:	00001317          	auipc	t1,0x1
    800065bc:	4c030067          	jr	1216(t1) # 80007a78 <release>

00000000800065c0 <devintr>:
    800065c0:	142027f3          	csrr	a5,scause
    800065c4:	00000513          	li	a0,0
    800065c8:	0007c463          	bltz	a5,800065d0 <devintr+0x10>
    800065cc:	00008067          	ret
    800065d0:	fe010113          	addi	sp,sp,-32
    800065d4:	00813823          	sd	s0,16(sp)
    800065d8:	00113c23          	sd	ra,24(sp)
    800065dc:	00913423          	sd	s1,8(sp)
    800065e0:	02010413          	addi	s0,sp,32
    800065e4:	0ff7f713          	andi	a4,a5,255
    800065e8:	00900693          	li	a3,9
    800065ec:	04d70c63          	beq	a4,a3,80006644 <devintr+0x84>
    800065f0:	fff00713          	li	a4,-1
    800065f4:	03f71713          	slli	a4,a4,0x3f
    800065f8:	00170713          	addi	a4,a4,1
    800065fc:	00e78c63          	beq	a5,a4,80006614 <devintr+0x54>
    80006600:	01813083          	ld	ra,24(sp)
    80006604:	01013403          	ld	s0,16(sp)
    80006608:	00813483          	ld	s1,8(sp)
    8000660c:	02010113          	addi	sp,sp,32
    80006610:	00008067          	ret
    80006614:	00000097          	auipc	ra,0x0
    80006618:	c8c080e7          	jalr	-884(ra) # 800062a0 <cpuid>
    8000661c:	06050663          	beqz	a0,80006688 <devintr+0xc8>
    80006620:	144027f3          	csrr	a5,sip
    80006624:	ffd7f793          	andi	a5,a5,-3
    80006628:	14479073          	csrw	sip,a5
    8000662c:	01813083          	ld	ra,24(sp)
    80006630:	01013403          	ld	s0,16(sp)
    80006634:	00813483          	ld	s1,8(sp)
    80006638:	00200513          	li	a0,2
    8000663c:	02010113          	addi	sp,sp,32
    80006640:	00008067          	ret
    80006644:	00000097          	auipc	ra,0x0
    80006648:	250080e7          	jalr	592(ra) # 80006894 <plic_claim>
    8000664c:	00a00793          	li	a5,10
    80006650:	00050493          	mv	s1,a0
    80006654:	06f50663          	beq	a0,a5,800066c0 <devintr+0x100>
    80006658:	00100513          	li	a0,1
    8000665c:	fa0482e3          	beqz	s1,80006600 <devintr+0x40>
    80006660:	00048593          	mv	a1,s1
    80006664:	00003517          	auipc	a0,0x3
    80006668:	0a450513          	addi	a0,a0,164 # 80009708 <CONSOLE_STATUS+0x6f8>
    8000666c:	00000097          	auipc	ra,0x0
    80006670:	66c080e7          	jalr	1644(ra) # 80006cd8 <__printf>
    80006674:	00048513          	mv	a0,s1
    80006678:	00000097          	auipc	ra,0x0
    8000667c:	254080e7          	jalr	596(ra) # 800068cc <plic_complete>
    80006680:	00100513          	li	a0,1
    80006684:	f7dff06f          	j	80006600 <devintr+0x40>
    80006688:	00006517          	auipc	a0,0x6
    8000668c:	1a850513          	addi	a0,a0,424 # 8000c830 <tickslock>
    80006690:	00001097          	auipc	ra,0x1
    80006694:	31c080e7          	jalr	796(ra) # 800079ac <acquire>
    80006698:	00005717          	auipc	a4,0x5
    8000669c:	03c70713          	addi	a4,a4,60 # 8000b6d4 <ticks>
    800066a0:	00072783          	lw	a5,0(a4)
    800066a4:	00006517          	auipc	a0,0x6
    800066a8:	18c50513          	addi	a0,a0,396 # 8000c830 <tickslock>
    800066ac:	0017879b          	addiw	a5,a5,1
    800066b0:	00f72023          	sw	a5,0(a4)
    800066b4:	00001097          	auipc	ra,0x1
    800066b8:	3c4080e7          	jalr	964(ra) # 80007a78 <release>
    800066bc:	f65ff06f          	j	80006620 <devintr+0x60>
    800066c0:	00001097          	auipc	ra,0x1
    800066c4:	f20080e7          	jalr	-224(ra) # 800075e0 <uartintr>
    800066c8:	fadff06f          	j	80006674 <devintr+0xb4>
    800066cc:	0000                	unimp
	...

00000000800066d0 <kernelvec>:
    800066d0:	f0010113          	addi	sp,sp,-256
    800066d4:	00113023          	sd	ra,0(sp)
    800066d8:	00213423          	sd	sp,8(sp)
    800066dc:	00313823          	sd	gp,16(sp)
    800066e0:	00413c23          	sd	tp,24(sp)
    800066e4:	02513023          	sd	t0,32(sp)
    800066e8:	02613423          	sd	t1,40(sp)
    800066ec:	02713823          	sd	t2,48(sp)
    800066f0:	02813c23          	sd	s0,56(sp)
    800066f4:	04913023          	sd	s1,64(sp)
    800066f8:	04a13423          	sd	a0,72(sp)
    800066fc:	04b13823          	sd	a1,80(sp)
    80006700:	04c13c23          	sd	a2,88(sp)
    80006704:	06d13023          	sd	a3,96(sp)
    80006708:	06e13423          	sd	a4,104(sp)
    8000670c:	06f13823          	sd	a5,112(sp)
    80006710:	07013c23          	sd	a6,120(sp)
    80006714:	09113023          	sd	a7,128(sp)
    80006718:	09213423          	sd	s2,136(sp)
    8000671c:	09313823          	sd	s3,144(sp)
    80006720:	09413c23          	sd	s4,152(sp)
    80006724:	0b513023          	sd	s5,160(sp)
    80006728:	0b613423          	sd	s6,168(sp)
    8000672c:	0b713823          	sd	s7,176(sp)
    80006730:	0b813c23          	sd	s8,184(sp)
    80006734:	0d913023          	sd	s9,192(sp)
    80006738:	0da13423          	sd	s10,200(sp)
    8000673c:	0db13823          	sd	s11,208(sp)
    80006740:	0dc13c23          	sd	t3,216(sp)
    80006744:	0fd13023          	sd	t4,224(sp)
    80006748:	0fe13423          	sd	t5,232(sp)
    8000674c:	0ff13823          	sd	t6,240(sp)
    80006750:	cd1ff0ef          	jal	ra,80006420 <kerneltrap>
    80006754:	00013083          	ld	ra,0(sp)
    80006758:	00813103          	ld	sp,8(sp)
    8000675c:	01013183          	ld	gp,16(sp)
    80006760:	02013283          	ld	t0,32(sp)
    80006764:	02813303          	ld	t1,40(sp)
    80006768:	03013383          	ld	t2,48(sp)
    8000676c:	03813403          	ld	s0,56(sp)
    80006770:	04013483          	ld	s1,64(sp)
    80006774:	04813503          	ld	a0,72(sp)
    80006778:	05013583          	ld	a1,80(sp)
    8000677c:	05813603          	ld	a2,88(sp)
    80006780:	06013683          	ld	a3,96(sp)
    80006784:	06813703          	ld	a4,104(sp)
    80006788:	07013783          	ld	a5,112(sp)
    8000678c:	07813803          	ld	a6,120(sp)
    80006790:	08013883          	ld	a7,128(sp)
    80006794:	08813903          	ld	s2,136(sp)
    80006798:	09013983          	ld	s3,144(sp)
    8000679c:	09813a03          	ld	s4,152(sp)
    800067a0:	0a013a83          	ld	s5,160(sp)
    800067a4:	0a813b03          	ld	s6,168(sp)
    800067a8:	0b013b83          	ld	s7,176(sp)
    800067ac:	0b813c03          	ld	s8,184(sp)
    800067b0:	0c013c83          	ld	s9,192(sp)
    800067b4:	0c813d03          	ld	s10,200(sp)
    800067b8:	0d013d83          	ld	s11,208(sp)
    800067bc:	0d813e03          	ld	t3,216(sp)
    800067c0:	0e013e83          	ld	t4,224(sp)
    800067c4:	0e813f03          	ld	t5,232(sp)
    800067c8:	0f013f83          	ld	t6,240(sp)
    800067cc:	10010113          	addi	sp,sp,256
    800067d0:	10200073          	sret
    800067d4:	00000013          	nop
    800067d8:	00000013          	nop
    800067dc:	00000013          	nop

00000000800067e0 <timervec>:
    800067e0:	34051573          	csrrw	a0,mscratch,a0
    800067e4:	00b53023          	sd	a1,0(a0)
    800067e8:	00c53423          	sd	a2,8(a0)
    800067ec:	00d53823          	sd	a3,16(a0)
    800067f0:	01853583          	ld	a1,24(a0)
    800067f4:	02053603          	ld	a2,32(a0)
    800067f8:	0005b683          	ld	a3,0(a1)
    800067fc:	00c686b3          	add	a3,a3,a2
    80006800:	00d5b023          	sd	a3,0(a1)
    80006804:	00200593          	li	a1,2
    80006808:	14459073          	csrw	sip,a1
    8000680c:	01053683          	ld	a3,16(a0)
    80006810:	00853603          	ld	a2,8(a0)
    80006814:	00053583          	ld	a1,0(a0)
    80006818:	34051573          	csrrw	a0,mscratch,a0
    8000681c:	30200073          	mret

0000000080006820 <plicinit>:
    80006820:	ff010113          	addi	sp,sp,-16
    80006824:	00813423          	sd	s0,8(sp)
    80006828:	01010413          	addi	s0,sp,16
    8000682c:	00813403          	ld	s0,8(sp)
    80006830:	0c0007b7          	lui	a5,0xc000
    80006834:	00100713          	li	a4,1
    80006838:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000683c:	00e7a223          	sw	a4,4(a5)
    80006840:	01010113          	addi	sp,sp,16
    80006844:	00008067          	ret

0000000080006848 <plicinithart>:
    80006848:	ff010113          	addi	sp,sp,-16
    8000684c:	00813023          	sd	s0,0(sp)
    80006850:	00113423          	sd	ra,8(sp)
    80006854:	01010413          	addi	s0,sp,16
    80006858:	00000097          	auipc	ra,0x0
    8000685c:	a48080e7          	jalr	-1464(ra) # 800062a0 <cpuid>
    80006860:	0085171b          	slliw	a4,a0,0x8
    80006864:	0c0027b7          	lui	a5,0xc002
    80006868:	00e787b3          	add	a5,a5,a4
    8000686c:	40200713          	li	a4,1026
    80006870:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006874:	00813083          	ld	ra,8(sp)
    80006878:	00013403          	ld	s0,0(sp)
    8000687c:	00d5151b          	slliw	a0,a0,0xd
    80006880:	0c2017b7          	lui	a5,0xc201
    80006884:	00a78533          	add	a0,a5,a0
    80006888:	00052023          	sw	zero,0(a0)
    8000688c:	01010113          	addi	sp,sp,16
    80006890:	00008067          	ret

0000000080006894 <plic_claim>:
    80006894:	ff010113          	addi	sp,sp,-16
    80006898:	00813023          	sd	s0,0(sp)
    8000689c:	00113423          	sd	ra,8(sp)
    800068a0:	01010413          	addi	s0,sp,16
    800068a4:	00000097          	auipc	ra,0x0
    800068a8:	9fc080e7          	jalr	-1540(ra) # 800062a0 <cpuid>
    800068ac:	00813083          	ld	ra,8(sp)
    800068b0:	00013403          	ld	s0,0(sp)
    800068b4:	00d5151b          	slliw	a0,a0,0xd
    800068b8:	0c2017b7          	lui	a5,0xc201
    800068bc:	00a78533          	add	a0,a5,a0
    800068c0:	00452503          	lw	a0,4(a0)
    800068c4:	01010113          	addi	sp,sp,16
    800068c8:	00008067          	ret

00000000800068cc <plic_complete>:
    800068cc:	fe010113          	addi	sp,sp,-32
    800068d0:	00813823          	sd	s0,16(sp)
    800068d4:	00913423          	sd	s1,8(sp)
    800068d8:	00113c23          	sd	ra,24(sp)
    800068dc:	02010413          	addi	s0,sp,32
    800068e0:	00050493          	mv	s1,a0
    800068e4:	00000097          	auipc	ra,0x0
    800068e8:	9bc080e7          	jalr	-1604(ra) # 800062a0 <cpuid>
    800068ec:	01813083          	ld	ra,24(sp)
    800068f0:	01013403          	ld	s0,16(sp)
    800068f4:	00d5179b          	slliw	a5,a0,0xd
    800068f8:	0c201737          	lui	a4,0xc201
    800068fc:	00f707b3          	add	a5,a4,a5
    80006900:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006904:	00813483          	ld	s1,8(sp)
    80006908:	02010113          	addi	sp,sp,32
    8000690c:	00008067          	ret

0000000080006910 <consolewrite>:
    80006910:	fb010113          	addi	sp,sp,-80
    80006914:	04813023          	sd	s0,64(sp)
    80006918:	04113423          	sd	ra,72(sp)
    8000691c:	02913c23          	sd	s1,56(sp)
    80006920:	03213823          	sd	s2,48(sp)
    80006924:	03313423          	sd	s3,40(sp)
    80006928:	03413023          	sd	s4,32(sp)
    8000692c:	01513c23          	sd	s5,24(sp)
    80006930:	05010413          	addi	s0,sp,80
    80006934:	06c05c63          	blez	a2,800069ac <consolewrite+0x9c>
    80006938:	00060993          	mv	s3,a2
    8000693c:	00050a13          	mv	s4,a0
    80006940:	00058493          	mv	s1,a1
    80006944:	00000913          	li	s2,0
    80006948:	fff00a93          	li	s5,-1
    8000694c:	01c0006f          	j	80006968 <consolewrite+0x58>
    80006950:	fbf44503          	lbu	a0,-65(s0)
    80006954:	0019091b          	addiw	s2,s2,1
    80006958:	00148493          	addi	s1,s1,1
    8000695c:	00001097          	auipc	ra,0x1
    80006960:	a9c080e7          	jalr	-1380(ra) # 800073f8 <uartputc>
    80006964:	03298063          	beq	s3,s2,80006984 <consolewrite+0x74>
    80006968:	00048613          	mv	a2,s1
    8000696c:	00100693          	li	a3,1
    80006970:	000a0593          	mv	a1,s4
    80006974:	fbf40513          	addi	a0,s0,-65
    80006978:	00000097          	auipc	ra,0x0
    8000697c:	9e0080e7          	jalr	-1568(ra) # 80006358 <either_copyin>
    80006980:	fd5518e3          	bne	a0,s5,80006950 <consolewrite+0x40>
    80006984:	04813083          	ld	ra,72(sp)
    80006988:	04013403          	ld	s0,64(sp)
    8000698c:	03813483          	ld	s1,56(sp)
    80006990:	02813983          	ld	s3,40(sp)
    80006994:	02013a03          	ld	s4,32(sp)
    80006998:	01813a83          	ld	s5,24(sp)
    8000699c:	00090513          	mv	a0,s2
    800069a0:	03013903          	ld	s2,48(sp)
    800069a4:	05010113          	addi	sp,sp,80
    800069a8:	00008067          	ret
    800069ac:	00000913          	li	s2,0
    800069b0:	fd5ff06f          	j	80006984 <consolewrite+0x74>

00000000800069b4 <consoleread>:
    800069b4:	f9010113          	addi	sp,sp,-112
    800069b8:	06813023          	sd	s0,96(sp)
    800069bc:	04913c23          	sd	s1,88(sp)
    800069c0:	05213823          	sd	s2,80(sp)
    800069c4:	05313423          	sd	s3,72(sp)
    800069c8:	05413023          	sd	s4,64(sp)
    800069cc:	03513c23          	sd	s5,56(sp)
    800069d0:	03613823          	sd	s6,48(sp)
    800069d4:	03713423          	sd	s7,40(sp)
    800069d8:	03813023          	sd	s8,32(sp)
    800069dc:	06113423          	sd	ra,104(sp)
    800069e0:	01913c23          	sd	s9,24(sp)
    800069e4:	07010413          	addi	s0,sp,112
    800069e8:	00060b93          	mv	s7,a2
    800069ec:	00050913          	mv	s2,a0
    800069f0:	00058c13          	mv	s8,a1
    800069f4:	00060b1b          	sext.w	s6,a2
    800069f8:	00006497          	auipc	s1,0x6
    800069fc:	e6048493          	addi	s1,s1,-416 # 8000c858 <cons>
    80006a00:	00400993          	li	s3,4
    80006a04:	fff00a13          	li	s4,-1
    80006a08:	00a00a93          	li	s5,10
    80006a0c:	05705e63          	blez	s7,80006a68 <consoleread+0xb4>
    80006a10:	09c4a703          	lw	a4,156(s1)
    80006a14:	0984a783          	lw	a5,152(s1)
    80006a18:	0007071b          	sext.w	a4,a4
    80006a1c:	08e78463          	beq	a5,a4,80006aa4 <consoleread+0xf0>
    80006a20:	07f7f713          	andi	a4,a5,127
    80006a24:	00e48733          	add	a4,s1,a4
    80006a28:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006a2c:	0017869b          	addiw	a3,a5,1
    80006a30:	08d4ac23          	sw	a3,152(s1)
    80006a34:	00070c9b          	sext.w	s9,a4
    80006a38:	0b370663          	beq	a4,s3,80006ae4 <consoleread+0x130>
    80006a3c:	00100693          	li	a3,1
    80006a40:	f9f40613          	addi	a2,s0,-97
    80006a44:	000c0593          	mv	a1,s8
    80006a48:	00090513          	mv	a0,s2
    80006a4c:	f8e40fa3          	sb	a4,-97(s0)
    80006a50:	00000097          	auipc	ra,0x0
    80006a54:	8bc080e7          	jalr	-1860(ra) # 8000630c <either_copyout>
    80006a58:	01450863          	beq	a0,s4,80006a68 <consoleread+0xb4>
    80006a5c:	001c0c13          	addi	s8,s8,1
    80006a60:	fffb8b9b          	addiw	s7,s7,-1
    80006a64:	fb5c94e3          	bne	s9,s5,80006a0c <consoleread+0x58>
    80006a68:	000b851b          	sext.w	a0,s7
    80006a6c:	06813083          	ld	ra,104(sp)
    80006a70:	06013403          	ld	s0,96(sp)
    80006a74:	05813483          	ld	s1,88(sp)
    80006a78:	05013903          	ld	s2,80(sp)
    80006a7c:	04813983          	ld	s3,72(sp)
    80006a80:	04013a03          	ld	s4,64(sp)
    80006a84:	03813a83          	ld	s5,56(sp)
    80006a88:	02813b83          	ld	s7,40(sp)
    80006a8c:	02013c03          	ld	s8,32(sp)
    80006a90:	01813c83          	ld	s9,24(sp)
    80006a94:	40ab053b          	subw	a0,s6,a0
    80006a98:	03013b03          	ld	s6,48(sp)
    80006a9c:	07010113          	addi	sp,sp,112
    80006aa0:	00008067          	ret
    80006aa4:	00001097          	auipc	ra,0x1
    80006aa8:	1d8080e7          	jalr	472(ra) # 80007c7c <push_on>
    80006aac:	0984a703          	lw	a4,152(s1)
    80006ab0:	09c4a783          	lw	a5,156(s1)
    80006ab4:	0007879b          	sext.w	a5,a5
    80006ab8:	fef70ce3          	beq	a4,a5,80006ab0 <consoleread+0xfc>
    80006abc:	00001097          	auipc	ra,0x1
    80006ac0:	234080e7          	jalr	564(ra) # 80007cf0 <pop_on>
    80006ac4:	0984a783          	lw	a5,152(s1)
    80006ac8:	07f7f713          	andi	a4,a5,127
    80006acc:	00e48733          	add	a4,s1,a4
    80006ad0:	01874703          	lbu	a4,24(a4)
    80006ad4:	0017869b          	addiw	a3,a5,1
    80006ad8:	08d4ac23          	sw	a3,152(s1)
    80006adc:	00070c9b          	sext.w	s9,a4
    80006ae0:	f5371ee3          	bne	a4,s3,80006a3c <consoleread+0x88>
    80006ae4:	000b851b          	sext.w	a0,s7
    80006ae8:	f96bf2e3          	bgeu	s7,s6,80006a6c <consoleread+0xb8>
    80006aec:	08f4ac23          	sw	a5,152(s1)
    80006af0:	f7dff06f          	j	80006a6c <consoleread+0xb8>

0000000080006af4 <consputc>:
    80006af4:	10000793          	li	a5,256
    80006af8:	00f50663          	beq	a0,a5,80006b04 <consputc+0x10>
    80006afc:	00001317          	auipc	t1,0x1
    80006b00:	9f430067          	jr	-1548(t1) # 800074f0 <uartputc_sync>
    80006b04:	ff010113          	addi	sp,sp,-16
    80006b08:	00113423          	sd	ra,8(sp)
    80006b0c:	00813023          	sd	s0,0(sp)
    80006b10:	01010413          	addi	s0,sp,16
    80006b14:	00800513          	li	a0,8
    80006b18:	00001097          	auipc	ra,0x1
    80006b1c:	9d8080e7          	jalr	-1576(ra) # 800074f0 <uartputc_sync>
    80006b20:	02000513          	li	a0,32
    80006b24:	00001097          	auipc	ra,0x1
    80006b28:	9cc080e7          	jalr	-1588(ra) # 800074f0 <uartputc_sync>
    80006b2c:	00013403          	ld	s0,0(sp)
    80006b30:	00813083          	ld	ra,8(sp)
    80006b34:	00800513          	li	a0,8
    80006b38:	01010113          	addi	sp,sp,16
    80006b3c:	00001317          	auipc	t1,0x1
    80006b40:	9b430067          	jr	-1612(t1) # 800074f0 <uartputc_sync>

0000000080006b44 <consoleintr>:
    80006b44:	fe010113          	addi	sp,sp,-32
    80006b48:	00813823          	sd	s0,16(sp)
    80006b4c:	00913423          	sd	s1,8(sp)
    80006b50:	01213023          	sd	s2,0(sp)
    80006b54:	00113c23          	sd	ra,24(sp)
    80006b58:	02010413          	addi	s0,sp,32
    80006b5c:	00006917          	auipc	s2,0x6
    80006b60:	cfc90913          	addi	s2,s2,-772 # 8000c858 <cons>
    80006b64:	00050493          	mv	s1,a0
    80006b68:	00090513          	mv	a0,s2
    80006b6c:	00001097          	auipc	ra,0x1
    80006b70:	e40080e7          	jalr	-448(ra) # 800079ac <acquire>
    80006b74:	02048c63          	beqz	s1,80006bac <consoleintr+0x68>
    80006b78:	0a092783          	lw	a5,160(s2)
    80006b7c:	09892703          	lw	a4,152(s2)
    80006b80:	07f00693          	li	a3,127
    80006b84:	40e7873b          	subw	a4,a5,a4
    80006b88:	02e6e263          	bltu	a3,a4,80006bac <consoleintr+0x68>
    80006b8c:	00d00713          	li	a4,13
    80006b90:	04e48063          	beq	s1,a4,80006bd0 <consoleintr+0x8c>
    80006b94:	07f7f713          	andi	a4,a5,127
    80006b98:	00e90733          	add	a4,s2,a4
    80006b9c:	0017879b          	addiw	a5,a5,1
    80006ba0:	0af92023          	sw	a5,160(s2)
    80006ba4:	00970c23          	sb	s1,24(a4)
    80006ba8:	08f92e23          	sw	a5,156(s2)
    80006bac:	01013403          	ld	s0,16(sp)
    80006bb0:	01813083          	ld	ra,24(sp)
    80006bb4:	00813483          	ld	s1,8(sp)
    80006bb8:	00013903          	ld	s2,0(sp)
    80006bbc:	00006517          	auipc	a0,0x6
    80006bc0:	c9c50513          	addi	a0,a0,-868 # 8000c858 <cons>
    80006bc4:	02010113          	addi	sp,sp,32
    80006bc8:	00001317          	auipc	t1,0x1
    80006bcc:	eb030067          	jr	-336(t1) # 80007a78 <release>
    80006bd0:	00a00493          	li	s1,10
    80006bd4:	fc1ff06f          	j	80006b94 <consoleintr+0x50>

0000000080006bd8 <consoleinit>:
    80006bd8:	fe010113          	addi	sp,sp,-32
    80006bdc:	00113c23          	sd	ra,24(sp)
    80006be0:	00813823          	sd	s0,16(sp)
    80006be4:	00913423          	sd	s1,8(sp)
    80006be8:	02010413          	addi	s0,sp,32
    80006bec:	00006497          	auipc	s1,0x6
    80006bf0:	c6c48493          	addi	s1,s1,-916 # 8000c858 <cons>
    80006bf4:	00048513          	mv	a0,s1
    80006bf8:	00003597          	auipc	a1,0x3
    80006bfc:	b6858593          	addi	a1,a1,-1176 # 80009760 <CONSOLE_STATUS+0x750>
    80006c00:	00001097          	auipc	ra,0x1
    80006c04:	d88080e7          	jalr	-632(ra) # 80007988 <initlock>
    80006c08:	00000097          	auipc	ra,0x0
    80006c0c:	7ac080e7          	jalr	1964(ra) # 800073b4 <uartinit>
    80006c10:	01813083          	ld	ra,24(sp)
    80006c14:	01013403          	ld	s0,16(sp)
    80006c18:	00000797          	auipc	a5,0x0
    80006c1c:	d9c78793          	addi	a5,a5,-612 # 800069b4 <consoleread>
    80006c20:	0af4bc23          	sd	a5,184(s1)
    80006c24:	00000797          	auipc	a5,0x0
    80006c28:	cec78793          	addi	a5,a5,-788 # 80006910 <consolewrite>
    80006c2c:	0cf4b023          	sd	a5,192(s1)
    80006c30:	00813483          	ld	s1,8(sp)
    80006c34:	02010113          	addi	sp,sp,32
    80006c38:	00008067          	ret

0000000080006c3c <console_read>:
    80006c3c:	ff010113          	addi	sp,sp,-16
    80006c40:	00813423          	sd	s0,8(sp)
    80006c44:	01010413          	addi	s0,sp,16
    80006c48:	00813403          	ld	s0,8(sp)
    80006c4c:	00006317          	auipc	t1,0x6
    80006c50:	cc433303          	ld	t1,-828(t1) # 8000c910 <devsw+0x10>
    80006c54:	01010113          	addi	sp,sp,16
    80006c58:	00030067          	jr	t1

0000000080006c5c <console_write>:
    80006c5c:	ff010113          	addi	sp,sp,-16
    80006c60:	00813423          	sd	s0,8(sp)
    80006c64:	01010413          	addi	s0,sp,16
    80006c68:	00813403          	ld	s0,8(sp)
    80006c6c:	00006317          	auipc	t1,0x6
    80006c70:	cac33303          	ld	t1,-852(t1) # 8000c918 <devsw+0x18>
    80006c74:	01010113          	addi	sp,sp,16
    80006c78:	00030067          	jr	t1

0000000080006c7c <panic>:
    80006c7c:	fe010113          	addi	sp,sp,-32
    80006c80:	00113c23          	sd	ra,24(sp)
    80006c84:	00813823          	sd	s0,16(sp)
    80006c88:	00913423          	sd	s1,8(sp)
    80006c8c:	02010413          	addi	s0,sp,32
    80006c90:	00050493          	mv	s1,a0
    80006c94:	00003517          	auipc	a0,0x3
    80006c98:	ad450513          	addi	a0,a0,-1324 # 80009768 <CONSOLE_STATUS+0x758>
    80006c9c:	00006797          	auipc	a5,0x6
    80006ca0:	d007ae23          	sw	zero,-740(a5) # 8000c9b8 <pr+0x18>
    80006ca4:	00000097          	auipc	ra,0x0
    80006ca8:	034080e7          	jalr	52(ra) # 80006cd8 <__printf>
    80006cac:	00048513          	mv	a0,s1
    80006cb0:	00000097          	auipc	ra,0x0
    80006cb4:	028080e7          	jalr	40(ra) # 80006cd8 <__printf>
    80006cb8:	00003517          	auipc	a0,0x3
    80006cbc:	8a850513          	addi	a0,a0,-1880 # 80009560 <CONSOLE_STATUS+0x550>
    80006cc0:	00000097          	auipc	ra,0x0
    80006cc4:	018080e7          	jalr	24(ra) # 80006cd8 <__printf>
    80006cc8:	00100793          	li	a5,1
    80006ccc:	00005717          	auipc	a4,0x5
    80006cd0:	a0f72623          	sw	a5,-1524(a4) # 8000b6d8 <panicked>
    80006cd4:	0000006f          	j	80006cd4 <panic+0x58>

0000000080006cd8 <__printf>:
    80006cd8:	f3010113          	addi	sp,sp,-208
    80006cdc:	08813023          	sd	s0,128(sp)
    80006ce0:	07313423          	sd	s3,104(sp)
    80006ce4:	09010413          	addi	s0,sp,144
    80006ce8:	05813023          	sd	s8,64(sp)
    80006cec:	08113423          	sd	ra,136(sp)
    80006cf0:	06913c23          	sd	s1,120(sp)
    80006cf4:	07213823          	sd	s2,112(sp)
    80006cf8:	07413023          	sd	s4,96(sp)
    80006cfc:	05513c23          	sd	s5,88(sp)
    80006d00:	05613823          	sd	s6,80(sp)
    80006d04:	05713423          	sd	s7,72(sp)
    80006d08:	03913c23          	sd	s9,56(sp)
    80006d0c:	03a13823          	sd	s10,48(sp)
    80006d10:	03b13423          	sd	s11,40(sp)
    80006d14:	00006317          	auipc	t1,0x6
    80006d18:	c8c30313          	addi	t1,t1,-884 # 8000c9a0 <pr>
    80006d1c:	01832c03          	lw	s8,24(t1)
    80006d20:	00b43423          	sd	a1,8(s0)
    80006d24:	00c43823          	sd	a2,16(s0)
    80006d28:	00d43c23          	sd	a3,24(s0)
    80006d2c:	02e43023          	sd	a4,32(s0)
    80006d30:	02f43423          	sd	a5,40(s0)
    80006d34:	03043823          	sd	a6,48(s0)
    80006d38:	03143c23          	sd	a7,56(s0)
    80006d3c:	00050993          	mv	s3,a0
    80006d40:	4a0c1663          	bnez	s8,800071ec <__printf+0x514>
    80006d44:	60098c63          	beqz	s3,8000735c <__printf+0x684>
    80006d48:	0009c503          	lbu	a0,0(s3)
    80006d4c:	00840793          	addi	a5,s0,8
    80006d50:	f6f43c23          	sd	a5,-136(s0)
    80006d54:	00000493          	li	s1,0
    80006d58:	22050063          	beqz	a0,80006f78 <__printf+0x2a0>
    80006d5c:	00002a37          	lui	s4,0x2
    80006d60:	00018ab7          	lui	s5,0x18
    80006d64:	000f4b37          	lui	s6,0xf4
    80006d68:	00989bb7          	lui	s7,0x989
    80006d6c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006d70:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006d74:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006d78:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006d7c:	00148c9b          	addiw	s9,s1,1
    80006d80:	02500793          	li	a5,37
    80006d84:	01998933          	add	s2,s3,s9
    80006d88:	38f51263          	bne	a0,a5,8000710c <__printf+0x434>
    80006d8c:	00094783          	lbu	a5,0(s2)
    80006d90:	00078c9b          	sext.w	s9,a5
    80006d94:	1e078263          	beqz	a5,80006f78 <__printf+0x2a0>
    80006d98:	0024849b          	addiw	s1,s1,2
    80006d9c:	07000713          	li	a4,112
    80006da0:	00998933          	add	s2,s3,s1
    80006da4:	38e78a63          	beq	a5,a4,80007138 <__printf+0x460>
    80006da8:	20f76863          	bltu	a4,a5,80006fb8 <__printf+0x2e0>
    80006dac:	42a78863          	beq	a5,a0,800071dc <__printf+0x504>
    80006db0:	06400713          	li	a4,100
    80006db4:	40e79663          	bne	a5,a4,800071c0 <__printf+0x4e8>
    80006db8:	f7843783          	ld	a5,-136(s0)
    80006dbc:	0007a603          	lw	a2,0(a5)
    80006dc0:	00878793          	addi	a5,a5,8
    80006dc4:	f6f43c23          	sd	a5,-136(s0)
    80006dc8:	42064a63          	bltz	a2,800071fc <__printf+0x524>
    80006dcc:	00a00713          	li	a4,10
    80006dd0:	02e677bb          	remuw	a5,a2,a4
    80006dd4:	00003d97          	auipc	s11,0x3
    80006dd8:	9bcd8d93          	addi	s11,s11,-1604 # 80009790 <digits>
    80006ddc:	00900593          	li	a1,9
    80006de0:	0006051b          	sext.w	a0,a2
    80006de4:	00000c93          	li	s9,0
    80006de8:	02079793          	slli	a5,a5,0x20
    80006dec:	0207d793          	srli	a5,a5,0x20
    80006df0:	00fd87b3          	add	a5,s11,a5
    80006df4:	0007c783          	lbu	a5,0(a5)
    80006df8:	02e656bb          	divuw	a3,a2,a4
    80006dfc:	f8f40023          	sb	a5,-128(s0)
    80006e00:	14c5d863          	bge	a1,a2,80006f50 <__printf+0x278>
    80006e04:	06300593          	li	a1,99
    80006e08:	00100c93          	li	s9,1
    80006e0c:	02e6f7bb          	remuw	a5,a3,a4
    80006e10:	02079793          	slli	a5,a5,0x20
    80006e14:	0207d793          	srli	a5,a5,0x20
    80006e18:	00fd87b3          	add	a5,s11,a5
    80006e1c:	0007c783          	lbu	a5,0(a5)
    80006e20:	02e6d73b          	divuw	a4,a3,a4
    80006e24:	f8f400a3          	sb	a5,-127(s0)
    80006e28:	12a5f463          	bgeu	a1,a0,80006f50 <__printf+0x278>
    80006e2c:	00a00693          	li	a3,10
    80006e30:	00900593          	li	a1,9
    80006e34:	02d777bb          	remuw	a5,a4,a3
    80006e38:	02079793          	slli	a5,a5,0x20
    80006e3c:	0207d793          	srli	a5,a5,0x20
    80006e40:	00fd87b3          	add	a5,s11,a5
    80006e44:	0007c503          	lbu	a0,0(a5)
    80006e48:	02d757bb          	divuw	a5,a4,a3
    80006e4c:	f8a40123          	sb	a0,-126(s0)
    80006e50:	48e5f263          	bgeu	a1,a4,800072d4 <__printf+0x5fc>
    80006e54:	06300513          	li	a0,99
    80006e58:	02d7f5bb          	remuw	a1,a5,a3
    80006e5c:	02059593          	slli	a1,a1,0x20
    80006e60:	0205d593          	srli	a1,a1,0x20
    80006e64:	00bd85b3          	add	a1,s11,a1
    80006e68:	0005c583          	lbu	a1,0(a1)
    80006e6c:	02d7d7bb          	divuw	a5,a5,a3
    80006e70:	f8b401a3          	sb	a1,-125(s0)
    80006e74:	48e57263          	bgeu	a0,a4,800072f8 <__printf+0x620>
    80006e78:	3e700513          	li	a0,999
    80006e7c:	02d7f5bb          	remuw	a1,a5,a3
    80006e80:	02059593          	slli	a1,a1,0x20
    80006e84:	0205d593          	srli	a1,a1,0x20
    80006e88:	00bd85b3          	add	a1,s11,a1
    80006e8c:	0005c583          	lbu	a1,0(a1)
    80006e90:	02d7d7bb          	divuw	a5,a5,a3
    80006e94:	f8b40223          	sb	a1,-124(s0)
    80006e98:	46e57663          	bgeu	a0,a4,80007304 <__printf+0x62c>
    80006e9c:	02d7f5bb          	remuw	a1,a5,a3
    80006ea0:	02059593          	slli	a1,a1,0x20
    80006ea4:	0205d593          	srli	a1,a1,0x20
    80006ea8:	00bd85b3          	add	a1,s11,a1
    80006eac:	0005c583          	lbu	a1,0(a1)
    80006eb0:	02d7d7bb          	divuw	a5,a5,a3
    80006eb4:	f8b402a3          	sb	a1,-123(s0)
    80006eb8:	46ea7863          	bgeu	s4,a4,80007328 <__printf+0x650>
    80006ebc:	02d7f5bb          	remuw	a1,a5,a3
    80006ec0:	02059593          	slli	a1,a1,0x20
    80006ec4:	0205d593          	srli	a1,a1,0x20
    80006ec8:	00bd85b3          	add	a1,s11,a1
    80006ecc:	0005c583          	lbu	a1,0(a1)
    80006ed0:	02d7d7bb          	divuw	a5,a5,a3
    80006ed4:	f8b40323          	sb	a1,-122(s0)
    80006ed8:	3eeaf863          	bgeu	s5,a4,800072c8 <__printf+0x5f0>
    80006edc:	02d7f5bb          	remuw	a1,a5,a3
    80006ee0:	02059593          	slli	a1,a1,0x20
    80006ee4:	0205d593          	srli	a1,a1,0x20
    80006ee8:	00bd85b3          	add	a1,s11,a1
    80006eec:	0005c583          	lbu	a1,0(a1)
    80006ef0:	02d7d7bb          	divuw	a5,a5,a3
    80006ef4:	f8b403a3          	sb	a1,-121(s0)
    80006ef8:	42eb7e63          	bgeu	s6,a4,80007334 <__printf+0x65c>
    80006efc:	02d7f5bb          	remuw	a1,a5,a3
    80006f00:	02059593          	slli	a1,a1,0x20
    80006f04:	0205d593          	srli	a1,a1,0x20
    80006f08:	00bd85b3          	add	a1,s11,a1
    80006f0c:	0005c583          	lbu	a1,0(a1)
    80006f10:	02d7d7bb          	divuw	a5,a5,a3
    80006f14:	f8b40423          	sb	a1,-120(s0)
    80006f18:	42ebfc63          	bgeu	s7,a4,80007350 <__printf+0x678>
    80006f1c:	02079793          	slli	a5,a5,0x20
    80006f20:	0207d793          	srli	a5,a5,0x20
    80006f24:	00fd8db3          	add	s11,s11,a5
    80006f28:	000dc703          	lbu	a4,0(s11)
    80006f2c:	00a00793          	li	a5,10
    80006f30:	00900c93          	li	s9,9
    80006f34:	f8e404a3          	sb	a4,-119(s0)
    80006f38:	00065c63          	bgez	a2,80006f50 <__printf+0x278>
    80006f3c:	f9040713          	addi	a4,s0,-112
    80006f40:	00f70733          	add	a4,a4,a5
    80006f44:	02d00693          	li	a3,45
    80006f48:	fed70823          	sb	a3,-16(a4)
    80006f4c:	00078c93          	mv	s9,a5
    80006f50:	f8040793          	addi	a5,s0,-128
    80006f54:	01978cb3          	add	s9,a5,s9
    80006f58:	f7f40d13          	addi	s10,s0,-129
    80006f5c:	000cc503          	lbu	a0,0(s9)
    80006f60:	fffc8c93          	addi	s9,s9,-1
    80006f64:	00000097          	auipc	ra,0x0
    80006f68:	b90080e7          	jalr	-1136(ra) # 80006af4 <consputc>
    80006f6c:	ffac98e3          	bne	s9,s10,80006f5c <__printf+0x284>
    80006f70:	00094503          	lbu	a0,0(s2)
    80006f74:	e00514e3          	bnez	a0,80006d7c <__printf+0xa4>
    80006f78:	1a0c1663          	bnez	s8,80007124 <__printf+0x44c>
    80006f7c:	08813083          	ld	ra,136(sp)
    80006f80:	08013403          	ld	s0,128(sp)
    80006f84:	07813483          	ld	s1,120(sp)
    80006f88:	07013903          	ld	s2,112(sp)
    80006f8c:	06813983          	ld	s3,104(sp)
    80006f90:	06013a03          	ld	s4,96(sp)
    80006f94:	05813a83          	ld	s5,88(sp)
    80006f98:	05013b03          	ld	s6,80(sp)
    80006f9c:	04813b83          	ld	s7,72(sp)
    80006fa0:	04013c03          	ld	s8,64(sp)
    80006fa4:	03813c83          	ld	s9,56(sp)
    80006fa8:	03013d03          	ld	s10,48(sp)
    80006fac:	02813d83          	ld	s11,40(sp)
    80006fb0:	0d010113          	addi	sp,sp,208
    80006fb4:	00008067          	ret
    80006fb8:	07300713          	li	a4,115
    80006fbc:	1ce78a63          	beq	a5,a4,80007190 <__printf+0x4b8>
    80006fc0:	07800713          	li	a4,120
    80006fc4:	1ee79e63          	bne	a5,a4,800071c0 <__printf+0x4e8>
    80006fc8:	f7843783          	ld	a5,-136(s0)
    80006fcc:	0007a703          	lw	a4,0(a5)
    80006fd0:	00878793          	addi	a5,a5,8
    80006fd4:	f6f43c23          	sd	a5,-136(s0)
    80006fd8:	28074263          	bltz	a4,8000725c <__printf+0x584>
    80006fdc:	00002d97          	auipc	s11,0x2
    80006fe0:	7b4d8d93          	addi	s11,s11,1972 # 80009790 <digits>
    80006fe4:	00f77793          	andi	a5,a4,15
    80006fe8:	00fd87b3          	add	a5,s11,a5
    80006fec:	0007c683          	lbu	a3,0(a5)
    80006ff0:	00f00613          	li	a2,15
    80006ff4:	0007079b          	sext.w	a5,a4
    80006ff8:	f8d40023          	sb	a3,-128(s0)
    80006ffc:	0047559b          	srliw	a1,a4,0x4
    80007000:	0047569b          	srliw	a3,a4,0x4
    80007004:	00000c93          	li	s9,0
    80007008:	0ee65063          	bge	a2,a4,800070e8 <__printf+0x410>
    8000700c:	00f6f693          	andi	a3,a3,15
    80007010:	00dd86b3          	add	a3,s11,a3
    80007014:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007018:	0087d79b          	srliw	a5,a5,0x8
    8000701c:	00100c93          	li	s9,1
    80007020:	f8d400a3          	sb	a3,-127(s0)
    80007024:	0cb67263          	bgeu	a2,a1,800070e8 <__printf+0x410>
    80007028:	00f7f693          	andi	a3,a5,15
    8000702c:	00dd86b3          	add	a3,s11,a3
    80007030:	0006c583          	lbu	a1,0(a3)
    80007034:	00f00613          	li	a2,15
    80007038:	0047d69b          	srliw	a3,a5,0x4
    8000703c:	f8b40123          	sb	a1,-126(s0)
    80007040:	0047d593          	srli	a1,a5,0x4
    80007044:	28f67e63          	bgeu	a2,a5,800072e0 <__printf+0x608>
    80007048:	00f6f693          	andi	a3,a3,15
    8000704c:	00dd86b3          	add	a3,s11,a3
    80007050:	0006c503          	lbu	a0,0(a3)
    80007054:	0087d813          	srli	a6,a5,0x8
    80007058:	0087d69b          	srliw	a3,a5,0x8
    8000705c:	f8a401a3          	sb	a0,-125(s0)
    80007060:	28b67663          	bgeu	a2,a1,800072ec <__printf+0x614>
    80007064:	00f6f693          	andi	a3,a3,15
    80007068:	00dd86b3          	add	a3,s11,a3
    8000706c:	0006c583          	lbu	a1,0(a3)
    80007070:	00c7d513          	srli	a0,a5,0xc
    80007074:	00c7d69b          	srliw	a3,a5,0xc
    80007078:	f8b40223          	sb	a1,-124(s0)
    8000707c:	29067a63          	bgeu	a2,a6,80007310 <__printf+0x638>
    80007080:	00f6f693          	andi	a3,a3,15
    80007084:	00dd86b3          	add	a3,s11,a3
    80007088:	0006c583          	lbu	a1,0(a3)
    8000708c:	0107d813          	srli	a6,a5,0x10
    80007090:	0107d69b          	srliw	a3,a5,0x10
    80007094:	f8b402a3          	sb	a1,-123(s0)
    80007098:	28a67263          	bgeu	a2,a0,8000731c <__printf+0x644>
    8000709c:	00f6f693          	andi	a3,a3,15
    800070a0:	00dd86b3          	add	a3,s11,a3
    800070a4:	0006c683          	lbu	a3,0(a3)
    800070a8:	0147d79b          	srliw	a5,a5,0x14
    800070ac:	f8d40323          	sb	a3,-122(s0)
    800070b0:	21067663          	bgeu	a2,a6,800072bc <__printf+0x5e4>
    800070b4:	02079793          	slli	a5,a5,0x20
    800070b8:	0207d793          	srli	a5,a5,0x20
    800070bc:	00fd8db3          	add	s11,s11,a5
    800070c0:	000dc683          	lbu	a3,0(s11)
    800070c4:	00800793          	li	a5,8
    800070c8:	00700c93          	li	s9,7
    800070cc:	f8d403a3          	sb	a3,-121(s0)
    800070d0:	00075c63          	bgez	a4,800070e8 <__printf+0x410>
    800070d4:	f9040713          	addi	a4,s0,-112
    800070d8:	00f70733          	add	a4,a4,a5
    800070dc:	02d00693          	li	a3,45
    800070e0:	fed70823          	sb	a3,-16(a4)
    800070e4:	00078c93          	mv	s9,a5
    800070e8:	f8040793          	addi	a5,s0,-128
    800070ec:	01978cb3          	add	s9,a5,s9
    800070f0:	f7f40d13          	addi	s10,s0,-129
    800070f4:	000cc503          	lbu	a0,0(s9)
    800070f8:	fffc8c93          	addi	s9,s9,-1
    800070fc:	00000097          	auipc	ra,0x0
    80007100:	9f8080e7          	jalr	-1544(ra) # 80006af4 <consputc>
    80007104:	ff9d18e3          	bne	s10,s9,800070f4 <__printf+0x41c>
    80007108:	0100006f          	j	80007118 <__printf+0x440>
    8000710c:	00000097          	auipc	ra,0x0
    80007110:	9e8080e7          	jalr	-1560(ra) # 80006af4 <consputc>
    80007114:	000c8493          	mv	s1,s9
    80007118:	00094503          	lbu	a0,0(s2)
    8000711c:	c60510e3          	bnez	a0,80006d7c <__printf+0xa4>
    80007120:	e40c0ee3          	beqz	s8,80006f7c <__printf+0x2a4>
    80007124:	00006517          	auipc	a0,0x6
    80007128:	87c50513          	addi	a0,a0,-1924 # 8000c9a0 <pr>
    8000712c:	00001097          	auipc	ra,0x1
    80007130:	94c080e7          	jalr	-1716(ra) # 80007a78 <release>
    80007134:	e49ff06f          	j	80006f7c <__printf+0x2a4>
    80007138:	f7843783          	ld	a5,-136(s0)
    8000713c:	03000513          	li	a0,48
    80007140:	01000d13          	li	s10,16
    80007144:	00878713          	addi	a4,a5,8
    80007148:	0007bc83          	ld	s9,0(a5)
    8000714c:	f6e43c23          	sd	a4,-136(s0)
    80007150:	00000097          	auipc	ra,0x0
    80007154:	9a4080e7          	jalr	-1628(ra) # 80006af4 <consputc>
    80007158:	07800513          	li	a0,120
    8000715c:	00000097          	auipc	ra,0x0
    80007160:	998080e7          	jalr	-1640(ra) # 80006af4 <consputc>
    80007164:	00002d97          	auipc	s11,0x2
    80007168:	62cd8d93          	addi	s11,s11,1580 # 80009790 <digits>
    8000716c:	03ccd793          	srli	a5,s9,0x3c
    80007170:	00fd87b3          	add	a5,s11,a5
    80007174:	0007c503          	lbu	a0,0(a5)
    80007178:	fffd0d1b          	addiw	s10,s10,-1
    8000717c:	004c9c93          	slli	s9,s9,0x4
    80007180:	00000097          	auipc	ra,0x0
    80007184:	974080e7          	jalr	-1676(ra) # 80006af4 <consputc>
    80007188:	fe0d12e3          	bnez	s10,8000716c <__printf+0x494>
    8000718c:	f8dff06f          	j	80007118 <__printf+0x440>
    80007190:	f7843783          	ld	a5,-136(s0)
    80007194:	0007bc83          	ld	s9,0(a5)
    80007198:	00878793          	addi	a5,a5,8
    8000719c:	f6f43c23          	sd	a5,-136(s0)
    800071a0:	000c9a63          	bnez	s9,800071b4 <__printf+0x4dc>
    800071a4:	1080006f          	j	800072ac <__printf+0x5d4>
    800071a8:	001c8c93          	addi	s9,s9,1
    800071ac:	00000097          	auipc	ra,0x0
    800071b0:	948080e7          	jalr	-1720(ra) # 80006af4 <consputc>
    800071b4:	000cc503          	lbu	a0,0(s9)
    800071b8:	fe0518e3          	bnez	a0,800071a8 <__printf+0x4d0>
    800071bc:	f5dff06f          	j	80007118 <__printf+0x440>
    800071c0:	02500513          	li	a0,37
    800071c4:	00000097          	auipc	ra,0x0
    800071c8:	930080e7          	jalr	-1744(ra) # 80006af4 <consputc>
    800071cc:	000c8513          	mv	a0,s9
    800071d0:	00000097          	auipc	ra,0x0
    800071d4:	924080e7          	jalr	-1756(ra) # 80006af4 <consputc>
    800071d8:	f41ff06f          	j	80007118 <__printf+0x440>
    800071dc:	02500513          	li	a0,37
    800071e0:	00000097          	auipc	ra,0x0
    800071e4:	914080e7          	jalr	-1772(ra) # 80006af4 <consputc>
    800071e8:	f31ff06f          	j	80007118 <__printf+0x440>
    800071ec:	00030513          	mv	a0,t1
    800071f0:	00000097          	auipc	ra,0x0
    800071f4:	7bc080e7          	jalr	1980(ra) # 800079ac <acquire>
    800071f8:	b4dff06f          	j	80006d44 <__printf+0x6c>
    800071fc:	40c0053b          	negw	a0,a2
    80007200:	00a00713          	li	a4,10
    80007204:	02e576bb          	remuw	a3,a0,a4
    80007208:	00002d97          	auipc	s11,0x2
    8000720c:	588d8d93          	addi	s11,s11,1416 # 80009790 <digits>
    80007210:	ff700593          	li	a1,-9
    80007214:	02069693          	slli	a3,a3,0x20
    80007218:	0206d693          	srli	a3,a3,0x20
    8000721c:	00dd86b3          	add	a3,s11,a3
    80007220:	0006c683          	lbu	a3,0(a3)
    80007224:	02e557bb          	divuw	a5,a0,a4
    80007228:	f8d40023          	sb	a3,-128(s0)
    8000722c:	10b65e63          	bge	a2,a1,80007348 <__printf+0x670>
    80007230:	06300593          	li	a1,99
    80007234:	02e7f6bb          	remuw	a3,a5,a4
    80007238:	02069693          	slli	a3,a3,0x20
    8000723c:	0206d693          	srli	a3,a3,0x20
    80007240:	00dd86b3          	add	a3,s11,a3
    80007244:	0006c683          	lbu	a3,0(a3)
    80007248:	02e7d73b          	divuw	a4,a5,a4
    8000724c:	00200793          	li	a5,2
    80007250:	f8d400a3          	sb	a3,-127(s0)
    80007254:	bca5ece3          	bltu	a1,a0,80006e2c <__printf+0x154>
    80007258:	ce5ff06f          	j	80006f3c <__printf+0x264>
    8000725c:	40e007bb          	negw	a5,a4
    80007260:	00002d97          	auipc	s11,0x2
    80007264:	530d8d93          	addi	s11,s11,1328 # 80009790 <digits>
    80007268:	00f7f693          	andi	a3,a5,15
    8000726c:	00dd86b3          	add	a3,s11,a3
    80007270:	0006c583          	lbu	a1,0(a3)
    80007274:	ff100613          	li	a2,-15
    80007278:	0047d69b          	srliw	a3,a5,0x4
    8000727c:	f8b40023          	sb	a1,-128(s0)
    80007280:	0047d59b          	srliw	a1,a5,0x4
    80007284:	0ac75e63          	bge	a4,a2,80007340 <__printf+0x668>
    80007288:	00f6f693          	andi	a3,a3,15
    8000728c:	00dd86b3          	add	a3,s11,a3
    80007290:	0006c603          	lbu	a2,0(a3)
    80007294:	00f00693          	li	a3,15
    80007298:	0087d79b          	srliw	a5,a5,0x8
    8000729c:	f8c400a3          	sb	a2,-127(s0)
    800072a0:	d8b6e4e3          	bltu	a3,a1,80007028 <__printf+0x350>
    800072a4:	00200793          	li	a5,2
    800072a8:	e2dff06f          	j	800070d4 <__printf+0x3fc>
    800072ac:	00002c97          	auipc	s9,0x2
    800072b0:	4c4c8c93          	addi	s9,s9,1220 # 80009770 <CONSOLE_STATUS+0x760>
    800072b4:	02800513          	li	a0,40
    800072b8:	ef1ff06f          	j	800071a8 <__printf+0x4d0>
    800072bc:	00700793          	li	a5,7
    800072c0:	00600c93          	li	s9,6
    800072c4:	e0dff06f          	j	800070d0 <__printf+0x3f8>
    800072c8:	00700793          	li	a5,7
    800072cc:	00600c93          	li	s9,6
    800072d0:	c69ff06f          	j	80006f38 <__printf+0x260>
    800072d4:	00300793          	li	a5,3
    800072d8:	00200c93          	li	s9,2
    800072dc:	c5dff06f          	j	80006f38 <__printf+0x260>
    800072e0:	00300793          	li	a5,3
    800072e4:	00200c93          	li	s9,2
    800072e8:	de9ff06f          	j	800070d0 <__printf+0x3f8>
    800072ec:	00400793          	li	a5,4
    800072f0:	00300c93          	li	s9,3
    800072f4:	dddff06f          	j	800070d0 <__printf+0x3f8>
    800072f8:	00400793          	li	a5,4
    800072fc:	00300c93          	li	s9,3
    80007300:	c39ff06f          	j	80006f38 <__printf+0x260>
    80007304:	00500793          	li	a5,5
    80007308:	00400c93          	li	s9,4
    8000730c:	c2dff06f          	j	80006f38 <__printf+0x260>
    80007310:	00500793          	li	a5,5
    80007314:	00400c93          	li	s9,4
    80007318:	db9ff06f          	j	800070d0 <__printf+0x3f8>
    8000731c:	00600793          	li	a5,6
    80007320:	00500c93          	li	s9,5
    80007324:	dadff06f          	j	800070d0 <__printf+0x3f8>
    80007328:	00600793          	li	a5,6
    8000732c:	00500c93          	li	s9,5
    80007330:	c09ff06f          	j	80006f38 <__printf+0x260>
    80007334:	00800793          	li	a5,8
    80007338:	00700c93          	li	s9,7
    8000733c:	bfdff06f          	j	80006f38 <__printf+0x260>
    80007340:	00100793          	li	a5,1
    80007344:	d91ff06f          	j	800070d4 <__printf+0x3fc>
    80007348:	00100793          	li	a5,1
    8000734c:	bf1ff06f          	j	80006f3c <__printf+0x264>
    80007350:	00900793          	li	a5,9
    80007354:	00800c93          	li	s9,8
    80007358:	be1ff06f          	j	80006f38 <__printf+0x260>
    8000735c:	00002517          	auipc	a0,0x2
    80007360:	41c50513          	addi	a0,a0,1052 # 80009778 <CONSOLE_STATUS+0x768>
    80007364:	00000097          	auipc	ra,0x0
    80007368:	918080e7          	jalr	-1768(ra) # 80006c7c <panic>

000000008000736c <printfinit>:
    8000736c:	fe010113          	addi	sp,sp,-32
    80007370:	00813823          	sd	s0,16(sp)
    80007374:	00913423          	sd	s1,8(sp)
    80007378:	00113c23          	sd	ra,24(sp)
    8000737c:	02010413          	addi	s0,sp,32
    80007380:	00005497          	auipc	s1,0x5
    80007384:	62048493          	addi	s1,s1,1568 # 8000c9a0 <pr>
    80007388:	00048513          	mv	a0,s1
    8000738c:	00002597          	auipc	a1,0x2
    80007390:	3fc58593          	addi	a1,a1,1020 # 80009788 <CONSOLE_STATUS+0x778>
    80007394:	00000097          	auipc	ra,0x0
    80007398:	5f4080e7          	jalr	1524(ra) # 80007988 <initlock>
    8000739c:	01813083          	ld	ra,24(sp)
    800073a0:	01013403          	ld	s0,16(sp)
    800073a4:	0004ac23          	sw	zero,24(s1)
    800073a8:	00813483          	ld	s1,8(sp)
    800073ac:	02010113          	addi	sp,sp,32
    800073b0:	00008067          	ret

00000000800073b4 <uartinit>:
    800073b4:	ff010113          	addi	sp,sp,-16
    800073b8:	00813423          	sd	s0,8(sp)
    800073bc:	01010413          	addi	s0,sp,16
    800073c0:	100007b7          	lui	a5,0x10000
    800073c4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800073c8:	f8000713          	li	a4,-128
    800073cc:	00e781a3          	sb	a4,3(a5)
    800073d0:	00300713          	li	a4,3
    800073d4:	00e78023          	sb	a4,0(a5)
    800073d8:	000780a3          	sb	zero,1(a5)
    800073dc:	00e781a3          	sb	a4,3(a5)
    800073e0:	00700693          	li	a3,7
    800073e4:	00d78123          	sb	a3,2(a5)
    800073e8:	00e780a3          	sb	a4,1(a5)
    800073ec:	00813403          	ld	s0,8(sp)
    800073f0:	01010113          	addi	sp,sp,16
    800073f4:	00008067          	ret

00000000800073f8 <uartputc>:
    800073f8:	00004797          	auipc	a5,0x4
    800073fc:	2e07a783          	lw	a5,736(a5) # 8000b6d8 <panicked>
    80007400:	00078463          	beqz	a5,80007408 <uartputc+0x10>
    80007404:	0000006f          	j	80007404 <uartputc+0xc>
    80007408:	fd010113          	addi	sp,sp,-48
    8000740c:	02813023          	sd	s0,32(sp)
    80007410:	00913c23          	sd	s1,24(sp)
    80007414:	01213823          	sd	s2,16(sp)
    80007418:	01313423          	sd	s3,8(sp)
    8000741c:	02113423          	sd	ra,40(sp)
    80007420:	03010413          	addi	s0,sp,48
    80007424:	00004917          	auipc	s2,0x4
    80007428:	2bc90913          	addi	s2,s2,700 # 8000b6e0 <uart_tx_r>
    8000742c:	00093783          	ld	a5,0(s2)
    80007430:	00004497          	auipc	s1,0x4
    80007434:	2b848493          	addi	s1,s1,696 # 8000b6e8 <uart_tx_w>
    80007438:	0004b703          	ld	a4,0(s1)
    8000743c:	02078693          	addi	a3,a5,32
    80007440:	00050993          	mv	s3,a0
    80007444:	02e69c63          	bne	a3,a4,8000747c <uartputc+0x84>
    80007448:	00001097          	auipc	ra,0x1
    8000744c:	834080e7          	jalr	-1996(ra) # 80007c7c <push_on>
    80007450:	00093783          	ld	a5,0(s2)
    80007454:	0004b703          	ld	a4,0(s1)
    80007458:	02078793          	addi	a5,a5,32
    8000745c:	00e79463          	bne	a5,a4,80007464 <uartputc+0x6c>
    80007460:	0000006f          	j	80007460 <uartputc+0x68>
    80007464:	00001097          	auipc	ra,0x1
    80007468:	88c080e7          	jalr	-1908(ra) # 80007cf0 <pop_on>
    8000746c:	00093783          	ld	a5,0(s2)
    80007470:	0004b703          	ld	a4,0(s1)
    80007474:	02078693          	addi	a3,a5,32
    80007478:	fce688e3          	beq	a3,a4,80007448 <uartputc+0x50>
    8000747c:	01f77693          	andi	a3,a4,31
    80007480:	00005597          	auipc	a1,0x5
    80007484:	54058593          	addi	a1,a1,1344 # 8000c9c0 <uart_tx_buf>
    80007488:	00d586b3          	add	a3,a1,a3
    8000748c:	00170713          	addi	a4,a4,1
    80007490:	01368023          	sb	s3,0(a3)
    80007494:	00e4b023          	sd	a4,0(s1)
    80007498:	10000637          	lui	a2,0x10000
    8000749c:	02f71063          	bne	a4,a5,800074bc <uartputc+0xc4>
    800074a0:	0340006f          	j	800074d4 <uartputc+0xdc>
    800074a4:	00074703          	lbu	a4,0(a4)
    800074a8:	00f93023          	sd	a5,0(s2)
    800074ac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800074b0:	00093783          	ld	a5,0(s2)
    800074b4:	0004b703          	ld	a4,0(s1)
    800074b8:	00f70e63          	beq	a4,a5,800074d4 <uartputc+0xdc>
    800074bc:	00564683          	lbu	a3,5(a2)
    800074c0:	01f7f713          	andi	a4,a5,31
    800074c4:	00e58733          	add	a4,a1,a4
    800074c8:	0206f693          	andi	a3,a3,32
    800074cc:	00178793          	addi	a5,a5,1
    800074d0:	fc069ae3          	bnez	a3,800074a4 <uartputc+0xac>
    800074d4:	02813083          	ld	ra,40(sp)
    800074d8:	02013403          	ld	s0,32(sp)
    800074dc:	01813483          	ld	s1,24(sp)
    800074e0:	01013903          	ld	s2,16(sp)
    800074e4:	00813983          	ld	s3,8(sp)
    800074e8:	03010113          	addi	sp,sp,48
    800074ec:	00008067          	ret

00000000800074f0 <uartputc_sync>:
    800074f0:	ff010113          	addi	sp,sp,-16
    800074f4:	00813423          	sd	s0,8(sp)
    800074f8:	01010413          	addi	s0,sp,16
    800074fc:	00004717          	auipc	a4,0x4
    80007500:	1dc72703          	lw	a4,476(a4) # 8000b6d8 <panicked>
    80007504:	02071663          	bnez	a4,80007530 <uartputc_sync+0x40>
    80007508:	00050793          	mv	a5,a0
    8000750c:	100006b7          	lui	a3,0x10000
    80007510:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007514:	02077713          	andi	a4,a4,32
    80007518:	fe070ce3          	beqz	a4,80007510 <uartputc_sync+0x20>
    8000751c:	0ff7f793          	andi	a5,a5,255
    80007520:	00f68023          	sb	a5,0(a3)
    80007524:	00813403          	ld	s0,8(sp)
    80007528:	01010113          	addi	sp,sp,16
    8000752c:	00008067          	ret
    80007530:	0000006f          	j	80007530 <uartputc_sync+0x40>

0000000080007534 <uartstart>:
    80007534:	ff010113          	addi	sp,sp,-16
    80007538:	00813423          	sd	s0,8(sp)
    8000753c:	01010413          	addi	s0,sp,16
    80007540:	00004617          	auipc	a2,0x4
    80007544:	1a060613          	addi	a2,a2,416 # 8000b6e0 <uart_tx_r>
    80007548:	00004517          	auipc	a0,0x4
    8000754c:	1a050513          	addi	a0,a0,416 # 8000b6e8 <uart_tx_w>
    80007550:	00063783          	ld	a5,0(a2)
    80007554:	00053703          	ld	a4,0(a0)
    80007558:	04f70263          	beq	a4,a5,8000759c <uartstart+0x68>
    8000755c:	100005b7          	lui	a1,0x10000
    80007560:	00005817          	auipc	a6,0x5
    80007564:	46080813          	addi	a6,a6,1120 # 8000c9c0 <uart_tx_buf>
    80007568:	01c0006f          	j	80007584 <uartstart+0x50>
    8000756c:	0006c703          	lbu	a4,0(a3)
    80007570:	00f63023          	sd	a5,0(a2)
    80007574:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007578:	00063783          	ld	a5,0(a2)
    8000757c:	00053703          	ld	a4,0(a0)
    80007580:	00f70e63          	beq	a4,a5,8000759c <uartstart+0x68>
    80007584:	01f7f713          	andi	a4,a5,31
    80007588:	00e806b3          	add	a3,a6,a4
    8000758c:	0055c703          	lbu	a4,5(a1)
    80007590:	00178793          	addi	a5,a5,1
    80007594:	02077713          	andi	a4,a4,32
    80007598:	fc071ae3          	bnez	a4,8000756c <uartstart+0x38>
    8000759c:	00813403          	ld	s0,8(sp)
    800075a0:	01010113          	addi	sp,sp,16
    800075a4:	00008067          	ret

00000000800075a8 <uartgetc>:
    800075a8:	ff010113          	addi	sp,sp,-16
    800075ac:	00813423          	sd	s0,8(sp)
    800075b0:	01010413          	addi	s0,sp,16
    800075b4:	10000737          	lui	a4,0x10000
    800075b8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800075bc:	0017f793          	andi	a5,a5,1
    800075c0:	00078c63          	beqz	a5,800075d8 <uartgetc+0x30>
    800075c4:	00074503          	lbu	a0,0(a4)
    800075c8:	0ff57513          	andi	a0,a0,255
    800075cc:	00813403          	ld	s0,8(sp)
    800075d0:	01010113          	addi	sp,sp,16
    800075d4:	00008067          	ret
    800075d8:	fff00513          	li	a0,-1
    800075dc:	ff1ff06f          	j	800075cc <uartgetc+0x24>

00000000800075e0 <uartintr>:
    800075e0:	100007b7          	lui	a5,0x10000
    800075e4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800075e8:	0017f793          	andi	a5,a5,1
    800075ec:	0a078463          	beqz	a5,80007694 <uartintr+0xb4>
    800075f0:	fe010113          	addi	sp,sp,-32
    800075f4:	00813823          	sd	s0,16(sp)
    800075f8:	00913423          	sd	s1,8(sp)
    800075fc:	00113c23          	sd	ra,24(sp)
    80007600:	02010413          	addi	s0,sp,32
    80007604:	100004b7          	lui	s1,0x10000
    80007608:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000760c:	0ff57513          	andi	a0,a0,255
    80007610:	fffff097          	auipc	ra,0xfffff
    80007614:	534080e7          	jalr	1332(ra) # 80006b44 <consoleintr>
    80007618:	0054c783          	lbu	a5,5(s1)
    8000761c:	0017f793          	andi	a5,a5,1
    80007620:	fe0794e3          	bnez	a5,80007608 <uartintr+0x28>
    80007624:	00004617          	auipc	a2,0x4
    80007628:	0bc60613          	addi	a2,a2,188 # 8000b6e0 <uart_tx_r>
    8000762c:	00004517          	auipc	a0,0x4
    80007630:	0bc50513          	addi	a0,a0,188 # 8000b6e8 <uart_tx_w>
    80007634:	00063783          	ld	a5,0(a2)
    80007638:	00053703          	ld	a4,0(a0)
    8000763c:	04f70263          	beq	a4,a5,80007680 <uartintr+0xa0>
    80007640:	100005b7          	lui	a1,0x10000
    80007644:	00005817          	auipc	a6,0x5
    80007648:	37c80813          	addi	a6,a6,892 # 8000c9c0 <uart_tx_buf>
    8000764c:	01c0006f          	j	80007668 <uartintr+0x88>
    80007650:	0006c703          	lbu	a4,0(a3)
    80007654:	00f63023          	sd	a5,0(a2)
    80007658:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000765c:	00063783          	ld	a5,0(a2)
    80007660:	00053703          	ld	a4,0(a0)
    80007664:	00f70e63          	beq	a4,a5,80007680 <uartintr+0xa0>
    80007668:	01f7f713          	andi	a4,a5,31
    8000766c:	00e806b3          	add	a3,a6,a4
    80007670:	0055c703          	lbu	a4,5(a1)
    80007674:	00178793          	addi	a5,a5,1
    80007678:	02077713          	andi	a4,a4,32
    8000767c:	fc071ae3          	bnez	a4,80007650 <uartintr+0x70>
    80007680:	01813083          	ld	ra,24(sp)
    80007684:	01013403          	ld	s0,16(sp)
    80007688:	00813483          	ld	s1,8(sp)
    8000768c:	02010113          	addi	sp,sp,32
    80007690:	00008067          	ret
    80007694:	00004617          	auipc	a2,0x4
    80007698:	04c60613          	addi	a2,a2,76 # 8000b6e0 <uart_tx_r>
    8000769c:	00004517          	auipc	a0,0x4
    800076a0:	04c50513          	addi	a0,a0,76 # 8000b6e8 <uart_tx_w>
    800076a4:	00063783          	ld	a5,0(a2)
    800076a8:	00053703          	ld	a4,0(a0)
    800076ac:	04f70263          	beq	a4,a5,800076f0 <uartintr+0x110>
    800076b0:	100005b7          	lui	a1,0x10000
    800076b4:	00005817          	auipc	a6,0x5
    800076b8:	30c80813          	addi	a6,a6,780 # 8000c9c0 <uart_tx_buf>
    800076bc:	01c0006f          	j	800076d8 <uartintr+0xf8>
    800076c0:	0006c703          	lbu	a4,0(a3)
    800076c4:	00f63023          	sd	a5,0(a2)
    800076c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800076cc:	00063783          	ld	a5,0(a2)
    800076d0:	00053703          	ld	a4,0(a0)
    800076d4:	02f70063          	beq	a4,a5,800076f4 <uartintr+0x114>
    800076d8:	01f7f713          	andi	a4,a5,31
    800076dc:	00e806b3          	add	a3,a6,a4
    800076e0:	0055c703          	lbu	a4,5(a1)
    800076e4:	00178793          	addi	a5,a5,1
    800076e8:	02077713          	andi	a4,a4,32
    800076ec:	fc071ae3          	bnez	a4,800076c0 <uartintr+0xe0>
    800076f0:	00008067          	ret
    800076f4:	00008067          	ret

00000000800076f8 <kinit>:
    800076f8:	fc010113          	addi	sp,sp,-64
    800076fc:	02913423          	sd	s1,40(sp)
    80007700:	fffff7b7          	lui	a5,0xfffff
    80007704:	00006497          	auipc	s1,0x6
    80007708:	2db48493          	addi	s1,s1,731 # 8000d9df <end+0xfff>
    8000770c:	02813823          	sd	s0,48(sp)
    80007710:	01313c23          	sd	s3,24(sp)
    80007714:	00f4f4b3          	and	s1,s1,a5
    80007718:	02113c23          	sd	ra,56(sp)
    8000771c:	03213023          	sd	s2,32(sp)
    80007720:	01413823          	sd	s4,16(sp)
    80007724:	01513423          	sd	s5,8(sp)
    80007728:	04010413          	addi	s0,sp,64
    8000772c:	000017b7          	lui	a5,0x1
    80007730:	01100993          	li	s3,17
    80007734:	00f487b3          	add	a5,s1,a5
    80007738:	01b99993          	slli	s3,s3,0x1b
    8000773c:	06f9e063          	bltu	s3,a5,8000779c <kinit+0xa4>
    80007740:	00005a97          	auipc	s5,0x5
    80007744:	2a0a8a93          	addi	s5,s5,672 # 8000c9e0 <end>
    80007748:	0754ec63          	bltu	s1,s5,800077c0 <kinit+0xc8>
    8000774c:	0734fa63          	bgeu	s1,s3,800077c0 <kinit+0xc8>
    80007750:	00088a37          	lui	s4,0x88
    80007754:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007758:	00004917          	auipc	s2,0x4
    8000775c:	f9890913          	addi	s2,s2,-104 # 8000b6f0 <kmem>
    80007760:	00ca1a13          	slli	s4,s4,0xc
    80007764:	0140006f          	j	80007778 <kinit+0x80>
    80007768:	000017b7          	lui	a5,0x1
    8000776c:	00f484b3          	add	s1,s1,a5
    80007770:	0554e863          	bltu	s1,s5,800077c0 <kinit+0xc8>
    80007774:	0534f663          	bgeu	s1,s3,800077c0 <kinit+0xc8>
    80007778:	00001637          	lui	a2,0x1
    8000777c:	00100593          	li	a1,1
    80007780:	00048513          	mv	a0,s1
    80007784:	00000097          	auipc	ra,0x0
    80007788:	5e4080e7          	jalr	1508(ra) # 80007d68 <__memset>
    8000778c:	00093783          	ld	a5,0(s2)
    80007790:	00f4b023          	sd	a5,0(s1)
    80007794:	00993023          	sd	s1,0(s2)
    80007798:	fd4498e3          	bne	s1,s4,80007768 <kinit+0x70>
    8000779c:	03813083          	ld	ra,56(sp)
    800077a0:	03013403          	ld	s0,48(sp)
    800077a4:	02813483          	ld	s1,40(sp)
    800077a8:	02013903          	ld	s2,32(sp)
    800077ac:	01813983          	ld	s3,24(sp)
    800077b0:	01013a03          	ld	s4,16(sp)
    800077b4:	00813a83          	ld	s5,8(sp)
    800077b8:	04010113          	addi	sp,sp,64
    800077bc:	00008067          	ret
    800077c0:	00002517          	auipc	a0,0x2
    800077c4:	fe850513          	addi	a0,a0,-24 # 800097a8 <digits+0x18>
    800077c8:	fffff097          	auipc	ra,0xfffff
    800077cc:	4b4080e7          	jalr	1204(ra) # 80006c7c <panic>

00000000800077d0 <freerange>:
    800077d0:	fc010113          	addi	sp,sp,-64
    800077d4:	000017b7          	lui	a5,0x1
    800077d8:	02913423          	sd	s1,40(sp)
    800077dc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800077e0:	009504b3          	add	s1,a0,s1
    800077e4:	fffff537          	lui	a0,0xfffff
    800077e8:	02813823          	sd	s0,48(sp)
    800077ec:	02113c23          	sd	ra,56(sp)
    800077f0:	03213023          	sd	s2,32(sp)
    800077f4:	01313c23          	sd	s3,24(sp)
    800077f8:	01413823          	sd	s4,16(sp)
    800077fc:	01513423          	sd	s5,8(sp)
    80007800:	01613023          	sd	s6,0(sp)
    80007804:	04010413          	addi	s0,sp,64
    80007808:	00a4f4b3          	and	s1,s1,a0
    8000780c:	00f487b3          	add	a5,s1,a5
    80007810:	06f5e463          	bltu	a1,a5,80007878 <freerange+0xa8>
    80007814:	00005a97          	auipc	s5,0x5
    80007818:	1cca8a93          	addi	s5,s5,460 # 8000c9e0 <end>
    8000781c:	0954e263          	bltu	s1,s5,800078a0 <freerange+0xd0>
    80007820:	01100993          	li	s3,17
    80007824:	01b99993          	slli	s3,s3,0x1b
    80007828:	0734fc63          	bgeu	s1,s3,800078a0 <freerange+0xd0>
    8000782c:	00058a13          	mv	s4,a1
    80007830:	00004917          	auipc	s2,0x4
    80007834:	ec090913          	addi	s2,s2,-320 # 8000b6f0 <kmem>
    80007838:	00002b37          	lui	s6,0x2
    8000783c:	0140006f          	j	80007850 <freerange+0x80>
    80007840:	000017b7          	lui	a5,0x1
    80007844:	00f484b3          	add	s1,s1,a5
    80007848:	0554ec63          	bltu	s1,s5,800078a0 <freerange+0xd0>
    8000784c:	0534fa63          	bgeu	s1,s3,800078a0 <freerange+0xd0>
    80007850:	00001637          	lui	a2,0x1
    80007854:	00100593          	li	a1,1
    80007858:	00048513          	mv	a0,s1
    8000785c:	00000097          	auipc	ra,0x0
    80007860:	50c080e7          	jalr	1292(ra) # 80007d68 <__memset>
    80007864:	00093703          	ld	a4,0(s2)
    80007868:	016487b3          	add	a5,s1,s6
    8000786c:	00e4b023          	sd	a4,0(s1)
    80007870:	00993023          	sd	s1,0(s2)
    80007874:	fcfa76e3          	bgeu	s4,a5,80007840 <freerange+0x70>
    80007878:	03813083          	ld	ra,56(sp)
    8000787c:	03013403          	ld	s0,48(sp)
    80007880:	02813483          	ld	s1,40(sp)
    80007884:	02013903          	ld	s2,32(sp)
    80007888:	01813983          	ld	s3,24(sp)
    8000788c:	01013a03          	ld	s4,16(sp)
    80007890:	00813a83          	ld	s5,8(sp)
    80007894:	00013b03          	ld	s6,0(sp)
    80007898:	04010113          	addi	sp,sp,64
    8000789c:	00008067          	ret
    800078a0:	00002517          	auipc	a0,0x2
    800078a4:	f0850513          	addi	a0,a0,-248 # 800097a8 <digits+0x18>
    800078a8:	fffff097          	auipc	ra,0xfffff
    800078ac:	3d4080e7          	jalr	980(ra) # 80006c7c <panic>

00000000800078b0 <kfree>:
    800078b0:	fe010113          	addi	sp,sp,-32
    800078b4:	00813823          	sd	s0,16(sp)
    800078b8:	00113c23          	sd	ra,24(sp)
    800078bc:	00913423          	sd	s1,8(sp)
    800078c0:	02010413          	addi	s0,sp,32
    800078c4:	03451793          	slli	a5,a0,0x34
    800078c8:	04079c63          	bnez	a5,80007920 <kfree+0x70>
    800078cc:	00005797          	auipc	a5,0x5
    800078d0:	11478793          	addi	a5,a5,276 # 8000c9e0 <end>
    800078d4:	00050493          	mv	s1,a0
    800078d8:	04f56463          	bltu	a0,a5,80007920 <kfree+0x70>
    800078dc:	01100793          	li	a5,17
    800078e0:	01b79793          	slli	a5,a5,0x1b
    800078e4:	02f57e63          	bgeu	a0,a5,80007920 <kfree+0x70>
    800078e8:	00001637          	lui	a2,0x1
    800078ec:	00100593          	li	a1,1
    800078f0:	00000097          	auipc	ra,0x0
    800078f4:	478080e7          	jalr	1144(ra) # 80007d68 <__memset>
    800078f8:	00004797          	auipc	a5,0x4
    800078fc:	df878793          	addi	a5,a5,-520 # 8000b6f0 <kmem>
    80007900:	0007b703          	ld	a4,0(a5)
    80007904:	01813083          	ld	ra,24(sp)
    80007908:	01013403          	ld	s0,16(sp)
    8000790c:	00e4b023          	sd	a4,0(s1)
    80007910:	0097b023          	sd	s1,0(a5)
    80007914:	00813483          	ld	s1,8(sp)
    80007918:	02010113          	addi	sp,sp,32
    8000791c:	00008067          	ret
    80007920:	00002517          	auipc	a0,0x2
    80007924:	e8850513          	addi	a0,a0,-376 # 800097a8 <digits+0x18>
    80007928:	fffff097          	auipc	ra,0xfffff
    8000792c:	354080e7          	jalr	852(ra) # 80006c7c <panic>

0000000080007930 <kalloc>:
    80007930:	fe010113          	addi	sp,sp,-32
    80007934:	00813823          	sd	s0,16(sp)
    80007938:	00913423          	sd	s1,8(sp)
    8000793c:	00113c23          	sd	ra,24(sp)
    80007940:	02010413          	addi	s0,sp,32
    80007944:	00004797          	auipc	a5,0x4
    80007948:	dac78793          	addi	a5,a5,-596 # 8000b6f0 <kmem>
    8000794c:	0007b483          	ld	s1,0(a5)
    80007950:	02048063          	beqz	s1,80007970 <kalloc+0x40>
    80007954:	0004b703          	ld	a4,0(s1)
    80007958:	00001637          	lui	a2,0x1
    8000795c:	00500593          	li	a1,5
    80007960:	00048513          	mv	a0,s1
    80007964:	00e7b023          	sd	a4,0(a5)
    80007968:	00000097          	auipc	ra,0x0
    8000796c:	400080e7          	jalr	1024(ra) # 80007d68 <__memset>
    80007970:	01813083          	ld	ra,24(sp)
    80007974:	01013403          	ld	s0,16(sp)
    80007978:	00048513          	mv	a0,s1
    8000797c:	00813483          	ld	s1,8(sp)
    80007980:	02010113          	addi	sp,sp,32
    80007984:	00008067          	ret

0000000080007988 <initlock>:
    80007988:	ff010113          	addi	sp,sp,-16
    8000798c:	00813423          	sd	s0,8(sp)
    80007990:	01010413          	addi	s0,sp,16
    80007994:	00813403          	ld	s0,8(sp)
    80007998:	00b53423          	sd	a1,8(a0)
    8000799c:	00052023          	sw	zero,0(a0)
    800079a0:	00053823          	sd	zero,16(a0)
    800079a4:	01010113          	addi	sp,sp,16
    800079a8:	00008067          	ret

00000000800079ac <acquire>:
    800079ac:	fe010113          	addi	sp,sp,-32
    800079b0:	00813823          	sd	s0,16(sp)
    800079b4:	00913423          	sd	s1,8(sp)
    800079b8:	00113c23          	sd	ra,24(sp)
    800079bc:	01213023          	sd	s2,0(sp)
    800079c0:	02010413          	addi	s0,sp,32
    800079c4:	00050493          	mv	s1,a0
    800079c8:	10002973          	csrr	s2,sstatus
    800079cc:	100027f3          	csrr	a5,sstatus
    800079d0:	ffd7f793          	andi	a5,a5,-3
    800079d4:	10079073          	csrw	sstatus,a5
    800079d8:	fffff097          	auipc	ra,0xfffff
    800079dc:	8e8080e7          	jalr	-1816(ra) # 800062c0 <mycpu>
    800079e0:	07852783          	lw	a5,120(a0)
    800079e4:	06078e63          	beqz	a5,80007a60 <acquire+0xb4>
    800079e8:	fffff097          	auipc	ra,0xfffff
    800079ec:	8d8080e7          	jalr	-1832(ra) # 800062c0 <mycpu>
    800079f0:	07852783          	lw	a5,120(a0)
    800079f4:	0004a703          	lw	a4,0(s1)
    800079f8:	0017879b          	addiw	a5,a5,1
    800079fc:	06f52c23          	sw	a5,120(a0)
    80007a00:	04071063          	bnez	a4,80007a40 <acquire+0x94>
    80007a04:	00100713          	li	a4,1
    80007a08:	00070793          	mv	a5,a4
    80007a0c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007a10:	0007879b          	sext.w	a5,a5
    80007a14:	fe079ae3          	bnez	a5,80007a08 <acquire+0x5c>
    80007a18:	0ff0000f          	fence
    80007a1c:	fffff097          	auipc	ra,0xfffff
    80007a20:	8a4080e7          	jalr	-1884(ra) # 800062c0 <mycpu>
    80007a24:	01813083          	ld	ra,24(sp)
    80007a28:	01013403          	ld	s0,16(sp)
    80007a2c:	00a4b823          	sd	a0,16(s1)
    80007a30:	00013903          	ld	s2,0(sp)
    80007a34:	00813483          	ld	s1,8(sp)
    80007a38:	02010113          	addi	sp,sp,32
    80007a3c:	00008067          	ret
    80007a40:	0104b903          	ld	s2,16(s1)
    80007a44:	fffff097          	auipc	ra,0xfffff
    80007a48:	87c080e7          	jalr	-1924(ra) # 800062c0 <mycpu>
    80007a4c:	faa91ce3          	bne	s2,a0,80007a04 <acquire+0x58>
    80007a50:	00002517          	auipc	a0,0x2
    80007a54:	d6050513          	addi	a0,a0,-672 # 800097b0 <digits+0x20>
    80007a58:	fffff097          	auipc	ra,0xfffff
    80007a5c:	224080e7          	jalr	548(ra) # 80006c7c <panic>
    80007a60:	00195913          	srli	s2,s2,0x1
    80007a64:	fffff097          	auipc	ra,0xfffff
    80007a68:	85c080e7          	jalr	-1956(ra) # 800062c0 <mycpu>
    80007a6c:	00197913          	andi	s2,s2,1
    80007a70:	07252e23          	sw	s2,124(a0)
    80007a74:	f75ff06f          	j	800079e8 <acquire+0x3c>

0000000080007a78 <release>:
    80007a78:	fe010113          	addi	sp,sp,-32
    80007a7c:	00813823          	sd	s0,16(sp)
    80007a80:	00113c23          	sd	ra,24(sp)
    80007a84:	00913423          	sd	s1,8(sp)
    80007a88:	01213023          	sd	s2,0(sp)
    80007a8c:	02010413          	addi	s0,sp,32
    80007a90:	00052783          	lw	a5,0(a0)
    80007a94:	00079a63          	bnez	a5,80007aa8 <release+0x30>
    80007a98:	00002517          	auipc	a0,0x2
    80007a9c:	d2050513          	addi	a0,a0,-736 # 800097b8 <digits+0x28>
    80007aa0:	fffff097          	auipc	ra,0xfffff
    80007aa4:	1dc080e7          	jalr	476(ra) # 80006c7c <panic>
    80007aa8:	01053903          	ld	s2,16(a0)
    80007aac:	00050493          	mv	s1,a0
    80007ab0:	fffff097          	auipc	ra,0xfffff
    80007ab4:	810080e7          	jalr	-2032(ra) # 800062c0 <mycpu>
    80007ab8:	fea910e3          	bne	s2,a0,80007a98 <release+0x20>
    80007abc:	0004b823          	sd	zero,16(s1)
    80007ac0:	0ff0000f          	fence
    80007ac4:	0f50000f          	fence	iorw,ow
    80007ac8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007acc:	ffffe097          	auipc	ra,0xffffe
    80007ad0:	7f4080e7          	jalr	2036(ra) # 800062c0 <mycpu>
    80007ad4:	100027f3          	csrr	a5,sstatus
    80007ad8:	0027f793          	andi	a5,a5,2
    80007adc:	04079a63          	bnez	a5,80007b30 <release+0xb8>
    80007ae0:	07852783          	lw	a5,120(a0)
    80007ae4:	02f05e63          	blez	a5,80007b20 <release+0xa8>
    80007ae8:	fff7871b          	addiw	a4,a5,-1
    80007aec:	06e52c23          	sw	a4,120(a0)
    80007af0:	00071c63          	bnez	a4,80007b08 <release+0x90>
    80007af4:	07c52783          	lw	a5,124(a0)
    80007af8:	00078863          	beqz	a5,80007b08 <release+0x90>
    80007afc:	100027f3          	csrr	a5,sstatus
    80007b00:	0027e793          	ori	a5,a5,2
    80007b04:	10079073          	csrw	sstatus,a5
    80007b08:	01813083          	ld	ra,24(sp)
    80007b0c:	01013403          	ld	s0,16(sp)
    80007b10:	00813483          	ld	s1,8(sp)
    80007b14:	00013903          	ld	s2,0(sp)
    80007b18:	02010113          	addi	sp,sp,32
    80007b1c:	00008067          	ret
    80007b20:	00002517          	auipc	a0,0x2
    80007b24:	cb850513          	addi	a0,a0,-840 # 800097d8 <digits+0x48>
    80007b28:	fffff097          	auipc	ra,0xfffff
    80007b2c:	154080e7          	jalr	340(ra) # 80006c7c <panic>
    80007b30:	00002517          	auipc	a0,0x2
    80007b34:	c9050513          	addi	a0,a0,-880 # 800097c0 <digits+0x30>
    80007b38:	fffff097          	auipc	ra,0xfffff
    80007b3c:	144080e7          	jalr	324(ra) # 80006c7c <panic>

0000000080007b40 <holding>:
    80007b40:	00052783          	lw	a5,0(a0)
    80007b44:	00079663          	bnez	a5,80007b50 <holding+0x10>
    80007b48:	00000513          	li	a0,0
    80007b4c:	00008067          	ret
    80007b50:	fe010113          	addi	sp,sp,-32
    80007b54:	00813823          	sd	s0,16(sp)
    80007b58:	00913423          	sd	s1,8(sp)
    80007b5c:	00113c23          	sd	ra,24(sp)
    80007b60:	02010413          	addi	s0,sp,32
    80007b64:	01053483          	ld	s1,16(a0)
    80007b68:	ffffe097          	auipc	ra,0xffffe
    80007b6c:	758080e7          	jalr	1880(ra) # 800062c0 <mycpu>
    80007b70:	01813083          	ld	ra,24(sp)
    80007b74:	01013403          	ld	s0,16(sp)
    80007b78:	40a48533          	sub	a0,s1,a0
    80007b7c:	00153513          	seqz	a0,a0
    80007b80:	00813483          	ld	s1,8(sp)
    80007b84:	02010113          	addi	sp,sp,32
    80007b88:	00008067          	ret

0000000080007b8c <push_off>:
    80007b8c:	fe010113          	addi	sp,sp,-32
    80007b90:	00813823          	sd	s0,16(sp)
    80007b94:	00113c23          	sd	ra,24(sp)
    80007b98:	00913423          	sd	s1,8(sp)
    80007b9c:	02010413          	addi	s0,sp,32
    80007ba0:	100024f3          	csrr	s1,sstatus
    80007ba4:	100027f3          	csrr	a5,sstatus
    80007ba8:	ffd7f793          	andi	a5,a5,-3
    80007bac:	10079073          	csrw	sstatus,a5
    80007bb0:	ffffe097          	auipc	ra,0xffffe
    80007bb4:	710080e7          	jalr	1808(ra) # 800062c0 <mycpu>
    80007bb8:	07852783          	lw	a5,120(a0)
    80007bbc:	02078663          	beqz	a5,80007be8 <push_off+0x5c>
    80007bc0:	ffffe097          	auipc	ra,0xffffe
    80007bc4:	700080e7          	jalr	1792(ra) # 800062c0 <mycpu>
    80007bc8:	07852783          	lw	a5,120(a0)
    80007bcc:	01813083          	ld	ra,24(sp)
    80007bd0:	01013403          	ld	s0,16(sp)
    80007bd4:	0017879b          	addiw	a5,a5,1
    80007bd8:	06f52c23          	sw	a5,120(a0)
    80007bdc:	00813483          	ld	s1,8(sp)
    80007be0:	02010113          	addi	sp,sp,32
    80007be4:	00008067          	ret
    80007be8:	0014d493          	srli	s1,s1,0x1
    80007bec:	ffffe097          	auipc	ra,0xffffe
    80007bf0:	6d4080e7          	jalr	1748(ra) # 800062c0 <mycpu>
    80007bf4:	0014f493          	andi	s1,s1,1
    80007bf8:	06952e23          	sw	s1,124(a0)
    80007bfc:	fc5ff06f          	j	80007bc0 <push_off+0x34>

0000000080007c00 <pop_off>:
    80007c00:	ff010113          	addi	sp,sp,-16
    80007c04:	00813023          	sd	s0,0(sp)
    80007c08:	00113423          	sd	ra,8(sp)
    80007c0c:	01010413          	addi	s0,sp,16
    80007c10:	ffffe097          	auipc	ra,0xffffe
    80007c14:	6b0080e7          	jalr	1712(ra) # 800062c0 <mycpu>
    80007c18:	100027f3          	csrr	a5,sstatus
    80007c1c:	0027f793          	andi	a5,a5,2
    80007c20:	04079663          	bnez	a5,80007c6c <pop_off+0x6c>
    80007c24:	07852783          	lw	a5,120(a0)
    80007c28:	02f05a63          	blez	a5,80007c5c <pop_off+0x5c>
    80007c2c:	fff7871b          	addiw	a4,a5,-1
    80007c30:	06e52c23          	sw	a4,120(a0)
    80007c34:	00071c63          	bnez	a4,80007c4c <pop_off+0x4c>
    80007c38:	07c52783          	lw	a5,124(a0)
    80007c3c:	00078863          	beqz	a5,80007c4c <pop_off+0x4c>
    80007c40:	100027f3          	csrr	a5,sstatus
    80007c44:	0027e793          	ori	a5,a5,2
    80007c48:	10079073          	csrw	sstatus,a5
    80007c4c:	00813083          	ld	ra,8(sp)
    80007c50:	00013403          	ld	s0,0(sp)
    80007c54:	01010113          	addi	sp,sp,16
    80007c58:	00008067          	ret
    80007c5c:	00002517          	auipc	a0,0x2
    80007c60:	b7c50513          	addi	a0,a0,-1156 # 800097d8 <digits+0x48>
    80007c64:	fffff097          	auipc	ra,0xfffff
    80007c68:	018080e7          	jalr	24(ra) # 80006c7c <panic>
    80007c6c:	00002517          	auipc	a0,0x2
    80007c70:	b5450513          	addi	a0,a0,-1196 # 800097c0 <digits+0x30>
    80007c74:	fffff097          	auipc	ra,0xfffff
    80007c78:	008080e7          	jalr	8(ra) # 80006c7c <panic>

0000000080007c7c <push_on>:
    80007c7c:	fe010113          	addi	sp,sp,-32
    80007c80:	00813823          	sd	s0,16(sp)
    80007c84:	00113c23          	sd	ra,24(sp)
    80007c88:	00913423          	sd	s1,8(sp)
    80007c8c:	02010413          	addi	s0,sp,32
    80007c90:	100024f3          	csrr	s1,sstatus
    80007c94:	100027f3          	csrr	a5,sstatus
    80007c98:	0027e793          	ori	a5,a5,2
    80007c9c:	10079073          	csrw	sstatus,a5
    80007ca0:	ffffe097          	auipc	ra,0xffffe
    80007ca4:	620080e7          	jalr	1568(ra) # 800062c0 <mycpu>
    80007ca8:	07852783          	lw	a5,120(a0)
    80007cac:	02078663          	beqz	a5,80007cd8 <push_on+0x5c>
    80007cb0:	ffffe097          	auipc	ra,0xffffe
    80007cb4:	610080e7          	jalr	1552(ra) # 800062c0 <mycpu>
    80007cb8:	07852783          	lw	a5,120(a0)
    80007cbc:	01813083          	ld	ra,24(sp)
    80007cc0:	01013403          	ld	s0,16(sp)
    80007cc4:	0017879b          	addiw	a5,a5,1
    80007cc8:	06f52c23          	sw	a5,120(a0)
    80007ccc:	00813483          	ld	s1,8(sp)
    80007cd0:	02010113          	addi	sp,sp,32
    80007cd4:	00008067          	ret
    80007cd8:	0014d493          	srli	s1,s1,0x1
    80007cdc:	ffffe097          	auipc	ra,0xffffe
    80007ce0:	5e4080e7          	jalr	1508(ra) # 800062c0 <mycpu>
    80007ce4:	0014f493          	andi	s1,s1,1
    80007ce8:	06952e23          	sw	s1,124(a0)
    80007cec:	fc5ff06f          	j	80007cb0 <push_on+0x34>

0000000080007cf0 <pop_on>:
    80007cf0:	ff010113          	addi	sp,sp,-16
    80007cf4:	00813023          	sd	s0,0(sp)
    80007cf8:	00113423          	sd	ra,8(sp)
    80007cfc:	01010413          	addi	s0,sp,16
    80007d00:	ffffe097          	auipc	ra,0xffffe
    80007d04:	5c0080e7          	jalr	1472(ra) # 800062c0 <mycpu>
    80007d08:	100027f3          	csrr	a5,sstatus
    80007d0c:	0027f793          	andi	a5,a5,2
    80007d10:	04078463          	beqz	a5,80007d58 <pop_on+0x68>
    80007d14:	07852783          	lw	a5,120(a0)
    80007d18:	02f05863          	blez	a5,80007d48 <pop_on+0x58>
    80007d1c:	fff7879b          	addiw	a5,a5,-1
    80007d20:	06f52c23          	sw	a5,120(a0)
    80007d24:	07853783          	ld	a5,120(a0)
    80007d28:	00079863          	bnez	a5,80007d38 <pop_on+0x48>
    80007d2c:	100027f3          	csrr	a5,sstatus
    80007d30:	ffd7f793          	andi	a5,a5,-3
    80007d34:	10079073          	csrw	sstatus,a5
    80007d38:	00813083          	ld	ra,8(sp)
    80007d3c:	00013403          	ld	s0,0(sp)
    80007d40:	01010113          	addi	sp,sp,16
    80007d44:	00008067          	ret
    80007d48:	00002517          	auipc	a0,0x2
    80007d4c:	ab850513          	addi	a0,a0,-1352 # 80009800 <digits+0x70>
    80007d50:	fffff097          	auipc	ra,0xfffff
    80007d54:	f2c080e7          	jalr	-212(ra) # 80006c7c <panic>
    80007d58:	00002517          	auipc	a0,0x2
    80007d5c:	a8850513          	addi	a0,a0,-1400 # 800097e0 <digits+0x50>
    80007d60:	fffff097          	auipc	ra,0xfffff
    80007d64:	f1c080e7          	jalr	-228(ra) # 80006c7c <panic>

0000000080007d68 <__memset>:
    80007d68:	ff010113          	addi	sp,sp,-16
    80007d6c:	00813423          	sd	s0,8(sp)
    80007d70:	01010413          	addi	s0,sp,16
    80007d74:	1a060e63          	beqz	a2,80007f30 <__memset+0x1c8>
    80007d78:	40a007b3          	neg	a5,a0
    80007d7c:	0077f793          	andi	a5,a5,7
    80007d80:	00778693          	addi	a3,a5,7
    80007d84:	00b00813          	li	a6,11
    80007d88:	0ff5f593          	andi	a1,a1,255
    80007d8c:	fff6071b          	addiw	a4,a2,-1
    80007d90:	1b06e663          	bltu	a3,a6,80007f3c <__memset+0x1d4>
    80007d94:	1cd76463          	bltu	a4,a3,80007f5c <__memset+0x1f4>
    80007d98:	1a078e63          	beqz	a5,80007f54 <__memset+0x1ec>
    80007d9c:	00b50023          	sb	a1,0(a0)
    80007da0:	00100713          	li	a4,1
    80007da4:	1ae78463          	beq	a5,a4,80007f4c <__memset+0x1e4>
    80007da8:	00b500a3          	sb	a1,1(a0)
    80007dac:	00200713          	li	a4,2
    80007db0:	1ae78a63          	beq	a5,a4,80007f64 <__memset+0x1fc>
    80007db4:	00b50123          	sb	a1,2(a0)
    80007db8:	00300713          	li	a4,3
    80007dbc:	18e78463          	beq	a5,a4,80007f44 <__memset+0x1dc>
    80007dc0:	00b501a3          	sb	a1,3(a0)
    80007dc4:	00400713          	li	a4,4
    80007dc8:	1ae78263          	beq	a5,a4,80007f6c <__memset+0x204>
    80007dcc:	00b50223          	sb	a1,4(a0)
    80007dd0:	00500713          	li	a4,5
    80007dd4:	1ae78063          	beq	a5,a4,80007f74 <__memset+0x20c>
    80007dd8:	00b502a3          	sb	a1,5(a0)
    80007ddc:	00700713          	li	a4,7
    80007de0:	18e79e63          	bne	a5,a4,80007f7c <__memset+0x214>
    80007de4:	00b50323          	sb	a1,6(a0)
    80007de8:	00700e93          	li	t4,7
    80007dec:	00859713          	slli	a4,a1,0x8
    80007df0:	00e5e733          	or	a4,a1,a4
    80007df4:	01059e13          	slli	t3,a1,0x10
    80007df8:	01c76e33          	or	t3,a4,t3
    80007dfc:	01859313          	slli	t1,a1,0x18
    80007e00:	006e6333          	or	t1,t3,t1
    80007e04:	02059893          	slli	a7,a1,0x20
    80007e08:	40f60e3b          	subw	t3,a2,a5
    80007e0c:	011368b3          	or	a7,t1,a7
    80007e10:	02859813          	slli	a6,a1,0x28
    80007e14:	0108e833          	or	a6,a7,a6
    80007e18:	03059693          	slli	a3,a1,0x30
    80007e1c:	003e589b          	srliw	a7,t3,0x3
    80007e20:	00d866b3          	or	a3,a6,a3
    80007e24:	03859713          	slli	a4,a1,0x38
    80007e28:	00389813          	slli	a6,a7,0x3
    80007e2c:	00f507b3          	add	a5,a0,a5
    80007e30:	00e6e733          	or	a4,a3,a4
    80007e34:	000e089b          	sext.w	a7,t3
    80007e38:	00f806b3          	add	a3,a6,a5
    80007e3c:	00e7b023          	sd	a4,0(a5)
    80007e40:	00878793          	addi	a5,a5,8
    80007e44:	fed79ce3          	bne	a5,a3,80007e3c <__memset+0xd4>
    80007e48:	ff8e7793          	andi	a5,t3,-8
    80007e4c:	0007871b          	sext.w	a4,a5
    80007e50:	01d787bb          	addw	a5,a5,t4
    80007e54:	0ce88e63          	beq	a7,a4,80007f30 <__memset+0x1c8>
    80007e58:	00f50733          	add	a4,a0,a5
    80007e5c:	00b70023          	sb	a1,0(a4)
    80007e60:	0017871b          	addiw	a4,a5,1
    80007e64:	0cc77663          	bgeu	a4,a2,80007f30 <__memset+0x1c8>
    80007e68:	00e50733          	add	a4,a0,a4
    80007e6c:	00b70023          	sb	a1,0(a4)
    80007e70:	0027871b          	addiw	a4,a5,2
    80007e74:	0ac77e63          	bgeu	a4,a2,80007f30 <__memset+0x1c8>
    80007e78:	00e50733          	add	a4,a0,a4
    80007e7c:	00b70023          	sb	a1,0(a4)
    80007e80:	0037871b          	addiw	a4,a5,3
    80007e84:	0ac77663          	bgeu	a4,a2,80007f30 <__memset+0x1c8>
    80007e88:	00e50733          	add	a4,a0,a4
    80007e8c:	00b70023          	sb	a1,0(a4)
    80007e90:	0047871b          	addiw	a4,a5,4
    80007e94:	08c77e63          	bgeu	a4,a2,80007f30 <__memset+0x1c8>
    80007e98:	00e50733          	add	a4,a0,a4
    80007e9c:	00b70023          	sb	a1,0(a4)
    80007ea0:	0057871b          	addiw	a4,a5,5
    80007ea4:	08c77663          	bgeu	a4,a2,80007f30 <__memset+0x1c8>
    80007ea8:	00e50733          	add	a4,a0,a4
    80007eac:	00b70023          	sb	a1,0(a4)
    80007eb0:	0067871b          	addiw	a4,a5,6
    80007eb4:	06c77e63          	bgeu	a4,a2,80007f30 <__memset+0x1c8>
    80007eb8:	00e50733          	add	a4,a0,a4
    80007ebc:	00b70023          	sb	a1,0(a4)
    80007ec0:	0077871b          	addiw	a4,a5,7
    80007ec4:	06c77663          	bgeu	a4,a2,80007f30 <__memset+0x1c8>
    80007ec8:	00e50733          	add	a4,a0,a4
    80007ecc:	00b70023          	sb	a1,0(a4)
    80007ed0:	0087871b          	addiw	a4,a5,8
    80007ed4:	04c77e63          	bgeu	a4,a2,80007f30 <__memset+0x1c8>
    80007ed8:	00e50733          	add	a4,a0,a4
    80007edc:	00b70023          	sb	a1,0(a4)
    80007ee0:	0097871b          	addiw	a4,a5,9
    80007ee4:	04c77663          	bgeu	a4,a2,80007f30 <__memset+0x1c8>
    80007ee8:	00e50733          	add	a4,a0,a4
    80007eec:	00b70023          	sb	a1,0(a4)
    80007ef0:	00a7871b          	addiw	a4,a5,10
    80007ef4:	02c77e63          	bgeu	a4,a2,80007f30 <__memset+0x1c8>
    80007ef8:	00e50733          	add	a4,a0,a4
    80007efc:	00b70023          	sb	a1,0(a4)
    80007f00:	00b7871b          	addiw	a4,a5,11
    80007f04:	02c77663          	bgeu	a4,a2,80007f30 <__memset+0x1c8>
    80007f08:	00e50733          	add	a4,a0,a4
    80007f0c:	00b70023          	sb	a1,0(a4)
    80007f10:	00c7871b          	addiw	a4,a5,12
    80007f14:	00c77e63          	bgeu	a4,a2,80007f30 <__memset+0x1c8>
    80007f18:	00e50733          	add	a4,a0,a4
    80007f1c:	00b70023          	sb	a1,0(a4)
    80007f20:	00d7879b          	addiw	a5,a5,13
    80007f24:	00c7f663          	bgeu	a5,a2,80007f30 <__memset+0x1c8>
    80007f28:	00f507b3          	add	a5,a0,a5
    80007f2c:	00b78023          	sb	a1,0(a5)
    80007f30:	00813403          	ld	s0,8(sp)
    80007f34:	01010113          	addi	sp,sp,16
    80007f38:	00008067          	ret
    80007f3c:	00b00693          	li	a3,11
    80007f40:	e55ff06f          	j	80007d94 <__memset+0x2c>
    80007f44:	00300e93          	li	t4,3
    80007f48:	ea5ff06f          	j	80007dec <__memset+0x84>
    80007f4c:	00100e93          	li	t4,1
    80007f50:	e9dff06f          	j	80007dec <__memset+0x84>
    80007f54:	00000e93          	li	t4,0
    80007f58:	e95ff06f          	j	80007dec <__memset+0x84>
    80007f5c:	00000793          	li	a5,0
    80007f60:	ef9ff06f          	j	80007e58 <__memset+0xf0>
    80007f64:	00200e93          	li	t4,2
    80007f68:	e85ff06f          	j	80007dec <__memset+0x84>
    80007f6c:	00400e93          	li	t4,4
    80007f70:	e7dff06f          	j	80007dec <__memset+0x84>
    80007f74:	00500e93          	li	t4,5
    80007f78:	e75ff06f          	j	80007dec <__memset+0x84>
    80007f7c:	00600e93          	li	t4,6
    80007f80:	e6dff06f          	j	80007dec <__memset+0x84>

0000000080007f84 <__memmove>:
    80007f84:	ff010113          	addi	sp,sp,-16
    80007f88:	00813423          	sd	s0,8(sp)
    80007f8c:	01010413          	addi	s0,sp,16
    80007f90:	0e060863          	beqz	a2,80008080 <__memmove+0xfc>
    80007f94:	fff6069b          	addiw	a3,a2,-1
    80007f98:	0006881b          	sext.w	a6,a3
    80007f9c:	0ea5e863          	bltu	a1,a0,8000808c <__memmove+0x108>
    80007fa0:	00758713          	addi	a4,a1,7
    80007fa4:	00a5e7b3          	or	a5,a1,a0
    80007fa8:	40a70733          	sub	a4,a4,a0
    80007fac:	0077f793          	andi	a5,a5,7
    80007fb0:	00f73713          	sltiu	a4,a4,15
    80007fb4:	00174713          	xori	a4,a4,1
    80007fb8:	0017b793          	seqz	a5,a5
    80007fbc:	00e7f7b3          	and	a5,a5,a4
    80007fc0:	10078863          	beqz	a5,800080d0 <__memmove+0x14c>
    80007fc4:	00900793          	li	a5,9
    80007fc8:	1107f463          	bgeu	a5,a6,800080d0 <__memmove+0x14c>
    80007fcc:	0036581b          	srliw	a6,a2,0x3
    80007fd0:	fff8081b          	addiw	a6,a6,-1
    80007fd4:	02081813          	slli	a6,a6,0x20
    80007fd8:	01d85893          	srli	a7,a6,0x1d
    80007fdc:	00858813          	addi	a6,a1,8
    80007fe0:	00058793          	mv	a5,a1
    80007fe4:	00050713          	mv	a4,a0
    80007fe8:	01088833          	add	a6,a7,a6
    80007fec:	0007b883          	ld	a7,0(a5)
    80007ff0:	00878793          	addi	a5,a5,8
    80007ff4:	00870713          	addi	a4,a4,8
    80007ff8:	ff173c23          	sd	a7,-8(a4)
    80007ffc:	ff0798e3          	bne	a5,a6,80007fec <__memmove+0x68>
    80008000:	ff867713          	andi	a4,a2,-8
    80008004:	02071793          	slli	a5,a4,0x20
    80008008:	0207d793          	srli	a5,a5,0x20
    8000800c:	00f585b3          	add	a1,a1,a5
    80008010:	40e686bb          	subw	a3,a3,a4
    80008014:	00f507b3          	add	a5,a0,a5
    80008018:	06e60463          	beq	a2,a4,80008080 <__memmove+0xfc>
    8000801c:	0005c703          	lbu	a4,0(a1)
    80008020:	00e78023          	sb	a4,0(a5)
    80008024:	04068e63          	beqz	a3,80008080 <__memmove+0xfc>
    80008028:	0015c603          	lbu	a2,1(a1)
    8000802c:	00100713          	li	a4,1
    80008030:	00c780a3          	sb	a2,1(a5)
    80008034:	04e68663          	beq	a3,a4,80008080 <__memmove+0xfc>
    80008038:	0025c603          	lbu	a2,2(a1)
    8000803c:	00200713          	li	a4,2
    80008040:	00c78123          	sb	a2,2(a5)
    80008044:	02e68e63          	beq	a3,a4,80008080 <__memmove+0xfc>
    80008048:	0035c603          	lbu	a2,3(a1)
    8000804c:	00300713          	li	a4,3
    80008050:	00c781a3          	sb	a2,3(a5)
    80008054:	02e68663          	beq	a3,a4,80008080 <__memmove+0xfc>
    80008058:	0045c603          	lbu	a2,4(a1)
    8000805c:	00400713          	li	a4,4
    80008060:	00c78223          	sb	a2,4(a5)
    80008064:	00e68e63          	beq	a3,a4,80008080 <__memmove+0xfc>
    80008068:	0055c603          	lbu	a2,5(a1)
    8000806c:	00500713          	li	a4,5
    80008070:	00c782a3          	sb	a2,5(a5)
    80008074:	00e68663          	beq	a3,a4,80008080 <__memmove+0xfc>
    80008078:	0065c703          	lbu	a4,6(a1)
    8000807c:	00e78323          	sb	a4,6(a5)
    80008080:	00813403          	ld	s0,8(sp)
    80008084:	01010113          	addi	sp,sp,16
    80008088:	00008067          	ret
    8000808c:	02061713          	slli	a4,a2,0x20
    80008090:	02075713          	srli	a4,a4,0x20
    80008094:	00e587b3          	add	a5,a1,a4
    80008098:	f0f574e3          	bgeu	a0,a5,80007fa0 <__memmove+0x1c>
    8000809c:	02069613          	slli	a2,a3,0x20
    800080a0:	02065613          	srli	a2,a2,0x20
    800080a4:	fff64613          	not	a2,a2
    800080a8:	00e50733          	add	a4,a0,a4
    800080ac:	00c78633          	add	a2,a5,a2
    800080b0:	fff7c683          	lbu	a3,-1(a5)
    800080b4:	fff78793          	addi	a5,a5,-1
    800080b8:	fff70713          	addi	a4,a4,-1
    800080bc:	00d70023          	sb	a3,0(a4)
    800080c0:	fec798e3          	bne	a5,a2,800080b0 <__memmove+0x12c>
    800080c4:	00813403          	ld	s0,8(sp)
    800080c8:	01010113          	addi	sp,sp,16
    800080cc:	00008067          	ret
    800080d0:	02069713          	slli	a4,a3,0x20
    800080d4:	02075713          	srli	a4,a4,0x20
    800080d8:	00170713          	addi	a4,a4,1
    800080dc:	00e50733          	add	a4,a0,a4
    800080e0:	00050793          	mv	a5,a0
    800080e4:	0005c683          	lbu	a3,0(a1)
    800080e8:	00178793          	addi	a5,a5,1
    800080ec:	00158593          	addi	a1,a1,1
    800080f0:	fed78fa3          	sb	a3,-1(a5)
    800080f4:	fee798e3          	bne	a5,a4,800080e4 <__memmove+0x160>
    800080f8:	f89ff06f          	j	80008080 <__memmove+0xfc>

00000000800080fc <__putc>:
    800080fc:	fe010113          	addi	sp,sp,-32
    80008100:	00813823          	sd	s0,16(sp)
    80008104:	00113c23          	sd	ra,24(sp)
    80008108:	02010413          	addi	s0,sp,32
    8000810c:	00050793          	mv	a5,a0
    80008110:	fef40593          	addi	a1,s0,-17
    80008114:	00100613          	li	a2,1
    80008118:	00000513          	li	a0,0
    8000811c:	fef407a3          	sb	a5,-17(s0)
    80008120:	fffff097          	auipc	ra,0xfffff
    80008124:	b3c080e7          	jalr	-1220(ra) # 80006c5c <console_write>
    80008128:	01813083          	ld	ra,24(sp)
    8000812c:	01013403          	ld	s0,16(sp)
    80008130:	02010113          	addi	sp,sp,32
    80008134:	00008067          	ret

0000000080008138 <__getc>:
    80008138:	fe010113          	addi	sp,sp,-32
    8000813c:	00813823          	sd	s0,16(sp)
    80008140:	00113c23          	sd	ra,24(sp)
    80008144:	02010413          	addi	s0,sp,32
    80008148:	fe840593          	addi	a1,s0,-24
    8000814c:	00100613          	li	a2,1
    80008150:	00000513          	li	a0,0
    80008154:	fffff097          	auipc	ra,0xfffff
    80008158:	ae8080e7          	jalr	-1304(ra) # 80006c3c <console_read>
    8000815c:	fe844503          	lbu	a0,-24(s0)
    80008160:	01813083          	ld	ra,24(sp)
    80008164:	01013403          	ld	s0,16(sp)
    80008168:	02010113          	addi	sp,sp,32
    8000816c:	00008067          	ret

0000000080008170 <console_handler>:
    80008170:	fe010113          	addi	sp,sp,-32
    80008174:	00813823          	sd	s0,16(sp)
    80008178:	00113c23          	sd	ra,24(sp)
    8000817c:	00913423          	sd	s1,8(sp)
    80008180:	02010413          	addi	s0,sp,32
    80008184:	14202773          	csrr	a4,scause
    80008188:	100027f3          	csrr	a5,sstatus
    8000818c:	0027f793          	andi	a5,a5,2
    80008190:	06079e63          	bnez	a5,8000820c <console_handler+0x9c>
    80008194:	00074c63          	bltz	a4,800081ac <console_handler+0x3c>
    80008198:	01813083          	ld	ra,24(sp)
    8000819c:	01013403          	ld	s0,16(sp)
    800081a0:	00813483          	ld	s1,8(sp)
    800081a4:	02010113          	addi	sp,sp,32
    800081a8:	00008067          	ret
    800081ac:	0ff77713          	andi	a4,a4,255
    800081b0:	00900793          	li	a5,9
    800081b4:	fef712e3          	bne	a4,a5,80008198 <console_handler+0x28>
    800081b8:	ffffe097          	auipc	ra,0xffffe
    800081bc:	6dc080e7          	jalr	1756(ra) # 80006894 <plic_claim>
    800081c0:	00a00793          	li	a5,10
    800081c4:	00050493          	mv	s1,a0
    800081c8:	02f50c63          	beq	a0,a5,80008200 <console_handler+0x90>
    800081cc:	fc0506e3          	beqz	a0,80008198 <console_handler+0x28>
    800081d0:	00050593          	mv	a1,a0
    800081d4:	00001517          	auipc	a0,0x1
    800081d8:	53450513          	addi	a0,a0,1332 # 80009708 <CONSOLE_STATUS+0x6f8>
    800081dc:	fffff097          	auipc	ra,0xfffff
    800081e0:	afc080e7          	jalr	-1284(ra) # 80006cd8 <__printf>
    800081e4:	01013403          	ld	s0,16(sp)
    800081e8:	01813083          	ld	ra,24(sp)
    800081ec:	00048513          	mv	a0,s1
    800081f0:	00813483          	ld	s1,8(sp)
    800081f4:	02010113          	addi	sp,sp,32
    800081f8:	ffffe317          	auipc	t1,0xffffe
    800081fc:	6d430067          	jr	1748(t1) # 800068cc <plic_complete>
    80008200:	fffff097          	auipc	ra,0xfffff
    80008204:	3e0080e7          	jalr	992(ra) # 800075e0 <uartintr>
    80008208:	fddff06f          	j	800081e4 <console_handler+0x74>
    8000820c:	00001517          	auipc	a0,0x1
    80008210:	5fc50513          	addi	a0,a0,1532 # 80009808 <digits+0x78>
    80008214:	fffff097          	auipc	ra,0xfffff
    80008218:	a68080e7          	jalr	-1432(ra) # 80006c7c <panic>
	...
