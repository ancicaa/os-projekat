
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	f4013103          	ld	sp,-192(sp) # 80005f40 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	135020ef          	jal	ra,80002950 <start>

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
    80001088:	579000ef          	jal	ra,80001e00 <_ZN5Riscv13obradaprekidaEmmmmm>

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

00000000800012ac <_Z7syscallmmmmm>:
#include "../h/syscall_c.hpp"
#include "../h/riscv.hpp"


uint64 syscall(uint64 code, uint64 arg = 0, uint64 arg2 = 0, uint64 arg3 = 0, uint64 arg4 = 0) {
    800012ac:	fe010113          	addi	sp,sp,-32
    800012b0:	00813c23          	sd	s0,24(sp)
    800012b4:	02010413          	addi	s0,sp,32
    __asm__ volatile ("ecall");
    800012b8:	00000073          	ecall

//a0
inline uint64 Riscv::r_a0()
{
    uint64 volatile a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    800012bc:	00050793          	mv	a5,a0
    800012c0:	fef43423          	sd	a5,-24(s0)
    return a0;
    800012c4:	fe843503          	ld	a0,-24(s0)
    return Riscv::r_a0();
}
    800012c8:	01813403          	ld	s0,24(sp)
    800012cc:	02010113          	addi	sp,sp,32
    800012d0:	00008067          	ret

00000000800012d4 <_Z9mem_allocm>:
//-------------------------memorija
void *mem_alloc(size_t size) {
    800012d4:	ff010113          	addi	sp,sp,-16
    800012d8:	00113423          	sd	ra,8(sp)
    800012dc:	00813023          	sd	s0,0(sp)
    800012e0:	01010413          	addi	s0,sp,16
    int blocks = (size - 1) / MEM_BLOCK_SIZE + 1;
    800012e4:	fff50593          	addi	a1,a0,-1
    800012e8:	0065d593          	srli	a1,a1,0x6
    return (void *) syscall(MEM_ALLOC, blocks);
    800012ec:	00000713          	li	a4,0
    800012f0:	00000693          	li	a3,0
    800012f4:	00000613          	li	a2,0
    800012f8:	0015859b          	addiw	a1,a1,1
    800012fc:	00100513          	li	a0,1
    80001300:	00000097          	auipc	ra,0x0
    80001304:	fac080e7          	jalr	-84(ra) # 800012ac <_Z7syscallmmmmm>
}
    80001308:	00813083          	ld	ra,8(sp)
    8000130c:	00013403          	ld	s0,0(sp)
    80001310:	01010113          	addi	sp,sp,16
    80001314:	00008067          	ret

0000000080001318 <_Z8mem_freePv>:

int mem_free(void *ptr) {
    80001318:	ff010113          	addi	sp,sp,-16
    8000131c:	00113423          	sd	ra,8(sp)
    80001320:	00813023          	sd	s0,0(sp)
    80001324:	01010413          	addi	s0,sp,16
    80001328:	00050593          	mv	a1,a0
    return syscall(MEM_FREE, (uint64)ptr);
    8000132c:	00000713          	li	a4,0
    80001330:	00000693          	li	a3,0
    80001334:	00000613          	li	a2,0
    80001338:	00200513          	li	a0,2
    8000133c:	00000097          	auipc	ra,0x0
    80001340:	f70080e7          	jalr	-144(ra) # 800012ac <_Z7syscallmmmmm>
}
    80001344:	0005051b          	sext.w	a0,a0
    80001348:	00813083          	ld	ra,8(sp)
    8000134c:	00013403          	ld	s0,0(sp)
    80001350:	01010113          	addi	sp,sp,16
    80001354:	00008067          	ret

0000000080001358 <_Z13thread_createPP3TCBPFvPvES2_>:

//-------------------------niti
int thread_create(thread_t *handle,void(*start_routine)(void *),void *arg){
    80001358:	fd010113          	addi	sp,sp,-48
    8000135c:	02113423          	sd	ra,40(sp)
    80001360:	02813023          	sd	s0,32(sp)
    80001364:	00913c23          	sd	s1,24(sp)
    80001368:	01213823          	sd	s2,16(sp)
    8000136c:	01313423          	sd	s3,8(sp)
    80001370:	03010413          	addi	s0,sp,48
    80001374:	00050913          	mv	s2,a0
    80001378:	00058493          	mv	s1,a1
    8000137c:	00060993          	mv	s3,a2
    void *space = nullptr;
    if (start_routine) {
    80001380:	04058663          	beqz	a1,800013cc <_Z13thread_createPP3TCBPFvPvES2_+0x74>
        space = mem_alloc(DEFAULT_STACK_SIZE);
    80001384:	00001537          	lui	a0,0x1
    80001388:	00000097          	auipc	ra,0x0
    8000138c:	f4c080e7          	jalr	-180(ra) # 800012d4 <_Z9mem_allocm>
    80001390:	00050713          	mv	a4,a0
    }
  return  (int) syscall(THREAD_CREATE, (uint64) handle, (uint64) start_routine, (uint64) arg, (uint64) space);
    80001394:	00098693          	mv	a3,s3
    80001398:	00048613          	mv	a2,s1
    8000139c:	00090593          	mv	a1,s2
    800013a0:	01100513          	li	a0,17
    800013a4:	00000097          	auipc	ra,0x0
    800013a8:	f08080e7          	jalr	-248(ra) # 800012ac <_Z7syscallmmmmm>
}
    800013ac:	0005051b          	sext.w	a0,a0
    800013b0:	02813083          	ld	ra,40(sp)
    800013b4:	02013403          	ld	s0,32(sp)
    800013b8:	01813483          	ld	s1,24(sp)
    800013bc:	01013903          	ld	s2,16(sp)
    800013c0:	00813983          	ld	s3,8(sp)
    800013c4:	03010113          	addi	sp,sp,48
    800013c8:	00008067          	ret
    void *space = nullptr;
    800013cc:	00000713          	li	a4,0
    800013d0:	fc5ff06f          	j	80001394 <_Z13thread_createPP3TCBPFvPvES2_+0x3c>

00000000800013d4 <_Z11thread_exitv>:

int thread_exit(){
    800013d4:	ff010113          	addi	sp,sp,-16
    800013d8:	00113423          	sd	ra,8(sp)
    800013dc:	00813023          	sd	s0,0(sp)
    800013e0:	01010413          	addi	s0,sp,16
  return (int) syscall(THREAD_EXIT);
    800013e4:	00000713          	li	a4,0
    800013e8:	00000693          	li	a3,0
    800013ec:	00000613          	li	a2,0
    800013f0:	00000593          	li	a1,0
    800013f4:	01200513          	li	a0,18
    800013f8:	00000097          	auipc	ra,0x0
    800013fc:	eb4080e7          	jalr	-332(ra) # 800012ac <_Z7syscallmmmmm>
  }
    80001400:	0005051b          	sext.w	a0,a0
    80001404:	00813083          	ld	ra,8(sp)
    80001408:	00013403          	ld	s0,0(sp)
    8000140c:	01010113          	addi	sp,sp,16
    80001410:	00008067          	ret

0000000080001414 <_Z15thread_dispatchv>:


void thread_dispatch(){
    80001414:	ff010113          	addi	sp,sp,-16
    80001418:	00113423          	sd	ra,8(sp)
    8000141c:	00813023          	sd	s0,0(sp)
    80001420:	01010413          	addi	s0,sp,16
    (void) syscall(THREAD_DISPATCH);
    80001424:	00000713          	li	a4,0
    80001428:	00000693          	li	a3,0
    8000142c:	00000613          	li	a2,0
    80001430:	00000593          	li	a1,0
    80001434:	01300513          	li	a0,19
    80001438:	00000097          	auipc	ra,0x0
    8000143c:	e74080e7          	jalr	-396(ra) # 800012ac <_Z7syscallmmmmm>
 }
    80001440:	00813083          	ld	ra,8(sp)
    80001444:	00013403          	ld	s0,0(sp)
    80001448:	01010113          	addi	sp,sp,16
    8000144c:	00008067          	ret

0000000080001450 <_Z8sem_openPP4_semj>:

//-------------------------semafori
int sem_open(sem_t* handle,unsigned int init){
    80001450:	ff010113          	addi	sp,sp,-16
    80001454:	00113423          	sd	ra,8(sp)
    80001458:	00813023          	sd	s0,0(sp)
    8000145c:	01010413          	addi	s0,sp,16
  return (int)syscall(SEM_OPEN, (uint64) handle, init);
    80001460:	00000713          	li	a4,0
    80001464:	00000693          	li	a3,0
    80001468:	02059613          	slli	a2,a1,0x20
    8000146c:	02065613          	srli	a2,a2,0x20
    80001470:	00050593          	mv	a1,a0
    80001474:	02100513          	li	a0,33
    80001478:	00000097          	auipc	ra,0x0
    8000147c:	e34080e7          	jalr	-460(ra) # 800012ac <_Z7syscallmmmmm>
}
    80001480:	0005051b          	sext.w	a0,a0
    80001484:	00813083          	ld	ra,8(sp)
    80001488:	00013403          	ld	s0,0(sp)
    8000148c:	01010113          	addi	sp,sp,16
    80001490:	00008067          	ret

0000000080001494 <_Z9sem_closeP4_sem>:
int sem_close(sem_t handle){
    80001494:	ff010113          	addi	sp,sp,-16
    80001498:	00113423          	sd	ra,8(sp)
    8000149c:	00813023          	sd	s0,0(sp)
    800014a0:	01010413          	addi	s0,sp,16
    800014a4:	00050593          	mv	a1,a0
    return (int)syscall(SEM_OPEN, (uint64) handle);
    800014a8:	00000713          	li	a4,0
    800014ac:	00000693          	li	a3,0
    800014b0:	00000613          	li	a2,0
    800014b4:	02100513          	li	a0,33
    800014b8:	00000097          	auipc	ra,0x0
    800014bc:	df4080e7          	jalr	-524(ra) # 800012ac <_Z7syscallmmmmm>
}
    800014c0:	0005051b          	sext.w	a0,a0
    800014c4:	00813083          	ld	ra,8(sp)
    800014c8:	00013403          	ld	s0,0(sp)
    800014cc:	01010113          	addi	sp,sp,16
    800014d0:	00008067          	ret

00000000800014d4 <_Z8sem_waitP4_sem>:
int sem_wait(sem_t id){
    800014d4:	ff010113          	addi	sp,sp,-16
    800014d8:	00113423          	sd	ra,8(sp)
    800014dc:	00813023          	sd	s0,0(sp)
    800014e0:	01010413          	addi	s0,sp,16
    800014e4:	00050593          	mv	a1,a0
    return (int)syscall(SEM_WAIT, (uint64) id);
    800014e8:	00000713          	li	a4,0
    800014ec:	00000693          	li	a3,0
    800014f0:	00000613          	li	a2,0
    800014f4:	02300513          	li	a0,35
    800014f8:	00000097          	auipc	ra,0x0
    800014fc:	db4080e7          	jalr	-588(ra) # 800012ac <_Z7syscallmmmmm>
}
    80001500:	0005051b          	sext.w	a0,a0
    80001504:	00813083          	ld	ra,8(sp)
    80001508:	00013403          	ld	s0,0(sp)
    8000150c:	01010113          	addi	sp,sp,16
    80001510:	00008067          	ret

0000000080001514 <_Z10sem_signalP4_sem>:
int sem_signal(sem_t id){
    80001514:	ff010113          	addi	sp,sp,-16
    80001518:	00113423          	sd	ra,8(sp)
    8000151c:	00813023          	sd	s0,0(sp)
    80001520:	01010413          	addi	s0,sp,16
    80001524:	00050593          	mv	a1,a0
    return (int)syscall(SEM_SIGNAL, (uint64) id);
    80001528:	00000713          	li	a4,0
    8000152c:	00000693          	li	a3,0
    80001530:	00000613          	li	a2,0
    80001534:	02400513          	li	a0,36
    80001538:	00000097          	auipc	ra,0x0
    8000153c:	d74080e7          	jalr	-652(ra) # 800012ac <_Z7syscallmmmmm>
}
    80001540:	0005051b          	sext.w	a0,a0
    80001544:	00813083          	ld	ra,8(sp)
    80001548:	00013403          	ld	s0,0(sp)
    8000154c:	01010113          	addi	sp,sp,16
    80001550:	00008067          	ret

0000000080001554 <_Z11sem_trywaitP4_sem>:
int sem_trywait(sem_t id){
    80001554:	ff010113          	addi	sp,sp,-16
    80001558:	00113423          	sd	ra,8(sp)
    8000155c:	00813023          	sd	s0,0(sp)
    80001560:	01010413          	addi	s0,sp,16
    80001564:	00050593          	mv	a1,a0
    return (int)syscall(SEM_TRYWAIT, (uint64) id);
    80001568:	00000713          	li	a4,0
    8000156c:	00000693          	li	a3,0
    80001570:	00000613          	li	a2,0
    80001574:	02600513          	li	a0,38
    80001578:	00000097          	auipc	ra,0x0
    8000157c:	d34080e7          	jalr	-716(ra) # 800012ac <_Z7syscallmmmmm>
}
    80001580:	0005051b          	sext.w	a0,a0
    80001584:	00813083          	ld	ra,8(sp)
    80001588:	00013403          	ld	s0,0(sp)
    8000158c:	01010113          	addi	sp,sp,16
    80001590:	00008067          	ret

0000000080001594 <_Z4getcv>:

//-------------------------------------
char getc () {
    80001594:	ff010113          	addi	sp,sp,-16
    80001598:	00113423          	sd	ra,8(sp)
    8000159c:	00813023          	sd	s0,0(sp)
    800015a0:	01010413          	addi	s0,sp,16
    return syscall(GETC);
    800015a4:	00000713          	li	a4,0
    800015a8:	00000693          	li	a3,0
    800015ac:	00000613          	li	a2,0
    800015b0:	00000593          	li	a1,0
    800015b4:	04100513          	li	a0,65
    800015b8:	00000097          	auipc	ra,0x0
    800015bc:	cf4080e7          	jalr	-780(ra) # 800012ac <_Z7syscallmmmmm>
}
    800015c0:	0ff57513          	andi	a0,a0,255
    800015c4:	00813083          	ld	ra,8(sp)
    800015c8:	00013403          	ld	s0,0(sp)
    800015cc:	01010113          	addi	sp,sp,16
    800015d0:	00008067          	ret

00000000800015d4 <_Z4putcc>:

void putc (char c) {
    800015d4:	ff010113          	addi	sp,sp,-16
    800015d8:	00113423          	sd	ra,8(sp)
    800015dc:	00813023          	sd	s0,0(sp)
    800015e0:	01010413          	addi	s0,sp,16
    800015e4:	00050593          	mv	a1,a0
    syscall(PUTC, c);
    800015e8:	00000713          	li	a4,0
    800015ec:	00000693          	li	a3,0
    800015f0:	00000613          	li	a2,0
    800015f4:	04200513          	li	a0,66
    800015f8:	00000097          	auipc	ra,0x0
    800015fc:	cb4080e7          	jalr	-844(ra) # 800012ac <_Z7syscallmmmmm>
}
    80001600:	00813083          	ld	ra,8(sp)
    80001604:	00013403          	ld	s0,0(sp)
    80001608:	01010113          	addi	sp,sp,16
    8000160c:	00008067          	ret

0000000080001610 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80001610:	fe010113          	addi	sp,sp,-32
    80001614:	00113c23          	sd	ra,24(sp)
    80001618:	00813823          	sd	s0,16(sp)
    8000161c:	00913423          	sd	s1,8(sp)
    80001620:	02010413          	addi	s0,sp,32
    80001624:	00050493          	mv	s1,a0
    while (*string != '\0')
    80001628:	0004c503          	lbu	a0,0(s1)
    8000162c:	00050a63          	beqz	a0,80001640 <_Z11printStringPKc+0x30>
    {
        putc(*string);
    80001630:	00000097          	auipc	ra,0x0
    80001634:	fa4080e7          	jalr	-92(ra) # 800015d4 <_Z4putcc>
        string++;
    80001638:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000163c:	fedff06f          	j	80001628 <_Z11printStringPKc+0x18>
    }
}
    80001640:	01813083          	ld	ra,24(sp)
    80001644:	01013403          	ld	s0,16(sp)
    80001648:	00813483          	ld	s1,8(sp)
    8000164c:	02010113          	addi	sp,sp,32
    80001650:	00008067          	ret

0000000080001654 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80001654:	fd010113          	addi	sp,sp,-48
    80001658:	02113423          	sd	ra,40(sp)
    8000165c:	02813023          	sd	s0,32(sp)
    80001660:	00913c23          	sd	s1,24(sp)
    80001664:	01213823          	sd	s2,16(sp)
    80001668:	01313423          	sd	s3,8(sp)
    8000166c:	01413023          	sd	s4,0(sp)
    80001670:	03010413          	addi	s0,sp,48
    80001674:	00050993          	mv	s3,a0
    80001678:	00058a13          	mv	s4,a1
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    8000167c:	00000913          	li	s2,0
    80001680:	00090493          	mv	s1,s2
    80001684:	0019091b          	addiw	s2,s2,1
    80001688:	03495a63          	bge	s2,s4,800016bc <_Z9getStringPci+0x68>
        cc = getc();
    8000168c:	00000097          	auipc	ra,0x0
    80001690:	f08080e7          	jalr	-248(ra) # 80001594 <_Z4getcv>
        if(cc < 1)
    80001694:	02050463          	beqz	a0,800016bc <_Z9getStringPci+0x68>
            break;
        c = cc;
        buf[i++] = c;
    80001698:	009984b3          	add	s1,s3,s1
    8000169c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800016a0:	00a00793          	li	a5,10
    800016a4:	00f50a63          	beq	a0,a5,800016b8 <_Z9getStringPci+0x64>
    800016a8:	00d00793          	li	a5,13
    800016ac:	fcf51ae3          	bne	a0,a5,80001680 <_Z9getStringPci+0x2c>
        buf[i++] = c;
    800016b0:	00090493          	mv	s1,s2
    800016b4:	0080006f          	j	800016bc <_Z9getStringPci+0x68>
    800016b8:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800016bc:	009984b3          	add	s1,s3,s1
    800016c0:	00048023          	sb	zero,0(s1)
    return buf;
}
    800016c4:	00098513          	mv	a0,s3
    800016c8:	02813083          	ld	ra,40(sp)
    800016cc:	02013403          	ld	s0,32(sp)
    800016d0:	01813483          	ld	s1,24(sp)
    800016d4:	01013903          	ld	s2,16(sp)
    800016d8:	00813983          	ld	s3,8(sp)
    800016dc:	00013a03          	ld	s4,0(sp)
    800016e0:	03010113          	addi	sp,sp,48
    800016e4:	00008067          	ret

00000000800016e8 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800016e8:	ff010113          	addi	sp,sp,-16
    800016ec:	00813423          	sd	s0,8(sp)
    800016f0:	01010413          	addi	s0,sp,16
    800016f4:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800016f8:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800016fc:	0006c603          	lbu	a2,0(a3)
    80001700:	fd06071b          	addiw	a4,a2,-48
    80001704:	0ff77713          	andi	a4,a4,255
    80001708:	00900793          	li	a5,9
    8000170c:	02e7e063          	bltu	a5,a4,8000172c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80001710:	0025179b          	slliw	a5,a0,0x2
    80001714:	00a787bb          	addw	a5,a5,a0
    80001718:	0017979b          	slliw	a5,a5,0x1
    8000171c:	00168693          	addi	a3,a3,1
    80001720:	00c787bb          	addw	a5,a5,a2
    80001724:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80001728:	fd5ff06f          	j	800016fc <_Z11stringToIntPKc+0x14>
    return n;
}
    8000172c:	00813403          	ld	s0,8(sp)
    80001730:	01010113          	addi	sp,sp,16
    80001734:	00008067          	ret

0000000080001738 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80001738:	fd010113          	addi	sp,sp,-48
    8000173c:	02113423          	sd	ra,40(sp)
    80001740:	02813023          	sd	s0,32(sp)
    80001744:	00913c23          	sd	s1,24(sp)
    80001748:	03010413          	addi	s0,sp,48
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    8000174c:	00060463          	beqz	a2,80001754 <_Z8printIntiii+0x1c>
    80001750:	08054463          	bltz	a0,800017d8 <_Z8printIntiii+0xa0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80001754:	0005051b          	sext.w	a0,a0
    neg = 0;
    80001758:	00000813          	li	a6,0
    }

    i = 0;
    8000175c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80001760:	0005879b          	sext.w	a5,a1
    80001764:	02b5773b          	remuw	a4,a0,a1
    80001768:	00048613          	mv	a2,s1
    8000176c:	0014849b          	addiw	s1,s1,1
    80001770:	02071693          	slli	a3,a4,0x20
    80001774:	0206d693          	srli	a3,a3,0x20
    80001778:	00004717          	auipc	a4,0x4
    8000177c:	74870713          	addi	a4,a4,1864 # 80005ec0 <digits>
    80001780:	00d70733          	add	a4,a4,a3
    80001784:	00074683          	lbu	a3,0(a4)
    80001788:	fe040713          	addi	a4,s0,-32
    8000178c:	00c70733          	add	a4,a4,a2
    80001790:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80001794:	0005071b          	sext.w	a4,a0
    80001798:	02b5553b          	divuw	a0,a0,a1
    8000179c:	fcf772e3          	bgeu	a4,a5,80001760 <_Z8printIntiii+0x28>
    if(neg)
    800017a0:	00080c63          	beqz	a6,800017b8 <_Z8printIntiii+0x80>
        buf[i++] = '-';
    800017a4:	fe040793          	addi	a5,s0,-32
    800017a8:	009784b3          	add	s1,a5,s1
    800017ac:	02d00793          	li	a5,45
    800017b0:	fef48823          	sb	a5,-16(s1)
    800017b4:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800017b8:	fff4849b          	addiw	s1,s1,-1
    800017bc:	0204c463          	bltz	s1,800017e4 <_Z8printIntiii+0xac>
        putc(buf[i]);
    800017c0:	fe040793          	addi	a5,s0,-32
    800017c4:	009787b3          	add	a5,a5,s1
    800017c8:	ff07c503          	lbu	a0,-16(a5)
    800017cc:	00000097          	auipc	ra,0x0
    800017d0:	e08080e7          	jalr	-504(ra) # 800015d4 <_Z4putcc>
    800017d4:	fe5ff06f          	j	800017b8 <_Z8printIntiii+0x80>
        x = -xx;
    800017d8:	40a0053b          	negw	a0,a0
        neg = 1;
    800017dc:	00100813          	li	a6,1
        x = -xx;
    800017e0:	f7dff06f          	j	8000175c <_Z8printIntiii+0x24>

    800017e4:	02813083          	ld	ra,40(sp)
    800017e8:	02013403          	ld	s0,32(sp)
    800017ec:	01813483          	ld	s1,24(sp)
    800017f0:	03010113          	addi	sp,sp,48
    800017f4:	00008067          	ret

00000000800017f8 <main>:
#include "../lib/hw.h"
#include "../h/printing.hpp"

extern "C" void rutina();

int main() {
    800017f8:	fd010113          	addi	sp,sp,-48
    800017fc:	02113423          	sd	ra,40(sp)
    80001800:	02813023          	sd	s0,32(sp)
    80001804:	00913c23          	sd	s1,24(sp)
    80001808:	01213823          	sd	s2,16(sp)
    8000180c:	01313423          	sd	s3,8(sp)
    80001810:	01413023          	sd	s4,0(sp)
    80001814:	03010413          	addi	s0,sp,48
    MemoryAllocator::init();
    80001818:	00001097          	auipc	ra,0x1
    8000181c:	d8c080e7          	jalr	-628(ra) # 800025a4 <_ZN15MemoryAllocator4initEv>
    Riscv::w_stvec((uint64)rutina);// upis adrese prekidne rutine
    80001820:	00004797          	auipc	a5,0x4
    80001824:	7107b783          	ld	a5,1808(a5) # 80005f30 <_GLOBAL_OFFSET_TABLE_+0x8>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001828:	10579073          	csrw	stvec,a5

    MemoryAllocator::print();
    8000182c:	00001097          	auipc	ra,0x1
    80001830:	014080e7          	jalr	20(ra) # 80002840 <_ZN15MemoryAllocator5printEv>
    void *a = mem_alloc(10);
    80001834:	00a00513          	li	a0,10
    80001838:	00000097          	auipc	ra,0x0
    8000183c:	a9c080e7          	jalr	-1380(ra) # 800012d4 <_Z9mem_allocm>
    80001840:	00050993          	mv	s3,a0
    MemoryAllocator::print();           //velicina free treba da bude MEM_BLOCK_SIZE + sizeof(Block) = 88 manja od predhodne
    80001844:	00001097          	auipc	ra,0x1
    80001848:	ffc080e7          	jalr	-4(ra) # 80002840 <_ZN15MemoryAllocator5printEv>
    void *b = mem_alloc(100);
    8000184c:	06400513          	li	a0,100
    80001850:	00000097          	auipc	ra,0x0
    80001854:	a84080e7          	jalr	-1404(ra) # 800012d4 <_Z9mem_allocm>
    80001858:	00050913          	mv	s2,a0
    MemoryAllocator::print();           //velicina free treba da bude 2*MEM_BLOCK_SIZE + sizeof(Block) = 152 manja od predhodne
    8000185c:	00001097          	auipc	ra,0x1
    80001860:	fe4080e7          	jalr	-28(ra) # 80002840 <_ZN15MemoryAllocator5printEv>
    void *c = mem_alloc(1000);
    80001864:	3e800513          	li	a0,1000
    80001868:	00000097          	auipc	ra,0x0
    8000186c:	a6c080e7          	jalr	-1428(ra) # 800012d4 <_Z9mem_allocm>
    80001870:	00050493          	mv	s1,a0
    MemoryAllocator::print();           //velicina free treba da bude 16*MEM_BLOCK_SIZE + sizeof(Block) = 1048 manja od predhodne
    80001874:	00001097          	auipc	ra,0x1
    80001878:	fcc080e7          	jalr	-52(ra) # 80002840 <_ZN15MemoryAllocator5printEv>

    printString("a: ");
    8000187c:	00003517          	auipc	a0,0x3
    80001880:	7a450513          	addi	a0,a0,1956 # 80005020 <CONSOLE_STATUS+0x10>
    80001884:	00000097          	auipc	ra,0x0
    80001888:	d8c080e7          	jalr	-628(ra) # 80001610 <_Z11printStringPKc>
    printInt((uint64)a);
    8000188c:	00098a1b          	sext.w	s4,s3
    80001890:	00000613          	li	a2,0
    80001894:	00a00593          	li	a1,10
    80001898:	000a0513          	mv	a0,s4
    8000189c:	00000097          	auipc	ra,0x0
    800018a0:	e9c080e7          	jalr	-356(ra) # 80001738 <_Z8printIntiii>
    printString("\nb: ");
    800018a4:	00003517          	auipc	a0,0x3
    800018a8:	78450513          	addi	a0,a0,1924 # 80005028 <CONSOLE_STATUS+0x18>
    800018ac:	00000097          	auipc	ra,0x0
    800018b0:	d64080e7          	jalr	-668(ra) # 80001610 <_Z11printStringPKc>
    printInt((uint64)b);
    800018b4:	00000613          	li	a2,0
    800018b8:	00a00593          	li	a1,10
    800018bc:	0009051b          	sext.w	a0,s2
    800018c0:	00000097          	auipc	ra,0x0
    800018c4:	e78080e7          	jalr	-392(ra) # 80001738 <_Z8printIntiii>
    printString("\nc: ");
    800018c8:	00003517          	auipc	a0,0x3
    800018cc:	76850513          	addi	a0,a0,1896 # 80005030 <CONSOLE_STATUS+0x20>
    800018d0:	00000097          	auipc	ra,0x0
    800018d4:	d40080e7          	jalr	-704(ra) # 80001610 <_Z11printStringPKc>
    printInt((uint64)c);
    800018d8:	00000613          	li	a2,0
    800018dc:	00a00593          	li	a1,10
    800018e0:	0004851b          	sext.w	a0,s1
    800018e4:	00000097          	auipc	ra,0x0
    800018e8:	e54080e7          	jalr	-428(ra) # 80001738 <_Z8printIntiii>
    printString("\n");
    800018ec:	00004517          	auipc	a0,0x4
    800018f0:	9fc50513          	addi	a0,a0,-1540 # 800052e8 <CONSOLE_STATUS+0x2d8>
    800018f4:	00000097          	auipc	ra,0x0
    800018f8:	d1c080e7          	jalr	-740(ra) # 80001610 <_Z11printStringPKc>

    mem_free(a);
    800018fc:	00098513          	mv	a0,s3
    80001900:	00000097          	auipc	ra,0x0
    80001904:	a18080e7          	jalr	-1512(ra) # 80001318 <_Z8mem_freePv>
    void *d = mem_alloc(10);
    80001908:	00a00513          	li	a0,10
    8000190c:	00000097          	auipc	ra,0x0
    80001910:	9c8080e7          	jalr	-1592(ra) # 800012d4 <_Z9mem_allocm>
    80001914:	00050993          	mv	s3,a0
    printString("a: ");
    80001918:	00003517          	auipc	a0,0x3
    8000191c:	70850513          	addi	a0,a0,1800 # 80005020 <CONSOLE_STATUS+0x10>
    80001920:	00000097          	auipc	ra,0x0
    80001924:	cf0080e7          	jalr	-784(ra) # 80001610 <_Z11printStringPKc>
    printInt((uint64)a);
    80001928:	00000613          	li	a2,0
    8000192c:	00a00593          	li	a1,10
    80001930:	000a0513          	mv	a0,s4
    80001934:	00000097          	auipc	ra,0x0
    80001938:	e04080e7          	jalr	-508(ra) # 80001738 <_Z8printIntiii>
    printString(" d: ");
    8000193c:	00003517          	auipc	a0,0x3
    80001940:	6fc50513          	addi	a0,a0,1788 # 80005038 <CONSOLE_STATUS+0x28>
    80001944:	00000097          	auipc	ra,0x0
    80001948:	ccc080e7          	jalr	-820(ra) # 80001610 <_Z11printStringPKc>
    printInt((uint64)d);            //a i d treba da budu isti, jer prostor oslobodjen od a treba da je dovoljan za d
    8000194c:	00000613          	li	a2,0
    80001950:	00a00593          	li	a1,10
    80001954:	0009851b          	sext.w	a0,s3
    80001958:	00000097          	auipc	ra,0x0
    8000195c:	de0080e7          	jalr	-544(ra) # 80001738 <_Z8printIntiii>
    printString("\n");
    80001960:	00004517          	auipc	a0,0x4
    80001964:	98850513          	addi	a0,a0,-1656 # 800052e8 <CONSOLE_STATUS+0x2d8>
    80001968:	00000097          	auipc	ra,0x0
    8000196c:	ca8080e7          	jalr	-856(ra) # 80001610 <_Z11printStringPKc>

    mem_free(d);
    80001970:	00098513          	mv	a0,s3
    80001974:	00000097          	auipc	ra,0x0
    80001978:	9a4080e7          	jalr	-1628(ra) # 80001318 <_Z8mem_freePv>
    void *e = mem_alloc(100);
    8000197c:	06400513          	li	a0,100
    80001980:	00000097          	auipc	ra,0x0
    80001984:	954080e7          	jalr	-1708(ra) # 800012d4 <_Z9mem_allocm>
    80001988:	00050993          	mv	s3,a0
    printString("a: ");
    8000198c:	00003517          	auipc	a0,0x3
    80001990:	69450513          	addi	a0,a0,1684 # 80005020 <CONSOLE_STATUS+0x10>
    80001994:	00000097          	auipc	ra,0x0
    80001998:	c7c080e7          	jalr	-900(ra) # 80001610 <_Z11printStringPKc>
    printInt((uint64)a);
    8000199c:	00000613          	li	a2,0
    800019a0:	00a00593          	li	a1,10
    800019a4:	000a0513          	mv	a0,s4
    800019a8:	00000097          	auipc	ra,0x0
    800019ac:	d90080e7          	jalr	-624(ra) # 80001738 <_Z8printIntiii>
    printString(" e: ");
    800019b0:	00003517          	auipc	a0,0x3
    800019b4:	69050513          	addi	a0,a0,1680 # 80005040 <CONSOLE_STATUS+0x30>
    800019b8:	00000097          	auipc	ra,0x0
    800019bc:	c58080e7          	jalr	-936(ra) # 80001610 <_Z11printStringPKc>
    printInt((uint64)e);            //a i e ne bi smeli da budu isti, jer prostor oslobodjen od d nije dovoljan za e
    800019c0:	00000613          	li	a2,0
    800019c4:	00a00593          	li	a1,10
    800019c8:	0009851b          	sext.w	a0,s3
    800019cc:	00000097          	auipc	ra,0x0
    800019d0:	d6c080e7          	jalr	-660(ra) # 80001738 <_Z8printIntiii>
    printString("\n");
    800019d4:	00004517          	auipc	a0,0x4
    800019d8:	91450513          	addi	a0,a0,-1772 # 800052e8 <CONSOLE_STATUS+0x2d8>
    800019dc:	00000097          	auipc	ra,0x0
    800019e0:	c34080e7          	jalr	-972(ra) # 80001610 <_Z11printStringPKc>
    mem_free(e);
    800019e4:	00098513          	mv	a0,s3
    800019e8:	00000097          	auipc	ra,0x0
    800019ec:	930080e7          	jalr	-1744(ra) # 80001318 <_Z8mem_freePv>
    a = mem_alloc(10);
    800019f0:	00a00513          	li	a0,10
    800019f4:	00000097          	auipc	ra,0x0
    800019f8:	8e0080e7          	jalr	-1824(ra) # 800012d4 <_Z9mem_allocm>

    //moze se menjati redosled dealokacije da se vidi rad alokatora
    mem_free(a);
    800019fc:	00000097          	auipc	ra,0x0
    80001a00:	91c080e7          	jalr	-1764(ra) # 80001318 <_Z8mem_freePv>
    MemoryAllocator::print();
    80001a04:	00001097          	auipc	ra,0x1
    80001a08:	e3c080e7          	jalr	-452(ra) # 80002840 <_ZN15MemoryAllocator5printEv>
    mem_free(b);
    80001a0c:	00090513          	mv	a0,s2
    80001a10:	00000097          	auipc	ra,0x0
    80001a14:	908080e7          	jalr	-1784(ra) # 80001318 <_Z8mem_freePv>
    MemoryAllocator::print();
    80001a18:	00001097          	auipc	ra,0x1
    80001a1c:	e28080e7          	jalr	-472(ra) # 80002840 <_ZN15MemoryAllocator5printEv>
    mem_free(c);
    80001a20:	00048513          	mv	a0,s1
    80001a24:	00000097          	auipc	ra,0x0
    80001a28:	8f4080e7          	jalr	-1804(ra) # 80001318 <_Z8mem_freePv>
    MemoryAllocator::print();           //ovde treba da bude isti ispis kao na pocetku
    80001a2c:	00001097          	auipc	ra,0x1
    80001a30:	e14080e7          	jalr	-492(ra) # 80002840 <_ZN15MemoryAllocator5printEv>
    return 0;
}
    80001a34:	00000513          	li	a0,0
    80001a38:	02813083          	ld	ra,40(sp)
    80001a3c:	02013403          	ld	s0,32(sp)
    80001a40:	01813483          	ld	s1,24(sp)
    80001a44:	01013903          	ld	s2,16(sp)
    80001a48:	00813983          	ld	s3,8(sp)
    80001a4c:	00013a03          	ld	s4,0(sp)
    80001a50:	03010113          	addi	sp,sp,48
    80001a54:	00008067          	ret

0000000080001a58 <_ZN6ThreadD1Ev>:
Thread::Thread(void (*body)(void *), void *arg) {
    this->body = body;
    this->arg = arg;
}

Thread::~Thread() {
    80001a58:	ff010113          	addi	sp,sp,-16
    80001a5c:	00813423          	sd	s0,8(sp)
    80001a60:	01010413          	addi	s0,sp,16
}
    80001a64:	00813403          	ld	s0,8(sp)
    80001a68:	01010113          	addi	sp,sp,16
    80001a6c:	00008067          	ret

0000000080001a70 <_ZN9SemaphoreD1Ev>:
    if (myHandle == nullptr) {
        return -1;
    }
    return sem_trywait(myHandle);
}
Semaphore::~Semaphore(){
    80001a70:	ff010113          	addi	sp,sp,-16
    80001a74:	00113423          	sd	ra,8(sp)
    80001a78:	00813023          	sd	s0,0(sp)
    80001a7c:	01010413          	addi	s0,sp,16
    80001a80:	00004797          	auipc	a5,0x4
    80001a84:	49078793          	addi	a5,a5,1168 # 80005f10 <_ZTV9Semaphore+0x10>
    80001a88:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001a8c:	00853503          	ld	a0,8(a0)
    80001a90:	00000097          	auipc	ra,0x0
    80001a94:	a04080e7          	jalr	-1532(ra) # 80001494 <_Z9sem_closeP4_sem>
}
    80001a98:	00813083          	ld	ra,8(sp)
    80001a9c:	00013403          	ld	s0,0(sp)
    80001aa0:	01010113          	addi	sp,sp,16
    80001aa4:	00008067          	ret

0000000080001aa8 <_Znwm>:
void *operator new(size_t size) {
    80001aa8:	ff010113          	addi	sp,sp,-16
    80001aac:	00113423          	sd	ra,8(sp)
    80001ab0:	00813023          	sd	s0,0(sp)
    80001ab4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80001ab8:	00001097          	auipc	ra,0x1
    80001abc:	b48080e7          	jalr	-1208(ra) # 80002600 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001ac0:	00813083          	ld	ra,8(sp)
    80001ac4:	00013403          	ld	s0,0(sp)
    80001ac8:	01010113          	addi	sp,sp,16
    80001acc:	00008067          	ret

0000000080001ad0 <_Znam>:
void *operator new[](size_t size) {
    80001ad0:	ff010113          	addi	sp,sp,-16
    80001ad4:	00113423          	sd	ra,8(sp)
    80001ad8:	00813023          	sd	s0,0(sp)
    80001adc:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80001ae0:	00001097          	auipc	ra,0x1
    80001ae4:	b20080e7          	jalr	-1248(ra) # 80002600 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001ae8:	00813083          	ld	ra,8(sp)
    80001aec:	00013403          	ld	s0,0(sp)
    80001af0:	01010113          	addi	sp,sp,16
    80001af4:	00008067          	ret

0000000080001af8 <_ZdlPv>:
void operator delete( void* p ) noexcept {
    80001af8:	ff010113          	addi	sp,sp,-16
    80001afc:	00113423          	sd	ra,8(sp)
    80001b00:	00813023          	sd	s0,0(sp)
    80001b04:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    80001b08:	00001097          	auipc	ra,0x1
    80001b0c:	c30080e7          	jalr	-976(ra) # 80002738 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001b10:	00813083          	ld	ra,8(sp)
    80001b14:	00013403          	ld	s0,0(sp)
    80001b18:	01010113          	addi	sp,sp,16
    80001b1c:	00008067          	ret

0000000080001b20 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001b20:	ff010113          	addi	sp,sp,-16
    80001b24:	00113423          	sd	ra,8(sp)
    80001b28:	00813023          	sd	s0,0(sp)
    80001b2c:	01010413          	addi	s0,sp,16
}
    80001b30:	00000097          	auipc	ra,0x0
    80001b34:	fc8080e7          	jalr	-56(ra) # 80001af8 <_ZdlPv>
    80001b38:	00813083          	ld	ra,8(sp)
    80001b3c:	00013403          	ld	s0,0(sp)
    80001b40:	01010113          	addi	sp,sp,16
    80001b44:	00008067          	ret

0000000080001b48 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore(){
    80001b48:	fe010113          	addi	sp,sp,-32
    80001b4c:	00113c23          	sd	ra,24(sp)
    80001b50:	00813823          	sd	s0,16(sp)
    80001b54:	00913423          	sd	s1,8(sp)
    80001b58:	02010413          	addi	s0,sp,32
    80001b5c:	00050493          	mv	s1,a0
}
    80001b60:	00000097          	auipc	ra,0x0
    80001b64:	f10080e7          	jalr	-240(ra) # 80001a70 <_ZN9SemaphoreD1Ev>
    80001b68:	00048513          	mv	a0,s1
    80001b6c:	00000097          	auipc	ra,0x0
    80001b70:	f8c080e7          	jalr	-116(ra) # 80001af8 <_ZdlPv>
    80001b74:	01813083          	ld	ra,24(sp)
    80001b78:	01013403          	ld	s0,16(sp)
    80001b7c:	00813483          	ld	s1,8(sp)
    80001b80:	02010113          	addi	sp,sp,32
    80001b84:	00008067          	ret

0000000080001b88 <_ZdaPv>:
void operator delete[]( void* p ) noexcept {
    80001b88:	ff010113          	addi	sp,sp,-16
    80001b8c:	00113423          	sd	ra,8(sp)
    80001b90:	00813023          	sd	s0,0(sp)
    80001b94:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    80001b98:	00001097          	auipc	ra,0x1
    80001b9c:	ba0080e7          	jalr	-1120(ra) # 80002738 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001ba0:	00813083          	ld	ra,8(sp)
    80001ba4:	00013403          	ld	s0,0(sp)
    80001ba8:	01010113          	addi	sp,sp,16
    80001bac:	00008067          	ret

0000000080001bb0 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80001bb0:	ff010113          	addi	sp,sp,-16
    80001bb4:	00813423          	sd	s0,8(sp)
    80001bb8:	01010413          	addi	s0,sp,16
    80001bbc:	00004797          	auipc	a5,0x4
    80001bc0:	32c78793          	addi	a5,a5,812 # 80005ee8 <_ZTV6Thread+0x10>
    80001bc4:	00f53023          	sd	a5,0(a0)
    this->body = body;
    80001bc8:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    80001bcc:	00c53c23          	sd	a2,24(a0)
}
    80001bd0:	00813403          	ld	s0,8(sp)
    80001bd4:	01010113          	addi	sp,sp,16
    80001bd8:	00008067          	ret

0000000080001bdc <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001bdc:	ff010113          	addi	sp,sp,-16
    80001be0:	00113423          	sd	ra,8(sp)
    80001be4:	00813023          	sd	s0,0(sp)
    80001be8:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001bec:	00000097          	auipc	ra,0x0
    80001bf0:	828080e7          	jalr	-2008(ra) # 80001414 <_Z15thread_dispatchv>
}
    80001bf4:	00813083          	ld	ra,8(sp)
    80001bf8:	00013403          	ld	s0,0(sp)
    80001bfc:	01010113          	addi	sp,sp,16
    80001c00:	00008067          	ret

0000000080001c04 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t t) {
    80001c04:	ff010113          	addi	sp,sp,-16
    80001c08:	00813423          	sd	s0,8(sp)
    80001c0c:	01010413          	addi	s0,sp,16
}
    80001c10:	00000513          	li	a0,0
    80001c14:	00813403          	ld	s0,8(sp)
    80001c18:	01010113          	addi	sp,sp,16
    80001c1c:	00008067          	ret

0000000080001c20 <_ZN6Thread5startEv>:
int Thread::start(){
    80001c20:	ff010113          	addi	sp,sp,-16
    80001c24:	00113423          	sd	ra,8(sp)
    80001c28:	00813023          	sd	s0,0(sp)
    80001c2c:	01010413          	addi	s0,sp,16
    thread_create(&myHandle, body, arg);
    80001c30:	01853603          	ld	a2,24(a0)
    80001c34:	01053583          	ld	a1,16(a0)
    80001c38:	00850513          	addi	a0,a0,8
    80001c3c:	fffff097          	auipc	ra,0xfffff
    80001c40:	71c080e7          	jalr	1820(ra) # 80001358 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001c44:	00000513          	li	a0,0
    80001c48:	00813083          	ld	ra,8(sp)
    80001c4c:	00013403          	ld	s0,0(sp)
    80001c50:	01010113          	addi	sp,sp,16
    80001c54:	00008067          	ret

0000000080001c58 <_ZN6Thread10wrapperRunEPv>:
    if(pt != nullptr) ((Thread*)pt)->run();
    80001c58:	02050863          	beqz	a0,80001c88 <_ZN6Thread10wrapperRunEPv+0x30>
void Thread::wrapperRun(void* pt){
    80001c5c:	ff010113          	addi	sp,sp,-16
    80001c60:	00113423          	sd	ra,8(sp)
    80001c64:	00813023          	sd	s0,0(sp)
    80001c68:	01010413          	addi	s0,sp,16
    if(pt != nullptr) ((Thread*)pt)->run();
    80001c6c:	00053783          	ld	a5,0(a0)
    80001c70:	0107b783          	ld	a5,16(a5)
    80001c74:	000780e7          	jalr	a5
}
    80001c78:	00813083          	ld	ra,8(sp)
    80001c7c:	00013403          	ld	s0,0(sp)
    80001c80:	01010113          	addi	sp,sp,16
    80001c84:	00008067          	ret
    80001c88:	00008067          	ret

0000000080001c8c <_ZN6ThreadC1Ev>:
Thread::Thread(){
    80001c8c:	ff010113          	addi	sp,sp,-16
    80001c90:	00813423          	sd	s0,8(sp)
    80001c94:	01010413          	addi	s0,sp,16
    80001c98:	00004797          	auipc	a5,0x4
    80001c9c:	25078793          	addi	a5,a5,592 # 80005ee8 <_ZTV6Thread+0x10>
    80001ca0:	00f53023          	sd	a5,0(a0)
    this->body = nullptr;
    80001ca4:	00053823          	sd	zero,16(a0)
    this->arg = nullptr;
    80001ca8:	00053c23          	sd	zero,24(a0)
 }
    80001cac:	00813403          	ld	s0,8(sp)
    80001cb0:	01010113          	addi	sp,sp,16
    80001cb4:	00008067          	ret

0000000080001cb8 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init){
    80001cb8:	ff010113          	addi	sp,sp,-16
    80001cbc:	00113423          	sd	ra,8(sp)
    80001cc0:	00813023          	sd	s0,0(sp)
    80001cc4:	01010413          	addi	s0,sp,16
    80001cc8:	00004797          	auipc	a5,0x4
    80001ccc:	24878793          	addi	a5,a5,584 # 80005f10 <_ZTV9Semaphore+0x10>
    80001cd0:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80001cd4:	00850513          	addi	a0,a0,8
    80001cd8:	fffff097          	auipc	ra,0xfffff
    80001cdc:	778080e7          	jalr	1912(ra) # 80001450 <_Z8sem_openPP4_semj>
}
    80001ce0:	00813083          	ld	ra,8(sp)
    80001ce4:	00013403          	ld	s0,0(sp)
    80001ce8:	01010113          	addi	sp,sp,16
    80001cec:	00008067          	ret

0000000080001cf0 <_ZN9Semaphore6signalEv>:
    if (myHandle == nullptr) {
    80001cf0:	00853503          	ld	a0,8(a0)
    80001cf4:	02050663          	beqz	a0,80001d20 <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal(){
    80001cf8:	ff010113          	addi	sp,sp,-16
    80001cfc:	00113423          	sd	ra,8(sp)
    80001d00:	00813023          	sd	s0,0(sp)
    80001d04:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001d08:	00000097          	auipc	ra,0x0
    80001d0c:	80c080e7          	jalr	-2036(ra) # 80001514 <_Z10sem_signalP4_sem>
}
    80001d10:	00813083          	ld	ra,8(sp)
    80001d14:	00013403          	ld	s0,0(sp)
    80001d18:	01010113          	addi	sp,sp,16
    80001d1c:	00008067          	ret
        return -1;
    80001d20:	fff00513          	li	a0,-1
}
    80001d24:	00008067          	ret

0000000080001d28 <_ZN9Semaphore4waitEv>:
    if (myHandle == nullptr) {
    80001d28:	00853503          	ld	a0,8(a0)
    80001d2c:	02050663          	beqz	a0,80001d58 <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait(){
    80001d30:	ff010113          	addi	sp,sp,-16
    80001d34:	00113423          	sd	ra,8(sp)
    80001d38:	00813023          	sd	s0,0(sp)
    80001d3c:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001d40:	fffff097          	auipc	ra,0xfffff
    80001d44:	794080e7          	jalr	1940(ra) # 800014d4 <_Z8sem_waitP4_sem>
}
    80001d48:	00813083          	ld	ra,8(sp)
    80001d4c:	00013403          	ld	s0,0(sp)
    80001d50:	01010113          	addi	sp,sp,16
    80001d54:	00008067          	ret
        return -1;
    80001d58:	fff00513          	li	a0,-1
}
    80001d5c:	00008067          	ret

0000000080001d60 <_ZN9Semaphore7trywaitEv>:
    if (myHandle == nullptr) {
    80001d60:	00853503          	ld	a0,8(a0)
    80001d64:	02050663          	beqz	a0,80001d90 <_ZN9Semaphore7trywaitEv+0x30>
int Semaphore::trywait(){
    80001d68:	ff010113          	addi	sp,sp,-16
    80001d6c:	00113423          	sd	ra,8(sp)
    80001d70:	00813023          	sd	s0,0(sp)
    80001d74:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    80001d78:	fffff097          	auipc	ra,0xfffff
    80001d7c:	7dc080e7          	jalr	2012(ra) # 80001554 <_Z11sem_trywaitP4_sem>
}
    80001d80:	00813083          	ld	ra,8(sp)
    80001d84:	00013403          	ld	s0,0(sp)
    80001d88:	01010113          	addi	sp,sp,16
    80001d8c:	00008067          	ret
        return -1;
    80001d90:	fff00513          	li	a0,-1
}
    80001d94:	00008067          	ret

0000000080001d98 <_ZN7Console4getcEv>:



char Console::getc() {
    80001d98:	ff010113          	addi	sp,sp,-16
    80001d9c:	00113423          	sd	ra,8(sp)
    80001da0:	00813023          	sd	s0,0(sp)
    80001da4:	01010413          	addi	s0,sp,16
    return ::getc();
    80001da8:	fffff097          	auipc	ra,0xfffff
    80001dac:	7ec080e7          	jalr	2028(ra) # 80001594 <_Z4getcv>
}
    80001db0:	00813083          	ld	ra,8(sp)
    80001db4:	00013403          	ld	s0,0(sp)
    80001db8:	01010113          	addi	sp,sp,16
    80001dbc:	00008067          	ret

0000000080001dc0 <_ZN7Console4putcEc>:
void Console::putc(char c) {
    80001dc0:	ff010113          	addi	sp,sp,-16
    80001dc4:	00113423          	sd	ra,8(sp)
    80001dc8:	00813023          	sd	s0,0(sp)
    80001dcc:	01010413          	addi	s0,sp,16
    ::putc(c);
    80001dd0:	00000097          	auipc	ra,0x0
    80001dd4:	804080e7          	jalr	-2044(ra) # 800015d4 <_Z4putcc>
    80001dd8:	00813083          	ld	ra,8(sp)
    80001ddc:	00013403          	ld	s0,0(sp)
    80001de0:	01010113          	addi	sp,sp,16
    80001de4:	00008067          	ret

0000000080001de8 <_ZN6Thread3runEv>:

    static void wrapperRun(void* arg);

protected:
    Thread();
    virtual void run() {}
    80001de8:	ff010113          	addi	sp,sp,-16
    80001dec:	00813423          	sd	s0,8(sp)
    80001df0:	01010413          	addi	s0,sp,16
    80001df4:	00813403          	ld	s0,8(sp)
    80001df8:	01010113          	addi	sp,sp,16
    80001dfc:	00008067          	ret

0000000080001e00 <_ZN5Riscv13obradaprekidaEmmmmm>:
    ILLEGAL_INSTRTUCION = 2,
    ILLEGAL_READ_ADDRESS = 5,
    ILLEGAL_WRITE_ADDRESS = 7,
};

void Riscv::obradaprekida(uint64 code, uint64 arg1, uint64 arg2, uint64 arg3, uint64 arg4) {
    80001e00:	fc010113          	addi	sp,sp,-64
    80001e04:	02113c23          	sd	ra,56(sp)
    80001e08:	02813823          	sd	s0,48(sp)
    80001e0c:	02913423          	sd	s1,40(sp)
    80001e10:	03213023          	sd	s2,32(sp)
    80001e14:	04010413          	addi	s0,sp,64
    80001e18:	00050793          	mv	a5,a0
    80001e1c:	00058513          	mv	a0,a1
    80001e20:	00060593          	mv	a1,a2
    80001e24:	00068613          	mv	a2,a3
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001e28:	142026f3          	csrr	a3,scause
    80001e2c:	fcd43c23          	sd	a3,-40(s0)
    return scause;
    80001e30:	fd843683          	ld	a3,-40(s0)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001e34:	14102873          	csrr	a6,sepc
    80001e38:	fd043823          	sd	a6,-48(s0)
    return sepc;
    80001e3c:	fd043483          	ld	s1,-48(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001e40:	10002873          	csrr	a6,sstatus
    80001e44:	fd043423          	sd	a6,-56(s0)
    return sstatus;
    80001e48:	fc843903          	ld	s2,-56(s0)
    uint64 scause = r_scause();
    uint64 sepc = r_sepc(); //cita pc
    uint64 sstatus = r_sstatus();//cita status registar

    if (scause == SYSCALL_S or scause == SYSCALL_U) {
    80001e4c:	ff868893          	addi	a7,a3,-8
    80001e50:	00100813          	li	a6,1
    80001e54:	03187863          	bgeu	a6,a7,80001e84 <_ZN5Riscv13obradaprekidaEmmmmm+0x84>
            break;
        }

        w_sstatus(sstatus);
        w_sepc(sepc + 4);
    } else if (scause == TIMER) {
    80001e58:	fff00793          	li	a5,-1
    80001e5c:	03f79793          	slli	a5,a5,0x3f
    80001e60:	00178793          	addi	a5,a5,1
    80001e64:	10f68063          	beq	a3,a5,80001f64 <_ZN5Riscv13obradaprekidaEmmmmm+0x164>
        mc_sip(SIP_SSIE);

    } else if (scause == CONSOLE) {
    80001e68:	fff00793          	li	a5,-1
    80001e6c:	03f79793          	slli	a5,a5,0x3f
    80001e70:	00978793          	addi	a5,a5,9
    80001e74:	04f69463          	bne	a3,a5,80001ebc <_ZN5Riscv13obradaprekidaEmmmmm+0xbc>
        console_handler();
    80001e78:	00003097          	auipc	ra,0x3
    80001e7c:	c08080e7          	jalr	-1016(ra) # 80004a80 <console_handler>
    } else if (scause == ILLEGAL_READ_ADDRESS) {
      //??
    } else if (scause == ILLEGAL_WRITE_ADDRESS) {
      //??
    };
}
    80001e80:	03c0006f          	j	80001ebc <_ZN5Riscv13obradaprekidaEmmmmm+0xbc>
        switch (code) {
    80001e84:	04200693          	li	a3,66
    80001e88:	02f6e463          	bltu	a3,a5,80001eb0 <_ZN5Riscv13obradaprekidaEmmmmm+0xb0>
    80001e8c:	00279793          	slli	a5,a5,0x2
    80001e90:	00003697          	auipc	a3,0x3
    80001e94:	1b868693          	addi	a3,a3,440 # 80005048 <CONSOLE_STATUS+0x38>
    80001e98:	00d787b3          	add	a5,a5,a3
    80001e9c:	0007a783          	lw	a5,0(a5)
    80001ea0:	00d787b3          	add	a5,a5,a3
    80001ea4:	00078067          	jr	a5
                MemoryAllocator::mem_alloc(arg1);
    80001ea8:	00000097          	auipc	ra,0x0
    80001eac:	758080e7          	jalr	1880(ra) # 80002600 <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001eb0:	10091073          	csrw	sstatus,s2
        w_sepc(sepc + 4);
    80001eb4:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001eb8:	14149073          	csrw	sepc,s1
}
    80001ebc:	03813083          	ld	ra,56(sp)
    80001ec0:	03013403          	ld	s0,48(sp)
    80001ec4:	02813483          	ld	s1,40(sp)
    80001ec8:	02013903          	ld	s2,32(sp)
    80001ecc:	04010113          	addi	sp,sp,64
    80001ed0:	00008067          	ret
                MemoryAllocator::mem_free((void *) arg1);
    80001ed4:	00001097          	auipc	ra,0x1
    80001ed8:	864080e7          	jalr	-1948(ra) # 80002738 <_ZN15MemoryAllocator8mem_freeEPv>
            break;
    80001edc:	fd5ff06f          	j	80001eb0 <_ZN5Riscv13obradaprekidaEmmmmm+0xb0>
                __getc();
    80001ee0:	00003097          	auipc	ra,0x3
    80001ee4:	b68080e7          	jalr	-1176(ra) # 80004a48 <__getc>
            break;
    80001ee8:	fc9ff06f          	j	80001eb0 <_ZN5Riscv13obradaprekidaEmmmmm+0xb0>
                __putc(arg1);
    80001eec:	0ff57513          	andi	a0,a0,255
    80001ef0:	00003097          	auipc	ra,0x3
    80001ef4:	b1c080e7          	jalr	-1252(ra) # 80004a0c <__putc>
            break;
    80001ef8:	fb9ff06f          	j	80001eb0 <_ZN5Riscv13obradaprekidaEmmmmm+0xb0>
                TCB::createThread((thread_t*) arg1, (TCB::Body) arg2, (void *) arg3,(void *) arg4);
    80001efc:	00070693          	mv	a3,a4
    80001f00:	00000097          	auipc	ra,0x0
    80001f04:	220080e7          	jalr	544(ra) # 80002120 <_ZN3TCB12createThreadEPPS_PFvPvES2_S2_>
            break;
    80001f08:	fa9ff06f          	j	80001eb0 <_ZN5Riscv13obradaprekidaEmmmmm+0xb0>
                TCB::thread_exit();
    80001f0c:	00000097          	auipc	ra,0x0
    80001f10:	2c0080e7          	jalr	704(ra) # 800021cc <_ZN3TCB11thread_exitEv>
            break;
    80001f14:	f9dff06f          	j	80001eb0 <_ZN5Riscv13obradaprekidaEmmmmm+0xb0>
                TCB::dispatch();
    80001f18:	00000097          	auipc	ra,0x0
    80001f1c:	0dc080e7          	jalr	220(ra) # 80001ff4 <_ZN3TCB8dispatchEv>
            break;
    80001f20:	f91ff06f          	j	80001eb0 <_ZN5Riscv13obradaprekidaEmmmmm+0xb0>
                _sem::sem_open((sem_t*) arg1, arg2);
    80001f24:	0005859b          	sext.w	a1,a1
    80001f28:	00000097          	auipc	ra,0x0
    80001f2c:	2dc080e7          	jalr	732(ra) # 80002204 <_ZN4_sem8sem_openEPPS_j>
            break;
    80001f30:	f81ff06f          	j	80001eb0 <_ZN5Riscv13obradaprekidaEmmmmm+0xb0>
                _sem::sem_close((sem_t) arg1);
    80001f34:	00000097          	auipc	ra,0x0
    80001f38:	33c080e7          	jalr	828(ra) # 80002270 <_ZN4_sem9sem_closeEPS_>
            break;
    80001f3c:	f75ff06f          	j	80001eb0 <_ZN5Riscv13obradaprekidaEmmmmm+0xb0>
                _sem::sem_wait((sem_t) arg1);
    80001f40:	00000097          	auipc	ra,0x0
    80001f44:	3e8080e7          	jalr	1000(ra) # 80002328 <_ZN4_sem8sem_waitEPS_>
            break;
    80001f48:	f69ff06f          	j	80001eb0 <_ZN5Riscv13obradaprekidaEmmmmm+0xb0>
                _sem::sem_signal((sem_t) arg1);
    80001f4c:	00000097          	auipc	ra,0x0
    80001f50:	420080e7          	jalr	1056(ra) # 8000236c <_ZN4_sem10sem_signalEPS_>
            break;
    80001f54:	f5dff06f          	j	80001eb0 <_ZN5Riscv13obradaprekidaEmmmmm+0xb0>
                _sem::sem_trywait((sem_t) arg1);
    80001f58:	00000097          	auipc	ra,0x0
    80001f5c:	4c4080e7          	jalr	1220(ra) # 8000241c <_ZN4_sem11sem_trywaitEPS_>
            break;
    80001f60:	f51ff06f          	j	80001eb0 <_ZN5Riscv13obradaprekidaEmmmmm+0xb0>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001f64:	00200793          	li	a5,2
    80001f68:	1447b073          	csrc	sip,a5
}
    80001f6c:	f51ff06f          	j	80001ebc <_ZN5Riscv13obradaprekidaEmmmmm+0xbc>

0000000080001f70 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie() { //--------------help???
    80001f70:	ff010113          	addi	sp,sp,-16
    80001f74:	00813423          	sd	s0,8(sp)
    80001f78:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001f7c:	10000793          	li	a5,256
    80001f80:	1007b073          	csrc	sstatus,a5
    Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    __asm__ volatile("csrw sepc, ra");
    80001f84:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001f88:	10200073          	sret
    80001f8c:	00813403          	ld	s0,8(sp)
    80001f90:	01010113          	addi	sp,sp,16
    80001f94:	00008067          	ret

0000000080001f98 <_ZN3TCB14thread_wrapperEv>:
    }
    running->setFinished(true);
    return 0;
  }

void TCB::thread_wrapper() {
    80001f98:	fe010113          	addi	sp,sp,-32
    80001f9c:	00113c23          	sd	ra,24(sp)
    80001fa0:	00813823          	sd	s0,16(sp)
    80001fa4:	00913423          	sd	s1,8(sp)
    80001fa8:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001fac:	00000097          	auipc	ra,0x0
    80001fb0:	fc4080e7          	jalr	-60(ra) # 80001f70 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80001fb4:	00004497          	auipc	s1,0x4
    80001fb8:	ff448493          	addi	s1,s1,-12 # 80005fa8 <_ZN3TCB7runningE>
    80001fbc:	0004b783          	ld	a5,0(s1)
    80001fc0:	0007b703          	ld	a4,0(a5)
    80001fc4:	0087b503          	ld	a0,8(a5)
    80001fc8:	000700e7          	jalr	a4
    running->setFinished(true);
    80001fcc:	0004b783          	ld	a5,0(s1)

class TCB {
  public:
    using Body = void (*)(void*);
    bool isFinished() const { return finished; }
    void setFinished(bool value) { finished = value; }
    80001fd0:	00100713          	li	a4,1
    80001fd4:	02e78423          	sb	a4,40(a5)
    ::thread_dispatch(); //da li treba
    80001fd8:	fffff097          	auipc	ra,0xfffff
    80001fdc:	43c080e7          	jalr	1084(ra) # 80001414 <_Z15thread_dispatchv>
    80001fe0:	01813083          	ld	ra,24(sp)
    80001fe4:	01013403          	ld	s0,16(sp)
    80001fe8:	00813483          	ld	s1,8(sp)
    80001fec:	02010113          	addi	sp,sp,32
    80001ff0:	00008067          	ret

0000000080001ff4 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() { //promena konteksta, trenutnu zavrsenu zameni nekom drugom
    80001ff4:	fe010113          	addi	sp,sp,-32
    80001ff8:	00113c23          	sd	ra,24(sp)
    80001ffc:	00813823          	sd	s0,16(sp)
    80002000:	00913423          	sd	s1,8(sp)
    80002004:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80002008:	00004497          	auipc	s1,0x4
    8000200c:	fa04b483          	ld	s1,-96(s1) # 80005fa8 <_ZN3TCB7runningE>
    if (old != nullptr && !old->isFinished() && !old->isBlocked()) {
    80002010:	00048a63          	beqz	s1,80002024 <_ZN3TCB8dispatchEv+0x30>
    bool isFinished() const { return finished; }
    80002014:	0284c783          	lbu	a5,40(s1)
    80002018:	00079663          	bnez	a5,80002024 <_ZN3TCB8dispatchEv+0x30>

    bool isBlocked() const { return blocked; }
    8000201c:	0294c783          	lbu	a5,41(s1)
    80002020:	02078c63          	beqz	a5,80002058 <_ZN3TCB8dispatchEv+0x64>
    running = Scheduler::get();
    80002024:	00000097          	auipc	ra,0x0
    80002028:	4e4080e7          	jalr	1252(ra) # 80002508 <_ZN9Scheduler3getEv>
    8000202c:	00004797          	auipc	a5,0x4
    80002030:	f6a7be23          	sd	a0,-132(a5) # 80005fa8 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80002034:	01850593          	addi	a1,a0,24
    80002038:	01848513          	addi	a0,s1,24
    8000203c:	fffff097          	auipc	ra,0xfffff
    80002040:	164080e7          	jalr	356(ra) # 800011a0 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002044:	01813083          	ld	ra,24(sp)
    80002048:	01013403          	ld	s0,16(sp)
    8000204c:	00813483          	ld	s1,8(sp)
    80002050:	02010113          	addi	sp,sp,32
    80002054:	00008067          	ret
        Scheduler::put(old);
    80002058:	00048513          	mv	a0,s1
    8000205c:	00000097          	auipc	ra,0x0
    80002060:	440080e7          	jalr	1088(ra) # 8000249c <_ZN9Scheduler3putEP3TCB>
    80002064:	fc1ff06f          	j	80002024 <_ZN3TCB8dispatchEv+0x30>

0000000080002068 <_ZN3TCB5yieldEv>:
void TCB::yield() {
    80002068:	ff010113          	addi	sp,sp,-16
    8000206c:	00113423          	sd	ra,8(sp)
    80002070:	00813023          	sd	s0,0(sp)
    80002074:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    80002078:	fffff097          	auipc	ra,0xfffff
    8000207c:	13c080e7          	jalr	316(ra) # 800011b4 <_ZN5Riscv13pushRegistersEv>
    TCB::dispatch();
    80002080:	00000097          	auipc	ra,0x0
    80002084:	f74080e7          	jalr	-140(ra) # 80001ff4 <_ZN3TCB8dispatchEv>
    Riscv::popRegisters();
    80002088:	fffff097          	auipc	ra,0xfffff
    8000208c:	1a8080e7          	jalr	424(ra) # 80001230 <_ZN5Riscv12popRegistersEv>
}
    80002090:	00813083          	ld	ra,8(sp)
    80002094:	00013403          	ld	s0,0(sp)
    80002098:	01010113          	addi	sp,sp,16
    8000209c:	00008067          	ret

00000000800020a0 <_ZN3TCBC1EPFvPvES0_S0_>:
TCB::TCB(Body body, void* arg, void* stack_space): body(body), arg(arg), finished(false), blocked(false) {// da li moze drugacije
    800020a0:	fe010113          	addi	sp,sp,-32
    800020a4:	00113c23          	sd	ra,24(sp)
    800020a8:	00813823          	sd	s0,16(sp)
    800020ac:	00913423          	sd	s1,8(sp)
    800020b0:	02010413          	addi	s0,sp,32
    800020b4:	00050493          	mv	s1,a0
    800020b8:	00b53023          	sd	a1,0(a0)
    800020bc:	00c53423          	sd	a2,8(a0)
    800020c0:	02050423          	sb	zero,40(a0)
    800020c4:	020504a3          	sb	zero,41(a0)
    if (stack_space) {
    800020c8:	04068263          	beqz	a3,8000210c <_ZN3TCBC1EPFvPvES0_S0_+0x6c>
        stack = static_cast<uint64*>(stack_space);
    800020cc:	00d53823          	sd	a3,16(a0)
    context.ra = (uint64)&thread_wrapper;
    800020d0:	00000797          	auipc	a5,0x0
    800020d4:	ec878793          	addi	a5,a5,-312 # 80001f98 <_ZN3TCB14thread_wrapperEv>
    800020d8:	00f4bc23          	sd	a5,24(s1)
    context.sp = (uint64)((char*)stack + DEFAULT_STACK_SIZE);
    800020dc:	0104b783          	ld	a5,16(s1)
    800020e0:	00001737          	lui	a4,0x1
    800020e4:	00e787b3          	add	a5,a5,a4
    800020e8:	02f4b023          	sd	a5,32(s1)
    Scheduler::put(this);
    800020ec:	00048513          	mv	a0,s1
    800020f0:	00000097          	auipc	ra,0x0
    800020f4:	3ac080e7          	jalr	940(ra) # 8000249c <_ZN9Scheduler3putEP3TCB>
}
    800020f8:	01813083          	ld	ra,24(sp)
    800020fc:	01013403          	ld	s0,16(sp)
    80002100:	00813483          	ld	s1,8(sp)
    80002104:	02010113          	addi	sp,sp,32
    80002108:	00008067          	ret
        stack = static_cast<uint64*>(MemoryAllocator::mem_alloc(stack_size_in_blocks * MEM_BLOCK_SIZE));
    8000210c:	00008537          	lui	a0,0x8
    80002110:	00000097          	auipc	ra,0x0
    80002114:	4f0080e7          	jalr	1264(ra) # 80002600 <_ZN15MemoryAllocator9mem_allocEm>
    80002118:	00a4b823          	sd	a0,16(s1)
    8000211c:	fb5ff06f          	j	800020d0 <_ZN3TCBC1EPFvPvES0_S0_+0x30>

0000000080002120 <_ZN3TCB12createThreadEPPS_PFvPvES2_S2_>:
    if (!handle) {
    80002120:	08050463          	beqz	a0,800021a8 <_ZN3TCB12createThreadEPPS_PFvPvES2_S2_+0x88>
int TCB::createThread(thread_t *handle, Body body, void *arg, void *stack_space) {
    80002124:	fc010113          	addi	sp,sp,-64
    80002128:	02113c23          	sd	ra,56(sp)
    8000212c:	02813823          	sd	s0,48(sp)
    80002130:	02913423          	sd	s1,40(sp)
    80002134:	03213023          	sd	s2,32(sp)
    80002138:	01313c23          	sd	s3,24(sp)
    8000213c:	01413823          	sd	s4,16(sp)
    80002140:	01513423          	sd	s5,8(sp)
    80002144:	04010413          	addi	s0,sp,64
    80002148:	00050493          	mv	s1,a0
    8000214c:	00058913          	mv	s2,a1
    80002150:	00060993          	mv	s3,a2
    80002154:	00068a13          	mv	s4,a3
    TCB* new_thread = new TCB(body, arg, stack_space); //drugi konstruktor da li imati odma samo jedan ili je ovako ok
    80002158:	03000513          	li	a0,48
    8000215c:	00000097          	auipc	ra,0x0
    80002160:	94c080e7          	jalr	-1716(ra) # 80001aa8 <_Znwm>
    80002164:	00050a93          	mv	s5,a0
    80002168:	000a0693          	mv	a3,s4
    8000216c:	00098613          	mv	a2,s3
    80002170:	00090593          	mv	a1,s2
    80002174:	00000097          	auipc	ra,0x0
    80002178:	f2c080e7          	jalr	-212(ra) # 800020a0 <_ZN3TCBC1EPFvPvES0_S0_>
    *handle = new_thread;
    8000217c:	0154b023          	sd	s5,0(s1)
    return 0;
    80002180:	00000513          	li	a0,0
}
    80002184:	03813083          	ld	ra,56(sp)
    80002188:	03013403          	ld	s0,48(sp)
    8000218c:	02813483          	ld	s1,40(sp)
    80002190:	02013903          	ld	s2,32(sp)
    80002194:	01813983          	ld	s3,24(sp)
    80002198:	01013a03          	ld	s4,16(sp)
    8000219c:	00813a83          	ld	s5,8(sp)
    800021a0:	04010113          	addi	sp,sp,64
    800021a4:	00008067          	ret
        return -1;
    800021a8:	fff00513          	li	a0,-1
}
    800021ac:	00008067          	ret
    800021b0:	00050493          	mv	s1,a0
    TCB* new_thread = new TCB(body, arg, stack_space); //drugi konstruktor da li imati odma samo jedan ili je ovako ok
    800021b4:	000a8513          	mv	a0,s5
    800021b8:	00000097          	auipc	ra,0x0
    800021bc:	940080e7          	jalr	-1728(ra) # 80001af8 <_ZdlPv>
    800021c0:	00048513          	mv	a0,s1
    800021c4:	00005097          	auipc	ra,0x5
    800021c8:	ed4080e7          	jalr	-300(ra) # 80007098 <_Unwind_Resume>

00000000800021cc <_ZN3TCB11thread_exitEv>:
int TCB::thread_exit(){ // da li treba jos nesto
    800021cc:	ff010113          	addi	sp,sp,-16
    800021d0:	00813423          	sd	s0,8(sp)
    800021d4:	01010413          	addi	s0,sp,16
    if (running == nullptr) {
    800021d8:	00004797          	auipc	a5,0x4
    800021dc:	dd07b783          	ld	a5,-560(a5) # 80005fa8 <_ZN3TCB7runningE>
    800021e0:	00078e63          	beqz	a5,800021fc <_ZN3TCB11thread_exitEv+0x30>
    void setFinished(bool value) { finished = value; }
    800021e4:	00100713          	li	a4,1
    800021e8:	02e78423          	sb	a4,40(a5)
    return 0;
    800021ec:	00000513          	li	a0,0
  }
    800021f0:	00813403          	ld	s0,8(sp)
    800021f4:	01010113          	addi	sp,sp,16
    800021f8:	00008067          	ret
        return -1;
    800021fc:	fff00513          	li	a0,-1
    80002200:	ff1ff06f          	j	800021f0 <_ZN3TCB11thread_exitEv+0x24>

0000000080002204 <_ZN4_sem8sem_openEPPS_j>:

#include "../h/_sem.hpp"
#include "../h/scheduler.hpp"

 int _sem::sem_open(sem_t* handle, unsigned init){
   if (handle == nullptr) {
    80002204:	04050e63          	beqz	a0,80002260 <_ZN4_sem8sem_openEPPS_j+0x5c>
 int _sem::sem_open(sem_t* handle, unsigned init){
    80002208:	fe010113          	addi	sp,sp,-32
    8000220c:	00113c23          	sd	ra,24(sp)
    80002210:	00813823          	sd	s0,16(sp)
    80002214:	00913423          	sd	s1,8(sp)
    80002218:	01213023          	sd	s2,0(sp)
    8000221c:	02010413          	addi	s0,sp,32
    80002220:	00050493          	mv	s1,a0
    80002224:	00058913          	mv	s2,a1
    return -1;
   }
   sem_t semaphore = (sem_t) MemoryAllocator::mem_alloc(sizeof(_sem));
    80002228:	03000513          	li	a0,48
    8000222c:	00000097          	auipc	ra,0x0
    80002230:	3d4080e7          	jalr	980(ra) # 80002600 <_ZN15MemoryAllocator9mem_allocEm>
   semaphore->value=init;
    80002234:	01252423          	sw	s2,8(a0) # 8008 <_entry-0x7fff7ff8>
   semaphore->closed=false;
    80002238:	00050c23          	sb	zero,24(a0)
   *handle=semaphore;
    8000223c:	00a4b023          	sd	a0,0(s1)

   if (*handle == nullptr) {
    80002240:	02050463          	beqz	a0,80002268 <_ZN4_sem8sem_openEPPS_j+0x64>
    return -2;
   }
   return 0;
    80002244:	00000513          	li	a0,0
  }
    80002248:	01813083          	ld	ra,24(sp)
    8000224c:	01013403          	ld	s0,16(sp)
    80002250:	00813483          	ld	s1,8(sp)
    80002254:	00013903          	ld	s2,0(sp)
    80002258:	02010113          	addi	sp,sp,32
    8000225c:	00008067          	ret
    return -1;
    80002260:	fff00513          	li	a0,-1
  }
    80002264:	00008067          	ret
    return -2;
    80002268:	ffe00513          	li	a0,-2
    8000226c:	fddff06f          	j	80002248 <_ZN4_sem8sem_openEPPS_j+0x44>

0000000080002270 <_ZN4_sem9sem_closeEPS_>:


int _sem::sem_close(sem_t handle){
  if (handle == nullptr || handle->closed) {
    80002270:	0a050063          	beqz	a0,80002310 <_ZN4_sem9sem_closeEPS_+0xa0>
int _sem::sem_close(sem_t handle){
    80002274:	fe010113          	addi	sp,sp,-32
    80002278:	00113c23          	sd	ra,24(sp)
    8000227c:	00813823          	sd	s0,16(sp)
    80002280:	00913423          	sd	s1,8(sp)
    80002284:	02010413          	addi	s0,sp,32
    80002288:	00050493          	mv	s1,a0
  if (handle == nullptr || handle->closed) {
    8000228c:	01854783          	lbu	a5,24(a0)
    80002290:	08079463          	bnez	a5,80002318 <_ZN4_sem9sem_closeEPS_+0xa8>
   return -1;
  }

  handle->closed = true;
    80002294:	00100793          	li	a5,1
    80002298:	00f50c23          	sb	a5,24(a0)
            return ret;
        }

        T *peekFirst()
        {
            if (!head) { return 0; }
    8000229c:	02053503          	ld	a0,32(a0)
    800022a0:	02050263          	beqz	a0,800022c4 <_ZN4_sem9sem_closeEPS_+0x54>
            return head->data;
    800022a4:	00053503          	ld	a0,0(a0)
    800022a8:	01c0006f          	j	800022c4 <_ZN4_sem9sem_closeEPS_+0x54>
            if (!head) { tail = 0; }
    800022ac:	0204b423          	sd	zero,40(s1)
            delete elem;
    800022b0:	00000097          	auipc	ra,0x0
    800022b4:	848080e7          	jalr	-1976(ra) # 80001af8 <_ZdlPv>
            if (!head) { return 0; }
    800022b8:	0204b783          	ld	a5,32(s1)
    800022bc:	02078863          	beqz	a5,800022ec <_ZN4_sem9sem_closeEPS_+0x7c>
            return head->data;
    800022c0:	0007b503          	ld	a0,0(a5)
  for (TCB* thread = handle->blokiraneNiti.peekFirst(); thread != nullptr; thread = handle->blokiraneNiti.peekFirst()) {
    800022c4:	02050463          	beqz	a0,800022ec <_ZN4_sem9sem_closeEPS_+0x7c>
    void setBlocked(bool value) { blocked = value; }
    800022c8:	020504a3          	sb	zero,41(a0)
   thread->setBlocked(false);  // Oznaci nit kao deblokiranu
   Scheduler::put(thread);     //
    800022cc:	00000097          	auipc	ra,0x0
    800022d0:	1d0080e7          	jalr	464(ra) # 8000249c <_ZN9Scheduler3putEP3TCB>
            if (!head) { return 0; }
    800022d4:	0204b503          	ld	a0,32(s1)
    800022d8:	fe0500e3          	beqz	a0,800022b8 <_ZN4_sem9sem_closeEPS_+0x48>
            head = head->next;
    800022dc:	00853783          	ld	a5,8(a0)
    800022e0:	02f4b023          	sd	a5,32(s1)
            if (!head) { tail = 0; }
    800022e4:	fc0796e3          	bnez	a5,800022b0 <_ZN4_sem9sem_closeEPS_+0x40>
    800022e8:	fc5ff06f          	j	800022ac <_ZN4_sem9sem_closeEPS_+0x3c>
   handle->blokiraneNiti.removeFirst();  // ukloni  nit iz liste
  }

  if (MemoryAllocator::mem_free(handle)) {
    800022ec:	00048513          	mv	a0,s1
    800022f0:	00000097          	auipc	ra,0x0
    800022f4:	448080e7          	jalr	1096(ra) # 80002738 <_ZN15MemoryAllocator8mem_freeEPv>
    800022f8:	02051463          	bnez	a0,80002320 <_ZN4_sem9sem_closeEPS_+0xb0>
   return -2;
  }

  return 0;
 }
    800022fc:	01813083          	ld	ra,24(sp)
    80002300:	01013403          	ld	s0,16(sp)
    80002304:	00813483          	ld	s1,8(sp)
    80002308:	02010113          	addi	sp,sp,32
    8000230c:	00008067          	ret
   return -1;
    80002310:	fff00513          	li	a0,-1
 }
    80002314:	00008067          	ret
   return -1;
    80002318:	fff00513          	li	a0,-1
    8000231c:	fe1ff06f          	j	800022fc <_ZN4_sem9sem_closeEPS_+0x8c>
   return -2;
    80002320:	ffe00513          	li	a0,-2
    80002324:	fd9ff06f          	j	800022fc <_ZN4_sem9sem_closeEPS_+0x8c>

0000000080002328 <_ZN4_sem8sem_waitEPS_>:


int _sem::sem_wait(sem_t id){
    80002328:	ff010113          	addi	sp,sp,-16
    8000232c:	00813423          	sd	s0,8(sp)
    80002330:	01010413          	addi	s0,sp,16
  if (id == nullptr || id->closed) {
    80002334:	02050463          	beqz	a0,8000235c <_ZN4_sem8sem_waitEPS_+0x34>
    80002338:	01854783          	lbu	a5,24(a0)
    8000233c:	02079463          	bnez	a5,80002364 <_ZN4_sem8sem_waitEPS_+0x3c>
   id->blokiraneNiti.addLast(currentThread);  // Dodaj nit na listu blokiranih
   TCB::yield();

   return 0;
  } else  {
   id->value--;
    80002340:	00852783          	lw	a5,8(a0)
    80002344:	fff7879b          	addiw	a5,a5,-1
    80002348:	00f52423          	sw	a5,8(a0)
   return 0;
    8000234c:	00000513          	li	a0,0
  }
 }
    80002350:	00813403          	ld	s0,8(sp)
    80002354:	01010113          	addi	sp,sp,16
    80002358:	00008067          	ret
   return -1;
    8000235c:	fff00513          	li	a0,-1
    80002360:	ff1ff06f          	j	80002350 <_ZN4_sem8sem_waitEPS_+0x28>
    80002364:	fff00513          	li	a0,-1
    80002368:	fe9ff06f          	j	80002350 <_ZN4_sem8sem_waitEPS_+0x28>

000000008000236c <_ZN4_sem10sem_signalEPS_>:


int _sem::sem_signal(sem_t id) {
  if (id == nullptr) {
    8000236c:	08050863          	beqz	a0,800023fc <_ZN4_sem10sem_signalEPS_+0x90>
    80002370:	00050793          	mv	a5,a0
   return -1;
  }

  if (id->closed) {
    80002374:	01854703          	lbu	a4,24(a0)
    80002378:	08071663          	bnez	a4,80002404 <_ZN4_sem10sem_signalEPS_+0x98>
            if (!tail) { return 0; }
            return tail->data;
        }

        bool isEmpty() const {
            return head == nullptr;
    8000237c:	02053503          	ld	a0,32(a0)
   return -2;
  }

  // da li postoji neka blokirana nit
  if (!id->blokiraneNiti.isEmpty()) {
    80002380:	06050463          	beqz	a0,800023e8 <_ZN4_sem10sem_signalEPS_+0x7c>
            if (!head) { return 0; }
    80002384:	08050463          	beqz	a0,8000240c <_ZN4_sem10sem_signalEPS_+0xa0>
int _sem::sem_signal(sem_t id) {
    80002388:	fe010113          	addi	sp,sp,-32
    8000238c:	00113c23          	sd	ra,24(sp)
    80002390:	00813823          	sd	s0,16(sp)
    80002394:	00913423          	sd	s1,8(sp)
    80002398:	02010413          	addi	s0,sp,32
            head = head->next;
    8000239c:	00853703          	ld	a4,8(a0)
    800023a0:	02e7b023          	sd	a4,32(a5)
            if (!head) { tail = 0; }
    800023a4:	02070e63          	beqz	a4,800023e0 <_ZN4_sem10sem_signalEPS_+0x74>
            T *ret = elem->data;
    800023a8:	00053483          	ld	s1,0(a0)
            delete elem;
    800023ac:	fffff097          	auipc	ra,0xfffff
    800023b0:	74c080e7          	jalr	1868(ra) # 80001af8 <_ZdlPv>
   TCB* thread = id->blokiraneNiti.removeFirst();  // ako da  deblokiraj prvu
   if (thread != nullptr) {
    800023b4:	06048063          	beqz	s1,80002414 <_ZN4_sem10sem_signalEPS_+0xa8>
    800023b8:	020484a3          	sb	zero,41(s1)
    thread->setBlocked(false);  // nije blokirana
    Scheduler::put(thread);  // ubaci
    800023bc:	00048513          	mv	a0,s1
    800023c0:	00000097          	auipc	ra,0x0
    800023c4:	0dc080e7          	jalr	220(ra) # 8000249c <_ZN9Scheduler3putEP3TCB>
   }
  } else {   /// nema blokiranih niti, samo povecaj vrednost semafora
   id->value++;
  }

  return 0;
    800023c8:	00000513          	li	a0,0
 }
    800023cc:	01813083          	ld	ra,24(sp)
    800023d0:	01013403          	ld	s0,16(sp)
    800023d4:	00813483          	ld	s1,8(sp)
    800023d8:	02010113          	addi	sp,sp,32
    800023dc:	00008067          	ret
            if (!head) { tail = 0; }
    800023e0:	0207b423          	sd	zero,40(a5)
    800023e4:	fc5ff06f          	j	800023a8 <_ZN4_sem10sem_signalEPS_+0x3c>
   id->value++;
    800023e8:	0087a703          	lw	a4,8(a5)
    800023ec:	0017071b          	addiw	a4,a4,1
    800023f0:	00e7a423          	sw	a4,8(a5)
  return 0;
    800023f4:	00000513          	li	a0,0
    800023f8:	00008067          	ret
   return -1;
    800023fc:	fff00513          	li	a0,-1
    80002400:	00008067          	ret
   return -2;
    80002404:	ffe00513          	li	a0,-2
    80002408:	00008067          	ret
  return 0;
    8000240c:	00000513          	li	a0,0
 }
    80002410:	00008067          	ret
  return 0;
    80002414:	00000513          	li	a0,0
    80002418:	fb5ff06f          	j	800023cc <_ZN4_sem10sem_signalEPS_+0x60>

000000008000241c <_ZN4_sem11sem_trywaitEPS_>:

int _sem::sem_trywait(sem_t id) {
    8000241c:	ff010113          	addi	sp,sp,-16
    80002420:	00813423          	sd	s0,8(sp)
    80002424:	01010413          	addi	s0,sp,16
  if (id == nullptr) return -1;
    80002428:	02050263          	beqz	a0,8000244c <_ZN4_sem11sem_trywaitEPS_+0x30>
  if (id->value == 0) { // Ako je semafor vec zaključan, vraca 1
    8000242c:	00852783          	lw	a5,8(a0)
    80002430:	02078263          	beqz	a5,80002454 <_ZN4_sem11sem_trywaitEPS_+0x38>
   return 1;
  }
  id->value--; // semafor nije zaključan, smanji vrednost semafora i vrati 0
    80002434:	fff7879b          	addiw	a5,a5,-1
    80002438:	00f52423          	sw	a5,8(a0)
  return 0;
    8000243c:	00000513          	li	a0,0
 }
    80002440:	00813403          	ld	s0,8(sp)
    80002444:	01010113          	addi	sp,sp,16
    80002448:	00008067          	ret
  if (id == nullptr) return -1;
    8000244c:	fff00513          	li	a0,-1
    80002450:	ff1ff06f          	j	80002440 <_ZN4_sem11sem_trywaitEPS_+0x24>
   return 1;
    80002454:	00100513          	li	a0,1
    80002458:	fe9ff06f          	j	80002440 <_ZN4_sem11sem_trywaitEPS_+0x24>

000000008000245c <_Z41__static_initialization_and_destruction_0ii>:
}


TCB *Scheduler::get() {
    return readyThreadQueue.removeFirst();
    8000245c:	ff010113          	addi	sp,sp,-16
    80002460:	00813423          	sd	s0,8(sp)
    80002464:	01010413          	addi	s0,sp,16
    80002468:	00100793          	li	a5,1
    8000246c:	00f50863          	beq	a0,a5,8000247c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002470:	00813403          	ld	s0,8(sp)
    80002474:	01010113          	addi	sp,sp,16
    80002478:	00008067          	ret
    8000247c:	000107b7          	lui	a5,0x10
    80002480:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002484:	fef596e3          	bne	a1,a5,80002470 <_Z41__static_initialization_and_destruction_0ii+0x14>
        List() : head(0), tail(0) {}
    80002488:	00004797          	auipc	a5,0x4
    8000248c:	b2878793          	addi	a5,a5,-1240 # 80005fb0 <_ZN9Scheduler16readyThreadQueueE>
    80002490:	0007b023          	sd	zero,0(a5)
    80002494:	0007b423          	sd	zero,8(a5)
    80002498:	fd9ff06f          	j	80002470 <_Z41__static_initialization_and_destruction_0ii+0x14>

000000008000249c <_ZN9Scheduler3putEP3TCB>:
void Scheduler::put(TCB *ccb) {
    8000249c:	fe010113          	addi	sp,sp,-32
    800024a0:	00113c23          	sd	ra,24(sp)
    800024a4:	00813823          	sd	s0,16(sp)
    800024a8:	00913423          	sd	s1,8(sp)
    800024ac:	02010413          	addi	s0,sp,32
    800024b0:	00050493          	mv	s1,a0
            Elem *elem = new Elem(data, 0);
    800024b4:	01000513          	li	a0,16
    800024b8:	fffff097          	auipc	ra,0xfffff
    800024bc:	5f0080e7          	jalr	1520(ra) # 80001aa8 <_Znwm>
            Elem(T *data, Elem *next) : data(data), next(next) {}
    800024c0:	00953023          	sd	s1,0(a0)
    800024c4:	00053423          	sd	zero,8(a0)
            if (tail)
    800024c8:	00004797          	auipc	a5,0x4
    800024cc:	af07b783          	ld	a5,-1296(a5) # 80005fb8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800024d0:	02078263          	beqz	a5,800024f4 <_ZN9Scheduler3putEP3TCB+0x58>
                tail->next = elem;
    800024d4:	00a7b423          	sd	a0,8(a5)
                tail = elem;
    800024d8:	00004797          	auipc	a5,0x4
    800024dc:	aea7b023          	sd	a0,-1312(a5) # 80005fb8 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    800024e0:	01813083          	ld	ra,24(sp)
    800024e4:	01013403          	ld	s0,16(sp)
    800024e8:	00813483          	ld	s1,8(sp)
    800024ec:	02010113          	addi	sp,sp,32
    800024f0:	00008067          	ret
                head = tail = elem;
    800024f4:	00004797          	auipc	a5,0x4
    800024f8:	abc78793          	addi	a5,a5,-1348 # 80005fb0 <_ZN9Scheduler16readyThreadQueueE>
    800024fc:	00a7b423          	sd	a0,8(a5)
    80002500:	00a7b023          	sd	a0,0(a5)
    80002504:	fddff06f          	j	800024e0 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002508 <_ZN9Scheduler3getEv>:
TCB *Scheduler::get() {
    80002508:	fe010113          	addi	sp,sp,-32
    8000250c:	00113c23          	sd	ra,24(sp)
    80002510:	00813823          	sd	s0,16(sp)
    80002514:	00913423          	sd	s1,8(sp)
    80002518:	02010413          	addi	s0,sp,32
            if (!head) { return 0; }
    8000251c:	00004517          	auipc	a0,0x4
    80002520:	a9453503          	ld	a0,-1388(a0) # 80005fb0 <_ZN9Scheduler16readyThreadQueueE>
    80002524:	04050263          	beqz	a0,80002568 <_ZN9Scheduler3getEv+0x60>
            head = head->next;
    80002528:	00853783          	ld	a5,8(a0)
    8000252c:	00004717          	auipc	a4,0x4
    80002530:	a8f73223          	sd	a5,-1404(a4) # 80005fb0 <_ZN9Scheduler16readyThreadQueueE>
            if (!head) { tail = 0; }
    80002534:	02078463          	beqz	a5,8000255c <_ZN9Scheduler3getEv+0x54>
            T *ret = elem->data;
    80002538:	00053483          	ld	s1,0(a0)
            delete elem;
    8000253c:	fffff097          	auipc	ra,0xfffff
    80002540:	5bc080e7          	jalr	1468(ra) # 80001af8 <_ZdlPv>
    80002544:	00048513          	mv	a0,s1
    80002548:	01813083          	ld	ra,24(sp)
    8000254c:	01013403          	ld	s0,16(sp)
    80002550:	00813483          	ld	s1,8(sp)
    80002554:	02010113          	addi	sp,sp,32
    80002558:	00008067          	ret
            if (!head) { tail = 0; }
    8000255c:	00004797          	auipc	a5,0x4
    80002560:	a407be23          	sd	zero,-1444(a5) # 80005fb8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002564:	fd5ff06f          	j	80002538 <_ZN9Scheduler3getEv+0x30>
            if (!head) { return 0; }
    80002568:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    8000256c:	fd9ff06f          	j	80002544 <_ZN9Scheduler3getEv+0x3c>

0000000080002570 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002570:	ff010113          	addi	sp,sp,-16
    80002574:	00113423          	sd	ra,8(sp)
    80002578:	00813023          	sd	s0,0(sp)
    8000257c:	01010413          	addi	s0,sp,16
    80002580:	000105b7          	lui	a1,0x10
    80002584:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002588:	00100513          	li	a0,1
    8000258c:	00000097          	auipc	ra,0x0
    80002590:	ed0080e7          	jalr	-304(ra) # 8000245c <_Z41__static_initialization_and_destruction_0ii>
    80002594:	00813083          	ld	ra,8(sp)
    80002598:	00013403          	ld	s0,0(sp)
    8000259c:	01010113          	addi	sp,sp,16
    800025a0:	00008067          	ret

00000000800025a4 <_ZN15MemoryAllocator4initEv>:
#include "../h/MemoryAllocator.hpp"
#include "../h/printing.hpp"

Block *MemoryAllocator::head = nullptr;

void MemoryAllocator::init() {
    800025a4:	ff010113          	addi	sp,sp,-16
    800025a8:	00813423          	sd	s0,8(sp)
    800025ac:	01010413          	addi	s0,sp,16
    size_t total_heap_size = (char *) HEAP_END_ADDR - (char *) HEAP_START_ADDR;
    800025b0:	00004797          	auipc	a5,0x4
    800025b4:	9987b783          	ld	a5,-1640(a5) # 80005f48 <_GLOBAL_OFFSET_TABLE_+0x20>
    800025b8:	0007b703          	ld	a4,0(a5)
    800025bc:	00004797          	auipc	a5,0x4
    800025c0:	97c7b783          	ld	a5,-1668(a5) # 80005f38 <_GLOBAL_OFFSET_TABLE_+0x10>
    800025c4:	0007b783          	ld	a5,0(a5)
    800025c8:	40f70733          	sub	a4,a4,a5

    head = (Block *) HEAP_START_ADDR; //incijalizujemo listu blokova
    800025cc:	00004697          	auipc	a3,0x4
    800025d0:	9f468693          	addi	a3,a3,-1548 # 80005fc0 <_ZN15MemoryAllocator4headE>
    800025d4:	00f6b023          	sd	a5,0(a3)
    head->size = total_heap_size - sizeof(Block); //velicina 1.blk
    800025d8:	fe87071b          	addiw	a4,a4,-24
    800025dc:	00e7a823          	sw	a4,16(a5)
    head->free = true;
    800025e0:	00100713          	li	a4,1
    800025e4:	00e78a23          	sb	a4,20(a5)
    head->next = nullptr; //nema sl nema prethodni
    800025e8:	0007b023          	sd	zero,0(a5)
    head->prev = nullptr;
    800025ec:	0006b783          	ld	a5,0(a3)
    800025f0:	0007b423          	sd	zero,8(a5)
}
    800025f4:	00813403          	ld	s0,8(sp)
    800025f8:	01010113          	addi	sp,sp,16
    800025fc:	00008067          	ret

0000000080002600 <_ZN15MemoryAllocator9mem_allocEm>:

void *MemoryAllocator::mem_alloc(size_t s) {
    80002600:	ff010113          	addi	sp,sp,-16
    80002604:	00813423          	sd	s0,8(sp)
    80002608:	01010413          	addi	s0,sp,16
    if (s <= 0) return nullptr;
    8000260c:	0c050463          	beqz	a0,800026d4 <_ZN15MemoryAllocator9mem_allocEm+0xd4>

    size_t size = s * MEM_BLOCK_SIZE;
    80002610:	00651713          	slli	a4,a0,0x6
    Block *blk = head;
    80002614:	00004517          	auipc	a0,0x4
    80002618:	9ac53503          	ld	a0,-1620(a0) # 80005fc0 <_ZN15MemoryAllocator4headE>
    8000261c:	0080006f          	j	80002624 <_ZN15MemoryAllocator9mem_allocEm+0x24>

    while (blk != nullptr) {
        if (blk->free && blk->size >= size) {
            break;
        }
        blk = blk->next;
    80002620:	00053503          	ld	a0,0(a0)
    while (blk != nullptr) {
    80002624:	00050a63          	beqz	a0,80002638 <_ZN15MemoryAllocator9mem_allocEm+0x38>
        if (blk->free && blk->size >= size) {
    80002628:	01454783          	lbu	a5,20(a0)
    8000262c:	fe078ae3          	beqz	a5,80002620 <_ZN15MemoryAllocator9mem_allocEm+0x20>
    80002630:	01056783          	lwu	a5,16(a0)
    80002634:	fee7e6e3          	bltu	a5,a4,80002620 <_ZN15MemoryAllocator9mem_allocEm+0x20>
    }

    if (blk == nullptr) return nullptr; // nema dovoljno velikog bloka
    80002638:	04050e63          	beqz	a0,80002694 <_ZN15MemoryAllocator9mem_allocEm+0x94>
    if (blk->size > size + sizeof(Block)) {
    8000263c:	01052683          	lw	a3,16(a0)
    80002640:	02069613          	slli	a2,a3,0x20
    80002644:	02065613          	srli	a2,a2,0x20
    80002648:	01870793          	addi	a5,a4,24
    8000264c:	04c7fa63          	bgeu	a5,a2,800026a0 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
        Block *newBlock = (Block *) ((char *) blk + sizeof(Block) + size);
    80002650:	00f507b3          	add	a5,a0,a5
        newBlock->size = blk->size - size - sizeof(Block);
    80002654:	40e686bb          	subw	a3,a3,a4
    80002658:	fe86869b          	addiw	a3,a3,-24
    8000265c:	00d7a823          	sw	a3,16(a5)
        newBlock->free = true;
    80002660:	00100693          	li	a3,1
    80002664:	00d78a23          	sb	a3,20(a5)
        newBlock->next = blk->next;
    80002668:	00053683          	ld	a3,0(a0)
    8000266c:	00d7b023          	sd	a3,0(a5)
        newBlock->prev = blk->prev;
    80002670:	00853683          	ld	a3,8(a0)
    80002674:	00d7b423          	sd	a3,8(a5)

        blk->next = newBlock;
    80002678:	00f53023          	sd	a5,0(a0)
        blk->size = size;
    8000267c:	00e52823          	sw	a4,16(a0)
    } else {
        if (blk->prev) blk->prev->next = blk->next;
        if (blk->next) blk->next->prev = blk->prev;
    }
    if (blk == head) head = blk->next;
    80002680:	00004797          	auipc	a5,0x4
    80002684:	9407b783          	ld	a5,-1728(a5) # 80005fc0 <_ZN15MemoryAllocator4headE>
    80002688:	02a78e63          	beq	a5,a0,800026c4 <_ZN15MemoryAllocator9mem_allocEm+0xc4>
    blk->free = false;
    8000268c:	00050a23          	sb	zero,20(a0)
    return (void *) ((char *) blk + sizeof(Block));
    80002690:	01850513          	addi	a0,a0,24
}
    80002694:	00813403          	ld	s0,8(sp)
    80002698:	01010113          	addi	sp,sp,16
    8000269c:	00008067          	ret
        if (blk->prev) blk->prev->next = blk->next;
    800026a0:	00853783          	ld	a5,8(a0)
    800026a4:	00078663          	beqz	a5,800026b0 <_ZN15MemoryAllocator9mem_allocEm+0xb0>
    800026a8:	00053703          	ld	a4,0(a0)
    800026ac:	00e7b023          	sd	a4,0(a5)
        if (blk->next) blk->next->prev = blk->prev;
    800026b0:	00053783          	ld	a5,0(a0)
    800026b4:	fc0786e3          	beqz	a5,80002680 <_ZN15MemoryAllocator9mem_allocEm+0x80>
    800026b8:	00853703          	ld	a4,8(a0)
    800026bc:	00e7b423          	sd	a4,8(a5)
    800026c0:	fc1ff06f          	j	80002680 <_ZN15MemoryAllocator9mem_allocEm+0x80>
    if (blk == head) head = blk->next;
    800026c4:	00053783          	ld	a5,0(a0)
    800026c8:	00004717          	auipc	a4,0x4
    800026cc:	8ef73c23          	sd	a5,-1800(a4) # 80005fc0 <_ZN15MemoryAllocator4headE>
    800026d0:	fbdff06f          	j	8000268c <_ZN15MemoryAllocator9mem_allocEm+0x8c>
    if (s <= 0) return nullptr;
    800026d4:	00000513          	li	a0,0
    800026d8:	fbdff06f          	j	80002694 <_ZN15MemoryAllocator9mem_allocEm+0x94>

00000000800026dc <_ZN15MemoryAllocator5mergeEP5BlockS1_>:

    return 0;
}


void MemoryAllocator::merge(Block *prvi, Block *drugi) {
    800026dc:	ff010113          	addi	sp,sp,-16
    800026e0:	00813423          	sd	s0,8(sp)
    800026e4:	01010413          	addi	s0,sp,16
    if (prvi == nullptr || drugi == nullptr) {
    800026e8:	02050063          	beqz	a0,80002708 <_ZN15MemoryAllocator5mergeEP5BlockS1_+0x2c>
    800026ec:	00058e63          	beqz	a1,80002708 <_ZN15MemoryAllocator5mergeEP5BlockS1_+0x2c>
        return;
    }
    if ((char *) prvi + prvi->size + sizeof(Block) != (char *) drugi) {
    800026f0:	01052703          	lw	a4,16(a0)
    800026f4:	02071793          	slli	a5,a4,0x20
    800026f8:	0207d793          	srli	a5,a5,0x20
    800026fc:	01878793          	addi	a5,a5,24
    80002700:	00f507b3          	add	a5,a0,a5
    80002704:	00b78863          	beq	a5,a1,80002714 <_ZN15MemoryAllocator5mergeEP5BlockS1_+0x38>
    prvi->next = drugi->next;
    if (prvi->next != nullptr) {
        prvi->next->prev = prvi;
    }

}
    80002708:	00813403          	ld	s0,8(sp)
    8000270c:	01010113          	addi	sp,sp,16
    80002710:	00008067          	ret
    prvi->size += drugi->size + sizeof(Block);
    80002714:	0105a783          	lw	a5,16(a1)
    80002718:	00f7073b          	addw	a4,a4,a5
    8000271c:	0187071b          	addiw	a4,a4,24
    80002720:	00e52823          	sw	a4,16(a0)
    prvi->next = drugi->next;
    80002724:	0005b783          	ld	a5,0(a1)
    80002728:	00f53023          	sd	a5,0(a0)
    if (prvi->next != nullptr) {
    8000272c:	fc078ee3          	beqz	a5,80002708 <_ZN15MemoryAllocator5mergeEP5BlockS1_+0x2c>
        prvi->next->prev = prvi;
    80002730:	00a7b423          	sd	a0,8(a5)
    80002734:	fd5ff06f          	j	80002708 <_ZN15MemoryAllocator5mergeEP5BlockS1_+0x2c>

0000000080002738 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (addr == nullptr || addr > HEAP_END_ADDR || addr < HEAP_START_ADDR) return -1;
    80002738:	0e050463          	beqz	a0,80002820 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    8000273c:	00004797          	auipc	a5,0x4
    80002740:	80c7b783          	ld	a5,-2036(a5) # 80005f48 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002744:	0007b783          	ld	a5,0(a5)
    80002748:	0ea7e063          	bltu	a5,a0,80002828 <_ZN15MemoryAllocator8mem_freeEPv+0xf0>
    8000274c:	00003797          	auipc	a5,0x3
    80002750:	7ec7b783          	ld	a5,2028(a5) # 80005f38 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002754:	0007b783          	ld	a5,0(a5)
    80002758:	0cf56c63          	bltu	a0,a5,80002830 <_ZN15MemoryAllocator8mem_freeEPv+0xf8>
int MemoryAllocator::mem_free(void *addr) {
    8000275c:	fe010113          	addi	sp,sp,-32
    80002760:	00113c23          	sd	ra,24(sp)
    80002764:	00813823          	sd	s0,16(sp)
    80002768:	00913423          	sd	s1,8(sp)
    8000276c:	01213023          	sd	s2,0(sp)
    80002770:	02010413          	addi	s0,sp,32
    Block *trenutni = (Block *) ((char *) addr - sizeof(Block)); // predji na blok
    80002774:	fe850493          	addi	s1,a0,-24
    if (trenutni->free) return -2; //slobodan
    80002778:	ffc54783          	lbu	a5,-4(a0)
    8000277c:	0a079e63          	bnez	a5,80002838 <_ZN15MemoryAllocator8mem_freeEPv+0x100>
    trenutni->free = true;
    80002780:	00100793          	li	a5,1
    80002784:	fef50e23          	sb	a5,-4(a0)
    for (sledeci = head; sledeci->next; sledeci = sledeci->next) {
    80002788:	00004797          	auipc	a5,0x4
    8000278c:	8387b783          	ld	a5,-1992(a5) # 80005fc0 <_ZN15MemoryAllocator4headE>
    80002790:	00078593          	mv	a1,a5
    80002794:	0007b783          	ld	a5,0(a5)
    80002798:	00078463          	beqz	a5,800027a0 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
        if (sledeci > trenutni) break;
    8000279c:	feb4fae3          	bgeu	s1,a1,80002790 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    if (!sledeci->next and trenutni > sledeci) {
    800027a0:	06078263          	beqz	a5,80002804 <_ZN15MemoryAllocator8mem_freeEPv+0xcc>
    else predhodni = sledeci->prev;
    800027a4:	0085b903          	ld	s2,8(a1)
    if (predhodni) predhodni->next = trenutni;
    800027a8:	00090463          	beqz	s2,800027b0 <_ZN15MemoryAllocator8mem_freeEPv+0x78>
    800027ac:	00993023          	sd	s1,0(s2)
    trenutni->prev = predhodni;
    800027b0:	ff253823          	sd	s2,-16(a0)
    if (sledeci) sledeci->prev = trenutni;
    800027b4:	00058463          	beqz	a1,800027bc <_ZN15MemoryAllocator8mem_freeEPv+0x84>
    800027b8:	0095b423          	sd	s1,8(a1)
    trenutni->next = sledeci;
    800027bc:	feb53423          	sd	a1,-24(a0)
    if (sledeci == head) head = trenutni;
    800027c0:	00004797          	auipc	a5,0x4
    800027c4:	8007b783          	ld	a5,-2048(a5) # 80005fc0 <_ZN15MemoryAllocator4headE>
    800027c8:	04b78663          	beq	a5,a1,80002814 <_ZN15MemoryAllocator8mem_freeEPv+0xdc>
    merge(trenutni, sledeci); // spoji sa sl blokom ako je slobodan
    800027cc:	00048513          	mv	a0,s1
    800027d0:	00000097          	auipc	ra,0x0
    800027d4:	f0c080e7          	jalr	-244(ra) # 800026dc <_ZN15MemoryAllocator5mergeEP5BlockS1_>
    merge(predhodni, trenutni); // sa prethodnim  ako je slobodan
    800027d8:	00048593          	mv	a1,s1
    800027dc:	00090513          	mv	a0,s2
    800027e0:	00000097          	auipc	ra,0x0
    800027e4:	efc080e7          	jalr	-260(ra) # 800026dc <_ZN15MemoryAllocator5mergeEP5BlockS1_>
    return 0;
    800027e8:	00000513          	li	a0,0
}
    800027ec:	01813083          	ld	ra,24(sp)
    800027f0:	01013403          	ld	s0,16(sp)
    800027f4:	00813483          	ld	s1,8(sp)
    800027f8:	00013903          	ld	s2,0(sp)
    800027fc:	02010113          	addi	sp,sp,32
    80002800:	00008067          	ret
    if (!sledeci->next and trenutni > sledeci) {
    80002804:	fa95f0e3          	bgeu	a1,s1,800027a4 <_ZN15MemoryAllocator8mem_freeEPv+0x6c>
        predhodni = sledeci; sledeci = nullptr;
    80002808:	00058913          	mv	s2,a1
    8000280c:	00078593          	mv	a1,a5
    80002810:	f99ff06f          	j	800027a8 <_ZN15MemoryAllocator8mem_freeEPv+0x70>
    if (sledeci == head) head = trenutni;
    80002814:	00003797          	auipc	a5,0x3
    80002818:	7a97b623          	sd	s1,1964(a5) # 80005fc0 <_ZN15MemoryAllocator4headE>
    8000281c:	fb1ff06f          	j	800027cc <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    if (addr == nullptr || addr > HEAP_END_ADDR || addr < HEAP_START_ADDR) return -1;
    80002820:	fff00513          	li	a0,-1
    80002824:	00008067          	ret
    80002828:	fff00513          	li	a0,-1
    8000282c:	00008067          	ret
    80002830:	fff00513          	li	a0,-1
}
    80002834:	00008067          	ret
    if (trenutni->free) return -2; //slobodan
    80002838:	ffe00513          	li	a0,-2
    8000283c:	fb1ff06f          	j	800027ec <_ZN15MemoryAllocator8mem_freeEPv+0xb4>

0000000080002840 <_ZN15MemoryAllocator5printEv>:

void MemoryAllocator::print() {
    80002840:	fe010113          	addi	sp,sp,-32
    80002844:	00113c23          	sd	ra,24(sp)
    80002848:	00813823          	sd	s0,16(sp)
    8000284c:	00913423          	sd	s1,8(sp)
    80002850:	02010413          	addi	s0,sp,32
    printString("--------------------------------------------------\n");
    80002854:	00003517          	auipc	a0,0x3
    80002858:	90450513          	addi	a0,a0,-1788 # 80005158 <CONSOLE_STATUS+0x148>
    8000285c:	fffff097          	auipc	ra,0xfffff
    80002860:	db4080e7          	jalr	-588(ra) # 80001610 <_Z11printStringPKc>
    for (Block *curr = head; curr; curr = curr->next) {
    80002864:	00003497          	auipc	s1,0x3
    80002868:	75c4b483          	ld	s1,1884(s1) # 80005fc0 <_ZN15MemoryAllocator4headE>
    8000286c:	0c048063          	beqz	s1,8000292c <_ZN15MemoryAllocator5printEv+0xec>
        printInt((uint64) curr);
    80002870:	00000613          	li	a2,0
    80002874:	00a00593          	li	a1,10
    80002878:	0004851b          	sext.w	a0,s1
    8000287c:	fffff097          	auipc	ra,0xfffff
    80002880:	ebc080e7          	jalr	-324(ra) # 80001738 <_Z8printIntiii>
        printString(": ");
    80002884:	00003517          	auipc	a0,0x3
    80002888:	90c50513          	addi	a0,a0,-1780 # 80005190 <CONSOLE_STATUS+0x180>
    8000288c:	fffff097          	auipc	ra,0xfffff
    80002890:	d84080e7          	jalr	-636(ra) # 80001610 <_Z11printStringPKc>
        printInt((uint64) curr->prev);
    80002894:	00000613          	li	a2,0
    80002898:	00a00593          	li	a1,10
    8000289c:	0084a503          	lw	a0,8(s1)
    800028a0:	fffff097          	auipc	ra,0xfffff
    800028a4:	e98080e7          	jalr	-360(ra) # 80001738 <_Z8printIntiii>
        printString(" ");
    800028a8:	00003517          	auipc	a0,0x3
    800028ac:	8f050513          	addi	a0,a0,-1808 # 80005198 <CONSOLE_STATUS+0x188>
    800028b0:	fffff097          	auipc	ra,0xfffff
    800028b4:	d60080e7          	jalr	-672(ra) # 80001610 <_Z11printStringPKc>
        printInt(curr->size);
    800028b8:	00000613          	li	a2,0
    800028bc:	00a00593          	li	a1,10
    800028c0:	0104a503          	lw	a0,16(s1)
    800028c4:	fffff097          	auipc	ra,0xfffff
    800028c8:	e74080e7          	jalr	-396(ra) # 80001738 <_Z8printIntiii>
        printString(" ");
    800028cc:	00003517          	auipc	a0,0x3
    800028d0:	8cc50513          	addi	a0,a0,-1844 # 80005198 <CONSOLE_STATUS+0x188>
    800028d4:	fffff097          	auipc	ra,0xfffff
    800028d8:	d3c080e7          	jalr	-708(ra) # 80001610 <_Z11printStringPKc>
        printInt(curr->free);
    800028dc:	00000613          	li	a2,0
    800028e0:	00a00593          	li	a1,10
    800028e4:	0144c503          	lbu	a0,20(s1)
    800028e8:	fffff097          	auipc	ra,0xfffff
    800028ec:	e50080e7          	jalr	-432(ra) # 80001738 <_Z8printIntiii>
        printString(" ");
    800028f0:	00003517          	auipc	a0,0x3
    800028f4:	8a850513          	addi	a0,a0,-1880 # 80005198 <CONSOLE_STATUS+0x188>
    800028f8:	fffff097          	auipc	ra,0xfffff
    800028fc:	d18080e7          	jalr	-744(ra) # 80001610 <_Z11printStringPKc>
        printInt((uint64) curr->next);
    80002900:	00000613          	li	a2,0
    80002904:	00a00593          	li	a1,10
    80002908:	0004a503          	lw	a0,0(s1)
    8000290c:	fffff097          	auipc	ra,0xfffff
    80002910:	e2c080e7          	jalr	-468(ra) # 80001738 <_Z8printIntiii>
        printString("\n");
    80002914:	00003517          	auipc	a0,0x3
    80002918:	9d450513          	addi	a0,a0,-1580 # 800052e8 <CONSOLE_STATUS+0x2d8>
    8000291c:	fffff097          	auipc	ra,0xfffff
    80002920:	cf4080e7          	jalr	-780(ra) # 80001610 <_Z11printStringPKc>
    for (Block *curr = head; curr; curr = curr->next) {
    80002924:	0004b483          	ld	s1,0(s1)
    80002928:	f45ff06f          	j	8000286c <_ZN15MemoryAllocator5printEv+0x2c>
    }
    printString("__________________________________________________\n");
    8000292c:	00003517          	auipc	a0,0x3
    80002930:	87450513          	addi	a0,a0,-1932 # 800051a0 <CONSOLE_STATUS+0x190>
    80002934:	fffff097          	auipc	ra,0xfffff
    80002938:	cdc080e7          	jalr	-804(ra) # 80001610 <_Z11printStringPKc>
}
    8000293c:	01813083          	ld	ra,24(sp)
    80002940:	01013403          	ld	s0,16(sp)
    80002944:	00813483          	ld	s1,8(sp)
    80002948:	02010113          	addi	sp,sp,32
    8000294c:	00008067          	ret

0000000080002950 <start>:
    80002950:	ff010113          	addi	sp,sp,-16
    80002954:	00813423          	sd	s0,8(sp)
    80002958:	01010413          	addi	s0,sp,16
    8000295c:	300027f3          	csrr	a5,mstatus
    80002960:	ffffe737          	lui	a4,0xffffe
    80002964:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff75cf>
    80002968:	00e7f7b3          	and	a5,a5,a4
    8000296c:	00001737          	lui	a4,0x1
    80002970:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002974:	00e7e7b3          	or	a5,a5,a4
    80002978:	30079073          	csrw	mstatus,a5
    8000297c:	00000797          	auipc	a5,0x0
    80002980:	16078793          	addi	a5,a5,352 # 80002adc <system_main>
    80002984:	34179073          	csrw	mepc,a5
    80002988:	00000793          	li	a5,0
    8000298c:	18079073          	csrw	satp,a5
    80002990:	000107b7          	lui	a5,0x10
    80002994:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002998:	30279073          	csrw	medeleg,a5
    8000299c:	30379073          	csrw	mideleg,a5
    800029a0:	104027f3          	csrr	a5,sie
    800029a4:	2227e793          	ori	a5,a5,546
    800029a8:	10479073          	csrw	sie,a5
    800029ac:	fff00793          	li	a5,-1
    800029b0:	00a7d793          	srli	a5,a5,0xa
    800029b4:	3b079073          	csrw	pmpaddr0,a5
    800029b8:	00f00793          	li	a5,15
    800029bc:	3a079073          	csrw	pmpcfg0,a5
    800029c0:	f14027f3          	csrr	a5,mhartid
    800029c4:	0200c737          	lui	a4,0x200c
    800029c8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800029cc:	0007869b          	sext.w	a3,a5
    800029d0:	00269713          	slli	a4,a3,0x2
    800029d4:	000f4637          	lui	a2,0xf4
    800029d8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800029dc:	00d70733          	add	a4,a4,a3
    800029e0:	0037979b          	slliw	a5,a5,0x3
    800029e4:	020046b7          	lui	a3,0x2004
    800029e8:	00d787b3          	add	a5,a5,a3
    800029ec:	00c585b3          	add	a1,a1,a2
    800029f0:	00371693          	slli	a3,a4,0x3
    800029f4:	00003717          	auipc	a4,0x3
    800029f8:	5dc70713          	addi	a4,a4,1500 # 80005fd0 <timer_scratch>
    800029fc:	00b7b023          	sd	a1,0(a5)
    80002a00:	00d70733          	add	a4,a4,a3
    80002a04:	00f73c23          	sd	a5,24(a4)
    80002a08:	02c73023          	sd	a2,32(a4)
    80002a0c:	34071073          	csrw	mscratch,a4
    80002a10:	00000797          	auipc	a5,0x0
    80002a14:	6e078793          	addi	a5,a5,1760 # 800030f0 <timervec>
    80002a18:	30579073          	csrw	mtvec,a5
    80002a1c:	300027f3          	csrr	a5,mstatus
    80002a20:	0087e793          	ori	a5,a5,8
    80002a24:	30079073          	csrw	mstatus,a5
    80002a28:	304027f3          	csrr	a5,mie
    80002a2c:	0807e793          	ori	a5,a5,128
    80002a30:	30479073          	csrw	mie,a5
    80002a34:	f14027f3          	csrr	a5,mhartid
    80002a38:	0007879b          	sext.w	a5,a5
    80002a3c:	00078213          	mv	tp,a5
    80002a40:	30200073          	mret
    80002a44:	00813403          	ld	s0,8(sp)
    80002a48:	01010113          	addi	sp,sp,16
    80002a4c:	00008067          	ret

0000000080002a50 <timerinit>:
    80002a50:	ff010113          	addi	sp,sp,-16
    80002a54:	00813423          	sd	s0,8(sp)
    80002a58:	01010413          	addi	s0,sp,16
    80002a5c:	f14027f3          	csrr	a5,mhartid
    80002a60:	0200c737          	lui	a4,0x200c
    80002a64:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002a68:	0007869b          	sext.w	a3,a5
    80002a6c:	00269713          	slli	a4,a3,0x2
    80002a70:	000f4637          	lui	a2,0xf4
    80002a74:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002a78:	00d70733          	add	a4,a4,a3
    80002a7c:	0037979b          	slliw	a5,a5,0x3
    80002a80:	020046b7          	lui	a3,0x2004
    80002a84:	00d787b3          	add	a5,a5,a3
    80002a88:	00c585b3          	add	a1,a1,a2
    80002a8c:	00371693          	slli	a3,a4,0x3
    80002a90:	00003717          	auipc	a4,0x3
    80002a94:	54070713          	addi	a4,a4,1344 # 80005fd0 <timer_scratch>
    80002a98:	00b7b023          	sd	a1,0(a5)
    80002a9c:	00d70733          	add	a4,a4,a3
    80002aa0:	00f73c23          	sd	a5,24(a4)
    80002aa4:	02c73023          	sd	a2,32(a4)
    80002aa8:	34071073          	csrw	mscratch,a4
    80002aac:	00000797          	auipc	a5,0x0
    80002ab0:	64478793          	addi	a5,a5,1604 # 800030f0 <timervec>
    80002ab4:	30579073          	csrw	mtvec,a5
    80002ab8:	300027f3          	csrr	a5,mstatus
    80002abc:	0087e793          	ori	a5,a5,8
    80002ac0:	30079073          	csrw	mstatus,a5
    80002ac4:	304027f3          	csrr	a5,mie
    80002ac8:	0807e793          	ori	a5,a5,128
    80002acc:	30479073          	csrw	mie,a5
    80002ad0:	00813403          	ld	s0,8(sp)
    80002ad4:	01010113          	addi	sp,sp,16
    80002ad8:	00008067          	ret

0000000080002adc <system_main>:
    80002adc:	fe010113          	addi	sp,sp,-32
    80002ae0:	00813823          	sd	s0,16(sp)
    80002ae4:	00913423          	sd	s1,8(sp)
    80002ae8:	00113c23          	sd	ra,24(sp)
    80002aec:	02010413          	addi	s0,sp,32
    80002af0:	00000097          	auipc	ra,0x0
    80002af4:	0c4080e7          	jalr	196(ra) # 80002bb4 <cpuid>
    80002af8:	00003497          	auipc	s1,0x3
    80002afc:	47848493          	addi	s1,s1,1144 # 80005f70 <started>
    80002b00:	02050263          	beqz	a0,80002b24 <system_main+0x48>
    80002b04:	0004a783          	lw	a5,0(s1)
    80002b08:	0007879b          	sext.w	a5,a5
    80002b0c:	fe078ce3          	beqz	a5,80002b04 <system_main+0x28>
    80002b10:	0ff0000f          	fence
    80002b14:	00002517          	auipc	a0,0x2
    80002b18:	6f450513          	addi	a0,a0,1780 # 80005208 <CONSOLE_STATUS+0x1f8>
    80002b1c:	00001097          	auipc	ra,0x1
    80002b20:	a70080e7          	jalr	-1424(ra) # 8000358c <panic>
    80002b24:	00001097          	auipc	ra,0x1
    80002b28:	9c4080e7          	jalr	-1596(ra) # 800034e8 <consoleinit>
    80002b2c:	00001097          	auipc	ra,0x1
    80002b30:	150080e7          	jalr	336(ra) # 80003c7c <printfinit>
    80002b34:	00002517          	auipc	a0,0x2
    80002b38:	7b450513          	addi	a0,a0,1972 # 800052e8 <CONSOLE_STATUS+0x2d8>
    80002b3c:	00001097          	auipc	ra,0x1
    80002b40:	aac080e7          	jalr	-1364(ra) # 800035e8 <__printf>
    80002b44:	00002517          	auipc	a0,0x2
    80002b48:	69450513          	addi	a0,a0,1684 # 800051d8 <CONSOLE_STATUS+0x1c8>
    80002b4c:	00001097          	auipc	ra,0x1
    80002b50:	a9c080e7          	jalr	-1380(ra) # 800035e8 <__printf>
    80002b54:	00002517          	auipc	a0,0x2
    80002b58:	79450513          	addi	a0,a0,1940 # 800052e8 <CONSOLE_STATUS+0x2d8>
    80002b5c:	00001097          	auipc	ra,0x1
    80002b60:	a8c080e7          	jalr	-1396(ra) # 800035e8 <__printf>
    80002b64:	00001097          	auipc	ra,0x1
    80002b68:	4a4080e7          	jalr	1188(ra) # 80004008 <kinit>
    80002b6c:	00000097          	auipc	ra,0x0
    80002b70:	148080e7          	jalr	328(ra) # 80002cb4 <trapinit>
    80002b74:	00000097          	auipc	ra,0x0
    80002b78:	16c080e7          	jalr	364(ra) # 80002ce0 <trapinithart>
    80002b7c:	00000097          	auipc	ra,0x0
    80002b80:	5b4080e7          	jalr	1460(ra) # 80003130 <plicinit>
    80002b84:	00000097          	auipc	ra,0x0
    80002b88:	5d4080e7          	jalr	1492(ra) # 80003158 <plicinithart>
    80002b8c:	00000097          	auipc	ra,0x0
    80002b90:	078080e7          	jalr	120(ra) # 80002c04 <userinit>
    80002b94:	0ff0000f          	fence
    80002b98:	00100793          	li	a5,1
    80002b9c:	00002517          	auipc	a0,0x2
    80002ba0:	65450513          	addi	a0,a0,1620 # 800051f0 <CONSOLE_STATUS+0x1e0>
    80002ba4:	00f4a023          	sw	a5,0(s1)
    80002ba8:	00001097          	auipc	ra,0x1
    80002bac:	a40080e7          	jalr	-1472(ra) # 800035e8 <__printf>
    80002bb0:	0000006f          	j	80002bb0 <system_main+0xd4>

0000000080002bb4 <cpuid>:
    80002bb4:	ff010113          	addi	sp,sp,-16
    80002bb8:	00813423          	sd	s0,8(sp)
    80002bbc:	01010413          	addi	s0,sp,16
    80002bc0:	00020513          	mv	a0,tp
    80002bc4:	00813403          	ld	s0,8(sp)
    80002bc8:	0005051b          	sext.w	a0,a0
    80002bcc:	01010113          	addi	sp,sp,16
    80002bd0:	00008067          	ret

0000000080002bd4 <mycpu>:
    80002bd4:	ff010113          	addi	sp,sp,-16
    80002bd8:	00813423          	sd	s0,8(sp)
    80002bdc:	01010413          	addi	s0,sp,16
    80002be0:	00020793          	mv	a5,tp
    80002be4:	00813403          	ld	s0,8(sp)
    80002be8:	0007879b          	sext.w	a5,a5
    80002bec:	00779793          	slli	a5,a5,0x7
    80002bf0:	00004517          	auipc	a0,0x4
    80002bf4:	41050513          	addi	a0,a0,1040 # 80007000 <cpus>
    80002bf8:	00f50533          	add	a0,a0,a5
    80002bfc:	01010113          	addi	sp,sp,16
    80002c00:	00008067          	ret

0000000080002c04 <userinit>:
    80002c04:	ff010113          	addi	sp,sp,-16
    80002c08:	00813423          	sd	s0,8(sp)
    80002c0c:	01010413          	addi	s0,sp,16
    80002c10:	00813403          	ld	s0,8(sp)
    80002c14:	01010113          	addi	sp,sp,16
    80002c18:	fffff317          	auipc	t1,0xfffff
    80002c1c:	be030067          	jr	-1056(t1) # 800017f8 <main>

0000000080002c20 <either_copyout>:
    80002c20:	ff010113          	addi	sp,sp,-16
    80002c24:	00813023          	sd	s0,0(sp)
    80002c28:	00113423          	sd	ra,8(sp)
    80002c2c:	01010413          	addi	s0,sp,16
    80002c30:	02051663          	bnez	a0,80002c5c <either_copyout+0x3c>
    80002c34:	00058513          	mv	a0,a1
    80002c38:	00060593          	mv	a1,a2
    80002c3c:	0006861b          	sext.w	a2,a3
    80002c40:	00002097          	auipc	ra,0x2
    80002c44:	c54080e7          	jalr	-940(ra) # 80004894 <__memmove>
    80002c48:	00813083          	ld	ra,8(sp)
    80002c4c:	00013403          	ld	s0,0(sp)
    80002c50:	00000513          	li	a0,0
    80002c54:	01010113          	addi	sp,sp,16
    80002c58:	00008067          	ret
    80002c5c:	00002517          	auipc	a0,0x2
    80002c60:	5d450513          	addi	a0,a0,1492 # 80005230 <CONSOLE_STATUS+0x220>
    80002c64:	00001097          	auipc	ra,0x1
    80002c68:	928080e7          	jalr	-1752(ra) # 8000358c <panic>

0000000080002c6c <either_copyin>:
    80002c6c:	ff010113          	addi	sp,sp,-16
    80002c70:	00813023          	sd	s0,0(sp)
    80002c74:	00113423          	sd	ra,8(sp)
    80002c78:	01010413          	addi	s0,sp,16
    80002c7c:	02059463          	bnez	a1,80002ca4 <either_copyin+0x38>
    80002c80:	00060593          	mv	a1,a2
    80002c84:	0006861b          	sext.w	a2,a3
    80002c88:	00002097          	auipc	ra,0x2
    80002c8c:	c0c080e7          	jalr	-1012(ra) # 80004894 <__memmove>
    80002c90:	00813083          	ld	ra,8(sp)
    80002c94:	00013403          	ld	s0,0(sp)
    80002c98:	00000513          	li	a0,0
    80002c9c:	01010113          	addi	sp,sp,16
    80002ca0:	00008067          	ret
    80002ca4:	00002517          	auipc	a0,0x2
    80002ca8:	5b450513          	addi	a0,a0,1460 # 80005258 <CONSOLE_STATUS+0x248>
    80002cac:	00001097          	auipc	ra,0x1
    80002cb0:	8e0080e7          	jalr	-1824(ra) # 8000358c <panic>

0000000080002cb4 <trapinit>:
    80002cb4:	ff010113          	addi	sp,sp,-16
    80002cb8:	00813423          	sd	s0,8(sp)
    80002cbc:	01010413          	addi	s0,sp,16
    80002cc0:	00813403          	ld	s0,8(sp)
    80002cc4:	00002597          	auipc	a1,0x2
    80002cc8:	5bc58593          	addi	a1,a1,1468 # 80005280 <CONSOLE_STATUS+0x270>
    80002ccc:	00004517          	auipc	a0,0x4
    80002cd0:	3b450513          	addi	a0,a0,948 # 80007080 <tickslock>
    80002cd4:	01010113          	addi	sp,sp,16
    80002cd8:	00001317          	auipc	t1,0x1
    80002cdc:	5c030067          	jr	1472(t1) # 80004298 <initlock>

0000000080002ce0 <trapinithart>:
    80002ce0:	ff010113          	addi	sp,sp,-16
    80002ce4:	00813423          	sd	s0,8(sp)
    80002ce8:	01010413          	addi	s0,sp,16
    80002cec:	00000797          	auipc	a5,0x0
    80002cf0:	2f478793          	addi	a5,a5,756 # 80002fe0 <kernelvec>
    80002cf4:	10579073          	csrw	stvec,a5
    80002cf8:	00813403          	ld	s0,8(sp)
    80002cfc:	01010113          	addi	sp,sp,16
    80002d00:	00008067          	ret

0000000080002d04 <usertrap>:
    80002d04:	ff010113          	addi	sp,sp,-16
    80002d08:	00813423          	sd	s0,8(sp)
    80002d0c:	01010413          	addi	s0,sp,16
    80002d10:	00813403          	ld	s0,8(sp)
    80002d14:	01010113          	addi	sp,sp,16
    80002d18:	00008067          	ret

0000000080002d1c <usertrapret>:
    80002d1c:	ff010113          	addi	sp,sp,-16
    80002d20:	00813423          	sd	s0,8(sp)
    80002d24:	01010413          	addi	s0,sp,16
    80002d28:	00813403          	ld	s0,8(sp)
    80002d2c:	01010113          	addi	sp,sp,16
    80002d30:	00008067          	ret

0000000080002d34 <kerneltrap>:
    80002d34:	fe010113          	addi	sp,sp,-32
    80002d38:	00813823          	sd	s0,16(sp)
    80002d3c:	00113c23          	sd	ra,24(sp)
    80002d40:	00913423          	sd	s1,8(sp)
    80002d44:	02010413          	addi	s0,sp,32
    80002d48:	142025f3          	csrr	a1,scause
    80002d4c:	100027f3          	csrr	a5,sstatus
    80002d50:	0027f793          	andi	a5,a5,2
    80002d54:	10079c63          	bnez	a5,80002e6c <kerneltrap+0x138>
    80002d58:	142027f3          	csrr	a5,scause
    80002d5c:	0207ce63          	bltz	a5,80002d98 <kerneltrap+0x64>
    80002d60:	00002517          	auipc	a0,0x2
    80002d64:	56850513          	addi	a0,a0,1384 # 800052c8 <CONSOLE_STATUS+0x2b8>
    80002d68:	00001097          	auipc	ra,0x1
    80002d6c:	880080e7          	jalr	-1920(ra) # 800035e8 <__printf>
    80002d70:	141025f3          	csrr	a1,sepc
    80002d74:	14302673          	csrr	a2,stval
    80002d78:	00002517          	auipc	a0,0x2
    80002d7c:	56050513          	addi	a0,a0,1376 # 800052d8 <CONSOLE_STATUS+0x2c8>
    80002d80:	00001097          	auipc	ra,0x1
    80002d84:	868080e7          	jalr	-1944(ra) # 800035e8 <__printf>
    80002d88:	00002517          	auipc	a0,0x2
    80002d8c:	56850513          	addi	a0,a0,1384 # 800052f0 <CONSOLE_STATUS+0x2e0>
    80002d90:	00000097          	auipc	ra,0x0
    80002d94:	7fc080e7          	jalr	2044(ra) # 8000358c <panic>
    80002d98:	0ff7f713          	andi	a4,a5,255
    80002d9c:	00900693          	li	a3,9
    80002da0:	04d70063          	beq	a4,a3,80002de0 <kerneltrap+0xac>
    80002da4:	fff00713          	li	a4,-1
    80002da8:	03f71713          	slli	a4,a4,0x3f
    80002dac:	00170713          	addi	a4,a4,1
    80002db0:	fae798e3          	bne	a5,a4,80002d60 <kerneltrap+0x2c>
    80002db4:	00000097          	auipc	ra,0x0
    80002db8:	e00080e7          	jalr	-512(ra) # 80002bb4 <cpuid>
    80002dbc:	06050663          	beqz	a0,80002e28 <kerneltrap+0xf4>
    80002dc0:	144027f3          	csrr	a5,sip
    80002dc4:	ffd7f793          	andi	a5,a5,-3
    80002dc8:	14479073          	csrw	sip,a5
    80002dcc:	01813083          	ld	ra,24(sp)
    80002dd0:	01013403          	ld	s0,16(sp)
    80002dd4:	00813483          	ld	s1,8(sp)
    80002dd8:	02010113          	addi	sp,sp,32
    80002ddc:	00008067          	ret
    80002de0:	00000097          	auipc	ra,0x0
    80002de4:	3c4080e7          	jalr	964(ra) # 800031a4 <plic_claim>
    80002de8:	00a00793          	li	a5,10
    80002dec:	00050493          	mv	s1,a0
    80002df0:	06f50863          	beq	a0,a5,80002e60 <kerneltrap+0x12c>
    80002df4:	fc050ce3          	beqz	a0,80002dcc <kerneltrap+0x98>
    80002df8:	00050593          	mv	a1,a0
    80002dfc:	00002517          	auipc	a0,0x2
    80002e00:	4ac50513          	addi	a0,a0,1196 # 800052a8 <CONSOLE_STATUS+0x298>
    80002e04:	00000097          	auipc	ra,0x0
    80002e08:	7e4080e7          	jalr	2020(ra) # 800035e8 <__printf>
    80002e0c:	01013403          	ld	s0,16(sp)
    80002e10:	01813083          	ld	ra,24(sp)
    80002e14:	00048513          	mv	a0,s1
    80002e18:	00813483          	ld	s1,8(sp)
    80002e1c:	02010113          	addi	sp,sp,32
    80002e20:	00000317          	auipc	t1,0x0
    80002e24:	3bc30067          	jr	956(t1) # 800031dc <plic_complete>
    80002e28:	00004517          	auipc	a0,0x4
    80002e2c:	25850513          	addi	a0,a0,600 # 80007080 <tickslock>
    80002e30:	00001097          	auipc	ra,0x1
    80002e34:	48c080e7          	jalr	1164(ra) # 800042bc <acquire>
    80002e38:	00003717          	auipc	a4,0x3
    80002e3c:	13c70713          	addi	a4,a4,316 # 80005f74 <ticks>
    80002e40:	00072783          	lw	a5,0(a4)
    80002e44:	00004517          	auipc	a0,0x4
    80002e48:	23c50513          	addi	a0,a0,572 # 80007080 <tickslock>
    80002e4c:	0017879b          	addiw	a5,a5,1
    80002e50:	00f72023          	sw	a5,0(a4)
    80002e54:	00001097          	auipc	ra,0x1
    80002e58:	534080e7          	jalr	1332(ra) # 80004388 <release>
    80002e5c:	f65ff06f          	j	80002dc0 <kerneltrap+0x8c>
    80002e60:	00001097          	auipc	ra,0x1
    80002e64:	090080e7          	jalr	144(ra) # 80003ef0 <uartintr>
    80002e68:	fa5ff06f          	j	80002e0c <kerneltrap+0xd8>
    80002e6c:	00002517          	auipc	a0,0x2
    80002e70:	41c50513          	addi	a0,a0,1052 # 80005288 <CONSOLE_STATUS+0x278>
    80002e74:	00000097          	auipc	ra,0x0
    80002e78:	718080e7          	jalr	1816(ra) # 8000358c <panic>

0000000080002e7c <clockintr>:
    80002e7c:	fe010113          	addi	sp,sp,-32
    80002e80:	00813823          	sd	s0,16(sp)
    80002e84:	00913423          	sd	s1,8(sp)
    80002e88:	00113c23          	sd	ra,24(sp)
    80002e8c:	02010413          	addi	s0,sp,32
    80002e90:	00004497          	auipc	s1,0x4
    80002e94:	1f048493          	addi	s1,s1,496 # 80007080 <tickslock>
    80002e98:	00048513          	mv	a0,s1
    80002e9c:	00001097          	auipc	ra,0x1
    80002ea0:	420080e7          	jalr	1056(ra) # 800042bc <acquire>
    80002ea4:	00003717          	auipc	a4,0x3
    80002ea8:	0d070713          	addi	a4,a4,208 # 80005f74 <ticks>
    80002eac:	00072783          	lw	a5,0(a4)
    80002eb0:	01013403          	ld	s0,16(sp)
    80002eb4:	01813083          	ld	ra,24(sp)
    80002eb8:	00048513          	mv	a0,s1
    80002ebc:	0017879b          	addiw	a5,a5,1
    80002ec0:	00813483          	ld	s1,8(sp)
    80002ec4:	00f72023          	sw	a5,0(a4)
    80002ec8:	02010113          	addi	sp,sp,32
    80002ecc:	00001317          	auipc	t1,0x1
    80002ed0:	4bc30067          	jr	1212(t1) # 80004388 <release>

0000000080002ed4 <devintr>:
    80002ed4:	142027f3          	csrr	a5,scause
    80002ed8:	00000513          	li	a0,0
    80002edc:	0007c463          	bltz	a5,80002ee4 <devintr+0x10>
    80002ee0:	00008067          	ret
    80002ee4:	fe010113          	addi	sp,sp,-32
    80002ee8:	00813823          	sd	s0,16(sp)
    80002eec:	00113c23          	sd	ra,24(sp)
    80002ef0:	00913423          	sd	s1,8(sp)
    80002ef4:	02010413          	addi	s0,sp,32
    80002ef8:	0ff7f713          	andi	a4,a5,255
    80002efc:	00900693          	li	a3,9
    80002f00:	04d70c63          	beq	a4,a3,80002f58 <devintr+0x84>
    80002f04:	fff00713          	li	a4,-1
    80002f08:	03f71713          	slli	a4,a4,0x3f
    80002f0c:	00170713          	addi	a4,a4,1
    80002f10:	00e78c63          	beq	a5,a4,80002f28 <devintr+0x54>
    80002f14:	01813083          	ld	ra,24(sp)
    80002f18:	01013403          	ld	s0,16(sp)
    80002f1c:	00813483          	ld	s1,8(sp)
    80002f20:	02010113          	addi	sp,sp,32
    80002f24:	00008067          	ret
    80002f28:	00000097          	auipc	ra,0x0
    80002f2c:	c8c080e7          	jalr	-884(ra) # 80002bb4 <cpuid>
    80002f30:	06050663          	beqz	a0,80002f9c <devintr+0xc8>
    80002f34:	144027f3          	csrr	a5,sip
    80002f38:	ffd7f793          	andi	a5,a5,-3
    80002f3c:	14479073          	csrw	sip,a5
    80002f40:	01813083          	ld	ra,24(sp)
    80002f44:	01013403          	ld	s0,16(sp)
    80002f48:	00813483          	ld	s1,8(sp)
    80002f4c:	00200513          	li	a0,2
    80002f50:	02010113          	addi	sp,sp,32
    80002f54:	00008067          	ret
    80002f58:	00000097          	auipc	ra,0x0
    80002f5c:	24c080e7          	jalr	588(ra) # 800031a4 <plic_claim>
    80002f60:	00a00793          	li	a5,10
    80002f64:	00050493          	mv	s1,a0
    80002f68:	06f50663          	beq	a0,a5,80002fd4 <devintr+0x100>
    80002f6c:	00100513          	li	a0,1
    80002f70:	fa0482e3          	beqz	s1,80002f14 <devintr+0x40>
    80002f74:	00048593          	mv	a1,s1
    80002f78:	00002517          	auipc	a0,0x2
    80002f7c:	33050513          	addi	a0,a0,816 # 800052a8 <CONSOLE_STATUS+0x298>
    80002f80:	00000097          	auipc	ra,0x0
    80002f84:	668080e7          	jalr	1640(ra) # 800035e8 <__printf>
    80002f88:	00048513          	mv	a0,s1
    80002f8c:	00000097          	auipc	ra,0x0
    80002f90:	250080e7          	jalr	592(ra) # 800031dc <plic_complete>
    80002f94:	00100513          	li	a0,1
    80002f98:	f7dff06f          	j	80002f14 <devintr+0x40>
    80002f9c:	00004517          	auipc	a0,0x4
    80002fa0:	0e450513          	addi	a0,a0,228 # 80007080 <tickslock>
    80002fa4:	00001097          	auipc	ra,0x1
    80002fa8:	318080e7          	jalr	792(ra) # 800042bc <acquire>
    80002fac:	00003717          	auipc	a4,0x3
    80002fb0:	fc870713          	addi	a4,a4,-56 # 80005f74 <ticks>
    80002fb4:	00072783          	lw	a5,0(a4)
    80002fb8:	00004517          	auipc	a0,0x4
    80002fbc:	0c850513          	addi	a0,a0,200 # 80007080 <tickslock>
    80002fc0:	0017879b          	addiw	a5,a5,1
    80002fc4:	00f72023          	sw	a5,0(a4)
    80002fc8:	00001097          	auipc	ra,0x1
    80002fcc:	3c0080e7          	jalr	960(ra) # 80004388 <release>
    80002fd0:	f65ff06f          	j	80002f34 <devintr+0x60>
    80002fd4:	00001097          	auipc	ra,0x1
    80002fd8:	f1c080e7          	jalr	-228(ra) # 80003ef0 <uartintr>
    80002fdc:	fadff06f          	j	80002f88 <devintr+0xb4>

0000000080002fe0 <kernelvec>:
    80002fe0:	f0010113          	addi	sp,sp,-256
    80002fe4:	00113023          	sd	ra,0(sp)
    80002fe8:	00213423          	sd	sp,8(sp)
    80002fec:	00313823          	sd	gp,16(sp)
    80002ff0:	00413c23          	sd	tp,24(sp)
    80002ff4:	02513023          	sd	t0,32(sp)
    80002ff8:	02613423          	sd	t1,40(sp)
    80002ffc:	02713823          	sd	t2,48(sp)
    80003000:	02813c23          	sd	s0,56(sp)
    80003004:	04913023          	sd	s1,64(sp)
    80003008:	04a13423          	sd	a0,72(sp)
    8000300c:	04b13823          	sd	a1,80(sp)
    80003010:	04c13c23          	sd	a2,88(sp)
    80003014:	06d13023          	sd	a3,96(sp)
    80003018:	06e13423          	sd	a4,104(sp)
    8000301c:	06f13823          	sd	a5,112(sp)
    80003020:	07013c23          	sd	a6,120(sp)
    80003024:	09113023          	sd	a7,128(sp)
    80003028:	09213423          	sd	s2,136(sp)
    8000302c:	09313823          	sd	s3,144(sp)
    80003030:	09413c23          	sd	s4,152(sp)
    80003034:	0b513023          	sd	s5,160(sp)
    80003038:	0b613423          	sd	s6,168(sp)
    8000303c:	0b713823          	sd	s7,176(sp)
    80003040:	0b813c23          	sd	s8,184(sp)
    80003044:	0d913023          	sd	s9,192(sp)
    80003048:	0da13423          	sd	s10,200(sp)
    8000304c:	0db13823          	sd	s11,208(sp)
    80003050:	0dc13c23          	sd	t3,216(sp)
    80003054:	0fd13023          	sd	t4,224(sp)
    80003058:	0fe13423          	sd	t5,232(sp)
    8000305c:	0ff13823          	sd	t6,240(sp)
    80003060:	cd5ff0ef          	jal	ra,80002d34 <kerneltrap>
    80003064:	00013083          	ld	ra,0(sp)
    80003068:	00813103          	ld	sp,8(sp)
    8000306c:	01013183          	ld	gp,16(sp)
    80003070:	02013283          	ld	t0,32(sp)
    80003074:	02813303          	ld	t1,40(sp)
    80003078:	03013383          	ld	t2,48(sp)
    8000307c:	03813403          	ld	s0,56(sp)
    80003080:	04013483          	ld	s1,64(sp)
    80003084:	04813503          	ld	a0,72(sp)
    80003088:	05013583          	ld	a1,80(sp)
    8000308c:	05813603          	ld	a2,88(sp)
    80003090:	06013683          	ld	a3,96(sp)
    80003094:	06813703          	ld	a4,104(sp)
    80003098:	07013783          	ld	a5,112(sp)
    8000309c:	07813803          	ld	a6,120(sp)
    800030a0:	08013883          	ld	a7,128(sp)
    800030a4:	08813903          	ld	s2,136(sp)
    800030a8:	09013983          	ld	s3,144(sp)
    800030ac:	09813a03          	ld	s4,152(sp)
    800030b0:	0a013a83          	ld	s5,160(sp)
    800030b4:	0a813b03          	ld	s6,168(sp)
    800030b8:	0b013b83          	ld	s7,176(sp)
    800030bc:	0b813c03          	ld	s8,184(sp)
    800030c0:	0c013c83          	ld	s9,192(sp)
    800030c4:	0c813d03          	ld	s10,200(sp)
    800030c8:	0d013d83          	ld	s11,208(sp)
    800030cc:	0d813e03          	ld	t3,216(sp)
    800030d0:	0e013e83          	ld	t4,224(sp)
    800030d4:	0e813f03          	ld	t5,232(sp)
    800030d8:	0f013f83          	ld	t6,240(sp)
    800030dc:	10010113          	addi	sp,sp,256
    800030e0:	10200073          	sret
    800030e4:	00000013          	nop
    800030e8:	00000013          	nop
    800030ec:	00000013          	nop

00000000800030f0 <timervec>:
    800030f0:	34051573          	csrrw	a0,mscratch,a0
    800030f4:	00b53023          	sd	a1,0(a0)
    800030f8:	00c53423          	sd	a2,8(a0)
    800030fc:	00d53823          	sd	a3,16(a0)
    80003100:	01853583          	ld	a1,24(a0)
    80003104:	02053603          	ld	a2,32(a0)
    80003108:	0005b683          	ld	a3,0(a1)
    8000310c:	00c686b3          	add	a3,a3,a2
    80003110:	00d5b023          	sd	a3,0(a1)
    80003114:	00200593          	li	a1,2
    80003118:	14459073          	csrw	sip,a1
    8000311c:	01053683          	ld	a3,16(a0)
    80003120:	00853603          	ld	a2,8(a0)
    80003124:	00053583          	ld	a1,0(a0)
    80003128:	34051573          	csrrw	a0,mscratch,a0
    8000312c:	30200073          	mret

0000000080003130 <plicinit>:
    80003130:	ff010113          	addi	sp,sp,-16
    80003134:	00813423          	sd	s0,8(sp)
    80003138:	01010413          	addi	s0,sp,16
    8000313c:	00813403          	ld	s0,8(sp)
    80003140:	0c0007b7          	lui	a5,0xc000
    80003144:	00100713          	li	a4,1
    80003148:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000314c:	00e7a223          	sw	a4,4(a5)
    80003150:	01010113          	addi	sp,sp,16
    80003154:	00008067          	ret

0000000080003158 <plicinithart>:
    80003158:	ff010113          	addi	sp,sp,-16
    8000315c:	00813023          	sd	s0,0(sp)
    80003160:	00113423          	sd	ra,8(sp)
    80003164:	01010413          	addi	s0,sp,16
    80003168:	00000097          	auipc	ra,0x0
    8000316c:	a4c080e7          	jalr	-1460(ra) # 80002bb4 <cpuid>
    80003170:	0085171b          	slliw	a4,a0,0x8
    80003174:	0c0027b7          	lui	a5,0xc002
    80003178:	00e787b3          	add	a5,a5,a4
    8000317c:	40200713          	li	a4,1026
    80003180:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003184:	00813083          	ld	ra,8(sp)
    80003188:	00013403          	ld	s0,0(sp)
    8000318c:	00d5151b          	slliw	a0,a0,0xd
    80003190:	0c2017b7          	lui	a5,0xc201
    80003194:	00a78533          	add	a0,a5,a0
    80003198:	00052023          	sw	zero,0(a0)
    8000319c:	01010113          	addi	sp,sp,16
    800031a0:	00008067          	ret

00000000800031a4 <plic_claim>:
    800031a4:	ff010113          	addi	sp,sp,-16
    800031a8:	00813023          	sd	s0,0(sp)
    800031ac:	00113423          	sd	ra,8(sp)
    800031b0:	01010413          	addi	s0,sp,16
    800031b4:	00000097          	auipc	ra,0x0
    800031b8:	a00080e7          	jalr	-1536(ra) # 80002bb4 <cpuid>
    800031bc:	00813083          	ld	ra,8(sp)
    800031c0:	00013403          	ld	s0,0(sp)
    800031c4:	00d5151b          	slliw	a0,a0,0xd
    800031c8:	0c2017b7          	lui	a5,0xc201
    800031cc:	00a78533          	add	a0,a5,a0
    800031d0:	00452503          	lw	a0,4(a0)
    800031d4:	01010113          	addi	sp,sp,16
    800031d8:	00008067          	ret

00000000800031dc <plic_complete>:
    800031dc:	fe010113          	addi	sp,sp,-32
    800031e0:	00813823          	sd	s0,16(sp)
    800031e4:	00913423          	sd	s1,8(sp)
    800031e8:	00113c23          	sd	ra,24(sp)
    800031ec:	02010413          	addi	s0,sp,32
    800031f0:	00050493          	mv	s1,a0
    800031f4:	00000097          	auipc	ra,0x0
    800031f8:	9c0080e7          	jalr	-1600(ra) # 80002bb4 <cpuid>
    800031fc:	01813083          	ld	ra,24(sp)
    80003200:	01013403          	ld	s0,16(sp)
    80003204:	00d5179b          	slliw	a5,a0,0xd
    80003208:	0c201737          	lui	a4,0xc201
    8000320c:	00f707b3          	add	a5,a4,a5
    80003210:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003214:	00813483          	ld	s1,8(sp)
    80003218:	02010113          	addi	sp,sp,32
    8000321c:	00008067          	ret

0000000080003220 <consolewrite>:
    80003220:	fb010113          	addi	sp,sp,-80
    80003224:	04813023          	sd	s0,64(sp)
    80003228:	04113423          	sd	ra,72(sp)
    8000322c:	02913c23          	sd	s1,56(sp)
    80003230:	03213823          	sd	s2,48(sp)
    80003234:	03313423          	sd	s3,40(sp)
    80003238:	03413023          	sd	s4,32(sp)
    8000323c:	01513c23          	sd	s5,24(sp)
    80003240:	05010413          	addi	s0,sp,80
    80003244:	06c05c63          	blez	a2,800032bc <consolewrite+0x9c>
    80003248:	00060993          	mv	s3,a2
    8000324c:	00050a13          	mv	s4,a0
    80003250:	00058493          	mv	s1,a1
    80003254:	00000913          	li	s2,0
    80003258:	fff00a93          	li	s5,-1
    8000325c:	01c0006f          	j	80003278 <consolewrite+0x58>
    80003260:	fbf44503          	lbu	a0,-65(s0)
    80003264:	0019091b          	addiw	s2,s2,1
    80003268:	00148493          	addi	s1,s1,1
    8000326c:	00001097          	auipc	ra,0x1
    80003270:	a9c080e7          	jalr	-1380(ra) # 80003d08 <uartputc>
    80003274:	03298063          	beq	s3,s2,80003294 <consolewrite+0x74>
    80003278:	00048613          	mv	a2,s1
    8000327c:	00100693          	li	a3,1
    80003280:	000a0593          	mv	a1,s4
    80003284:	fbf40513          	addi	a0,s0,-65
    80003288:	00000097          	auipc	ra,0x0
    8000328c:	9e4080e7          	jalr	-1564(ra) # 80002c6c <either_copyin>
    80003290:	fd5518e3          	bne	a0,s5,80003260 <consolewrite+0x40>
    80003294:	04813083          	ld	ra,72(sp)
    80003298:	04013403          	ld	s0,64(sp)
    8000329c:	03813483          	ld	s1,56(sp)
    800032a0:	02813983          	ld	s3,40(sp)
    800032a4:	02013a03          	ld	s4,32(sp)
    800032a8:	01813a83          	ld	s5,24(sp)
    800032ac:	00090513          	mv	a0,s2
    800032b0:	03013903          	ld	s2,48(sp)
    800032b4:	05010113          	addi	sp,sp,80
    800032b8:	00008067          	ret
    800032bc:	00000913          	li	s2,0
    800032c0:	fd5ff06f          	j	80003294 <consolewrite+0x74>

00000000800032c4 <consoleread>:
    800032c4:	f9010113          	addi	sp,sp,-112
    800032c8:	06813023          	sd	s0,96(sp)
    800032cc:	04913c23          	sd	s1,88(sp)
    800032d0:	05213823          	sd	s2,80(sp)
    800032d4:	05313423          	sd	s3,72(sp)
    800032d8:	05413023          	sd	s4,64(sp)
    800032dc:	03513c23          	sd	s5,56(sp)
    800032e0:	03613823          	sd	s6,48(sp)
    800032e4:	03713423          	sd	s7,40(sp)
    800032e8:	03813023          	sd	s8,32(sp)
    800032ec:	06113423          	sd	ra,104(sp)
    800032f0:	01913c23          	sd	s9,24(sp)
    800032f4:	07010413          	addi	s0,sp,112
    800032f8:	00060b93          	mv	s7,a2
    800032fc:	00050913          	mv	s2,a0
    80003300:	00058c13          	mv	s8,a1
    80003304:	00060b1b          	sext.w	s6,a2
    80003308:	00004497          	auipc	s1,0x4
    8000330c:	da048493          	addi	s1,s1,-608 # 800070a8 <cons>
    80003310:	00400993          	li	s3,4
    80003314:	fff00a13          	li	s4,-1
    80003318:	00a00a93          	li	s5,10
    8000331c:	05705e63          	blez	s7,80003378 <consoleread+0xb4>
    80003320:	09c4a703          	lw	a4,156(s1)
    80003324:	0984a783          	lw	a5,152(s1)
    80003328:	0007071b          	sext.w	a4,a4
    8000332c:	08e78463          	beq	a5,a4,800033b4 <consoleread+0xf0>
    80003330:	07f7f713          	andi	a4,a5,127
    80003334:	00e48733          	add	a4,s1,a4
    80003338:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000333c:	0017869b          	addiw	a3,a5,1
    80003340:	08d4ac23          	sw	a3,152(s1)
    80003344:	00070c9b          	sext.w	s9,a4
    80003348:	0b370663          	beq	a4,s3,800033f4 <consoleread+0x130>
    8000334c:	00100693          	li	a3,1
    80003350:	f9f40613          	addi	a2,s0,-97
    80003354:	000c0593          	mv	a1,s8
    80003358:	00090513          	mv	a0,s2
    8000335c:	f8e40fa3          	sb	a4,-97(s0)
    80003360:	00000097          	auipc	ra,0x0
    80003364:	8c0080e7          	jalr	-1856(ra) # 80002c20 <either_copyout>
    80003368:	01450863          	beq	a0,s4,80003378 <consoleread+0xb4>
    8000336c:	001c0c13          	addi	s8,s8,1
    80003370:	fffb8b9b          	addiw	s7,s7,-1
    80003374:	fb5c94e3          	bne	s9,s5,8000331c <consoleread+0x58>
    80003378:	000b851b          	sext.w	a0,s7
    8000337c:	06813083          	ld	ra,104(sp)
    80003380:	06013403          	ld	s0,96(sp)
    80003384:	05813483          	ld	s1,88(sp)
    80003388:	05013903          	ld	s2,80(sp)
    8000338c:	04813983          	ld	s3,72(sp)
    80003390:	04013a03          	ld	s4,64(sp)
    80003394:	03813a83          	ld	s5,56(sp)
    80003398:	02813b83          	ld	s7,40(sp)
    8000339c:	02013c03          	ld	s8,32(sp)
    800033a0:	01813c83          	ld	s9,24(sp)
    800033a4:	40ab053b          	subw	a0,s6,a0
    800033a8:	03013b03          	ld	s6,48(sp)
    800033ac:	07010113          	addi	sp,sp,112
    800033b0:	00008067          	ret
    800033b4:	00001097          	auipc	ra,0x1
    800033b8:	1d8080e7          	jalr	472(ra) # 8000458c <push_on>
    800033bc:	0984a703          	lw	a4,152(s1)
    800033c0:	09c4a783          	lw	a5,156(s1)
    800033c4:	0007879b          	sext.w	a5,a5
    800033c8:	fef70ce3          	beq	a4,a5,800033c0 <consoleread+0xfc>
    800033cc:	00001097          	auipc	ra,0x1
    800033d0:	234080e7          	jalr	564(ra) # 80004600 <pop_on>
    800033d4:	0984a783          	lw	a5,152(s1)
    800033d8:	07f7f713          	andi	a4,a5,127
    800033dc:	00e48733          	add	a4,s1,a4
    800033e0:	01874703          	lbu	a4,24(a4)
    800033e4:	0017869b          	addiw	a3,a5,1
    800033e8:	08d4ac23          	sw	a3,152(s1)
    800033ec:	00070c9b          	sext.w	s9,a4
    800033f0:	f5371ee3          	bne	a4,s3,8000334c <consoleread+0x88>
    800033f4:	000b851b          	sext.w	a0,s7
    800033f8:	f96bf2e3          	bgeu	s7,s6,8000337c <consoleread+0xb8>
    800033fc:	08f4ac23          	sw	a5,152(s1)
    80003400:	f7dff06f          	j	8000337c <consoleread+0xb8>

0000000080003404 <consputc>:
    80003404:	10000793          	li	a5,256
    80003408:	00f50663          	beq	a0,a5,80003414 <consputc+0x10>
    8000340c:	00001317          	auipc	t1,0x1
    80003410:	9f430067          	jr	-1548(t1) # 80003e00 <uartputc_sync>
    80003414:	ff010113          	addi	sp,sp,-16
    80003418:	00113423          	sd	ra,8(sp)
    8000341c:	00813023          	sd	s0,0(sp)
    80003420:	01010413          	addi	s0,sp,16
    80003424:	00800513          	li	a0,8
    80003428:	00001097          	auipc	ra,0x1
    8000342c:	9d8080e7          	jalr	-1576(ra) # 80003e00 <uartputc_sync>
    80003430:	02000513          	li	a0,32
    80003434:	00001097          	auipc	ra,0x1
    80003438:	9cc080e7          	jalr	-1588(ra) # 80003e00 <uartputc_sync>
    8000343c:	00013403          	ld	s0,0(sp)
    80003440:	00813083          	ld	ra,8(sp)
    80003444:	00800513          	li	a0,8
    80003448:	01010113          	addi	sp,sp,16
    8000344c:	00001317          	auipc	t1,0x1
    80003450:	9b430067          	jr	-1612(t1) # 80003e00 <uartputc_sync>

0000000080003454 <consoleintr>:
    80003454:	fe010113          	addi	sp,sp,-32
    80003458:	00813823          	sd	s0,16(sp)
    8000345c:	00913423          	sd	s1,8(sp)
    80003460:	01213023          	sd	s2,0(sp)
    80003464:	00113c23          	sd	ra,24(sp)
    80003468:	02010413          	addi	s0,sp,32
    8000346c:	00004917          	auipc	s2,0x4
    80003470:	c3c90913          	addi	s2,s2,-964 # 800070a8 <cons>
    80003474:	00050493          	mv	s1,a0
    80003478:	00090513          	mv	a0,s2
    8000347c:	00001097          	auipc	ra,0x1
    80003480:	e40080e7          	jalr	-448(ra) # 800042bc <acquire>
    80003484:	02048c63          	beqz	s1,800034bc <consoleintr+0x68>
    80003488:	0a092783          	lw	a5,160(s2)
    8000348c:	09892703          	lw	a4,152(s2)
    80003490:	07f00693          	li	a3,127
    80003494:	40e7873b          	subw	a4,a5,a4
    80003498:	02e6e263          	bltu	a3,a4,800034bc <consoleintr+0x68>
    8000349c:	00d00713          	li	a4,13
    800034a0:	04e48063          	beq	s1,a4,800034e0 <consoleintr+0x8c>
    800034a4:	07f7f713          	andi	a4,a5,127
    800034a8:	00e90733          	add	a4,s2,a4
    800034ac:	0017879b          	addiw	a5,a5,1
    800034b0:	0af92023          	sw	a5,160(s2)
    800034b4:	00970c23          	sb	s1,24(a4)
    800034b8:	08f92e23          	sw	a5,156(s2)
    800034bc:	01013403          	ld	s0,16(sp)
    800034c0:	01813083          	ld	ra,24(sp)
    800034c4:	00813483          	ld	s1,8(sp)
    800034c8:	00013903          	ld	s2,0(sp)
    800034cc:	00004517          	auipc	a0,0x4
    800034d0:	bdc50513          	addi	a0,a0,-1060 # 800070a8 <cons>
    800034d4:	02010113          	addi	sp,sp,32
    800034d8:	00001317          	auipc	t1,0x1
    800034dc:	eb030067          	jr	-336(t1) # 80004388 <release>
    800034e0:	00a00493          	li	s1,10
    800034e4:	fc1ff06f          	j	800034a4 <consoleintr+0x50>

00000000800034e8 <consoleinit>:
    800034e8:	fe010113          	addi	sp,sp,-32
    800034ec:	00113c23          	sd	ra,24(sp)
    800034f0:	00813823          	sd	s0,16(sp)
    800034f4:	00913423          	sd	s1,8(sp)
    800034f8:	02010413          	addi	s0,sp,32
    800034fc:	00004497          	auipc	s1,0x4
    80003500:	bac48493          	addi	s1,s1,-1108 # 800070a8 <cons>
    80003504:	00048513          	mv	a0,s1
    80003508:	00002597          	auipc	a1,0x2
    8000350c:	df858593          	addi	a1,a1,-520 # 80005300 <CONSOLE_STATUS+0x2f0>
    80003510:	00001097          	auipc	ra,0x1
    80003514:	d88080e7          	jalr	-632(ra) # 80004298 <initlock>
    80003518:	00000097          	auipc	ra,0x0
    8000351c:	7ac080e7          	jalr	1964(ra) # 80003cc4 <uartinit>
    80003520:	01813083          	ld	ra,24(sp)
    80003524:	01013403          	ld	s0,16(sp)
    80003528:	00000797          	auipc	a5,0x0
    8000352c:	d9c78793          	addi	a5,a5,-612 # 800032c4 <consoleread>
    80003530:	0af4bc23          	sd	a5,184(s1)
    80003534:	00000797          	auipc	a5,0x0
    80003538:	cec78793          	addi	a5,a5,-788 # 80003220 <consolewrite>
    8000353c:	0cf4b023          	sd	a5,192(s1)
    80003540:	00813483          	ld	s1,8(sp)
    80003544:	02010113          	addi	sp,sp,32
    80003548:	00008067          	ret

000000008000354c <console_read>:
    8000354c:	ff010113          	addi	sp,sp,-16
    80003550:	00813423          	sd	s0,8(sp)
    80003554:	01010413          	addi	s0,sp,16
    80003558:	00813403          	ld	s0,8(sp)
    8000355c:	00004317          	auipc	t1,0x4
    80003560:	c0433303          	ld	t1,-1020(t1) # 80007160 <devsw+0x10>
    80003564:	01010113          	addi	sp,sp,16
    80003568:	00030067          	jr	t1

000000008000356c <console_write>:
    8000356c:	ff010113          	addi	sp,sp,-16
    80003570:	00813423          	sd	s0,8(sp)
    80003574:	01010413          	addi	s0,sp,16
    80003578:	00813403          	ld	s0,8(sp)
    8000357c:	00004317          	auipc	t1,0x4
    80003580:	bec33303          	ld	t1,-1044(t1) # 80007168 <devsw+0x18>
    80003584:	01010113          	addi	sp,sp,16
    80003588:	00030067          	jr	t1

000000008000358c <panic>:
    8000358c:	fe010113          	addi	sp,sp,-32
    80003590:	00113c23          	sd	ra,24(sp)
    80003594:	00813823          	sd	s0,16(sp)
    80003598:	00913423          	sd	s1,8(sp)
    8000359c:	02010413          	addi	s0,sp,32
    800035a0:	00050493          	mv	s1,a0
    800035a4:	00002517          	auipc	a0,0x2
    800035a8:	d6450513          	addi	a0,a0,-668 # 80005308 <CONSOLE_STATUS+0x2f8>
    800035ac:	00004797          	auipc	a5,0x4
    800035b0:	c407ae23          	sw	zero,-932(a5) # 80007208 <pr+0x18>
    800035b4:	00000097          	auipc	ra,0x0
    800035b8:	034080e7          	jalr	52(ra) # 800035e8 <__printf>
    800035bc:	00048513          	mv	a0,s1
    800035c0:	00000097          	auipc	ra,0x0
    800035c4:	028080e7          	jalr	40(ra) # 800035e8 <__printf>
    800035c8:	00002517          	auipc	a0,0x2
    800035cc:	d2050513          	addi	a0,a0,-736 # 800052e8 <CONSOLE_STATUS+0x2d8>
    800035d0:	00000097          	auipc	ra,0x0
    800035d4:	018080e7          	jalr	24(ra) # 800035e8 <__printf>
    800035d8:	00100793          	li	a5,1
    800035dc:	00003717          	auipc	a4,0x3
    800035e0:	98f72e23          	sw	a5,-1636(a4) # 80005f78 <panicked>
    800035e4:	0000006f          	j	800035e4 <panic+0x58>

00000000800035e8 <__printf>:
    800035e8:	f3010113          	addi	sp,sp,-208
    800035ec:	08813023          	sd	s0,128(sp)
    800035f0:	07313423          	sd	s3,104(sp)
    800035f4:	09010413          	addi	s0,sp,144
    800035f8:	05813023          	sd	s8,64(sp)
    800035fc:	08113423          	sd	ra,136(sp)
    80003600:	06913c23          	sd	s1,120(sp)
    80003604:	07213823          	sd	s2,112(sp)
    80003608:	07413023          	sd	s4,96(sp)
    8000360c:	05513c23          	sd	s5,88(sp)
    80003610:	05613823          	sd	s6,80(sp)
    80003614:	05713423          	sd	s7,72(sp)
    80003618:	03913c23          	sd	s9,56(sp)
    8000361c:	03a13823          	sd	s10,48(sp)
    80003620:	03b13423          	sd	s11,40(sp)
    80003624:	00004317          	auipc	t1,0x4
    80003628:	bcc30313          	addi	t1,t1,-1076 # 800071f0 <pr>
    8000362c:	01832c03          	lw	s8,24(t1)
    80003630:	00b43423          	sd	a1,8(s0)
    80003634:	00c43823          	sd	a2,16(s0)
    80003638:	00d43c23          	sd	a3,24(s0)
    8000363c:	02e43023          	sd	a4,32(s0)
    80003640:	02f43423          	sd	a5,40(s0)
    80003644:	03043823          	sd	a6,48(s0)
    80003648:	03143c23          	sd	a7,56(s0)
    8000364c:	00050993          	mv	s3,a0
    80003650:	4a0c1663          	bnez	s8,80003afc <__printf+0x514>
    80003654:	60098c63          	beqz	s3,80003c6c <__printf+0x684>
    80003658:	0009c503          	lbu	a0,0(s3)
    8000365c:	00840793          	addi	a5,s0,8
    80003660:	f6f43c23          	sd	a5,-136(s0)
    80003664:	00000493          	li	s1,0
    80003668:	22050063          	beqz	a0,80003888 <__printf+0x2a0>
    8000366c:	00002a37          	lui	s4,0x2
    80003670:	00018ab7          	lui	s5,0x18
    80003674:	000f4b37          	lui	s6,0xf4
    80003678:	00989bb7          	lui	s7,0x989
    8000367c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003680:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003684:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003688:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000368c:	00148c9b          	addiw	s9,s1,1
    80003690:	02500793          	li	a5,37
    80003694:	01998933          	add	s2,s3,s9
    80003698:	38f51263          	bne	a0,a5,80003a1c <__printf+0x434>
    8000369c:	00094783          	lbu	a5,0(s2)
    800036a0:	00078c9b          	sext.w	s9,a5
    800036a4:	1e078263          	beqz	a5,80003888 <__printf+0x2a0>
    800036a8:	0024849b          	addiw	s1,s1,2
    800036ac:	07000713          	li	a4,112
    800036b0:	00998933          	add	s2,s3,s1
    800036b4:	38e78a63          	beq	a5,a4,80003a48 <__printf+0x460>
    800036b8:	20f76863          	bltu	a4,a5,800038c8 <__printf+0x2e0>
    800036bc:	42a78863          	beq	a5,a0,80003aec <__printf+0x504>
    800036c0:	06400713          	li	a4,100
    800036c4:	40e79663          	bne	a5,a4,80003ad0 <__printf+0x4e8>
    800036c8:	f7843783          	ld	a5,-136(s0)
    800036cc:	0007a603          	lw	a2,0(a5)
    800036d0:	00878793          	addi	a5,a5,8
    800036d4:	f6f43c23          	sd	a5,-136(s0)
    800036d8:	42064a63          	bltz	a2,80003b0c <__printf+0x524>
    800036dc:	00a00713          	li	a4,10
    800036e0:	02e677bb          	remuw	a5,a2,a4
    800036e4:	00002d97          	auipc	s11,0x2
    800036e8:	c4cd8d93          	addi	s11,s11,-948 # 80005330 <digits>
    800036ec:	00900593          	li	a1,9
    800036f0:	0006051b          	sext.w	a0,a2
    800036f4:	00000c93          	li	s9,0
    800036f8:	02079793          	slli	a5,a5,0x20
    800036fc:	0207d793          	srli	a5,a5,0x20
    80003700:	00fd87b3          	add	a5,s11,a5
    80003704:	0007c783          	lbu	a5,0(a5)
    80003708:	02e656bb          	divuw	a3,a2,a4
    8000370c:	f8f40023          	sb	a5,-128(s0)
    80003710:	14c5d863          	bge	a1,a2,80003860 <__printf+0x278>
    80003714:	06300593          	li	a1,99
    80003718:	00100c93          	li	s9,1
    8000371c:	02e6f7bb          	remuw	a5,a3,a4
    80003720:	02079793          	slli	a5,a5,0x20
    80003724:	0207d793          	srli	a5,a5,0x20
    80003728:	00fd87b3          	add	a5,s11,a5
    8000372c:	0007c783          	lbu	a5,0(a5)
    80003730:	02e6d73b          	divuw	a4,a3,a4
    80003734:	f8f400a3          	sb	a5,-127(s0)
    80003738:	12a5f463          	bgeu	a1,a0,80003860 <__printf+0x278>
    8000373c:	00a00693          	li	a3,10
    80003740:	00900593          	li	a1,9
    80003744:	02d777bb          	remuw	a5,a4,a3
    80003748:	02079793          	slli	a5,a5,0x20
    8000374c:	0207d793          	srli	a5,a5,0x20
    80003750:	00fd87b3          	add	a5,s11,a5
    80003754:	0007c503          	lbu	a0,0(a5)
    80003758:	02d757bb          	divuw	a5,a4,a3
    8000375c:	f8a40123          	sb	a0,-126(s0)
    80003760:	48e5f263          	bgeu	a1,a4,80003be4 <__printf+0x5fc>
    80003764:	06300513          	li	a0,99
    80003768:	02d7f5bb          	remuw	a1,a5,a3
    8000376c:	02059593          	slli	a1,a1,0x20
    80003770:	0205d593          	srli	a1,a1,0x20
    80003774:	00bd85b3          	add	a1,s11,a1
    80003778:	0005c583          	lbu	a1,0(a1)
    8000377c:	02d7d7bb          	divuw	a5,a5,a3
    80003780:	f8b401a3          	sb	a1,-125(s0)
    80003784:	48e57263          	bgeu	a0,a4,80003c08 <__printf+0x620>
    80003788:	3e700513          	li	a0,999
    8000378c:	02d7f5bb          	remuw	a1,a5,a3
    80003790:	02059593          	slli	a1,a1,0x20
    80003794:	0205d593          	srli	a1,a1,0x20
    80003798:	00bd85b3          	add	a1,s11,a1
    8000379c:	0005c583          	lbu	a1,0(a1)
    800037a0:	02d7d7bb          	divuw	a5,a5,a3
    800037a4:	f8b40223          	sb	a1,-124(s0)
    800037a8:	46e57663          	bgeu	a0,a4,80003c14 <__printf+0x62c>
    800037ac:	02d7f5bb          	remuw	a1,a5,a3
    800037b0:	02059593          	slli	a1,a1,0x20
    800037b4:	0205d593          	srli	a1,a1,0x20
    800037b8:	00bd85b3          	add	a1,s11,a1
    800037bc:	0005c583          	lbu	a1,0(a1)
    800037c0:	02d7d7bb          	divuw	a5,a5,a3
    800037c4:	f8b402a3          	sb	a1,-123(s0)
    800037c8:	46ea7863          	bgeu	s4,a4,80003c38 <__printf+0x650>
    800037cc:	02d7f5bb          	remuw	a1,a5,a3
    800037d0:	02059593          	slli	a1,a1,0x20
    800037d4:	0205d593          	srli	a1,a1,0x20
    800037d8:	00bd85b3          	add	a1,s11,a1
    800037dc:	0005c583          	lbu	a1,0(a1)
    800037e0:	02d7d7bb          	divuw	a5,a5,a3
    800037e4:	f8b40323          	sb	a1,-122(s0)
    800037e8:	3eeaf863          	bgeu	s5,a4,80003bd8 <__printf+0x5f0>
    800037ec:	02d7f5bb          	remuw	a1,a5,a3
    800037f0:	02059593          	slli	a1,a1,0x20
    800037f4:	0205d593          	srli	a1,a1,0x20
    800037f8:	00bd85b3          	add	a1,s11,a1
    800037fc:	0005c583          	lbu	a1,0(a1)
    80003800:	02d7d7bb          	divuw	a5,a5,a3
    80003804:	f8b403a3          	sb	a1,-121(s0)
    80003808:	42eb7e63          	bgeu	s6,a4,80003c44 <__printf+0x65c>
    8000380c:	02d7f5bb          	remuw	a1,a5,a3
    80003810:	02059593          	slli	a1,a1,0x20
    80003814:	0205d593          	srli	a1,a1,0x20
    80003818:	00bd85b3          	add	a1,s11,a1
    8000381c:	0005c583          	lbu	a1,0(a1)
    80003820:	02d7d7bb          	divuw	a5,a5,a3
    80003824:	f8b40423          	sb	a1,-120(s0)
    80003828:	42ebfc63          	bgeu	s7,a4,80003c60 <__printf+0x678>
    8000382c:	02079793          	slli	a5,a5,0x20
    80003830:	0207d793          	srli	a5,a5,0x20
    80003834:	00fd8db3          	add	s11,s11,a5
    80003838:	000dc703          	lbu	a4,0(s11)
    8000383c:	00a00793          	li	a5,10
    80003840:	00900c93          	li	s9,9
    80003844:	f8e404a3          	sb	a4,-119(s0)
    80003848:	00065c63          	bgez	a2,80003860 <__printf+0x278>
    8000384c:	f9040713          	addi	a4,s0,-112
    80003850:	00f70733          	add	a4,a4,a5
    80003854:	02d00693          	li	a3,45
    80003858:	fed70823          	sb	a3,-16(a4)
    8000385c:	00078c93          	mv	s9,a5
    80003860:	f8040793          	addi	a5,s0,-128
    80003864:	01978cb3          	add	s9,a5,s9
    80003868:	f7f40d13          	addi	s10,s0,-129
    8000386c:	000cc503          	lbu	a0,0(s9)
    80003870:	fffc8c93          	addi	s9,s9,-1
    80003874:	00000097          	auipc	ra,0x0
    80003878:	b90080e7          	jalr	-1136(ra) # 80003404 <consputc>
    8000387c:	ffac98e3          	bne	s9,s10,8000386c <__printf+0x284>
    80003880:	00094503          	lbu	a0,0(s2)
    80003884:	e00514e3          	bnez	a0,8000368c <__printf+0xa4>
    80003888:	1a0c1663          	bnez	s8,80003a34 <__printf+0x44c>
    8000388c:	08813083          	ld	ra,136(sp)
    80003890:	08013403          	ld	s0,128(sp)
    80003894:	07813483          	ld	s1,120(sp)
    80003898:	07013903          	ld	s2,112(sp)
    8000389c:	06813983          	ld	s3,104(sp)
    800038a0:	06013a03          	ld	s4,96(sp)
    800038a4:	05813a83          	ld	s5,88(sp)
    800038a8:	05013b03          	ld	s6,80(sp)
    800038ac:	04813b83          	ld	s7,72(sp)
    800038b0:	04013c03          	ld	s8,64(sp)
    800038b4:	03813c83          	ld	s9,56(sp)
    800038b8:	03013d03          	ld	s10,48(sp)
    800038bc:	02813d83          	ld	s11,40(sp)
    800038c0:	0d010113          	addi	sp,sp,208
    800038c4:	00008067          	ret
    800038c8:	07300713          	li	a4,115
    800038cc:	1ce78a63          	beq	a5,a4,80003aa0 <__printf+0x4b8>
    800038d0:	07800713          	li	a4,120
    800038d4:	1ee79e63          	bne	a5,a4,80003ad0 <__printf+0x4e8>
    800038d8:	f7843783          	ld	a5,-136(s0)
    800038dc:	0007a703          	lw	a4,0(a5)
    800038e0:	00878793          	addi	a5,a5,8
    800038e4:	f6f43c23          	sd	a5,-136(s0)
    800038e8:	28074263          	bltz	a4,80003b6c <__printf+0x584>
    800038ec:	00002d97          	auipc	s11,0x2
    800038f0:	a44d8d93          	addi	s11,s11,-1468 # 80005330 <digits>
    800038f4:	00f77793          	andi	a5,a4,15
    800038f8:	00fd87b3          	add	a5,s11,a5
    800038fc:	0007c683          	lbu	a3,0(a5)
    80003900:	00f00613          	li	a2,15
    80003904:	0007079b          	sext.w	a5,a4
    80003908:	f8d40023          	sb	a3,-128(s0)
    8000390c:	0047559b          	srliw	a1,a4,0x4
    80003910:	0047569b          	srliw	a3,a4,0x4
    80003914:	00000c93          	li	s9,0
    80003918:	0ee65063          	bge	a2,a4,800039f8 <__printf+0x410>
    8000391c:	00f6f693          	andi	a3,a3,15
    80003920:	00dd86b3          	add	a3,s11,a3
    80003924:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003928:	0087d79b          	srliw	a5,a5,0x8
    8000392c:	00100c93          	li	s9,1
    80003930:	f8d400a3          	sb	a3,-127(s0)
    80003934:	0cb67263          	bgeu	a2,a1,800039f8 <__printf+0x410>
    80003938:	00f7f693          	andi	a3,a5,15
    8000393c:	00dd86b3          	add	a3,s11,a3
    80003940:	0006c583          	lbu	a1,0(a3)
    80003944:	00f00613          	li	a2,15
    80003948:	0047d69b          	srliw	a3,a5,0x4
    8000394c:	f8b40123          	sb	a1,-126(s0)
    80003950:	0047d593          	srli	a1,a5,0x4
    80003954:	28f67e63          	bgeu	a2,a5,80003bf0 <__printf+0x608>
    80003958:	00f6f693          	andi	a3,a3,15
    8000395c:	00dd86b3          	add	a3,s11,a3
    80003960:	0006c503          	lbu	a0,0(a3)
    80003964:	0087d813          	srli	a6,a5,0x8
    80003968:	0087d69b          	srliw	a3,a5,0x8
    8000396c:	f8a401a3          	sb	a0,-125(s0)
    80003970:	28b67663          	bgeu	a2,a1,80003bfc <__printf+0x614>
    80003974:	00f6f693          	andi	a3,a3,15
    80003978:	00dd86b3          	add	a3,s11,a3
    8000397c:	0006c583          	lbu	a1,0(a3)
    80003980:	00c7d513          	srli	a0,a5,0xc
    80003984:	00c7d69b          	srliw	a3,a5,0xc
    80003988:	f8b40223          	sb	a1,-124(s0)
    8000398c:	29067a63          	bgeu	a2,a6,80003c20 <__printf+0x638>
    80003990:	00f6f693          	andi	a3,a3,15
    80003994:	00dd86b3          	add	a3,s11,a3
    80003998:	0006c583          	lbu	a1,0(a3)
    8000399c:	0107d813          	srli	a6,a5,0x10
    800039a0:	0107d69b          	srliw	a3,a5,0x10
    800039a4:	f8b402a3          	sb	a1,-123(s0)
    800039a8:	28a67263          	bgeu	a2,a0,80003c2c <__printf+0x644>
    800039ac:	00f6f693          	andi	a3,a3,15
    800039b0:	00dd86b3          	add	a3,s11,a3
    800039b4:	0006c683          	lbu	a3,0(a3)
    800039b8:	0147d79b          	srliw	a5,a5,0x14
    800039bc:	f8d40323          	sb	a3,-122(s0)
    800039c0:	21067663          	bgeu	a2,a6,80003bcc <__printf+0x5e4>
    800039c4:	02079793          	slli	a5,a5,0x20
    800039c8:	0207d793          	srli	a5,a5,0x20
    800039cc:	00fd8db3          	add	s11,s11,a5
    800039d0:	000dc683          	lbu	a3,0(s11)
    800039d4:	00800793          	li	a5,8
    800039d8:	00700c93          	li	s9,7
    800039dc:	f8d403a3          	sb	a3,-121(s0)
    800039e0:	00075c63          	bgez	a4,800039f8 <__printf+0x410>
    800039e4:	f9040713          	addi	a4,s0,-112
    800039e8:	00f70733          	add	a4,a4,a5
    800039ec:	02d00693          	li	a3,45
    800039f0:	fed70823          	sb	a3,-16(a4)
    800039f4:	00078c93          	mv	s9,a5
    800039f8:	f8040793          	addi	a5,s0,-128
    800039fc:	01978cb3          	add	s9,a5,s9
    80003a00:	f7f40d13          	addi	s10,s0,-129
    80003a04:	000cc503          	lbu	a0,0(s9)
    80003a08:	fffc8c93          	addi	s9,s9,-1
    80003a0c:	00000097          	auipc	ra,0x0
    80003a10:	9f8080e7          	jalr	-1544(ra) # 80003404 <consputc>
    80003a14:	ff9d18e3          	bne	s10,s9,80003a04 <__printf+0x41c>
    80003a18:	0100006f          	j	80003a28 <__printf+0x440>
    80003a1c:	00000097          	auipc	ra,0x0
    80003a20:	9e8080e7          	jalr	-1560(ra) # 80003404 <consputc>
    80003a24:	000c8493          	mv	s1,s9
    80003a28:	00094503          	lbu	a0,0(s2)
    80003a2c:	c60510e3          	bnez	a0,8000368c <__printf+0xa4>
    80003a30:	e40c0ee3          	beqz	s8,8000388c <__printf+0x2a4>
    80003a34:	00003517          	auipc	a0,0x3
    80003a38:	7bc50513          	addi	a0,a0,1980 # 800071f0 <pr>
    80003a3c:	00001097          	auipc	ra,0x1
    80003a40:	94c080e7          	jalr	-1716(ra) # 80004388 <release>
    80003a44:	e49ff06f          	j	8000388c <__printf+0x2a4>
    80003a48:	f7843783          	ld	a5,-136(s0)
    80003a4c:	03000513          	li	a0,48
    80003a50:	01000d13          	li	s10,16
    80003a54:	00878713          	addi	a4,a5,8
    80003a58:	0007bc83          	ld	s9,0(a5)
    80003a5c:	f6e43c23          	sd	a4,-136(s0)
    80003a60:	00000097          	auipc	ra,0x0
    80003a64:	9a4080e7          	jalr	-1628(ra) # 80003404 <consputc>
    80003a68:	07800513          	li	a0,120
    80003a6c:	00000097          	auipc	ra,0x0
    80003a70:	998080e7          	jalr	-1640(ra) # 80003404 <consputc>
    80003a74:	00002d97          	auipc	s11,0x2
    80003a78:	8bcd8d93          	addi	s11,s11,-1860 # 80005330 <digits>
    80003a7c:	03ccd793          	srli	a5,s9,0x3c
    80003a80:	00fd87b3          	add	a5,s11,a5
    80003a84:	0007c503          	lbu	a0,0(a5)
    80003a88:	fffd0d1b          	addiw	s10,s10,-1
    80003a8c:	004c9c93          	slli	s9,s9,0x4
    80003a90:	00000097          	auipc	ra,0x0
    80003a94:	974080e7          	jalr	-1676(ra) # 80003404 <consputc>
    80003a98:	fe0d12e3          	bnez	s10,80003a7c <__printf+0x494>
    80003a9c:	f8dff06f          	j	80003a28 <__printf+0x440>
    80003aa0:	f7843783          	ld	a5,-136(s0)
    80003aa4:	0007bc83          	ld	s9,0(a5)
    80003aa8:	00878793          	addi	a5,a5,8
    80003aac:	f6f43c23          	sd	a5,-136(s0)
    80003ab0:	000c9a63          	bnez	s9,80003ac4 <__printf+0x4dc>
    80003ab4:	1080006f          	j	80003bbc <__printf+0x5d4>
    80003ab8:	001c8c93          	addi	s9,s9,1
    80003abc:	00000097          	auipc	ra,0x0
    80003ac0:	948080e7          	jalr	-1720(ra) # 80003404 <consputc>
    80003ac4:	000cc503          	lbu	a0,0(s9)
    80003ac8:	fe0518e3          	bnez	a0,80003ab8 <__printf+0x4d0>
    80003acc:	f5dff06f          	j	80003a28 <__printf+0x440>
    80003ad0:	02500513          	li	a0,37
    80003ad4:	00000097          	auipc	ra,0x0
    80003ad8:	930080e7          	jalr	-1744(ra) # 80003404 <consputc>
    80003adc:	000c8513          	mv	a0,s9
    80003ae0:	00000097          	auipc	ra,0x0
    80003ae4:	924080e7          	jalr	-1756(ra) # 80003404 <consputc>
    80003ae8:	f41ff06f          	j	80003a28 <__printf+0x440>
    80003aec:	02500513          	li	a0,37
    80003af0:	00000097          	auipc	ra,0x0
    80003af4:	914080e7          	jalr	-1772(ra) # 80003404 <consputc>
    80003af8:	f31ff06f          	j	80003a28 <__printf+0x440>
    80003afc:	00030513          	mv	a0,t1
    80003b00:	00000097          	auipc	ra,0x0
    80003b04:	7bc080e7          	jalr	1980(ra) # 800042bc <acquire>
    80003b08:	b4dff06f          	j	80003654 <__printf+0x6c>
    80003b0c:	40c0053b          	negw	a0,a2
    80003b10:	00a00713          	li	a4,10
    80003b14:	02e576bb          	remuw	a3,a0,a4
    80003b18:	00002d97          	auipc	s11,0x2
    80003b1c:	818d8d93          	addi	s11,s11,-2024 # 80005330 <digits>
    80003b20:	ff700593          	li	a1,-9
    80003b24:	02069693          	slli	a3,a3,0x20
    80003b28:	0206d693          	srli	a3,a3,0x20
    80003b2c:	00dd86b3          	add	a3,s11,a3
    80003b30:	0006c683          	lbu	a3,0(a3)
    80003b34:	02e557bb          	divuw	a5,a0,a4
    80003b38:	f8d40023          	sb	a3,-128(s0)
    80003b3c:	10b65e63          	bge	a2,a1,80003c58 <__printf+0x670>
    80003b40:	06300593          	li	a1,99
    80003b44:	02e7f6bb          	remuw	a3,a5,a4
    80003b48:	02069693          	slli	a3,a3,0x20
    80003b4c:	0206d693          	srli	a3,a3,0x20
    80003b50:	00dd86b3          	add	a3,s11,a3
    80003b54:	0006c683          	lbu	a3,0(a3)
    80003b58:	02e7d73b          	divuw	a4,a5,a4
    80003b5c:	00200793          	li	a5,2
    80003b60:	f8d400a3          	sb	a3,-127(s0)
    80003b64:	bca5ece3          	bltu	a1,a0,8000373c <__printf+0x154>
    80003b68:	ce5ff06f          	j	8000384c <__printf+0x264>
    80003b6c:	40e007bb          	negw	a5,a4
    80003b70:	00001d97          	auipc	s11,0x1
    80003b74:	7c0d8d93          	addi	s11,s11,1984 # 80005330 <digits>
    80003b78:	00f7f693          	andi	a3,a5,15
    80003b7c:	00dd86b3          	add	a3,s11,a3
    80003b80:	0006c583          	lbu	a1,0(a3)
    80003b84:	ff100613          	li	a2,-15
    80003b88:	0047d69b          	srliw	a3,a5,0x4
    80003b8c:	f8b40023          	sb	a1,-128(s0)
    80003b90:	0047d59b          	srliw	a1,a5,0x4
    80003b94:	0ac75e63          	bge	a4,a2,80003c50 <__printf+0x668>
    80003b98:	00f6f693          	andi	a3,a3,15
    80003b9c:	00dd86b3          	add	a3,s11,a3
    80003ba0:	0006c603          	lbu	a2,0(a3)
    80003ba4:	00f00693          	li	a3,15
    80003ba8:	0087d79b          	srliw	a5,a5,0x8
    80003bac:	f8c400a3          	sb	a2,-127(s0)
    80003bb0:	d8b6e4e3          	bltu	a3,a1,80003938 <__printf+0x350>
    80003bb4:	00200793          	li	a5,2
    80003bb8:	e2dff06f          	j	800039e4 <__printf+0x3fc>
    80003bbc:	00001c97          	auipc	s9,0x1
    80003bc0:	754c8c93          	addi	s9,s9,1876 # 80005310 <CONSOLE_STATUS+0x300>
    80003bc4:	02800513          	li	a0,40
    80003bc8:	ef1ff06f          	j	80003ab8 <__printf+0x4d0>
    80003bcc:	00700793          	li	a5,7
    80003bd0:	00600c93          	li	s9,6
    80003bd4:	e0dff06f          	j	800039e0 <__printf+0x3f8>
    80003bd8:	00700793          	li	a5,7
    80003bdc:	00600c93          	li	s9,6
    80003be0:	c69ff06f          	j	80003848 <__printf+0x260>
    80003be4:	00300793          	li	a5,3
    80003be8:	00200c93          	li	s9,2
    80003bec:	c5dff06f          	j	80003848 <__printf+0x260>
    80003bf0:	00300793          	li	a5,3
    80003bf4:	00200c93          	li	s9,2
    80003bf8:	de9ff06f          	j	800039e0 <__printf+0x3f8>
    80003bfc:	00400793          	li	a5,4
    80003c00:	00300c93          	li	s9,3
    80003c04:	dddff06f          	j	800039e0 <__printf+0x3f8>
    80003c08:	00400793          	li	a5,4
    80003c0c:	00300c93          	li	s9,3
    80003c10:	c39ff06f          	j	80003848 <__printf+0x260>
    80003c14:	00500793          	li	a5,5
    80003c18:	00400c93          	li	s9,4
    80003c1c:	c2dff06f          	j	80003848 <__printf+0x260>
    80003c20:	00500793          	li	a5,5
    80003c24:	00400c93          	li	s9,4
    80003c28:	db9ff06f          	j	800039e0 <__printf+0x3f8>
    80003c2c:	00600793          	li	a5,6
    80003c30:	00500c93          	li	s9,5
    80003c34:	dadff06f          	j	800039e0 <__printf+0x3f8>
    80003c38:	00600793          	li	a5,6
    80003c3c:	00500c93          	li	s9,5
    80003c40:	c09ff06f          	j	80003848 <__printf+0x260>
    80003c44:	00800793          	li	a5,8
    80003c48:	00700c93          	li	s9,7
    80003c4c:	bfdff06f          	j	80003848 <__printf+0x260>
    80003c50:	00100793          	li	a5,1
    80003c54:	d91ff06f          	j	800039e4 <__printf+0x3fc>
    80003c58:	00100793          	li	a5,1
    80003c5c:	bf1ff06f          	j	8000384c <__printf+0x264>
    80003c60:	00900793          	li	a5,9
    80003c64:	00800c93          	li	s9,8
    80003c68:	be1ff06f          	j	80003848 <__printf+0x260>
    80003c6c:	00001517          	auipc	a0,0x1
    80003c70:	6ac50513          	addi	a0,a0,1708 # 80005318 <CONSOLE_STATUS+0x308>
    80003c74:	00000097          	auipc	ra,0x0
    80003c78:	918080e7          	jalr	-1768(ra) # 8000358c <panic>

0000000080003c7c <printfinit>:
    80003c7c:	fe010113          	addi	sp,sp,-32
    80003c80:	00813823          	sd	s0,16(sp)
    80003c84:	00913423          	sd	s1,8(sp)
    80003c88:	00113c23          	sd	ra,24(sp)
    80003c8c:	02010413          	addi	s0,sp,32
    80003c90:	00003497          	auipc	s1,0x3
    80003c94:	56048493          	addi	s1,s1,1376 # 800071f0 <pr>
    80003c98:	00048513          	mv	a0,s1
    80003c9c:	00001597          	auipc	a1,0x1
    80003ca0:	68c58593          	addi	a1,a1,1676 # 80005328 <CONSOLE_STATUS+0x318>
    80003ca4:	00000097          	auipc	ra,0x0
    80003ca8:	5f4080e7          	jalr	1524(ra) # 80004298 <initlock>
    80003cac:	01813083          	ld	ra,24(sp)
    80003cb0:	01013403          	ld	s0,16(sp)
    80003cb4:	0004ac23          	sw	zero,24(s1)
    80003cb8:	00813483          	ld	s1,8(sp)
    80003cbc:	02010113          	addi	sp,sp,32
    80003cc0:	00008067          	ret

0000000080003cc4 <uartinit>:
    80003cc4:	ff010113          	addi	sp,sp,-16
    80003cc8:	00813423          	sd	s0,8(sp)
    80003ccc:	01010413          	addi	s0,sp,16
    80003cd0:	100007b7          	lui	a5,0x10000
    80003cd4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003cd8:	f8000713          	li	a4,-128
    80003cdc:	00e781a3          	sb	a4,3(a5)
    80003ce0:	00300713          	li	a4,3
    80003ce4:	00e78023          	sb	a4,0(a5)
    80003ce8:	000780a3          	sb	zero,1(a5)
    80003cec:	00e781a3          	sb	a4,3(a5)
    80003cf0:	00700693          	li	a3,7
    80003cf4:	00d78123          	sb	a3,2(a5)
    80003cf8:	00e780a3          	sb	a4,1(a5)
    80003cfc:	00813403          	ld	s0,8(sp)
    80003d00:	01010113          	addi	sp,sp,16
    80003d04:	00008067          	ret

0000000080003d08 <uartputc>:
    80003d08:	00002797          	auipc	a5,0x2
    80003d0c:	2707a783          	lw	a5,624(a5) # 80005f78 <panicked>
    80003d10:	00078463          	beqz	a5,80003d18 <uartputc+0x10>
    80003d14:	0000006f          	j	80003d14 <uartputc+0xc>
    80003d18:	fd010113          	addi	sp,sp,-48
    80003d1c:	02813023          	sd	s0,32(sp)
    80003d20:	00913c23          	sd	s1,24(sp)
    80003d24:	01213823          	sd	s2,16(sp)
    80003d28:	01313423          	sd	s3,8(sp)
    80003d2c:	02113423          	sd	ra,40(sp)
    80003d30:	03010413          	addi	s0,sp,48
    80003d34:	00002917          	auipc	s2,0x2
    80003d38:	24c90913          	addi	s2,s2,588 # 80005f80 <uart_tx_r>
    80003d3c:	00093783          	ld	a5,0(s2)
    80003d40:	00002497          	auipc	s1,0x2
    80003d44:	24848493          	addi	s1,s1,584 # 80005f88 <uart_tx_w>
    80003d48:	0004b703          	ld	a4,0(s1)
    80003d4c:	02078693          	addi	a3,a5,32
    80003d50:	00050993          	mv	s3,a0
    80003d54:	02e69c63          	bne	a3,a4,80003d8c <uartputc+0x84>
    80003d58:	00001097          	auipc	ra,0x1
    80003d5c:	834080e7          	jalr	-1996(ra) # 8000458c <push_on>
    80003d60:	00093783          	ld	a5,0(s2)
    80003d64:	0004b703          	ld	a4,0(s1)
    80003d68:	02078793          	addi	a5,a5,32
    80003d6c:	00e79463          	bne	a5,a4,80003d74 <uartputc+0x6c>
    80003d70:	0000006f          	j	80003d70 <uartputc+0x68>
    80003d74:	00001097          	auipc	ra,0x1
    80003d78:	88c080e7          	jalr	-1908(ra) # 80004600 <pop_on>
    80003d7c:	00093783          	ld	a5,0(s2)
    80003d80:	0004b703          	ld	a4,0(s1)
    80003d84:	02078693          	addi	a3,a5,32
    80003d88:	fce688e3          	beq	a3,a4,80003d58 <uartputc+0x50>
    80003d8c:	01f77693          	andi	a3,a4,31
    80003d90:	00003597          	auipc	a1,0x3
    80003d94:	48058593          	addi	a1,a1,1152 # 80007210 <uart_tx_buf>
    80003d98:	00d586b3          	add	a3,a1,a3
    80003d9c:	00170713          	addi	a4,a4,1
    80003da0:	01368023          	sb	s3,0(a3)
    80003da4:	00e4b023          	sd	a4,0(s1)
    80003da8:	10000637          	lui	a2,0x10000
    80003dac:	02f71063          	bne	a4,a5,80003dcc <uartputc+0xc4>
    80003db0:	0340006f          	j	80003de4 <uartputc+0xdc>
    80003db4:	00074703          	lbu	a4,0(a4)
    80003db8:	00f93023          	sd	a5,0(s2)
    80003dbc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003dc0:	00093783          	ld	a5,0(s2)
    80003dc4:	0004b703          	ld	a4,0(s1)
    80003dc8:	00f70e63          	beq	a4,a5,80003de4 <uartputc+0xdc>
    80003dcc:	00564683          	lbu	a3,5(a2)
    80003dd0:	01f7f713          	andi	a4,a5,31
    80003dd4:	00e58733          	add	a4,a1,a4
    80003dd8:	0206f693          	andi	a3,a3,32
    80003ddc:	00178793          	addi	a5,a5,1
    80003de0:	fc069ae3          	bnez	a3,80003db4 <uartputc+0xac>
    80003de4:	02813083          	ld	ra,40(sp)
    80003de8:	02013403          	ld	s0,32(sp)
    80003dec:	01813483          	ld	s1,24(sp)
    80003df0:	01013903          	ld	s2,16(sp)
    80003df4:	00813983          	ld	s3,8(sp)
    80003df8:	03010113          	addi	sp,sp,48
    80003dfc:	00008067          	ret

0000000080003e00 <uartputc_sync>:
    80003e00:	ff010113          	addi	sp,sp,-16
    80003e04:	00813423          	sd	s0,8(sp)
    80003e08:	01010413          	addi	s0,sp,16
    80003e0c:	00002717          	auipc	a4,0x2
    80003e10:	16c72703          	lw	a4,364(a4) # 80005f78 <panicked>
    80003e14:	02071663          	bnez	a4,80003e40 <uartputc_sync+0x40>
    80003e18:	00050793          	mv	a5,a0
    80003e1c:	100006b7          	lui	a3,0x10000
    80003e20:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003e24:	02077713          	andi	a4,a4,32
    80003e28:	fe070ce3          	beqz	a4,80003e20 <uartputc_sync+0x20>
    80003e2c:	0ff7f793          	andi	a5,a5,255
    80003e30:	00f68023          	sb	a5,0(a3)
    80003e34:	00813403          	ld	s0,8(sp)
    80003e38:	01010113          	addi	sp,sp,16
    80003e3c:	00008067          	ret
    80003e40:	0000006f          	j	80003e40 <uartputc_sync+0x40>

0000000080003e44 <uartstart>:
    80003e44:	ff010113          	addi	sp,sp,-16
    80003e48:	00813423          	sd	s0,8(sp)
    80003e4c:	01010413          	addi	s0,sp,16
    80003e50:	00002617          	auipc	a2,0x2
    80003e54:	13060613          	addi	a2,a2,304 # 80005f80 <uart_tx_r>
    80003e58:	00002517          	auipc	a0,0x2
    80003e5c:	13050513          	addi	a0,a0,304 # 80005f88 <uart_tx_w>
    80003e60:	00063783          	ld	a5,0(a2)
    80003e64:	00053703          	ld	a4,0(a0)
    80003e68:	04f70263          	beq	a4,a5,80003eac <uartstart+0x68>
    80003e6c:	100005b7          	lui	a1,0x10000
    80003e70:	00003817          	auipc	a6,0x3
    80003e74:	3a080813          	addi	a6,a6,928 # 80007210 <uart_tx_buf>
    80003e78:	01c0006f          	j	80003e94 <uartstart+0x50>
    80003e7c:	0006c703          	lbu	a4,0(a3)
    80003e80:	00f63023          	sd	a5,0(a2)
    80003e84:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003e88:	00063783          	ld	a5,0(a2)
    80003e8c:	00053703          	ld	a4,0(a0)
    80003e90:	00f70e63          	beq	a4,a5,80003eac <uartstart+0x68>
    80003e94:	01f7f713          	andi	a4,a5,31
    80003e98:	00e806b3          	add	a3,a6,a4
    80003e9c:	0055c703          	lbu	a4,5(a1)
    80003ea0:	00178793          	addi	a5,a5,1
    80003ea4:	02077713          	andi	a4,a4,32
    80003ea8:	fc071ae3          	bnez	a4,80003e7c <uartstart+0x38>
    80003eac:	00813403          	ld	s0,8(sp)
    80003eb0:	01010113          	addi	sp,sp,16
    80003eb4:	00008067          	ret

0000000080003eb8 <uartgetc>:
    80003eb8:	ff010113          	addi	sp,sp,-16
    80003ebc:	00813423          	sd	s0,8(sp)
    80003ec0:	01010413          	addi	s0,sp,16
    80003ec4:	10000737          	lui	a4,0x10000
    80003ec8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80003ecc:	0017f793          	andi	a5,a5,1
    80003ed0:	00078c63          	beqz	a5,80003ee8 <uartgetc+0x30>
    80003ed4:	00074503          	lbu	a0,0(a4)
    80003ed8:	0ff57513          	andi	a0,a0,255
    80003edc:	00813403          	ld	s0,8(sp)
    80003ee0:	01010113          	addi	sp,sp,16
    80003ee4:	00008067          	ret
    80003ee8:	fff00513          	li	a0,-1
    80003eec:	ff1ff06f          	j	80003edc <uartgetc+0x24>

0000000080003ef0 <uartintr>:
    80003ef0:	100007b7          	lui	a5,0x10000
    80003ef4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003ef8:	0017f793          	andi	a5,a5,1
    80003efc:	0a078463          	beqz	a5,80003fa4 <uartintr+0xb4>
    80003f00:	fe010113          	addi	sp,sp,-32
    80003f04:	00813823          	sd	s0,16(sp)
    80003f08:	00913423          	sd	s1,8(sp)
    80003f0c:	00113c23          	sd	ra,24(sp)
    80003f10:	02010413          	addi	s0,sp,32
    80003f14:	100004b7          	lui	s1,0x10000
    80003f18:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80003f1c:	0ff57513          	andi	a0,a0,255
    80003f20:	fffff097          	auipc	ra,0xfffff
    80003f24:	534080e7          	jalr	1332(ra) # 80003454 <consoleintr>
    80003f28:	0054c783          	lbu	a5,5(s1)
    80003f2c:	0017f793          	andi	a5,a5,1
    80003f30:	fe0794e3          	bnez	a5,80003f18 <uartintr+0x28>
    80003f34:	00002617          	auipc	a2,0x2
    80003f38:	04c60613          	addi	a2,a2,76 # 80005f80 <uart_tx_r>
    80003f3c:	00002517          	auipc	a0,0x2
    80003f40:	04c50513          	addi	a0,a0,76 # 80005f88 <uart_tx_w>
    80003f44:	00063783          	ld	a5,0(a2)
    80003f48:	00053703          	ld	a4,0(a0)
    80003f4c:	04f70263          	beq	a4,a5,80003f90 <uartintr+0xa0>
    80003f50:	100005b7          	lui	a1,0x10000
    80003f54:	00003817          	auipc	a6,0x3
    80003f58:	2bc80813          	addi	a6,a6,700 # 80007210 <uart_tx_buf>
    80003f5c:	01c0006f          	j	80003f78 <uartintr+0x88>
    80003f60:	0006c703          	lbu	a4,0(a3)
    80003f64:	00f63023          	sd	a5,0(a2)
    80003f68:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003f6c:	00063783          	ld	a5,0(a2)
    80003f70:	00053703          	ld	a4,0(a0)
    80003f74:	00f70e63          	beq	a4,a5,80003f90 <uartintr+0xa0>
    80003f78:	01f7f713          	andi	a4,a5,31
    80003f7c:	00e806b3          	add	a3,a6,a4
    80003f80:	0055c703          	lbu	a4,5(a1)
    80003f84:	00178793          	addi	a5,a5,1
    80003f88:	02077713          	andi	a4,a4,32
    80003f8c:	fc071ae3          	bnez	a4,80003f60 <uartintr+0x70>
    80003f90:	01813083          	ld	ra,24(sp)
    80003f94:	01013403          	ld	s0,16(sp)
    80003f98:	00813483          	ld	s1,8(sp)
    80003f9c:	02010113          	addi	sp,sp,32
    80003fa0:	00008067          	ret
    80003fa4:	00002617          	auipc	a2,0x2
    80003fa8:	fdc60613          	addi	a2,a2,-36 # 80005f80 <uart_tx_r>
    80003fac:	00002517          	auipc	a0,0x2
    80003fb0:	fdc50513          	addi	a0,a0,-36 # 80005f88 <uart_tx_w>
    80003fb4:	00063783          	ld	a5,0(a2)
    80003fb8:	00053703          	ld	a4,0(a0)
    80003fbc:	04f70263          	beq	a4,a5,80004000 <uartintr+0x110>
    80003fc0:	100005b7          	lui	a1,0x10000
    80003fc4:	00003817          	auipc	a6,0x3
    80003fc8:	24c80813          	addi	a6,a6,588 # 80007210 <uart_tx_buf>
    80003fcc:	01c0006f          	j	80003fe8 <uartintr+0xf8>
    80003fd0:	0006c703          	lbu	a4,0(a3)
    80003fd4:	00f63023          	sd	a5,0(a2)
    80003fd8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003fdc:	00063783          	ld	a5,0(a2)
    80003fe0:	00053703          	ld	a4,0(a0)
    80003fe4:	02f70063          	beq	a4,a5,80004004 <uartintr+0x114>
    80003fe8:	01f7f713          	andi	a4,a5,31
    80003fec:	00e806b3          	add	a3,a6,a4
    80003ff0:	0055c703          	lbu	a4,5(a1)
    80003ff4:	00178793          	addi	a5,a5,1
    80003ff8:	02077713          	andi	a4,a4,32
    80003ffc:	fc071ae3          	bnez	a4,80003fd0 <uartintr+0xe0>
    80004000:	00008067          	ret
    80004004:	00008067          	ret

0000000080004008 <kinit>:
    80004008:	fc010113          	addi	sp,sp,-64
    8000400c:	02913423          	sd	s1,40(sp)
    80004010:	fffff7b7          	lui	a5,0xfffff
    80004014:	00004497          	auipc	s1,0x4
    80004018:	21b48493          	addi	s1,s1,539 # 8000822f <end+0xfff>
    8000401c:	02813823          	sd	s0,48(sp)
    80004020:	01313c23          	sd	s3,24(sp)
    80004024:	00f4f4b3          	and	s1,s1,a5
    80004028:	02113c23          	sd	ra,56(sp)
    8000402c:	03213023          	sd	s2,32(sp)
    80004030:	01413823          	sd	s4,16(sp)
    80004034:	01513423          	sd	s5,8(sp)
    80004038:	04010413          	addi	s0,sp,64
    8000403c:	000017b7          	lui	a5,0x1
    80004040:	01100993          	li	s3,17
    80004044:	00f487b3          	add	a5,s1,a5
    80004048:	01b99993          	slli	s3,s3,0x1b
    8000404c:	06f9e063          	bltu	s3,a5,800040ac <kinit+0xa4>
    80004050:	00003a97          	auipc	s5,0x3
    80004054:	1e0a8a93          	addi	s5,s5,480 # 80007230 <end>
    80004058:	0754ec63          	bltu	s1,s5,800040d0 <kinit+0xc8>
    8000405c:	0734fa63          	bgeu	s1,s3,800040d0 <kinit+0xc8>
    80004060:	00088a37          	lui	s4,0x88
    80004064:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004068:	00002917          	auipc	s2,0x2
    8000406c:	f2890913          	addi	s2,s2,-216 # 80005f90 <kmem>
    80004070:	00ca1a13          	slli	s4,s4,0xc
    80004074:	0140006f          	j	80004088 <kinit+0x80>
    80004078:	000017b7          	lui	a5,0x1
    8000407c:	00f484b3          	add	s1,s1,a5
    80004080:	0554e863          	bltu	s1,s5,800040d0 <kinit+0xc8>
    80004084:	0534f663          	bgeu	s1,s3,800040d0 <kinit+0xc8>
    80004088:	00001637          	lui	a2,0x1
    8000408c:	00100593          	li	a1,1
    80004090:	00048513          	mv	a0,s1
    80004094:	00000097          	auipc	ra,0x0
    80004098:	5e4080e7          	jalr	1508(ra) # 80004678 <__memset>
    8000409c:	00093783          	ld	a5,0(s2)
    800040a0:	00f4b023          	sd	a5,0(s1)
    800040a4:	00993023          	sd	s1,0(s2)
    800040a8:	fd4498e3          	bne	s1,s4,80004078 <kinit+0x70>
    800040ac:	03813083          	ld	ra,56(sp)
    800040b0:	03013403          	ld	s0,48(sp)
    800040b4:	02813483          	ld	s1,40(sp)
    800040b8:	02013903          	ld	s2,32(sp)
    800040bc:	01813983          	ld	s3,24(sp)
    800040c0:	01013a03          	ld	s4,16(sp)
    800040c4:	00813a83          	ld	s5,8(sp)
    800040c8:	04010113          	addi	sp,sp,64
    800040cc:	00008067          	ret
    800040d0:	00001517          	auipc	a0,0x1
    800040d4:	27850513          	addi	a0,a0,632 # 80005348 <digits+0x18>
    800040d8:	fffff097          	auipc	ra,0xfffff
    800040dc:	4b4080e7          	jalr	1204(ra) # 8000358c <panic>

00000000800040e0 <freerange>:
    800040e0:	fc010113          	addi	sp,sp,-64
    800040e4:	000017b7          	lui	a5,0x1
    800040e8:	02913423          	sd	s1,40(sp)
    800040ec:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800040f0:	009504b3          	add	s1,a0,s1
    800040f4:	fffff537          	lui	a0,0xfffff
    800040f8:	02813823          	sd	s0,48(sp)
    800040fc:	02113c23          	sd	ra,56(sp)
    80004100:	03213023          	sd	s2,32(sp)
    80004104:	01313c23          	sd	s3,24(sp)
    80004108:	01413823          	sd	s4,16(sp)
    8000410c:	01513423          	sd	s5,8(sp)
    80004110:	01613023          	sd	s6,0(sp)
    80004114:	04010413          	addi	s0,sp,64
    80004118:	00a4f4b3          	and	s1,s1,a0
    8000411c:	00f487b3          	add	a5,s1,a5
    80004120:	06f5e463          	bltu	a1,a5,80004188 <freerange+0xa8>
    80004124:	00003a97          	auipc	s5,0x3
    80004128:	10ca8a93          	addi	s5,s5,268 # 80007230 <end>
    8000412c:	0954e263          	bltu	s1,s5,800041b0 <freerange+0xd0>
    80004130:	01100993          	li	s3,17
    80004134:	01b99993          	slli	s3,s3,0x1b
    80004138:	0734fc63          	bgeu	s1,s3,800041b0 <freerange+0xd0>
    8000413c:	00058a13          	mv	s4,a1
    80004140:	00002917          	auipc	s2,0x2
    80004144:	e5090913          	addi	s2,s2,-432 # 80005f90 <kmem>
    80004148:	00002b37          	lui	s6,0x2
    8000414c:	0140006f          	j	80004160 <freerange+0x80>
    80004150:	000017b7          	lui	a5,0x1
    80004154:	00f484b3          	add	s1,s1,a5
    80004158:	0554ec63          	bltu	s1,s5,800041b0 <freerange+0xd0>
    8000415c:	0534fa63          	bgeu	s1,s3,800041b0 <freerange+0xd0>
    80004160:	00001637          	lui	a2,0x1
    80004164:	00100593          	li	a1,1
    80004168:	00048513          	mv	a0,s1
    8000416c:	00000097          	auipc	ra,0x0
    80004170:	50c080e7          	jalr	1292(ra) # 80004678 <__memset>
    80004174:	00093703          	ld	a4,0(s2)
    80004178:	016487b3          	add	a5,s1,s6
    8000417c:	00e4b023          	sd	a4,0(s1)
    80004180:	00993023          	sd	s1,0(s2)
    80004184:	fcfa76e3          	bgeu	s4,a5,80004150 <freerange+0x70>
    80004188:	03813083          	ld	ra,56(sp)
    8000418c:	03013403          	ld	s0,48(sp)
    80004190:	02813483          	ld	s1,40(sp)
    80004194:	02013903          	ld	s2,32(sp)
    80004198:	01813983          	ld	s3,24(sp)
    8000419c:	01013a03          	ld	s4,16(sp)
    800041a0:	00813a83          	ld	s5,8(sp)
    800041a4:	00013b03          	ld	s6,0(sp)
    800041a8:	04010113          	addi	sp,sp,64
    800041ac:	00008067          	ret
    800041b0:	00001517          	auipc	a0,0x1
    800041b4:	19850513          	addi	a0,a0,408 # 80005348 <digits+0x18>
    800041b8:	fffff097          	auipc	ra,0xfffff
    800041bc:	3d4080e7          	jalr	980(ra) # 8000358c <panic>

00000000800041c0 <kfree>:
    800041c0:	fe010113          	addi	sp,sp,-32
    800041c4:	00813823          	sd	s0,16(sp)
    800041c8:	00113c23          	sd	ra,24(sp)
    800041cc:	00913423          	sd	s1,8(sp)
    800041d0:	02010413          	addi	s0,sp,32
    800041d4:	03451793          	slli	a5,a0,0x34
    800041d8:	04079c63          	bnez	a5,80004230 <kfree+0x70>
    800041dc:	00003797          	auipc	a5,0x3
    800041e0:	05478793          	addi	a5,a5,84 # 80007230 <end>
    800041e4:	00050493          	mv	s1,a0
    800041e8:	04f56463          	bltu	a0,a5,80004230 <kfree+0x70>
    800041ec:	01100793          	li	a5,17
    800041f0:	01b79793          	slli	a5,a5,0x1b
    800041f4:	02f57e63          	bgeu	a0,a5,80004230 <kfree+0x70>
    800041f8:	00001637          	lui	a2,0x1
    800041fc:	00100593          	li	a1,1
    80004200:	00000097          	auipc	ra,0x0
    80004204:	478080e7          	jalr	1144(ra) # 80004678 <__memset>
    80004208:	00002797          	auipc	a5,0x2
    8000420c:	d8878793          	addi	a5,a5,-632 # 80005f90 <kmem>
    80004210:	0007b703          	ld	a4,0(a5)
    80004214:	01813083          	ld	ra,24(sp)
    80004218:	01013403          	ld	s0,16(sp)
    8000421c:	00e4b023          	sd	a4,0(s1)
    80004220:	0097b023          	sd	s1,0(a5)
    80004224:	00813483          	ld	s1,8(sp)
    80004228:	02010113          	addi	sp,sp,32
    8000422c:	00008067          	ret
    80004230:	00001517          	auipc	a0,0x1
    80004234:	11850513          	addi	a0,a0,280 # 80005348 <digits+0x18>
    80004238:	fffff097          	auipc	ra,0xfffff
    8000423c:	354080e7          	jalr	852(ra) # 8000358c <panic>

0000000080004240 <kalloc>:
    80004240:	fe010113          	addi	sp,sp,-32
    80004244:	00813823          	sd	s0,16(sp)
    80004248:	00913423          	sd	s1,8(sp)
    8000424c:	00113c23          	sd	ra,24(sp)
    80004250:	02010413          	addi	s0,sp,32
    80004254:	00002797          	auipc	a5,0x2
    80004258:	d3c78793          	addi	a5,a5,-708 # 80005f90 <kmem>
    8000425c:	0007b483          	ld	s1,0(a5)
    80004260:	02048063          	beqz	s1,80004280 <kalloc+0x40>
    80004264:	0004b703          	ld	a4,0(s1)
    80004268:	00001637          	lui	a2,0x1
    8000426c:	00500593          	li	a1,5
    80004270:	00048513          	mv	a0,s1
    80004274:	00e7b023          	sd	a4,0(a5)
    80004278:	00000097          	auipc	ra,0x0
    8000427c:	400080e7          	jalr	1024(ra) # 80004678 <__memset>
    80004280:	01813083          	ld	ra,24(sp)
    80004284:	01013403          	ld	s0,16(sp)
    80004288:	00048513          	mv	a0,s1
    8000428c:	00813483          	ld	s1,8(sp)
    80004290:	02010113          	addi	sp,sp,32
    80004294:	00008067          	ret

0000000080004298 <initlock>:
    80004298:	ff010113          	addi	sp,sp,-16
    8000429c:	00813423          	sd	s0,8(sp)
    800042a0:	01010413          	addi	s0,sp,16
    800042a4:	00813403          	ld	s0,8(sp)
    800042a8:	00b53423          	sd	a1,8(a0)
    800042ac:	00052023          	sw	zero,0(a0)
    800042b0:	00053823          	sd	zero,16(a0)
    800042b4:	01010113          	addi	sp,sp,16
    800042b8:	00008067          	ret

00000000800042bc <acquire>:
    800042bc:	fe010113          	addi	sp,sp,-32
    800042c0:	00813823          	sd	s0,16(sp)
    800042c4:	00913423          	sd	s1,8(sp)
    800042c8:	00113c23          	sd	ra,24(sp)
    800042cc:	01213023          	sd	s2,0(sp)
    800042d0:	02010413          	addi	s0,sp,32
    800042d4:	00050493          	mv	s1,a0
    800042d8:	10002973          	csrr	s2,sstatus
    800042dc:	100027f3          	csrr	a5,sstatus
    800042e0:	ffd7f793          	andi	a5,a5,-3
    800042e4:	10079073          	csrw	sstatus,a5
    800042e8:	fffff097          	auipc	ra,0xfffff
    800042ec:	8ec080e7          	jalr	-1812(ra) # 80002bd4 <mycpu>
    800042f0:	07852783          	lw	a5,120(a0)
    800042f4:	06078e63          	beqz	a5,80004370 <acquire+0xb4>
    800042f8:	fffff097          	auipc	ra,0xfffff
    800042fc:	8dc080e7          	jalr	-1828(ra) # 80002bd4 <mycpu>
    80004300:	07852783          	lw	a5,120(a0)
    80004304:	0004a703          	lw	a4,0(s1)
    80004308:	0017879b          	addiw	a5,a5,1
    8000430c:	06f52c23          	sw	a5,120(a0)
    80004310:	04071063          	bnez	a4,80004350 <acquire+0x94>
    80004314:	00100713          	li	a4,1
    80004318:	00070793          	mv	a5,a4
    8000431c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004320:	0007879b          	sext.w	a5,a5
    80004324:	fe079ae3          	bnez	a5,80004318 <acquire+0x5c>
    80004328:	0ff0000f          	fence
    8000432c:	fffff097          	auipc	ra,0xfffff
    80004330:	8a8080e7          	jalr	-1880(ra) # 80002bd4 <mycpu>
    80004334:	01813083          	ld	ra,24(sp)
    80004338:	01013403          	ld	s0,16(sp)
    8000433c:	00a4b823          	sd	a0,16(s1)
    80004340:	00013903          	ld	s2,0(sp)
    80004344:	00813483          	ld	s1,8(sp)
    80004348:	02010113          	addi	sp,sp,32
    8000434c:	00008067          	ret
    80004350:	0104b903          	ld	s2,16(s1)
    80004354:	fffff097          	auipc	ra,0xfffff
    80004358:	880080e7          	jalr	-1920(ra) # 80002bd4 <mycpu>
    8000435c:	faa91ce3          	bne	s2,a0,80004314 <acquire+0x58>
    80004360:	00001517          	auipc	a0,0x1
    80004364:	ff050513          	addi	a0,a0,-16 # 80005350 <digits+0x20>
    80004368:	fffff097          	auipc	ra,0xfffff
    8000436c:	224080e7          	jalr	548(ra) # 8000358c <panic>
    80004370:	00195913          	srli	s2,s2,0x1
    80004374:	fffff097          	auipc	ra,0xfffff
    80004378:	860080e7          	jalr	-1952(ra) # 80002bd4 <mycpu>
    8000437c:	00197913          	andi	s2,s2,1
    80004380:	07252e23          	sw	s2,124(a0)
    80004384:	f75ff06f          	j	800042f8 <acquire+0x3c>

0000000080004388 <release>:
    80004388:	fe010113          	addi	sp,sp,-32
    8000438c:	00813823          	sd	s0,16(sp)
    80004390:	00113c23          	sd	ra,24(sp)
    80004394:	00913423          	sd	s1,8(sp)
    80004398:	01213023          	sd	s2,0(sp)
    8000439c:	02010413          	addi	s0,sp,32
    800043a0:	00052783          	lw	a5,0(a0)
    800043a4:	00079a63          	bnez	a5,800043b8 <release+0x30>
    800043a8:	00001517          	auipc	a0,0x1
    800043ac:	fb050513          	addi	a0,a0,-80 # 80005358 <digits+0x28>
    800043b0:	fffff097          	auipc	ra,0xfffff
    800043b4:	1dc080e7          	jalr	476(ra) # 8000358c <panic>
    800043b8:	01053903          	ld	s2,16(a0)
    800043bc:	00050493          	mv	s1,a0
    800043c0:	fffff097          	auipc	ra,0xfffff
    800043c4:	814080e7          	jalr	-2028(ra) # 80002bd4 <mycpu>
    800043c8:	fea910e3          	bne	s2,a0,800043a8 <release+0x20>
    800043cc:	0004b823          	sd	zero,16(s1)
    800043d0:	0ff0000f          	fence
    800043d4:	0f50000f          	fence	iorw,ow
    800043d8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800043dc:	ffffe097          	auipc	ra,0xffffe
    800043e0:	7f8080e7          	jalr	2040(ra) # 80002bd4 <mycpu>
    800043e4:	100027f3          	csrr	a5,sstatus
    800043e8:	0027f793          	andi	a5,a5,2
    800043ec:	04079a63          	bnez	a5,80004440 <release+0xb8>
    800043f0:	07852783          	lw	a5,120(a0)
    800043f4:	02f05e63          	blez	a5,80004430 <release+0xa8>
    800043f8:	fff7871b          	addiw	a4,a5,-1
    800043fc:	06e52c23          	sw	a4,120(a0)
    80004400:	00071c63          	bnez	a4,80004418 <release+0x90>
    80004404:	07c52783          	lw	a5,124(a0)
    80004408:	00078863          	beqz	a5,80004418 <release+0x90>
    8000440c:	100027f3          	csrr	a5,sstatus
    80004410:	0027e793          	ori	a5,a5,2
    80004414:	10079073          	csrw	sstatus,a5
    80004418:	01813083          	ld	ra,24(sp)
    8000441c:	01013403          	ld	s0,16(sp)
    80004420:	00813483          	ld	s1,8(sp)
    80004424:	00013903          	ld	s2,0(sp)
    80004428:	02010113          	addi	sp,sp,32
    8000442c:	00008067          	ret
    80004430:	00001517          	auipc	a0,0x1
    80004434:	f4850513          	addi	a0,a0,-184 # 80005378 <digits+0x48>
    80004438:	fffff097          	auipc	ra,0xfffff
    8000443c:	154080e7          	jalr	340(ra) # 8000358c <panic>
    80004440:	00001517          	auipc	a0,0x1
    80004444:	f2050513          	addi	a0,a0,-224 # 80005360 <digits+0x30>
    80004448:	fffff097          	auipc	ra,0xfffff
    8000444c:	144080e7          	jalr	324(ra) # 8000358c <panic>

0000000080004450 <holding>:
    80004450:	00052783          	lw	a5,0(a0)
    80004454:	00079663          	bnez	a5,80004460 <holding+0x10>
    80004458:	00000513          	li	a0,0
    8000445c:	00008067          	ret
    80004460:	fe010113          	addi	sp,sp,-32
    80004464:	00813823          	sd	s0,16(sp)
    80004468:	00913423          	sd	s1,8(sp)
    8000446c:	00113c23          	sd	ra,24(sp)
    80004470:	02010413          	addi	s0,sp,32
    80004474:	01053483          	ld	s1,16(a0)
    80004478:	ffffe097          	auipc	ra,0xffffe
    8000447c:	75c080e7          	jalr	1884(ra) # 80002bd4 <mycpu>
    80004480:	01813083          	ld	ra,24(sp)
    80004484:	01013403          	ld	s0,16(sp)
    80004488:	40a48533          	sub	a0,s1,a0
    8000448c:	00153513          	seqz	a0,a0
    80004490:	00813483          	ld	s1,8(sp)
    80004494:	02010113          	addi	sp,sp,32
    80004498:	00008067          	ret

000000008000449c <push_off>:
    8000449c:	fe010113          	addi	sp,sp,-32
    800044a0:	00813823          	sd	s0,16(sp)
    800044a4:	00113c23          	sd	ra,24(sp)
    800044a8:	00913423          	sd	s1,8(sp)
    800044ac:	02010413          	addi	s0,sp,32
    800044b0:	100024f3          	csrr	s1,sstatus
    800044b4:	100027f3          	csrr	a5,sstatus
    800044b8:	ffd7f793          	andi	a5,a5,-3
    800044bc:	10079073          	csrw	sstatus,a5
    800044c0:	ffffe097          	auipc	ra,0xffffe
    800044c4:	714080e7          	jalr	1812(ra) # 80002bd4 <mycpu>
    800044c8:	07852783          	lw	a5,120(a0)
    800044cc:	02078663          	beqz	a5,800044f8 <push_off+0x5c>
    800044d0:	ffffe097          	auipc	ra,0xffffe
    800044d4:	704080e7          	jalr	1796(ra) # 80002bd4 <mycpu>
    800044d8:	07852783          	lw	a5,120(a0)
    800044dc:	01813083          	ld	ra,24(sp)
    800044e0:	01013403          	ld	s0,16(sp)
    800044e4:	0017879b          	addiw	a5,a5,1
    800044e8:	06f52c23          	sw	a5,120(a0)
    800044ec:	00813483          	ld	s1,8(sp)
    800044f0:	02010113          	addi	sp,sp,32
    800044f4:	00008067          	ret
    800044f8:	0014d493          	srli	s1,s1,0x1
    800044fc:	ffffe097          	auipc	ra,0xffffe
    80004500:	6d8080e7          	jalr	1752(ra) # 80002bd4 <mycpu>
    80004504:	0014f493          	andi	s1,s1,1
    80004508:	06952e23          	sw	s1,124(a0)
    8000450c:	fc5ff06f          	j	800044d0 <push_off+0x34>

0000000080004510 <pop_off>:
    80004510:	ff010113          	addi	sp,sp,-16
    80004514:	00813023          	sd	s0,0(sp)
    80004518:	00113423          	sd	ra,8(sp)
    8000451c:	01010413          	addi	s0,sp,16
    80004520:	ffffe097          	auipc	ra,0xffffe
    80004524:	6b4080e7          	jalr	1716(ra) # 80002bd4 <mycpu>
    80004528:	100027f3          	csrr	a5,sstatus
    8000452c:	0027f793          	andi	a5,a5,2
    80004530:	04079663          	bnez	a5,8000457c <pop_off+0x6c>
    80004534:	07852783          	lw	a5,120(a0)
    80004538:	02f05a63          	blez	a5,8000456c <pop_off+0x5c>
    8000453c:	fff7871b          	addiw	a4,a5,-1
    80004540:	06e52c23          	sw	a4,120(a0)
    80004544:	00071c63          	bnez	a4,8000455c <pop_off+0x4c>
    80004548:	07c52783          	lw	a5,124(a0)
    8000454c:	00078863          	beqz	a5,8000455c <pop_off+0x4c>
    80004550:	100027f3          	csrr	a5,sstatus
    80004554:	0027e793          	ori	a5,a5,2
    80004558:	10079073          	csrw	sstatus,a5
    8000455c:	00813083          	ld	ra,8(sp)
    80004560:	00013403          	ld	s0,0(sp)
    80004564:	01010113          	addi	sp,sp,16
    80004568:	00008067          	ret
    8000456c:	00001517          	auipc	a0,0x1
    80004570:	e0c50513          	addi	a0,a0,-500 # 80005378 <digits+0x48>
    80004574:	fffff097          	auipc	ra,0xfffff
    80004578:	018080e7          	jalr	24(ra) # 8000358c <panic>
    8000457c:	00001517          	auipc	a0,0x1
    80004580:	de450513          	addi	a0,a0,-540 # 80005360 <digits+0x30>
    80004584:	fffff097          	auipc	ra,0xfffff
    80004588:	008080e7          	jalr	8(ra) # 8000358c <panic>

000000008000458c <push_on>:
    8000458c:	fe010113          	addi	sp,sp,-32
    80004590:	00813823          	sd	s0,16(sp)
    80004594:	00113c23          	sd	ra,24(sp)
    80004598:	00913423          	sd	s1,8(sp)
    8000459c:	02010413          	addi	s0,sp,32
    800045a0:	100024f3          	csrr	s1,sstatus
    800045a4:	100027f3          	csrr	a5,sstatus
    800045a8:	0027e793          	ori	a5,a5,2
    800045ac:	10079073          	csrw	sstatus,a5
    800045b0:	ffffe097          	auipc	ra,0xffffe
    800045b4:	624080e7          	jalr	1572(ra) # 80002bd4 <mycpu>
    800045b8:	07852783          	lw	a5,120(a0)
    800045bc:	02078663          	beqz	a5,800045e8 <push_on+0x5c>
    800045c0:	ffffe097          	auipc	ra,0xffffe
    800045c4:	614080e7          	jalr	1556(ra) # 80002bd4 <mycpu>
    800045c8:	07852783          	lw	a5,120(a0)
    800045cc:	01813083          	ld	ra,24(sp)
    800045d0:	01013403          	ld	s0,16(sp)
    800045d4:	0017879b          	addiw	a5,a5,1
    800045d8:	06f52c23          	sw	a5,120(a0)
    800045dc:	00813483          	ld	s1,8(sp)
    800045e0:	02010113          	addi	sp,sp,32
    800045e4:	00008067          	ret
    800045e8:	0014d493          	srli	s1,s1,0x1
    800045ec:	ffffe097          	auipc	ra,0xffffe
    800045f0:	5e8080e7          	jalr	1512(ra) # 80002bd4 <mycpu>
    800045f4:	0014f493          	andi	s1,s1,1
    800045f8:	06952e23          	sw	s1,124(a0)
    800045fc:	fc5ff06f          	j	800045c0 <push_on+0x34>

0000000080004600 <pop_on>:
    80004600:	ff010113          	addi	sp,sp,-16
    80004604:	00813023          	sd	s0,0(sp)
    80004608:	00113423          	sd	ra,8(sp)
    8000460c:	01010413          	addi	s0,sp,16
    80004610:	ffffe097          	auipc	ra,0xffffe
    80004614:	5c4080e7          	jalr	1476(ra) # 80002bd4 <mycpu>
    80004618:	100027f3          	csrr	a5,sstatus
    8000461c:	0027f793          	andi	a5,a5,2
    80004620:	04078463          	beqz	a5,80004668 <pop_on+0x68>
    80004624:	07852783          	lw	a5,120(a0)
    80004628:	02f05863          	blez	a5,80004658 <pop_on+0x58>
    8000462c:	fff7879b          	addiw	a5,a5,-1
    80004630:	06f52c23          	sw	a5,120(a0)
    80004634:	07853783          	ld	a5,120(a0)
    80004638:	00079863          	bnez	a5,80004648 <pop_on+0x48>
    8000463c:	100027f3          	csrr	a5,sstatus
    80004640:	ffd7f793          	andi	a5,a5,-3
    80004644:	10079073          	csrw	sstatus,a5
    80004648:	00813083          	ld	ra,8(sp)
    8000464c:	00013403          	ld	s0,0(sp)
    80004650:	01010113          	addi	sp,sp,16
    80004654:	00008067          	ret
    80004658:	00001517          	auipc	a0,0x1
    8000465c:	d4850513          	addi	a0,a0,-696 # 800053a0 <digits+0x70>
    80004660:	fffff097          	auipc	ra,0xfffff
    80004664:	f2c080e7          	jalr	-212(ra) # 8000358c <panic>
    80004668:	00001517          	auipc	a0,0x1
    8000466c:	d1850513          	addi	a0,a0,-744 # 80005380 <digits+0x50>
    80004670:	fffff097          	auipc	ra,0xfffff
    80004674:	f1c080e7          	jalr	-228(ra) # 8000358c <panic>

0000000080004678 <__memset>:
    80004678:	ff010113          	addi	sp,sp,-16
    8000467c:	00813423          	sd	s0,8(sp)
    80004680:	01010413          	addi	s0,sp,16
    80004684:	1a060e63          	beqz	a2,80004840 <__memset+0x1c8>
    80004688:	40a007b3          	neg	a5,a0
    8000468c:	0077f793          	andi	a5,a5,7
    80004690:	00778693          	addi	a3,a5,7
    80004694:	00b00813          	li	a6,11
    80004698:	0ff5f593          	andi	a1,a1,255
    8000469c:	fff6071b          	addiw	a4,a2,-1
    800046a0:	1b06e663          	bltu	a3,a6,8000484c <__memset+0x1d4>
    800046a4:	1cd76463          	bltu	a4,a3,8000486c <__memset+0x1f4>
    800046a8:	1a078e63          	beqz	a5,80004864 <__memset+0x1ec>
    800046ac:	00b50023          	sb	a1,0(a0)
    800046b0:	00100713          	li	a4,1
    800046b4:	1ae78463          	beq	a5,a4,8000485c <__memset+0x1e4>
    800046b8:	00b500a3          	sb	a1,1(a0)
    800046bc:	00200713          	li	a4,2
    800046c0:	1ae78a63          	beq	a5,a4,80004874 <__memset+0x1fc>
    800046c4:	00b50123          	sb	a1,2(a0)
    800046c8:	00300713          	li	a4,3
    800046cc:	18e78463          	beq	a5,a4,80004854 <__memset+0x1dc>
    800046d0:	00b501a3          	sb	a1,3(a0)
    800046d4:	00400713          	li	a4,4
    800046d8:	1ae78263          	beq	a5,a4,8000487c <__memset+0x204>
    800046dc:	00b50223          	sb	a1,4(a0)
    800046e0:	00500713          	li	a4,5
    800046e4:	1ae78063          	beq	a5,a4,80004884 <__memset+0x20c>
    800046e8:	00b502a3          	sb	a1,5(a0)
    800046ec:	00700713          	li	a4,7
    800046f0:	18e79e63          	bne	a5,a4,8000488c <__memset+0x214>
    800046f4:	00b50323          	sb	a1,6(a0)
    800046f8:	00700e93          	li	t4,7
    800046fc:	00859713          	slli	a4,a1,0x8
    80004700:	00e5e733          	or	a4,a1,a4
    80004704:	01059e13          	slli	t3,a1,0x10
    80004708:	01c76e33          	or	t3,a4,t3
    8000470c:	01859313          	slli	t1,a1,0x18
    80004710:	006e6333          	or	t1,t3,t1
    80004714:	02059893          	slli	a7,a1,0x20
    80004718:	40f60e3b          	subw	t3,a2,a5
    8000471c:	011368b3          	or	a7,t1,a7
    80004720:	02859813          	slli	a6,a1,0x28
    80004724:	0108e833          	or	a6,a7,a6
    80004728:	03059693          	slli	a3,a1,0x30
    8000472c:	003e589b          	srliw	a7,t3,0x3
    80004730:	00d866b3          	or	a3,a6,a3
    80004734:	03859713          	slli	a4,a1,0x38
    80004738:	00389813          	slli	a6,a7,0x3
    8000473c:	00f507b3          	add	a5,a0,a5
    80004740:	00e6e733          	or	a4,a3,a4
    80004744:	000e089b          	sext.w	a7,t3
    80004748:	00f806b3          	add	a3,a6,a5
    8000474c:	00e7b023          	sd	a4,0(a5)
    80004750:	00878793          	addi	a5,a5,8
    80004754:	fed79ce3          	bne	a5,a3,8000474c <__memset+0xd4>
    80004758:	ff8e7793          	andi	a5,t3,-8
    8000475c:	0007871b          	sext.w	a4,a5
    80004760:	01d787bb          	addw	a5,a5,t4
    80004764:	0ce88e63          	beq	a7,a4,80004840 <__memset+0x1c8>
    80004768:	00f50733          	add	a4,a0,a5
    8000476c:	00b70023          	sb	a1,0(a4)
    80004770:	0017871b          	addiw	a4,a5,1
    80004774:	0cc77663          	bgeu	a4,a2,80004840 <__memset+0x1c8>
    80004778:	00e50733          	add	a4,a0,a4
    8000477c:	00b70023          	sb	a1,0(a4)
    80004780:	0027871b          	addiw	a4,a5,2
    80004784:	0ac77e63          	bgeu	a4,a2,80004840 <__memset+0x1c8>
    80004788:	00e50733          	add	a4,a0,a4
    8000478c:	00b70023          	sb	a1,0(a4)
    80004790:	0037871b          	addiw	a4,a5,3
    80004794:	0ac77663          	bgeu	a4,a2,80004840 <__memset+0x1c8>
    80004798:	00e50733          	add	a4,a0,a4
    8000479c:	00b70023          	sb	a1,0(a4)
    800047a0:	0047871b          	addiw	a4,a5,4
    800047a4:	08c77e63          	bgeu	a4,a2,80004840 <__memset+0x1c8>
    800047a8:	00e50733          	add	a4,a0,a4
    800047ac:	00b70023          	sb	a1,0(a4)
    800047b0:	0057871b          	addiw	a4,a5,5
    800047b4:	08c77663          	bgeu	a4,a2,80004840 <__memset+0x1c8>
    800047b8:	00e50733          	add	a4,a0,a4
    800047bc:	00b70023          	sb	a1,0(a4)
    800047c0:	0067871b          	addiw	a4,a5,6
    800047c4:	06c77e63          	bgeu	a4,a2,80004840 <__memset+0x1c8>
    800047c8:	00e50733          	add	a4,a0,a4
    800047cc:	00b70023          	sb	a1,0(a4)
    800047d0:	0077871b          	addiw	a4,a5,7
    800047d4:	06c77663          	bgeu	a4,a2,80004840 <__memset+0x1c8>
    800047d8:	00e50733          	add	a4,a0,a4
    800047dc:	00b70023          	sb	a1,0(a4)
    800047e0:	0087871b          	addiw	a4,a5,8
    800047e4:	04c77e63          	bgeu	a4,a2,80004840 <__memset+0x1c8>
    800047e8:	00e50733          	add	a4,a0,a4
    800047ec:	00b70023          	sb	a1,0(a4)
    800047f0:	0097871b          	addiw	a4,a5,9
    800047f4:	04c77663          	bgeu	a4,a2,80004840 <__memset+0x1c8>
    800047f8:	00e50733          	add	a4,a0,a4
    800047fc:	00b70023          	sb	a1,0(a4)
    80004800:	00a7871b          	addiw	a4,a5,10
    80004804:	02c77e63          	bgeu	a4,a2,80004840 <__memset+0x1c8>
    80004808:	00e50733          	add	a4,a0,a4
    8000480c:	00b70023          	sb	a1,0(a4)
    80004810:	00b7871b          	addiw	a4,a5,11
    80004814:	02c77663          	bgeu	a4,a2,80004840 <__memset+0x1c8>
    80004818:	00e50733          	add	a4,a0,a4
    8000481c:	00b70023          	sb	a1,0(a4)
    80004820:	00c7871b          	addiw	a4,a5,12
    80004824:	00c77e63          	bgeu	a4,a2,80004840 <__memset+0x1c8>
    80004828:	00e50733          	add	a4,a0,a4
    8000482c:	00b70023          	sb	a1,0(a4)
    80004830:	00d7879b          	addiw	a5,a5,13
    80004834:	00c7f663          	bgeu	a5,a2,80004840 <__memset+0x1c8>
    80004838:	00f507b3          	add	a5,a0,a5
    8000483c:	00b78023          	sb	a1,0(a5)
    80004840:	00813403          	ld	s0,8(sp)
    80004844:	01010113          	addi	sp,sp,16
    80004848:	00008067          	ret
    8000484c:	00b00693          	li	a3,11
    80004850:	e55ff06f          	j	800046a4 <__memset+0x2c>
    80004854:	00300e93          	li	t4,3
    80004858:	ea5ff06f          	j	800046fc <__memset+0x84>
    8000485c:	00100e93          	li	t4,1
    80004860:	e9dff06f          	j	800046fc <__memset+0x84>
    80004864:	00000e93          	li	t4,0
    80004868:	e95ff06f          	j	800046fc <__memset+0x84>
    8000486c:	00000793          	li	a5,0
    80004870:	ef9ff06f          	j	80004768 <__memset+0xf0>
    80004874:	00200e93          	li	t4,2
    80004878:	e85ff06f          	j	800046fc <__memset+0x84>
    8000487c:	00400e93          	li	t4,4
    80004880:	e7dff06f          	j	800046fc <__memset+0x84>
    80004884:	00500e93          	li	t4,5
    80004888:	e75ff06f          	j	800046fc <__memset+0x84>
    8000488c:	00600e93          	li	t4,6
    80004890:	e6dff06f          	j	800046fc <__memset+0x84>

0000000080004894 <__memmove>:
    80004894:	ff010113          	addi	sp,sp,-16
    80004898:	00813423          	sd	s0,8(sp)
    8000489c:	01010413          	addi	s0,sp,16
    800048a0:	0e060863          	beqz	a2,80004990 <__memmove+0xfc>
    800048a4:	fff6069b          	addiw	a3,a2,-1
    800048a8:	0006881b          	sext.w	a6,a3
    800048ac:	0ea5e863          	bltu	a1,a0,8000499c <__memmove+0x108>
    800048b0:	00758713          	addi	a4,a1,7
    800048b4:	00a5e7b3          	or	a5,a1,a0
    800048b8:	40a70733          	sub	a4,a4,a0
    800048bc:	0077f793          	andi	a5,a5,7
    800048c0:	00f73713          	sltiu	a4,a4,15
    800048c4:	00174713          	xori	a4,a4,1
    800048c8:	0017b793          	seqz	a5,a5
    800048cc:	00e7f7b3          	and	a5,a5,a4
    800048d0:	10078863          	beqz	a5,800049e0 <__memmove+0x14c>
    800048d4:	00900793          	li	a5,9
    800048d8:	1107f463          	bgeu	a5,a6,800049e0 <__memmove+0x14c>
    800048dc:	0036581b          	srliw	a6,a2,0x3
    800048e0:	fff8081b          	addiw	a6,a6,-1
    800048e4:	02081813          	slli	a6,a6,0x20
    800048e8:	01d85893          	srli	a7,a6,0x1d
    800048ec:	00858813          	addi	a6,a1,8
    800048f0:	00058793          	mv	a5,a1
    800048f4:	00050713          	mv	a4,a0
    800048f8:	01088833          	add	a6,a7,a6
    800048fc:	0007b883          	ld	a7,0(a5)
    80004900:	00878793          	addi	a5,a5,8
    80004904:	00870713          	addi	a4,a4,8
    80004908:	ff173c23          	sd	a7,-8(a4)
    8000490c:	ff0798e3          	bne	a5,a6,800048fc <__memmove+0x68>
    80004910:	ff867713          	andi	a4,a2,-8
    80004914:	02071793          	slli	a5,a4,0x20
    80004918:	0207d793          	srli	a5,a5,0x20
    8000491c:	00f585b3          	add	a1,a1,a5
    80004920:	40e686bb          	subw	a3,a3,a4
    80004924:	00f507b3          	add	a5,a0,a5
    80004928:	06e60463          	beq	a2,a4,80004990 <__memmove+0xfc>
    8000492c:	0005c703          	lbu	a4,0(a1)
    80004930:	00e78023          	sb	a4,0(a5)
    80004934:	04068e63          	beqz	a3,80004990 <__memmove+0xfc>
    80004938:	0015c603          	lbu	a2,1(a1)
    8000493c:	00100713          	li	a4,1
    80004940:	00c780a3          	sb	a2,1(a5)
    80004944:	04e68663          	beq	a3,a4,80004990 <__memmove+0xfc>
    80004948:	0025c603          	lbu	a2,2(a1)
    8000494c:	00200713          	li	a4,2
    80004950:	00c78123          	sb	a2,2(a5)
    80004954:	02e68e63          	beq	a3,a4,80004990 <__memmove+0xfc>
    80004958:	0035c603          	lbu	a2,3(a1)
    8000495c:	00300713          	li	a4,3
    80004960:	00c781a3          	sb	a2,3(a5)
    80004964:	02e68663          	beq	a3,a4,80004990 <__memmove+0xfc>
    80004968:	0045c603          	lbu	a2,4(a1)
    8000496c:	00400713          	li	a4,4
    80004970:	00c78223          	sb	a2,4(a5)
    80004974:	00e68e63          	beq	a3,a4,80004990 <__memmove+0xfc>
    80004978:	0055c603          	lbu	a2,5(a1)
    8000497c:	00500713          	li	a4,5
    80004980:	00c782a3          	sb	a2,5(a5)
    80004984:	00e68663          	beq	a3,a4,80004990 <__memmove+0xfc>
    80004988:	0065c703          	lbu	a4,6(a1)
    8000498c:	00e78323          	sb	a4,6(a5)
    80004990:	00813403          	ld	s0,8(sp)
    80004994:	01010113          	addi	sp,sp,16
    80004998:	00008067          	ret
    8000499c:	02061713          	slli	a4,a2,0x20
    800049a0:	02075713          	srli	a4,a4,0x20
    800049a4:	00e587b3          	add	a5,a1,a4
    800049a8:	f0f574e3          	bgeu	a0,a5,800048b0 <__memmove+0x1c>
    800049ac:	02069613          	slli	a2,a3,0x20
    800049b0:	02065613          	srli	a2,a2,0x20
    800049b4:	fff64613          	not	a2,a2
    800049b8:	00e50733          	add	a4,a0,a4
    800049bc:	00c78633          	add	a2,a5,a2
    800049c0:	fff7c683          	lbu	a3,-1(a5)
    800049c4:	fff78793          	addi	a5,a5,-1
    800049c8:	fff70713          	addi	a4,a4,-1
    800049cc:	00d70023          	sb	a3,0(a4)
    800049d0:	fec798e3          	bne	a5,a2,800049c0 <__memmove+0x12c>
    800049d4:	00813403          	ld	s0,8(sp)
    800049d8:	01010113          	addi	sp,sp,16
    800049dc:	00008067          	ret
    800049e0:	02069713          	slli	a4,a3,0x20
    800049e4:	02075713          	srli	a4,a4,0x20
    800049e8:	00170713          	addi	a4,a4,1
    800049ec:	00e50733          	add	a4,a0,a4
    800049f0:	00050793          	mv	a5,a0
    800049f4:	0005c683          	lbu	a3,0(a1)
    800049f8:	00178793          	addi	a5,a5,1
    800049fc:	00158593          	addi	a1,a1,1
    80004a00:	fed78fa3          	sb	a3,-1(a5)
    80004a04:	fee798e3          	bne	a5,a4,800049f4 <__memmove+0x160>
    80004a08:	f89ff06f          	j	80004990 <__memmove+0xfc>

0000000080004a0c <__putc>:
    80004a0c:	fe010113          	addi	sp,sp,-32
    80004a10:	00813823          	sd	s0,16(sp)
    80004a14:	00113c23          	sd	ra,24(sp)
    80004a18:	02010413          	addi	s0,sp,32
    80004a1c:	00050793          	mv	a5,a0
    80004a20:	fef40593          	addi	a1,s0,-17
    80004a24:	00100613          	li	a2,1
    80004a28:	00000513          	li	a0,0
    80004a2c:	fef407a3          	sb	a5,-17(s0)
    80004a30:	fffff097          	auipc	ra,0xfffff
    80004a34:	b3c080e7          	jalr	-1220(ra) # 8000356c <console_write>
    80004a38:	01813083          	ld	ra,24(sp)
    80004a3c:	01013403          	ld	s0,16(sp)
    80004a40:	02010113          	addi	sp,sp,32
    80004a44:	00008067          	ret

0000000080004a48 <__getc>:
    80004a48:	fe010113          	addi	sp,sp,-32
    80004a4c:	00813823          	sd	s0,16(sp)
    80004a50:	00113c23          	sd	ra,24(sp)
    80004a54:	02010413          	addi	s0,sp,32
    80004a58:	fe840593          	addi	a1,s0,-24
    80004a5c:	00100613          	li	a2,1
    80004a60:	00000513          	li	a0,0
    80004a64:	fffff097          	auipc	ra,0xfffff
    80004a68:	ae8080e7          	jalr	-1304(ra) # 8000354c <console_read>
    80004a6c:	fe844503          	lbu	a0,-24(s0)
    80004a70:	01813083          	ld	ra,24(sp)
    80004a74:	01013403          	ld	s0,16(sp)
    80004a78:	02010113          	addi	sp,sp,32
    80004a7c:	00008067          	ret

0000000080004a80 <console_handler>:
    80004a80:	fe010113          	addi	sp,sp,-32
    80004a84:	00813823          	sd	s0,16(sp)
    80004a88:	00113c23          	sd	ra,24(sp)
    80004a8c:	00913423          	sd	s1,8(sp)
    80004a90:	02010413          	addi	s0,sp,32
    80004a94:	14202773          	csrr	a4,scause
    80004a98:	100027f3          	csrr	a5,sstatus
    80004a9c:	0027f793          	andi	a5,a5,2
    80004aa0:	06079e63          	bnez	a5,80004b1c <console_handler+0x9c>
    80004aa4:	00074c63          	bltz	a4,80004abc <console_handler+0x3c>
    80004aa8:	01813083          	ld	ra,24(sp)
    80004aac:	01013403          	ld	s0,16(sp)
    80004ab0:	00813483          	ld	s1,8(sp)
    80004ab4:	02010113          	addi	sp,sp,32
    80004ab8:	00008067          	ret
    80004abc:	0ff77713          	andi	a4,a4,255
    80004ac0:	00900793          	li	a5,9
    80004ac4:	fef712e3          	bne	a4,a5,80004aa8 <console_handler+0x28>
    80004ac8:	ffffe097          	auipc	ra,0xffffe
    80004acc:	6dc080e7          	jalr	1756(ra) # 800031a4 <plic_claim>
    80004ad0:	00a00793          	li	a5,10
    80004ad4:	00050493          	mv	s1,a0
    80004ad8:	02f50c63          	beq	a0,a5,80004b10 <console_handler+0x90>
    80004adc:	fc0506e3          	beqz	a0,80004aa8 <console_handler+0x28>
    80004ae0:	00050593          	mv	a1,a0
    80004ae4:	00000517          	auipc	a0,0x0
    80004ae8:	7c450513          	addi	a0,a0,1988 # 800052a8 <CONSOLE_STATUS+0x298>
    80004aec:	fffff097          	auipc	ra,0xfffff
    80004af0:	afc080e7          	jalr	-1284(ra) # 800035e8 <__printf>
    80004af4:	01013403          	ld	s0,16(sp)
    80004af8:	01813083          	ld	ra,24(sp)
    80004afc:	00048513          	mv	a0,s1
    80004b00:	00813483          	ld	s1,8(sp)
    80004b04:	02010113          	addi	sp,sp,32
    80004b08:	ffffe317          	auipc	t1,0xffffe
    80004b0c:	6d430067          	jr	1748(t1) # 800031dc <plic_complete>
    80004b10:	fffff097          	auipc	ra,0xfffff
    80004b14:	3e0080e7          	jalr	992(ra) # 80003ef0 <uartintr>
    80004b18:	fddff06f          	j	80004af4 <console_handler+0x74>
    80004b1c:	00001517          	auipc	a0,0x1
    80004b20:	88c50513          	addi	a0,a0,-1908 # 800053a8 <digits+0x78>
    80004b24:	fffff097          	auipc	ra,0xfffff
    80004b28:	a68080e7          	jalr	-1432(ra) # 8000358c <panic>
	...
