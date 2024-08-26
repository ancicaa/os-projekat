
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	5f013103          	ld	sp,1520(sp) # 800045f0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	3a9010ef          	jal	ra,80001bc4 <start>

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
    80001088:	690000ef          	jal	ra,80001718 <_ZN5Riscv13obradaprekidaEmmmmm>

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

00000000800012c8 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800012c8:	fe010113          	addi	sp,sp,-32
    800012cc:	00113c23          	sd	ra,24(sp)
    800012d0:	00813823          	sd	s0,16(sp)
    800012d4:	00913423          	sd	s1,8(sp)
    800012d8:	02010413          	addi	s0,sp,32
    800012dc:	00050493          	mv	s1,a0
    while (*string != '\0')
    800012e0:	0004c503          	lbu	a0,0(s1)
    800012e4:	00050a63          	beqz	a0,800012f8 <_Z11printStringPKc+0x30>
    {
        putc(*string);
    800012e8:	00000097          	auipc	ra,0x0
    800012ec:	fa4080e7          	jalr	-92(ra) # 8000128c <_Z4putcc>
        string++;
    800012f0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800012f4:	fedff06f          	j	800012e0 <_Z11printStringPKc+0x18>
    }
}
    800012f8:	01813083          	ld	ra,24(sp)
    800012fc:	01013403          	ld	s0,16(sp)
    80001300:	00813483          	ld	s1,8(sp)
    80001304:	02010113          	addi	sp,sp,32
    80001308:	00008067          	ret

000000008000130c <_Z9getStringPci>:

char* getString(char *buf, int max) {
    8000130c:	fd010113          	addi	sp,sp,-48
    80001310:	02113423          	sd	ra,40(sp)
    80001314:	02813023          	sd	s0,32(sp)
    80001318:	00913c23          	sd	s1,24(sp)
    8000131c:	01213823          	sd	s2,16(sp)
    80001320:	01313423          	sd	s3,8(sp)
    80001324:	01413023          	sd	s4,0(sp)
    80001328:	03010413          	addi	s0,sp,48
    8000132c:	00050993          	mv	s3,a0
    80001330:	00058a13          	mv	s4,a1
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80001334:	00000913          	li	s2,0
    80001338:	00090493          	mv	s1,s2
    8000133c:	0019091b          	addiw	s2,s2,1
    80001340:	03495a63          	bge	s2,s4,80001374 <_Z9getStringPci+0x68>
        cc = getc();
    80001344:	00000097          	auipc	ra,0x0
    80001348:	f08080e7          	jalr	-248(ra) # 8000124c <_Z4getcv>
        if(cc < 1)
    8000134c:	02050463          	beqz	a0,80001374 <_Z9getStringPci+0x68>
            break;
        c = cc;
        buf[i++] = c;
    80001350:	009984b3          	add	s1,s3,s1
    80001354:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80001358:	00a00793          	li	a5,10
    8000135c:	00f50a63          	beq	a0,a5,80001370 <_Z9getStringPci+0x64>
    80001360:	00d00793          	li	a5,13
    80001364:	fcf51ae3          	bne	a0,a5,80001338 <_Z9getStringPci+0x2c>
        buf[i++] = c;
    80001368:	00090493          	mv	s1,s2
    8000136c:	0080006f          	j	80001374 <_Z9getStringPci+0x68>
    80001370:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80001374:	009984b3          	add	s1,s3,s1
    80001378:	00048023          	sb	zero,0(s1)
    return buf;
}
    8000137c:	00098513          	mv	a0,s3
    80001380:	02813083          	ld	ra,40(sp)
    80001384:	02013403          	ld	s0,32(sp)
    80001388:	01813483          	ld	s1,24(sp)
    8000138c:	01013903          	ld	s2,16(sp)
    80001390:	00813983          	ld	s3,8(sp)
    80001394:	00013a03          	ld	s4,0(sp)
    80001398:	03010113          	addi	sp,sp,48
    8000139c:	00008067          	ret

00000000800013a0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800013a0:	ff010113          	addi	sp,sp,-16
    800013a4:	00813423          	sd	s0,8(sp)
    800013a8:	01010413          	addi	s0,sp,16
    800013ac:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800013b0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800013b4:	0006c603          	lbu	a2,0(a3)
    800013b8:	fd06071b          	addiw	a4,a2,-48
    800013bc:	0ff77713          	andi	a4,a4,255
    800013c0:	00900793          	li	a5,9
    800013c4:	02e7e063          	bltu	a5,a4,800013e4 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800013c8:	0025179b          	slliw	a5,a0,0x2
    800013cc:	00a787bb          	addw	a5,a5,a0
    800013d0:	0017979b          	slliw	a5,a5,0x1
    800013d4:	00168693          	addi	a3,a3,1
    800013d8:	00c787bb          	addw	a5,a5,a2
    800013dc:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800013e0:	fd5ff06f          	j	800013b4 <_Z11stringToIntPKc+0x14>
    return n;
}
    800013e4:	00813403          	ld	s0,8(sp)
    800013e8:	01010113          	addi	sp,sp,16
    800013ec:	00008067          	ret

00000000800013f0 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800013f0:	fd010113          	addi	sp,sp,-48
    800013f4:	02113423          	sd	ra,40(sp)
    800013f8:	02813023          	sd	s0,32(sp)
    800013fc:	00913c23          	sd	s1,24(sp)
    80001400:	03010413          	addi	s0,sp,48
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80001404:	00060463          	beqz	a2,8000140c <_Z8printIntiii+0x1c>
    80001408:	08054463          	bltz	a0,80001490 <_Z8printIntiii+0xa0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    8000140c:	0005051b          	sext.w	a0,a0
    neg = 0;
    80001410:	00000813          	li	a6,0
    }

    i = 0;
    80001414:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80001418:	0005879b          	sext.w	a5,a1
    8000141c:	02b5773b          	remuw	a4,a0,a1
    80001420:	00048613          	mv	a2,s1
    80001424:	0014849b          	addiw	s1,s1,1
    80001428:	02071693          	slli	a3,a4,0x20
    8000142c:	0206d693          	srli	a3,a3,0x20
    80001430:	00003717          	auipc	a4,0x3
    80001434:	19070713          	addi	a4,a4,400 # 800045c0 <digits>
    80001438:	00d70733          	add	a4,a4,a3
    8000143c:	00074683          	lbu	a3,0(a4)
    80001440:	fe040713          	addi	a4,s0,-32
    80001444:	00c70733          	add	a4,a4,a2
    80001448:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    8000144c:	0005071b          	sext.w	a4,a0
    80001450:	02b5553b          	divuw	a0,a0,a1
    80001454:	fcf772e3          	bgeu	a4,a5,80001418 <_Z8printIntiii+0x28>
    if(neg)
    80001458:	00080c63          	beqz	a6,80001470 <_Z8printIntiii+0x80>
        buf[i++] = '-';
    8000145c:	fe040793          	addi	a5,s0,-32
    80001460:	009784b3          	add	s1,a5,s1
    80001464:	02d00793          	li	a5,45
    80001468:	fef48823          	sb	a5,-16(s1)
    8000146c:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80001470:	fff4849b          	addiw	s1,s1,-1
    80001474:	0204c463          	bltz	s1,8000149c <_Z8printIntiii+0xac>
        putc(buf[i]);
    80001478:	fe040793          	addi	a5,s0,-32
    8000147c:	009787b3          	add	a5,a5,s1
    80001480:	ff07c503          	lbu	a0,-16(a5)
    80001484:	00000097          	auipc	ra,0x0
    80001488:	e08080e7          	jalr	-504(ra) # 8000128c <_Z4putcc>
    8000148c:	fe5ff06f          	j	80001470 <_Z8printIntiii+0x80>
        x = -xx;
    80001490:	40a0053b          	negw	a0,a0
        neg = 1;
    80001494:	00100813          	li	a6,1
        x = -xx;
    80001498:	f7dff06f          	j	80001414 <_Z8printIntiii+0x24>

    8000149c:	02813083          	ld	ra,40(sp)
    800014a0:	02013403          	ld	s0,32(sp)
    800014a4:	01813483          	ld	s1,24(sp)
    800014a8:	03010113          	addi	sp,sp,48
    800014ac:	00008067          	ret

00000000800014b0 <main>:
#include "../lib/hw.h"
#include "../h/printing.hpp"

extern "C" void rutina();

int main() {
    800014b0:	fc010113          	addi	sp,sp,-64
    800014b4:	02113c23          	sd	ra,56(sp)
    800014b8:	02813823          	sd	s0,48(sp)
    800014bc:	02913423          	sd	s1,40(sp)
    800014c0:	03213023          	sd	s2,32(sp)
    800014c4:	01313c23          	sd	s3,24(sp)
    800014c8:	01413823          	sd	s4,16(sp)
    800014cc:	01513423          	sd	s5,8(sp)
    800014d0:	04010413          	addi	s0,sp,64
    MemoryAllocator::init();
    800014d4:	00000097          	auipc	ra,0x0
    800014d8:	344080e7          	jalr	836(ra) # 80001818 <_ZN15MemoryAllocator4initEv>
    Riscv::w_stvec((uint64)rutina);// upis adrese prekidne rutine
    800014dc:	00003797          	auipc	a5,0x3
    800014e0:	1047b783          	ld	a5,260(a5) # 800045e0 <_GLOBAL_OFFSET_TABLE_+0x8>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800014e4:	10579073          	csrw	stvec,a5

    MemoryAllocator::print();
    800014e8:	00000097          	auipc	ra,0x0
    800014ec:	5cc080e7          	jalr	1484(ra) # 80001ab4 <_ZN15MemoryAllocator5printEv>
    void *a = mem_alloc(10);
    800014f0:	00a00513          	li	a0,10
    800014f4:	00000097          	auipc	ra,0x0
    800014f8:	cd4080e7          	jalr	-812(ra) # 800011c8 <_Z9mem_allocm>
    800014fc:	00050493          	mv	s1,a0
    MemoryAllocator::print();           //velicina free treba da bude MEM_BLOCK_SIZE + sizeof(Block) = 88 manja od predhodne
    80001500:	00000097          	auipc	ra,0x0
    80001504:	5b4080e7          	jalr	1460(ra) # 80001ab4 <_ZN15MemoryAllocator5printEv>
    void *b = mem_alloc(100);
    80001508:	06400513          	li	a0,100
    8000150c:	00000097          	auipc	ra,0x0
    80001510:	cbc080e7          	jalr	-836(ra) # 800011c8 <_Z9mem_allocm>
    80001514:	00050993          	mv	s3,a0
    MemoryAllocator::print();           //velicina free treba da bude 2*MEM_BLOCK_SIZE + sizeof(Block) = 152 manja od predhodne
    80001518:	00000097          	auipc	ra,0x0
    8000151c:	59c080e7          	jalr	1436(ra) # 80001ab4 <_ZN15MemoryAllocator5printEv>
    void *c = mem_alloc(1000);
    80001520:	3e800513          	li	a0,1000
    80001524:	00000097          	auipc	ra,0x0
    80001528:	ca4080e7          	jalr	-860(ra) # 800011c8 <_Z9mem_allocm>
    8000152c:	00050913          	mv	s2,a0
    MemoryAllocator::print();           //velicina free treba da bude 16*MEM_BLOCK_SIZE + sizeof(Block) = 1048 manja od predhodne
    80001530:	00000097          	auipc	ra,0x0
    80001534:	584080e7          	jalr	1412(ra) # 80001ab4 <_ZN15MemoryAllocator5printEv>

    printString("a: ");
    80001538:	00003517          	auipc	a0,0x3
    8000153c:	ae850513          	addi	a0,a0,-1304 # 80004020 <CONSOLE_STATUS+0x10>
    80001540:	00000097          	auipc	ra,0x0
    80001544:	d88080e7          	jalr	-632(ra) # 800012c8 <_Z11printStringPKc>
    printInt((uint64)a);
    80001548:	00048a1b          	sext.w	s4,s1
    8000154c:	00000613          	li	a2,0
    80001550:	00a00593          	li	a1,10
    80001554:	000a0513          	mv	a0,s4
    80001558:	00000097          	auipc	ra,0x0
    8000155c:	e98080e7          	jalr	-360(ra) # 800013f0 <_Z8printIntiii>
    printString("\nb: ");
    80001560:	00003517          	auipc	a0,0x3
    80001564:	ac850513          	addi	a0,a0,-1336 # 80004028 <CONSOLE_STATUS+0x18>
    80001568:	00000097          	auipc	ra,0x0
    8000156c:	d60080e7          	jalr	-672(ra) # 800012c8 <_Z11printStringPKc>
    printInt((uint64)b);
    80001570:	00000613          	li	a2,0
    80001574:	00a00593          	li	a1,10
    80001578:	0009851b          	sext.w	a0,s3
    8000157c:	00000097          	auipc	ra,0x0
    80001580:	e74080e7          	jalr	-396(ra) # 800013f0 <_Z8printIntiii>
    printString("\nc: ");
    80001584:	00003517          	auipc	a0,0x3
    80001588:	aac50513          	addi	a0,a0,-1364 # 80004030 <CONSOLE_STATUS+0x20>
    8000158c:	00000097          	auipc	ra,0x0
    80001590:	d3c080e7          	jalr	-708(ra) # 800012c8 <_Z11printStringPKc>
    printInt((uint64)c);
    80001594:	00000613          	li	a2,0
    80001598:	00a00593          	li	a1,10
    8000159c:	0009051b          	sext.w	a0,s2
    800015a0:	00000097          	auipc	ra,0x0
    800015a4:	e50080e7          	jalr	-432(ra) # 800013f0 <_Z8printIntiii>
    printString("\n");
    800015a8:	00003517          	auipc	a0,0x3
    800015ac:	c3050513          	addi	a0,a0,-976 # 800041d8 <CONSOLE_STATUS+0x1c8>
    800015b0:	00000097          	auipc	ra,0x0
    800015b4:	d18080e7          	jalr	-744(ra) # 800012c8 <_Z11printStringPKc>

    mem_free(a);
    800015b8:	00048513          	mv	a0,s1
    800015bc:	00000097          	auipc	ra,0x0
    800015c0:	c50080e7          	jalr	-944(ra) # 8000120c <_Z8mem_freePv>
    void *d = mem_alloc(10);
    800015c4:	00a00513          	li	a0,10
    800015c8:	00000097          	auipc	ra,0x0
    800015cc:	c00080e7          	jalr	-1024(ra) # 800011c8 <_Z9mem_allocm>
    800015d0:	00050a93          	mv	s5,a0
    printString("a: ");
    800015d4:	00003517          	auipc	a0,0x3
    800015d8:	a4c50513          	addi	a0,a0,-1460 # 80004020 <CONSOLE_STATUS+0x10>
    800015dc:	00000097          	auipc	ra,0x0
    800015e0:	cec080e7          	jalr	-788(ra) # 800012c8 <_Z11printStringPKc>
    printInt((uint64)a);
    800015e4:	00000613          	li	a2,0
    800015e8:	00a00593          	li	a1,10
    800015ec:	000a0513          	mv	a0,s4
    800015f0:	00000097          	auipc	ra,0x0
    800015f4:	e00080e7          	jalr	-512(ra) # 800013f0 <_Z8printIntiii>
    printString(" d: ");
    800015f8:	00003517          	auipc	a0,0x3
    800015fc:	a4050513          	addi	a0,a0,-1472 # 80004038 <CONSOLE_STATUS+0x28>
    80001600:	00000097          	auipc	ra,0x0
    80001604:	cc8080e7          	jalr	-824(ra) # 800012c8 <_Z11printStringPKc>
    printInt((uint64)d);            //a i d treba da budu isti, jer prostor oslobodjen od a treba da je dovoljan za d
    80001608:	00000613          	li	a2,0
    8000160c:	00a00593          	li	a1,10
    80001610:	000a851b          	sext.w	a0,s5
    80001614:	00000097          	auipc	ra,0x0
    80001618:	ddc080e7          	jalr	-548(ra) # 800013f0 <_Z8printIntiii>
    printString("\n");
    8000161c:	00003517          	auipc	a0,0x3
    80001620:	bbc50513          	addi	a0,a0,-1092 # 800041d8 <CONSOLE_STATUS+0x1c8>
    80001624:	00000097          	auipc	ra,0x0
    80001628:	ca4080e7          	jalr	-860(ra) # 800012c8 <_Z11printStringPKc>

    mem_free(a);
    8000162c:	00048513          	mv	a0,s1
    80001630:	00000097          	auipc	ra,0x0
    80001634:	bdc080e7          	jalr	-1060(ra) # 8000120c <_Z8mem_freePv>
    void *e = mem_alloc(100);
    80001638:	06400513          	li	a0,100
    8000163c:	00000097          	auipc	ra,0x0
    80001640:	b8c080e7          	jalr	-1140(ra) # 800011c8 <_Z9mem_allocm>
    80001644:	00050493          	mv	s1,a0
    printString("a: ");
    80001648:	00003517          	auipc	a0,0x3
    8000164c:	9d850513          	addi	a0,a0,-1576 # 80004020 <CONSOLE_STATUS+0x10>
    80001650:	00000097          	auipc	ra,0x0
    80001654:	c78080e7          	jalr	-904(ra) # 800012c8 <_Z11printStringPKc>
    printInt((uint64)a);
    80001658:	00000613          	li	a2,0
    8000165c:	00a00593          	li	a1,10
    80001660:	000a0513          	mv	a0,s4
    80001664:	00000097          	auipc	ra,0x0
    80001668:	d8c080e7          	jalr	-628(ra) # 800013f0 <_Z8printIntiii>
    printString(" e: ");
    8000166c:	00003517          	auipc	a0,0x3
    80001670:	9d450513          	addi	a0,a0,-1580 # 80004040 <CONSOLE_STATUS+0x30>
    80001674:	00000097          	auipc	ra,0x0
    80001678:	c54080e7          	jalr	-940(ra) # 800012c8 <_Z11printStringPKc>
    printInt((uint64)e);            //a i e ne bi smeli da budu isti, jer prostor oslobodjen od d nije dovoljan za e
    8000167c:	00000613          	li	a2,0
    80001680:	00a00593          	li	a1,10
    80001684:	0004851b          	sext.w	a0,s1
    80001688:	00000097          	auipc	ra,0x0
    8000168c:	d68080e7          	jalr	-664(ra) # 800013f0 <_Z8printIntiii>
    printString("\n");
    80001690:	00003517          	auipc	a0,0x3
    80001694:	b4850513          	addi	a0,a0,-1208 # 800041d8 <CONSOLE_STATUS+0x1c8>
    80001698:	00000097          	auipc	ra,0x0
    8000169c:	c30080e7          	jalr	-976(ra) # 800012c8 <_Z11printStringPKc>
    mem_free(e);
    800016a0:	00048513          	mv	a0,s1
    800016a4:	00000097          	auipc	ra,0x0
    800016a8:	b68080e7          	jalr	-1176(ra) # 8000120c <_Z8mem_freePv>
    a = mem_alloc(10);
    800016ac:	00a00513          	li	a0,10
    800016b0:	00000097          	auipc	ra,0x0
    800016b4:	b18080e7          	jalr	-1256(ra) # 800011c8 <_Z9mem_allocm>

    //moze se menjati redosled dealokacije da se vidi rad alokatora
    mem_free(a);
    800016b8:	00000097          	auipc	ra,0x0
    800016bc:	b54080e7          	jalr	-1196(ra) # 8000120c <_Z8mem_freePv>
    MemoryAllocator::print();
    800016c0:	00000097          	auipc	ra,0x0
    800016c4:	3f4080e7          	jalr	1012(ra) # 80001ab4 <_ZN15MemoryAllocator5printEv>
    mem_free(b);
    800016c8:	00098513          	mv	a0,s3
    800016cc:	00000097          	auipc	ra,0x0
    800016d0:	b40080e7          	jalr	-1216(ra) # 8000120c <_Z8mem_freePv>
    MemoryAllocator::print();
    800016d4:	00000097          	auipc	ra,0x0
    800016d8:	3e0080e7          	jalr	992(ra) # 80001ab4 <_ZN15MemoryAllocator5printEv>
    mem_free(c);
    800016dc:	00090513          	mv	a0,s2
    800016e0:	00000097          	auipc	ra,0x0
    800016e4:	b2c080e7          	jalr	-1236(ra) # 8000120c <_Z8mem_freePv>
    MemoryAllocator::print();           //ovde treba da bude isti ispis kao na pocetku
    800016e8:	00000097          	auipc	ra,0x0
    800016ec:	3cc080e7          	jalr	972(ra) # 80001ab4 <_ZN15MemoryAllocator5printEv>
    return 0;
}
    800016f0:	00000513          	li	a0,0
    800016f4:	03813083          	ld	ra,56(sp)
    800016f8:	03013403          	ld	s0,48(sp)
    800016fc:	02813483          	ld	s1,40(sp)
    80001700:	02013903          	ld	s2,32(sp)
    80001704:	01813983          	ld	s3,24(sp)
    80001708:	01013a03          	ld	s4,16(sp)
    8000170c:	00813a83          	ld	s5,8(sp)
    80001710:	04010113          	addi	sp,sp,64
    80001714:	00008067          	ret

0000000080001718 <_ZN5Riscv13obradaprekidaEmmmmm>:
    ILLEGAL_INSTRTUCION = 2,
    ILLEGAL_READ_ADDRESS = 5,
    ILLEGAL_WRITE_ADDRESS = 7,
};

void Riscv::obradaprekida(uint64 code, uint64 arg1, uint64 arg2, uint64 arg3, uint64 arg4) {
    80001718:	fc010113          	addi	sp,sp,-64
    8000171c:	02113c23          	sd	ra,56(sp)
    80001720:	02813823          	sd	s0,48(sp)
    80001724:	02913423          	sd	s1,40(sp)
    80001728:	03213023          	sd	s2,32(sp)
    8000172c:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001730:	142027f3          	csrr	a5,scause
    80001734:	fcf43c23          	sd	a5,-40(s0)
    return scause;
    80001738:	fd843703          	ld	a4,-40(s0)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000173c:	141027f3          	csrr	a5,sepc
    80001740:	fcf43823          	sd	a5,-48(s0)
    return sepc;
    80001744:	fd043483          	ld	s1,-48(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001748:	100027f3          	csrr	a5,sstatus
    8000174c:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001750:	fc843903          	ld	s2,-56(s0)
    uint64 scause = r_scause();
    uint64 sepc = r_sepc(); //cita pc
    uint64 sstatus = r_sstatus();//cita status registar

    if (scause == SYSCALL_S or scause == SYSCALL_U) {
    80001754:	ff870693          	addi	a3,a4,-8
    80001758:	00100793          	li	a5,1
    8000175c:	02d7f863          	bgeu	a5,a3,8000178c <_ZN5Riscv13obradaprekidaEmmmmm+0x74>
            break;
        }

        w_sstatus(sstatus);
        w_sepc(sepc + 4);
    } else if (scause == TIMER) {
    80001760:	fff00793          	li	a5,-1
    80001764:	03f79793          	slli	a5,a5,0x3f
    80001768:	00178793          	addi	a5,a5,1
    8000176c:	0af70063          	beq	a4,a5,8000180c <_ZN5Riscv13obradaprekidaEmmmmm+0xf4>
        mc_sip(SIP_SSIE);
    } else if (scause == CONSOLE) {
    80001770:	fff00793          	li	a5,-1
    80001774:	03f79793          	slli	a5,a5,0x3f
    80001778:	00978793          	addi	a5,a5,9
    8000177c:	06f71663          	bne	a4,a5,800017e8 <_ZN5Riscv13obradaprekidaEmmmmm+0xd0>
        console_handler();
    80001780:	00002097          	auipc	ra,0x2
    80001784:	580080e7          	jalr	1408(ra) # 80003d00 <console_handler>
    } else if (scause == ILLEGAL_INSTRTUCION) {
    } else if (scause == ILLEGAL_READ_ADDRESS) {
    } else if (scause == ILLEGAL_WRITE_ADDRESS) {
    };
    80001788:	0600006f          	j	800017e8 <_ZN5Riscv13obradaprekidaEmmmmm+0xd0>
        switch (code) {
    8000178c:	04100793          	li	a5,65
    80001790:	06f50863          	beq	a0,a5,80001800 <_ZN5Riscv13obradaprekidaEmmmmm+0xe8>
    80001794:	02a7e263          	bltu	a5,a0,800017b8 <_ZN5Riscv13obradaprekidaEmmmmm+0xa0>
    80001798:	00100793          	li	a5,1
    8000179c:	02f50a63          	beq	a0,a5,800017d0 <_ZN5Riscv13obradaprekidaEmmmmm+0xb8>
    800017a0:	00200793          	li	a5,2
    800017a4:	02f51c63          	bne	a0,a5,800017dc <_ZN5Riscv13obradaprekidaEmmmmm+0xc4>
                MemoryAllocator::mem_free((void *) arg1);
    800017a8:	00058513          	mv	a0,a1
    800017ac:	00000097          	auipc	ra,0x0
    800017b0:	200080e7          	jalr	512(ra) # 800019ac <_ZN15MemoryAllocator8mem_freeEPv>
            break;
    800017b4:	0280006f          	j	800017dc <_ZN5Riscv13obradaprekidaEmmmmm+0xc4>
        switch (code) {
    800017b8:	04200793          	li	a5,66
    800017bc:	02f51063          	bne	a0,a5,800017dc <_ZN5Riscv13obradaprekidaEmmmmm+0xc4>
                __putc(arg1);
    800017c0:	0ff5f513          	andi	a0,a1,255
    800017c4:	00002097          	auipc	ra,0x2
    800017c8:	4c8080e7          	jalr	1224(ra) # 80003c8c <__putc>
            break;
    800017cc:	0100006f          	j	800017dc <_ZN5Riscv13obradaprekidaEmmmmm+0xc4>
                MemoryAllocator::mem_alloc(arg1);
    800017d0:	00058513          	mv	a0,a1
    800017d4:	00000097          	auipc	ra,0x0
    800017d8:	0a0080e7          	jalr	160(ra) # 80001874 <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800017dc:	10091073          	csrw	sstatus,s2
        w_sepc(sepc + 4);
    800017e0:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800017e4:	14149073          	csrw	sepc,s1
    800017e8:	03813083          	ld	ra,56(sp)
    800017ec:	03013403          	ld	s0,48(sp)
    800017f0:	02813483          	ld	s1,40(sp)
    800017f4:	02013903          	ld	s2,32(sp)
    800017f8:	04010113          	addi	sp,sp,64
    800017fc:	00008067          	ret
                __getc();
    80001800:	00002097          	auipc	ra,0x2
    80001804:	4c8080e7          	jalr	1224(ra) # 80003cc8 <__getc>
            break;
    80001808:	fd5ff06f          	j	800017dc <_ZN5Riscv13obradaprekidaEmmmmm+0xc4>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    8000180c:	00200793          	li	a5,2
    80001810:	1447b073          	csrc	sip,a5
}
    80001814:	fd5ff06f          	j	800017e8 <_ZN5Riscv13obradaprekidaEmmmmm+0xd0>

0000000080001818 <_ZN15MemoryAllocator4initEv>:
#include "../h/MemoryAllocator.hpp"
#include "../h/printing.hpp"

Block *MemoryAllocator::head = nullptr;

void MemoryAllocator::init() {
    80001818:	ff010113          	addi	sp,sp,-16
    8000181c:	00813423          	sd	s0,8(sp)
    80001820:	01010413          	addi	s0,sp,16
    size_t total_heap_size = (char *) HEAP_END_ADDR - (char *) HEAP_START_ADDR;
    80001824:	00003797          	auipc	a5,0x3
    80001828:	dd47b783          	ld	a5,-556(a5) # 800045f8 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000182c:	0007b703          	ld	a4,0(a5)
    80001830:	00003797          	auipc	a5,0x3
    80001834:	db87b783          	ld	a5,-584(a5) # 800045e8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001838:	0007b783          	ld	a5,0(a5)
    8000183c:	40f70733          	sub	a4,a4,a5

    head = (Block *) HEAP_START_ADDR; //incijalizujemo listu blokova
    80001840:	00003697          	auipc	a3,0x3
    80001844:	e0868693          	addi	a3,a3,-504 # 80004648 <_ZN15MemoryAllocator4headE>
    80001848:	00f6b023          	sd	a5,0(a3)
    head->size = total_heap_size - sizeof(Block); //velicina 1.blk
    8000184c:	fe87071b          	addiw	a4,a4,-24
    80001850:	00e7a823          	sw	a4,16(a5)
    head->free = true;
    80001854:	00100713          	li	a4,1
    80001858:	00e78a23          	sb	a4,20(a5)
    head->next = nullptr; //nema sl nema prethodni
    8000185c:	0007b023          	sd	zero,0(a5)
    head->prev = nullptr;
    80001860:	0006b783          	ld	a5,0(a3)
    80001864:	0007b423          	sd	zero,8(a5)
}
    80001868:	00813403          	ld	s0,8(sp)
    8000186c:	01010113          	addi	sp,sp,16
    80001870:	00008067          	ret

0000000080001874 <_ZN15MemoryAllocator9mem_allocEm>:

void *MemoryAllocator::mem_alloc(size_t s) {
    80001874:	ff010113          	addi	sp,sp,-16
    80001878:	00813423          	sd	s0,8(sp)
    8000187c:	01010413          	addi	s0,sp,16
    if (s <= 0) return nullptr;
    80001880:	0c050463          	beqz	a0,80001948 <_ZN15MemoryAllocator9mem_allocEm+0xd4>

    size_t size = s * MEM_BLOCK_SIZE;
    80001884:	00651713          	slli	a4,a0,0x6
    Block *blk = head;
    80001888:	00003517          	auipc	a0,0x3
    8000188c:	dc053503          	ld	a0,-576(a0) # 80004648 <_ZN15MemoryAllocator4headE>
    80001890:	0080006f          	j	80001898 <_ZN15MemoryAllocator9mem_allocEm+0x24>

    while (blk != nullptr) {
        if (blk->free && blk->size >= size) {
            break;
        }
        blk = blk->next;
    80001894:	00053503          	ld	a0,0(a0)
    while (blk != nullptr) {
    80001898:	00050a63          	beqz	a0,800018ac <_ZN15MemoryAllocator9mem_allocEm+0x38>
        if (blk->free && blk->size >= size) {
    8000189c:	01454783          	lbu	a5,20(a0)
    800018a0:	fe078ae3          	beqz	a5,80001894 <_ZN15MemoryAllocator9mem_allocEm+0x20>
    800018a4:	01056783          	lwu	a5,16(a0)
    800018a8:	fee7e6e3          	bltu	a5,a4,80001894 <_ZN15MemoryAllocator9mem_allocEm+0x20>
    }

    if (blk == nullptr) return nullptr; // nema dovoljno velikog bloka
    800018ac:	04050e63          	beqz	a0,80001908 <_ZN15MemoryAllocator9mem_allocEm+0x94>
    if (blk->size > size + sizeof(Block)) {
    800018b0:	01052683          	lw	a3,16(a0)
    800018b4:	02069613          	slli	a2,a3,0x20
    800018b8:	02065613          	srli	a2,a2,0x20
    800018bc:	01870793          	addi	a5,a4,24
    800018c0:	04c7fa63          	bgeu	a5,a2,80001914 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
        Block *newBlock = (Block *) ((char *) blk + sizeof(Block) + size);
    800018c4:	00f507b3          	add	a5,a0,a5
        newBlock->size = blk->size - size - sizeof(Block);
    800018c8:	40e686bb          	subw	a3,a3,a4
    800018cc:	fe86869b          	addiw	a3,a3,-24
    800018d0:	00d7a823          	sw	a3,16(a5)
        newBlock->free = true;
    800018d4:	00100693          	li	a3,1
    800018d8:	00d78a23          	sb	a3,20(a5)
        newBlock->next = blk->next;
    800018dc:	00053683          	ld	a3,0(a0)
    800018e0:	00d7b023          	sd	a3,0(a5)
        newBlock->prev = blk->prev;
    800018e4:	00853683          	ld	a3,8(a0)
    800018e8:	00d7b423          	sd	a3,8(a5)

        blk->next = newBlock;
    800018ec:	00f53023          	sd	a5,0(a0)
        blk->size = size;
    800018f0:	00e52823          	sw	a4,16(a0)
    } else {
        if (blk->prev) blk->prev->next = blk->next;
        if (blk->next) blk->next->prev = blk->prev;
    }
    if (blk == head) head = blk->next;
    800018f4:	00003797          	auipc	a5,0x3
    800018f8:	d547b783          	ld	a5,-684(a5) # 80004648 <_ZN15MemoryAllocator4headE>
    800018fc:	02a78e63          	beq	a5,a0,80001938 <_ZN15MemoryAllocator9mem_allocEm+0xc4>
    blk->free = false;
    80001900:	00050a23          	sb	zero,20(a0)
    return (void *) ((char *) blk + sizeof(Block));
    80001904:	01850513          	addi	a0,a0,24
}
    80001908:	00813403          	ld	s0,8(sp)
    8000190c:	01010113          	addi	sp,sp,16
    80001910:	00008067          	ret
        if (blk->prev) blk->prev->next = blk->next;
    80001914:	00853783          	ld	a5,8(a0)
    80001918:	00078663          	beqz	a5,80001924 <_ZN15MemoryAllocator9mem_allocEm+0xb0>
    8000191c:	00053703          	ld	a4,0(a0)
    80001920:	00e7b023          	sd	a4,0(a5)
        if (blk->next) blk->next->prev = blk->prev;
    80001924:	00053783          	ld	a5,0(a0)
    80001928:	fc0786e3          	beqz	a5,800018f4 <_ZN15MemoryAllocator9mem_allocEm+0x80>
    8000192c:	00853703          	ld	a4,8(a0)
    80001930:	00e7b423          	sd	a4,8(a5)
    80001934:	fc1ff06f          	j	800018f4 <_ZN15MemoryAllocator9mem_allocEm+0x80>
    if (blk == head) head = blk->next;
    80001938:	00053783          	ld	a5,0(a0)
    8000193c:	00003717          	auipc	a4,0x3
    80001940:	d0f73623          	sd	a5,-756(a4) # 80004648 <_ZN15MemoryAllocator4headE>
    80001944:	fbdff06f          	j	80001900 <_ZN15MemoryAllocator9mem_allocEm+0x8c>
    if (s <= 0) return nullptr;
    80001948:	00000513          	li	a0,0
    8000194c:	fbdff06f          	j	80001908 <_ZN15MemoryAllocator9mem_allocEm+0x94>

0000000080001950 <_ZN15MemoryAllocator5mergeEP5BlockS1_>:

    return 0;
}


void MemoryAllocator::merge(Block *prvi, Block *drugi) {
    80001950:	ff010113          	addi	sp,sp,-16
    80001954:	00813423          	sd	s0,8(sp)
    80001958:	01010413          	addi	s0,sp,16
    if (prvi == nullptr || drugi == nullptr) {
    8000195c:	02050063          	beqz	a0,8000197c <_ZN15MemoryAllocator5mergeEP5BlockS1_+0x2c>
    80001960:	00058e63          	beqz	a1,8000197c <_ZN15MemoryAllocator5mergeEP5BlockS1_+0x2c>
        return;
    }
    if ((char *) prvi + prvi->size + sizeof(Block) != (char *) drugi) {
    80001964:	01052703          	lw	a4,16(a0)
    80001968:	02071793          	slli	a5,a4,0x20
    8000196c:	0207d793          	srli	a5,a5,0x20
    80001970:	01878793          	addi	a5,a5,24
    80001974:	00f507b3          	add	a5,a0,a5
    80001978:	00b78863          	beq	a5,a1,80001988 <_ZN15MemoryAllocator5mergeEP5BlockS1_+0x38>
    prvi->next = drugi->next;
    if (prvi->next != nullptr) {
        prvi->next->prev = prvi;
    }

}
    8000197c:	00813403          	ld	s0,8(sp)
    80001980:	01010113          	addi	sp,sp,16
    80001984:	00008067          	ret
    prvi->size += drugi->size + sizeof(Block);
    80001988:	0105a783          	lw	a5,16(a1)
    8000198c:	00f7073b          	addw	a4,a4,a5
    80001990:	0187071b          	addiw	a4,a4,24
    80001994:	00e52823          	sw	a4,16(a0)
    prvi->next = drugi->next;
    80001998:	0005b783          	ld	a5,0(a1)
    8000199c:	00f53023          	sd	a5,0(a0)
    if (prvi->next != nullptr) {
    800019a0:	fc078ee3          	beqz	a5,8000197c <_ZN15MemoryAllocator5mergeEP5BlockS1_+0x2c>
        prvi->next->prev = prvi;
    800019a4:	00a7b423          	sd	a0,8(a5)
    800019a8:	fd5ff06f          	j	8000197c <_ZN15MemoryAllocator5mergeEP5BlockS1_+0x2c>

00000000800019ac <_ZN15MemoryAllocator8mem_freeEPv>:
    if (addr == nullptr || addr > HEAP_END_ADDR || addr < HEAP_START_ADDR) return -1;
    800019ac:	0e050463          	beqz	a0,80001a94 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    800019b0:	00003797          	auipc	a5,0x3
    800019b4:	c487b783          	ld	a5,-952(a5) # 800045f8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800019b8:	0007b783          	ld	a5,0(a5)
    800019bc:	0ea7e063          	bltu	a5,a0,80001a9c <_ZN15MemoryAllocator8mem_freeEPv+0xf0>
    800019c0:	00003797          	auipc	a5,0x3
    800019c4:	c287b783          	ld	a5,-984(a5) # 800045e8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800019c8:	0007b783          	ld	a5,0(a5)
    800019cc:	0cf56c63          	bltu	a0,a5,80001aa4 <_ZN15MemoryAllocator8mem_freeEPv+0xf8>
int MemoryAllocator::mem_free(void *addr) {
    800019d0:	fe010113          	addi	sp,sp,-32
    800019d4:	00113c23          	sd	ra,24(sp)
    800019d8:	00813823          	sd	s0,16(sp)
    800019dc:	00913423          	sd	s1,8(sp)
    800019e0:	01213023          	sd	s2,0(sp)
    800019e4:	02010413          	addi	s0,sp,32
    Block *trenutni = (Block *) ((char *) addr - sizeof(Block)); // predji na blok
    800019e8:	fe850493          	addi	s1,a0,-24
    if (trenutni->free) return -2; //slobodan
    800019ec:	ffc54783          	lbu	a5,-4(a0)
    800019f0:	0a079e63          	bnez	a5,80001aac <_ZN15MemoryAllocator8mem_freeEPv+0x100>
    trenutni->free = true;
    800019f4:	00100793          	li	a5,1
    800019f8:	fef50e23          	sb	a5,-4(a0)
    for (sledeci = head; sledeci->next; sledeci = sledeci->next) {
    800019fc:	00003797          	auipc	a5,0x3
    80001a00:	c4c7b783          	ld	a5,-948(a5) # 80004648 <_ZN15MemoryAllocator4headE>
    80001a04:	00078593          	mv	a1,a5
    80001a08:	0007b783          	ld	a5,0(a5)
    80001a0c:	00078463          	beqz	a5,80001a14 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
        if (sledeci > trenutni) break;
    80001a10:	feb4fae3          	bgeu	s1,a1,80001a04 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    if (!sledeci->next and trenutni > sledeci) {
    80001a14:	06078263          	beqz	a5,80001a78 <_ZN15MemoryAllocator8mem_freeEPv+0xcc>
    else predhodni = sledeci->prev;
    80001a18:	0085b903          	ld	s2,8(a1)
    if (predhodni) predhodni->next = trenutni;
    80001a1c:	00090463          	beqz	s2,80001a24 <_ZN15MemoryAllocator8mem_freeEPv+0x78>
    80001a20:	00993023          	sd	s1,0(s2)
    trenutni->prev = predhodni;
    80001a24:	ff253823          	sd	s2,-16(a0)
    if (sledeci) sledeci->prev = trenutni;
    80001a28:	00058463          	beqz	a1,80001a30 <_ZN15MemoryAllocator8mem_freeEPv+0x84>
    80001a2c:	0095b423          	sd	s1,8(a1)
    trenutni->next = sledeci;
    80001a30:	feb53423          	sd	a1,-24(a0)
    if (sledeci == head) head = trenutni;
    80001a34:	00003797          	auipc	a5,0x3
    80001a38:	c147b783          	ld	a5,-1004(a5) # 80004648 <_ZN15MemoryAllocator4headE>
    80001a3c:	04b78663          	beq	a5,a1,80001a88 <_ZN15MemoryAllocator8mem_freeEPv+0xdc>
    merge(trenutni, sledeci); // spoji sa sl blokom ako je slobodan
    80001a40:	00048513          	mv	a0,s1
    80001a44:	00000097          	auipc	ra,0x0
    80001a48:	f0c080e7          	jalr	-244(ra) # 80001950 <_ZN15MemoryAllocator5mergeEP5BlockS1_>
    merge(predhodni, trenutni); // sa prethodnim  ako je slobodan
    80001a4c:	00048593          	mv	a1,s1
    80001a50:	00090513          	mv	a0,s2
    80001a54:	00000097          	auipc	ra,0x0
    80001a58:	efc080e7          	jalr	-260(ra) # 80001950 <_ZN15MemoryAllocator5mergeEP5BlockS1_>
    return 0;
    80001a5c:	00000513          	li	a0,0
}
    80001a60:	01813083          	ld	ra,24(sp)
    80001a64:	01013403          	ld	s0,16(sp)
    80001a68:	00813483          	ld	s1,8(sp)
    80001a6c:	00013903          	ld	s2,0(sp)
    80001a70:	02010113          	addi	sp,sp,32
    80001a74:	00008067          	ret
    if (!sledeci->next and trenutni > sledeci) {
    80001a78:	fa95f0e3          	bgeu	a1,s1,80001a18 <_ZN15MemoryAllocator8mem_freeEPv+0x6c>
        predhodni = sledeci; sledeci = nullptr;
    80001a7c:	00058913          	mv	s2,a1
    80001a80:	00078593          	mv	a1,a5
    80001a84:	f99ff06f          	j	80001a1c <_ZN15MemoryAllocator8mem_freeEPv+0x70>
    if (sledeci == head) head = trenutni;
    80001a88:	00003797          	auipc	a5,0x3
    80001a8c:	bc97b023          	sd	s1,-1088(a5) # 80004648 <_ZN15MemoryAllocator4headE>
    80001a90:	fb1ff06f          	j	80001a40 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    if (addr == nullptr || addr > HEAP_END_ADDR || addr < HEAP_START_ADDR) return -1;
    80001a94:	fff00513          	li	a0,-1
    80001a98:	00008067          	ret
    80001a9c:	fff00513          	li	a0,-1
    80001aa0:	00008067          	ret
    80001aa4:	fff00513          	li	a0,-1
}
    80001aa8:	00008067          	ret
    if (trenutni->free) return -2; //slobodan
    80001aac:	ffe00513          	li	a0,-2
    80001ab0:	fb1ff06f          	j	80001a60 <_ZN15MemoryAllocator8mem_freeEPv+0xb4>

0000000080001ab4 <_ZN15MemoryAllocator5printEv>:

void MemoryAllocator::print() {
    80001ab4:	fe010113          	addi	sp,sp,-32
    80001ab8:	00113c23          	sd	ra,24(sp)
    80001abc:	00813823          	sd	s0,16(sp)
    80001ac0:	00913423          	sd	s1,8(sp)
    80001ac4:	02010413          	addi	s0,sp,32
    printString("--------------------------------------------------\n");
    80001ac8:	00002517          	auipc	a0,0x2
    80001acc:	58050513          	addi	a0,a0,1408 # 80004048 <CONSOLE_STATUS+0x38>
    80001ad0:	fffff097          	auipc	ra,0xfffff
    80001ad4:	7f8080e7          	jalr	2040(ra) # 800012c8 <_Z11printStringPKc>
    for (Block *curr = head; curr; curr = curr->next) {
    80001ad8:	00003497          	auipc	s1,0x3
    80001adc:	b704b483          	ld	s1,-1168(s1) # 80004648 <_ZN15MemoryAllocator4headE>
    80001ae0:	0c048063          	beqz	s1,80001ba0 <_ZN15MemoryAllocator5printEv+0xec>
        printInt((uint64) curr);
    80001ae4:	00000613          	li	a2,0
    80001ae8:	00a00593          	li	a1,10
    80001aec:	0004851b          	sext.w	a0,s1
    80001af0:	00000097          	auipc	ra,0x0
    80001af4:	900080e7          	jalr	-1792(ra) # 800013f0 <_Z8printIntiii>
        printString(": ");
    80001af8:	00002517          	auipc	a0,0x2
    80001afc:	58850513          	addi	a0,a0,1416 # 80004080 <CONSOLE_STATUS+0x70>
    80001b00:	fffff097          	auipc	ra,0xfffff
    80001b04:	7c8080e7          	jalr	1992(ra) # 800012c8 <_Z11printStringPKc>
        printInt((uint64) curr->prev);
    80001b08:	00000613          	li	a2,0
    80001b0c:	00a00593          	li	a1,10
    80001b10:	0084a503          	lw	a0,8(s1)
    80001b14:	00000097          	auipc	ra,0x0
    80001b18:	8dc080e7          	jalr	-1828(ra) # 800013f0 <_Z8printIntiii>
        printString(" ");
    80001b1c:	00002517          	auipc	a0,0x2
    80001b20:	56c50513          	addi	a0,a0,1388 # 80004088 <CONSOLE_STATUS+0x78>
    80001b24:	fffff097          	auipc	ra,0xfffff
    80001b28:	7a4080e7          	jalr	1956(ra) # 800012c8 <_Z11printStringPKc>
        printInt(curr->size);
    80001b2c:	00000613          	li	a2,0
    80001b30:	00a00593          	li	a1,10
    80001b34:	0104a503          	lw	a0,16(s1)
    80001b38:	00000097          	auipc	ra,0x0
    80001b3c:	8b8080e7          	jalr	-1864(ra) # 800013f0 <_Z8printIntiii>
        printString(" ");
    80001b40:	00002517          	auipc	a0,0x2
    80001b44:	54850513          	addi	a0,a0,1352 # 80004088 <CONSOLE_STATUS+0x78>
    80001b48:	fffff097          	auipc	ra,0xfffff
    80001b4c:	780080e7          	jalr	1920(ra) # 800012c8 <_Z11printStringPKc>
        printInt(curr->free);
    80001b50:	00000613          	li	a2,0
    80001b54:	00a00593          	li	a1,10
    80001b58:	0144c503          	lbu	a0,20(s1)
    80001b5c:	00000097          	auipc	ra,0x0
    80001b60:	894080e7          	jalr	-1900(ra) # 800013f0 <_Z8printIntiii>
        printString(" ");
    80001b64:	00002517          	auipc	a0,0x2
    80001b68:	52450513          	addi	a0,a0,1316 # 80004088 <CONSOLE_STATUS+0x78>
    80001b6c:	fffff097          	auipc	ra,0xfffff
    80001b70:	75c080e7          	jalr	1884(ra) # 800012c8 <_Z11printStringPKc>
        printInt((uint64) curr->next);
    80001b74:	00000613          	li	a2,0
    80001b78:	00a00593          	li	a1,10
    80001b7c:	0004a503          	lw	a0,0(s1)
    80001b80:	00000097          	auipc	ra,0x0
    80001b84:	870080e7          	jalr	-1936(ra) # 800013f0 <_Z8printIntiii>
        printString("\n");
    80001b88:	00002517          	auipc	a0,0x2
    80001b8c:	65050513          	addi	a0,a0,1616 # 800041d8 <CONSOLE_STATUS+0x1c8>
    80001b90:	fffff097          	auipc	ra,0xfffff
    80001b94:	738080e7          	jalr	1848(ra) # 800012c8 <_Z11printStringPKc>
    for (Block *curr = head; curr; curr = curr->next) {
    80001b98:	0004b483          	ld	s1,0(s1)
    80001b9c:	f45ff06f          	j	80001ae0 <_ZN15MemoryAllocator5printEv+0x2c>
    }
    printString("__________________________________________________\n");
    80001ba0:	00002517          	auipc	a0,0x2
    80001ba4:	4f050513          	addi	a0,a0,1264 # 80004090 <CONSOLE_STATUS+0x80>
    80001ba8:	fffff097          	auipc	ra,0xfffff
    80001bac:	720080e7          	jalr	1824(ra) # 800012c8 <_Z11printStringPKc>
}
    80001bb0:	01813083          	ld	ra,24(sp)
    80001bb4:	01013403          	ld	s0,16(sp)
    80001bb8:	00813483          	ld	s1,8(sp)
    80001bbc:	02010113          	addi	sp,sp,32
    80001bc0:	00008067          	ret

0000000080001bc4 <start>:
    80001bc4:	ff010113          	addi	sp,sp,-16
    80001bc8:	00813423          	sd	s0,8(sp)
    80001bcc:	01010413          	addi	s0,sp,16
    80001bd0:	300027f3          	csrr	a5,mstatus
    80001bd4:	ffffe737          	lui	a4,0xffffe
    80001bd8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff8f5f>
    80001bdc:	00e7f7b3          	and	a5,a5,a4
    80001be0:	00001737          	lui	a4,0x1
    80001be4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001be8:	00e7e7b3          	or	a5,a5,a4
    80001bec:	30079073          	csrw	mstatus,a5
    80001bf0:	00000797          	auipc	a5,0x0
    80001bf4:	16078793          	addi	a5,a5,352 # 80001d50 <system_main>
    80001bf8:	34179073          	csrw	mepc,a5
    80001bfc:	00000793          	li	a5,0
    80001c00:	18079073          	csrw	satp,a5
    80001c04:	000107b7          	lui	a5,0x10
    80001c08:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001c0c:	30279073          	csrw	medeleg,a5
    80001c10:	30379073          	csrw	mideleg,a5
    80001c14:	104027f3          	csrr	a5,sie
    80001c18:	2227e793          	ori	a5,a5,546
    80001c1c:	10479073          	csrw	sie,a5
    80001c20:	fff00793          	li	a5,-1
    80001c24:	00a7d793          	srli	a5,a5,0xa
    80001c28:	3b079073          	csrw	pmpaddr0,a5
    80001c2c:	00f00793          	li	a5,15
    80001c30:	3a079073          	csrw	pmpcfg0,a5
    80001c34:	f14027f3          	csrr	a5,mhartid
    80001c38:	0200c737          	lui	a4,0x200c
    80001c3c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001c40:	0007869b          	sext.w	a3,a5
    80001c44:	00269713          	slli	a4,a3,0x2
    80001c48:	000f4637          	lui	a2,0xf4
    80001c4c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001c50:	00d70733          	add	a4,a4,a3
    80001c54:	0037979b          	slliw	a5,a5,0x3
    80001c58:	020046b7          	lui	a3,0x2004
    80001c5c:	00d787b3          	add	a5,a5,a3
    80001c60:	00c585b3          	add	a1,a1,a2
    80001c64:	00371693          	slli	a3,a4,0x3
    80001c68:	00003717          	auipc	a4,0x3
    80001c6c:	9e870713          	addi	a4,a4,-1560 # 80004650 <timer_scratch>
    80001c70:	00b7b023          	sd	a1,0(a5)
    80001c74:	00d70733          	add	a4,a4,a3
    80001c78:	00f73c23          	sd	a5,24(a4)
    80001c7c:	02c73023          	sd	a2,32(a4)
    80001c80:	34071073          	csrw	mscratch,a4
    80001c84:	00000797          	auipc	a5,0x0
    80001c88:	6ec78793          	addi	a5,a5,1772 # 80002370 <timervec>
    80001c8c:	30579073          	csrw	mtvec,a5
    80001c90:	300027f3          	csrr	a5,mstatus
    80001c94:	0087e793          	ori	a5,a5,8
    80001c98:	30079073          	csrw	mstatus,a5
    80001c9c:	304027f3          	csrr	a5,mie
    80001ca0:	0807e793          	ori	a5,a5,128
    80001ca4:	30479073          	csrw	mie,a5
    80001ca8:	f14027f3          	csrr	a5,mhartid
    80001cac:	0007879b          	sext.w	a5,a5
    80001cb0:	00078213          	mv	tp,a5
    80001cb4:	30200073          	mret
    80001cb8:	00813403          	ld	s0,8(sp)
    80001cbc:	01010113          	addi	sp,sp,16
    80001cc0:	00008067          	ret

0000000080001cc4 <timerinit>:
    80001cc4:	ff010113          	addi	sp,sp,-16
    80001cc8:	00813423          	sd	s0,8(sp)
    80001ccc:	01010413          	addi	s0,sp,16
    80001cd0:	f14027f3          	csrr	a5,mhartid
    80001cd4:	0200c737          	lui	a4,0x200c
    80001cd8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001cdc:	0007869b          	sext.w	a3,a5
    80001ce0:	00269713          	slli	a4,a3,0x2
    80001ce4:	000f4637          	lui	a2,0xf4
    80001ce8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001cec:	00d70733          	add	a4,a4,a3
    80001cf0:	0037979b          	slliw	a5,a5,0x3
    80001cf4:	020046b7          	lui	a3,0x2004
    80001cf8:	00d787b3          	add	a5,a5,a3
    80001cfc:	00c585b3          	add	a1,a1,a2
    80001d00:	00371693          	slli	a3,a4,0x3
    80001d04:	00003717          	auipc	a4,0x3
    80001d08:	94c70713          	addi	a4,a4,-1716 # 80004650 <timer_scratch>
    80001d0c:	00b7b023          	sd	a1,0(a5)
    80001d10:	00d70733          	add	a4,a4,a3
    80001d14:	00f73c23          	sd	a5,24(a4)
    80001d18:	02c73023          	sd	a2,32(a4)
    80001d1c:	34071073          	csrw	mscratch,a4
    80001d20:	00000797          	auipc	a5,0x0
    80001d24:	65078793          	addi	a5,a5,1616 # 80002370 <timervec>
    80001d28:	30579073          	csrw	mtvec,a5
    80001d2c:	300027f3          	csrr	a5,mstatus
    80001d30:	0087e793          	ori	a5,a5,8
    80001d34:	30079073          	csrw	mstatus,a5
    80001d38:	304027f3          	csrr	a5,mie
    80001d3c:	0807e793          	ori	a5,a5,128
    80001d40:	30479073          	csrw	mie,a5
    80001d44:	00813403          	ld	s0,8(sp)
    80001d48:	01010113          	addi	sp,sp,16
    80001d4c:	00008067          	ret

0000000080001d50 <system_main>:
    80001d50:	fe010113          	addi	sp,sp,-32
    80001d54:	00813823          	sd	s0,16(sp)
    80001d58:	00913423          	sd	s1,8(sp)
    80001d5c:	00113c23          	sd	ra,24(sp)
    80001d60:	02010413          	addi	s0,sp,32
    80001d64:	00000097          	auipc	ra,0x0
    80001d68:	0c4080e7          	jalr	196(ra) # 80001e28 <cpuid>
    80001d6c:	00003497          	auipc	s1,0x3
    80001d70:	8a448493          	addi	s1,s1,-1884 # 80004610 <started>
    80001d74:	02050263          	beqz	a0,80001d98 <system_main+0x48>
    80001d78:	0004a783          	lw	a5,0(s1)
    80001d7c:	0007879b          	sext.w	a5,a5
    80001d80:	fe078ce3          	beqz	a5,80001d78 <system_main+0x28>
    80001d84:	0ff0000f          	fence
    80001d88:	00002517          	auipc	a0,0x2
    80001d8c:	37050513          	addi	a0,a0,880 # 800040f8 <CONSOLE_STATUS+0xe8>
    80001d90:	00001097          	auipc	ra,0x1
    80001d94:	a7c080e7          	jalr	-1412(ra) # 8000280c <panic>
    80001d98:	00001097          	auipc	ra,0x1
    80001d9c:	9d0080e7          	jalr	-1584(ra) # 80002768 <consoleinit>
    80001da0:	00001097          	auipc	ra,0x1
    80001da4:	15c080e7          	jalr	348(ra) # 80002efc <printfinit>
    80001da8:	00002517          	auipc	a0,0x2
    80001dac:	43050513          	addi	a0,a0,1072 # 800041d8 <CONSOLE_STATUS+0x1c8>
    80001db0:	00001097          	auipc	ra,0x1
    80001db4:	ab8080e7          	jalr	-1352(ra) # 80002868 <__printf>
    80001db8:	00002517          	auipc	a0,0x2
    80001dbc:	31050513          	addi	a0,a0,784 # 800040c8 <CONSOLE_STATUS+0xb8>
    80001dc0:	00001097          	auipc	ra,0x1
    80001dc4:	aa8080e7          	jalr	-1368(ra) # 80002868 <__printf>
    80001dc8:	00002517          	auipc	a0,0x2
    80001dcc:	41050513          	addi	a0,a0,1040 # 800041d8 <CONSOLE_STATUS+0x1c8>
    80001dd0:	00001097          	auipc	ra,0x1
    80001dd4:	a98080e7          	jalr	-1384(ra) # 80002868 <__printf>
    80001dd8:	00001097          	auipc	ra,0x1
    80001ddc:	4b0080e7          	jalr	1200(ra) # 80003288 <kinit>
    80001de0:	00000097          	auipc	ra,0x0
    80001de4:	148080e7          	jalr	328(ra) # 80001f28 <trapinit>
    80001de8:	00000097          	auipc	ra,0x0
    80001dec:	16c080e7          	jalr	364(ra) # 80001f54 <trapinithart>
    80001df0:	00000097          	auipc	ra,0x0
    80001df4:	5c0080e7          	jalr	1472(ra) # 800023b0 <plicinit>
    80001df8:	00000097          	auipc	ra,0x0
    80001dfc:	5e0080e7          	jalr	1504(ra) # 800023d8 <plicinithart>
    80001e00:	00000097          	auipc	ra,0x0
    80001e04:	078080e7          	jalr	120(ra) # 80001e78 <userinit>
    80001e08:	0ff0000f          	fence
    80001e0c:	00100793          	li	a5,1
    80001e10:	00002517          	auipc	a0,0x2
    80001e14:	2d050513          	addi	a0,a0,720 # 800040e0 <CONSOLE_STATUS+0xd0>
    80001e18:	00f4a023          	sw	a5,0(s1)
    80001e1c:	00001097          	auipc	ra,0x1
    80001e20:	a4c080e7          	jalr	-1460(ra) # 80002868 <__printf>
    80001e24:	0000006f          	j	80001e24 <system_main+0xd4>

0000000080001e28 <cpuid>:
    80001e28:	ff010113          	addi	sp,sp,-16
    80001e2c:	00813423          	sd	s0,8(sp)
    80001e30:	01010413          	addi	s0,sp,16
    80001e34:	00020513          	mv	a0,tp
    80001e38:	00813403          	ld	s0,8(sp)
    80001e3c:	0005051b          	sext.w	a0,a0
    80001e40:	01010113          	addi	sp,sp,16
    80001e44:	00008067          	ret

0000000080001e48 <mycpu>:
    80001e48:	ff010113          	addi	sp,sp,-16
    80001e4c:	00813423          	sd	s0,8(sp)
    80001e50:	01010413          	addi	s0,sp,16
    80001e54:	00020793          	mv	a5,tp
    80001e58:	00813403          	ld	s0,8(sp)
    80001e5c:	0007879b          	sext.w	a5,a5
    80001e60:	00779793          	slli	a5,a5,0x7
    80001e64:	00004517          	auipc	a0,0x4
    80001e68:	81c50513          	addi	a0,a0,-2020 # 80005680 <cpus>
    80001e6c:	00f50533          	add	a0,a0,a5
    80001e70:	01010113          	addi	sp,sp,16
    80001e74:	00008067          	ret

0000000080001e78 <userinit>:
    80001e78:	ff010113          	addi	sp,sp,-16
    80001e7c:	00813423          	sd	s0,8(sp)
    80001e80:	01010413          	addi	s0,sp,16
    80001e84:	00813403          	ld	s0,8(sp)
    80001e88:	01010113          	addi	sp,sp,16
    80001e8c:	fffff317          	auipc	t1,0xfffff
    80001e90:	62430067          	jr	1572(t1) # 800014b0 <main>

0000000080001e94 <either_copyout>:
    80001e94:	ff010113          	addi	sp,sp,-16
    80001e98:	00813023          	sd	s0,0(sp)
    80001e9c:	00113423          	sd	ra,8(sp)
    80001ea0:	01010413          	addi	s0,sp,16
    80001ea4:	02051663          	bnez	a0,80001ed0 <either_copyout+0x3c>
    80001ea8:	00058513          	mv	a0,a1
    80001eac:	00060593          	mv	a1,a2
    80001eb0:	0006861b          	sext.w	a2,a3
    80001eb4:	00002097          	auipc	ra,0x2
    80001eb8:	c60080e7          	jalr	-928(ra) # 80003b14 <__memmove>
    80001ebc:	00813083          	ld	ra,8(sp)
    80001ec0:	00013403          	ld	s0,0(sp)
    80001ec4:	00000513          	li	a0,0
    80001ec8:	01010113          	addi	sp,sp,16
    80001ecc:	00008067          	ret
    80001ed0:	00002517          	auipc	a0,0x2
    80001ed4:	25050513          	addi	a0,a0,592 # 80004120 <CONSOLE_STATUS+0x110>
    80001ed8:	00001097          	auipc	ra,0x1
    80001edc:	934080e7          	jalr	-1740(ra) # 8000280c <panic>

0000000080001ee0 <either_copyin>:
    80001ee0:	ff010113          	addi	sp,sp,-16
    80001ee4:	00813023          	sd	s0,0(sp)
    80001ee8:	00113423          	sd	ra,8(sp)
    80001eec:	01010413          	addi	s0,sp,16
    80001ef0:	02059463          	bnez	a1,80001f18 <either_copyin+0x38>
    80001ef4:	00060593          	mv	a1,a2
    80001ef8:	0006861b          	sext.w	a2,a3
    80001efc:	00002097          	auipc	ra,0x2
    80001f00:	c18080e7          	jalr	-1000(ra) # 80003b14 <__memmove>
    80001f04:	00813083          	ld	ra,8(sp)
    80001f08:	00013403          	ld	s0,0(sp)
    80001f0c:	00000513          	li	a0,0
    80001f10:	01010113          	addi	sp,sp,16
    80001f14:	00008067          	ret
    80001f18:	00002517          	auipc	a0,0x2
    80001f1c:	23050513          	addi	a0,a0,560 # 80004148 <CONSOLE_STATUS+0x138>
    80001f20:	00001097          	auipc	ra,0x1
    80001f24:	8ec080e7          	jalr	-1812(ra) # 8000280c <panic>

0000000080001f28 <trapinit>:
    80001f28:	ff010113          	addi	sp,sp,-16
    80001f2c:	00813423          	sd	s0,8(sp)
    80001f30:	01010413          	addi	s0,sp,16
    80001f34:	00813403          	ld	s0,8(sp)
    80001f38:	00002597          	auipc	a1,0x2
    80001f3c:	23858593          	addi	a1,a1,568 # 80004170 <CONSOLE_STATUS+0x160>
    80001f40:	00003517          	auipc	a0,0x3
    80001f44:	7c050513          	addi	a0,a0,1984 # 80005700 <tickslock>
    80001f48:	01010113          	addi	sp,sp,16
    80001f4c:	00001317          	auipc	t1,0x1
    80001f50:	5cc30067          	jr	1484(t1) # 80003518 <initlock>

0000000080001f54 <trapinithart>:
    80001f54:	ff010113          	addi	sp,sp,-16
    80001f58:	00813423          	sd	s0,8(sp)
    80001f5c:	01010413          	addi	s0,sp,16
    80001f60:	00000797          	auipc	a5,0x0
    80001f64:	30078793          	addi	a5,a5,768 # 80002260 <kernelvec>
    80001f68:	10579073          	csrw	stvec,a5
    80001f6c:	00813403          	ld	s0,8(sp)
    80001f70:	01010113          	addi	sp,sp,16
    80001f74:	00008067          	ret

0000000080001f78 <usertrap>:
    80001f78:	ff010113          	addi	sp,sp,-16
    80001f7c:	00813423          	sd	s0,8(sp)
    80001f80:	01010413          	addi	s0,sp,16
    80001f84:	00813403          	ld	s0,8(sp)
    80001f88:	01010113          	addi	sp,sp,16
    80001f8c:	00008067          	ret

0000000080001f90 <usertrapret>:
    80001f90:	ff010113          	addi	sp,sp,-16
    80001f94:	00813423          	sd	s0,8(sp)
    80001f98:	01010413          	addi	s0,sp,16
    80001f9c:	00813403          	ld	s0,8(sp)
    80001fa0:	01010113          	addi	sp,sp,16
    80001fa4:	00008067          	ret

0000000080001fa8 <kerneltrap>:
    80001fa8:	fe010113          	addi	sp,sp,-32
    80001fac:	00813823          	sd	s0,16(sp)
    80001fb0:	00113c23          	sd	ra,24(sp)
    80001fb4:	00913423          	sd	s1,8(sp)
    80001fb8:	02010413          	addi	s0,sp,32
    80001fbc:	142025f3          	csrr	a1,scause
    80001fc0:	100027f3          	csrr	a5,sstatus
    80001fc4:	0027f793          	andi	a5,a5,2
    80001fc8:	10079c63          	bnez	a5,800020e0 <kerneltrap+0x138>
    80001fcc:	142027f3          	csrr	a5,scause
    80001fd0:	0207ce63          	bltz	a5,8000200c <kerneltrap+0x64>
    80001fd4:	00002517          	auipc	a0,0x2
    80001fd8:	1e450513          	addi	a0,a0,484 # 800041b8 <CONSOLE_STATUS+0x1a8>
    80001fdc:	00001097          	auipc	ra,0x1
    80001fe0:	88c080e7          	jalr	-1908(ra) # 80002868 <__printf>
    80001fe4:	141025f3          	csrr	a1,sepc
    80001fe8:	14302673          	csrr	a2,stval
    80001fec:	00002517          	auipc	a0,0x2
    80001ff0:	1dc50513          	addi	a0,a0,476 # 800041c8 <CONSOLE_STATUS+0x1b8>
    80001ff4:	00001097          	auipc	ra,0x1
    80001ff8:	874080e7          	jalr	-1932(ra) # 80002868 <__printf>
    80001ffc:	00002517          	auipc	a0,0x2
    80002000:	1e450513          	addi	a0,a0,484 # 800041e0 <CONSOLE_STATUS+0x1d0>
    80002004:	00001097          	auipc	ra,0x1
    80002008:	808080e7          	jalr	-2040(ra) # 8000280c <panic>
    8000200c:	0ff7f713          	andi	a4,a5,255
    80002010:	00900693          	li	a3,9
    80002014:	04d70063          	beq	a4,a3,80002054 <kerneltrap+0xac>
    80002018:	fff00713          	li	a4,-1
    8000201c:	03f71713          	slli	a4,a4,0x3f
    80002020:	00170713          	addi	a4,a4,1
    80002024:	fae798e3          	bne	a5,a4,80001fd4 <kerneltrap+0x2c>
    80002028:	00000097          	auipc	ra,0x0
    8000202c:	e00080e7          	jalr	-512(ra) # 80001e28 <cpuid>
    80002030:	06050663          	beqz	a0,8000209c <kerneltrap+0xf4>
    80002034:	144027f3          	csrr	a5,sip
    80002038:	ffd7f793          	andi	a5,a5,-3
    8000203c:	14479073          	csrw	sip,a5
    80002040:	01813083          	ld	ra,24(sp)
    80002044:	01013403          	ld	s0,16(sp)
    80002048:	00813483          	ld	s1,8(sp)
    8000204c:	02010113          	addi	sp,sp,32
    80002050:	00008067          	ret
    80002054:	00000097          	auipc	ra,0x0
    80002058:	3d0080e7          	jalr	976(ra) # 80002424 <plic_claim>
    8000205c:	00a00793          	li	a5,10
    80002060:	00050493          	mv	s1,a0
    80002064:	06f50863          	beq	a0,a5,800020d4 <kerneltrap+0x12c>
    80002068:	fc050ce3          	beqz	a0,80002040 <kerneltrap+0x98>
    8000206c:	00050593          	mv	a1,a0
    80002070:	00002517          	auipc	a0,0x2
    80002074:	12850513          	addi	a0,a0,296 # 80004198 <CONSOLE_STATUS+0x188>
    80002078:	00000097          	auipc	ra,0x0
    8000207c:	7f0080e7          	jalr	2032(ra) # 80002868 <__printf>
    80002080:	01013403          	ld	s0,16(sp)
    80002084:	01813083          	ld	ra,24(sp)
    80002088:	00048513          	mv	a0,s1
    8000208c:	00813483          	ld	s1,8(sp)
    80002090:	02010113          	addi	sp,sp,32
    80002094:	00000317          	auipc	t1,0x0
    80002098:	3c830067          	jr	968(t1) # 8000245c <plic_complete>
    8000209c:	00003517          	auipc	a0,0x3
    800020a0:	66450513          	addi	a0,a0,1636 # 80005700 <tickslock>
    800020a4:	00001097          	auipc	ra,0x1
    800020a8:	498080e7          	jalr	1176(ra) # 8000353c <acquire>
    800020ac:	00002717          	auipc	a4,0x2
    800020b0:	56870713          	addi	a4,a4,1384 # 80004614 <ticks>
    800020b4:	00072783          	lw	a5,0(a4)
    800020b8:	00003517          	auipc	a0,0x3
    800020bc:	64850513          	addi	a0,a0,1608 # 80005700 <tickslock>
    800020c0:	0017879b          	addiw	a5,a5,1
    800020c4:	00f72023          	sw	a5,0(a4)
    800020c8:	00001097          	auipc	ra,0x1
    800020cc:	540080e7          	jalr	1344(ra) # 80003608 <release>
    800020d0:	f65ff06f          	j	80002034 <kerneltrap+0x8c>
    800020d4:	00001097          	auipc	ra,0x1
    800020d8:	09c080e7          	jalr	156(ra) # 80003170 <uartintr>
    800020dc:	fa5ff06f          	j	80002080 <kerneltrap+0xd8>
    800020e0:	00002517          	auipc	a0,0x2
    800020e4:	09850513          	addi	a0,a0,152 # 80004178 <CONSOLE_STATUS+0x168>
    800020e8:	00000097          	auipc	ra,0x0
    800020ec:	724080e7          	jalr	1828(ra) # 8000280c <panic>

00000000800020f0 <clockintr>:
    800020f0:	fe010113          	addi	sp,sp,-32
    800020f4:	00813823          	sd	s0,16(sp)
    800020f8:	00913423          	sd	s1,8(sp)
    800020fc:	00113c23          	sd	ra,24(sp)
    80002100:	02010413          	addi	s0,sp,32
    80002104:	00003497          	auipc	s1,0x3
    80002108:	5fc48493          	addi	s1,s1,1532 # 80005700 <tickslock>
    8000210c:	00048513          	mv	a0,s1
    80002110:	00001097          	auipc	ra,0x1
    80002114:	42c080e7          	jalr	1068(ra) # 8000353c <acquire>
    80002118:	00002717          	auipc	a4,0x2
    8000211c:	4fc70713          	addi	a4,a4,1276 # 80004614 <ticks>
    80002120:	00072783          	lw	a5,0(a4)
    80002124:	01013403          	ld	s0,16(sp)
    80002128:	01813083          	ld	ra,24(sp)
    8000212c:	00048513          	mv	a0,s1
    80002130:	0017879b          	addiw	a5,a5,1
    80002134:	00813483          	ld	s1,8(sp)
    80002138:	00f72023          	sw	a5,0(a4)
    8000213c:	02010113          	addi	sp,sp,32
    80002140:	00001317          	auipc	t1,0x1
    80002144:	4c830067          	jr	1224(t1) # 80003608 <release>

0000000080002148 <devintr>:
    80002148:	142027f3          	csrr	a5,scause
    8000214c:	00000513          	li	a0,0
    80002150:	0007c463          	bltz	a5,80002158 <devintr+0x10>
    80002154:	00008067          	ret
    80002158:	fe010113          	addi	sp,sp,-32
    8000215c:	00813823          	sd	s0,16(sp)
    80002160:	00113c23          	sd	ra,24(sp)
    80002164:	00913423          	sd	s1,8(sp)
    80002168:	02010413          	addi	s0,sp,32
    8000216c:	0ff7f713          	andi	a4,a5,255
    80002170:	00900693          	li	a3,9
    80002174:	04d70c63          	beq	a4,a3,800021cc <devintr+0x84>
    80002178:	fff00713          	li	a4,-1
    8000217c:	03f71713          	slli	a4,a4,0x3f
    80002180:	00170713          	addi	a4,a4,1
    80002184:	00e78c63          	beq	a5,a4,8000219c <devintr+0x54>
    80002188:	01813083          	ld	ra,24(sp)
    8000218c:	01013403          	ld	s0,16(sp)
    80002190:	00813483          	ld	s1,8(sp)
    80002194:	02010113          	addi	sp,sp,32
    80002198:	00008067          	ret
    8000219c:	00000097          	auipc	ra,0x0
    800021a0:	c8c080e7          	jalr	-884(ra) # 80001e28 <cpuid>
    800021a4:	06050663          	beqz	a0,80002210 <devintr+0xc8>
    800021a8:	144027f3          	csrr	a5,sip
    800021ac:	ffd7f793          	andi	a5,a5,-3
    800021b0:	14479073          	csrw	sip,a5
    800021b4:	01813083          	ld	ra,24(sp)
    800021b8:	01013403          	ld	s0,16(sp)
    800021bc:	00813483          	ld	s1,8(sp)
    800021c0:	00200513          	li	a0,2
    800021c4:	02010113          	addi	sp,sp,32
    800021c8:	00008067          	ret
    800021cc:	00000097          	auipc	ra,0x0
    800021d0:	258080e7          	jalr	600(ra) # 80002424 <plic_claim>
    800021d4:	00a00793          	li	a5,10
    800021d8:	00050493          	mv	s1,a0
    800021dc:	06f50663          	beq	a0,a5,80002248 <devintr+0x100>
    800021e0:	00100513          	li	a0,1
    800021e4:	fa0482e3          	beqz	s1,80002188 <devintr+0x40>
    800021e8:	00048593          	mv	a1,s1
    800021ec:	00002517          	auipc	a0,0x2
    800021f0:	fac50513          	addi	a0,a0,-84 # 80004198 <CONSOLE_STATUS+0x188>
    800021f4:	00000097          	auipc	ra,0x0
    800021f8:	674080e7          	jalr	1652(ra) # 80002868 <__printf>
    800021fc:	00048513          	mv	a0,s1
    80002200:	00000097          	auipc	ra,0x0
    80002204:	25c080e7          	jalr	604(ra) # 8000245c <plic_complete>
    80002208:	00100513          	li	a0,1
    8000220c:	f7dff06f          	j	80002188 <devintr+0x40>
    80002210:	00003517          	auipc	a0,0x3
    80002214:	4f050513          	addi	a0,a0,1264 # 80005700 <tickslock>
    80002218:	00001097          	auipc	ra,0x1
    8000221c:	324080e7          	jalr	804(ra) # 8000353c <acquire>
    80002220:	00002717          	auipc	a4,0x2
    80002224:	3f470713          	addi	a4,a4,1012 # 80004614 <ticks>
    80002228:	00072783          	lw	a5,0(a4)
    8000222c:	00003517          	auipc	a0,0x3
    80002230:	4d450513          	addi	a0,a0,1236 # 80005700 <tickslock>
    80002234:	0017879b          	addiw	a5,a5,1
    80002238:	00f72023          	sw	a5,0(a4)
    8000223c:	00001097          	auipc	ra,0x1
    80002240:	3cc080e7          	jalr	972(ra) # 80003608 <release>
    80002244:	f65ff06f          	j	800021a8 <devintr+0x60>
    80002248:	00001097          	auipc	ra,0x1
    8000224c:	f28080e7          	jalr	-216(ra) # 80003170 <uartintr>
    80002250:	fadff06f          	j	800021fc <devintr+0xb4>
	...

0000000080002260 <kernelvec>:
    80002260:	f0010113          	addi	sp,sp,-256
    80002264:	00113023          	sd	ra,0(sp)
    80002268:	00213423          	sd	sp,8(sp)
    8000226c:	00313823          	sd	gp,16(sp)
    80002270:	00413c23          	sd	tp,24(sp)
    80002274:	02513023          	sd	t0,32(sp)
    80002278:	02613423          	sd	t1,40(sp)
    8000227c:	02713823          	sd	t2,48(sp)
    80002280:	02813c23          	sd	s0,56(sp)
    80002284:	04913023          	sd	s1,64(sp)
    80002288:	04a13423          	sd	a0,72(sp)
    8000228c:	04b13823          	sd	a1,80(sp)
    80002290:	04c13c23          	sd	a2,88(sp)
    80002294:	06d13023          	sd	a3,96(sp)
    80002298:	06e13423          	sd	a4,104(sp)
    8000229c:	06f13823          	sd	a5,112(sp)
    800022a0:	07013c23          	sd	a6,120(sp)
    800022a4:	09113023          	sd	a7,128(sp)
    800022a8:	09213423          	sd	s2,136(sp)
    800022ac:	09313823          	sd	s3,144(sp)
    800022b0:	09413c23          	sd	s4,152(sp)
    800022b4:	0b513023          	sd	s5,160(sp)
    800022b8:	0b613423          	sd	s6,168(sp)
    800022bc:	0b713823          	sd	s7,176(sp)
    800022c0:	0b813c23          	sd	s8,184(sp)
    800022c4:	0d913023          	sd	s9,192(sp)
    800022c8:	0da13423          	sd	s10,200(sp)
    800022cc:	0db13823          	sd	s11,208(sp)
    800022d0:	0dc13c23          	sd	t3,216(sp)
    800022d4:	0fd13023          	sd	t4,224(sp)
    800022d8:	0fe13423          	sd	t5,232(sp)
    800022dc:	0ff13823          	sd	t6,240(sp)
    800022e0:	cc9ff0ef          	jal	ra,80001fa8 <kerneltrap>
    800022e4:	00013083          	ld	ra,0(sp)
    800022e8:	00813103          	ld	sp,8(sp)
    800022ec:	01013183          	ld	gp,16(sp)
    800022f0:	02013283          	ld	t0,32(sp)
    800022f4:	02813303          	ld	t1,40(sp)
    800022f8:	03013383          	ld	t2,48(sp)
    800022fc:	03813403          	ld	s0,56(sp)
    80002300:	04013483          	ld	s1,64(sp)
    80002304:	04813503          	ld	a0,72(sp)
    80002308:	05013583          	ld	a1,80(sp)
    8000230c:	05813603          	ld	a2,88(sp)
    80002310:	06013683          	ld	a3,96(sp)
    80002314:	06813703          	ld	a4,104(sp)
    80002318:	07013783          	ld	a5,112(sp)
    8000231c:	07813803          	ld	a6,120(sp)
    80002320:	08013883          	ld	a7,128(sp)
    80002324:	08813903          	ld	s2,136(sp)
    80002328:	09013983          	ld	s3,144(sp)
    8000232c:	09813a03          	ld	s4,152(sp)
    80002330:	0a013a83          	ld	s5,160(sp)
    80002334:	0a813b03          	ld	s6,168(sp)
    80002338:	0b013b83          	ld	s7,176(sp)
    8000233c:	0b813c03          	ld	s8,184(sp)
    80002340:	0c013c83          	ld	s9,192(sp)
    80002344:	0c813d03          	ld	s10,200(sp)
    80002348:	0d013d83          	ld	s11,208(sp)
    8000234c:	0d813e03          	ld	t3,216(sp)
    80002350:	0e013e83          	ld	t4,224(sp)
    80002354:	0e813f03          	ld	t5,232(sp)
    80002358:	0f013f83          	ld	t6,240(sp)
    8000235c:	10010113          	addi	sp,sp,256
    80002360:	10200073          	sret
    80002364:	00000013          	nop
    80002368:	00000013          	nop
    8000236c:	00000013          	nop

0000000080002370 <timervec>:
    80002370:	34051573          	csrrw	a0,mscratch,a0
    80002374:	00b53023          	sd	a1,0(a0)
    80002378:	00c53423          	sd	a2,8(a0)
    8000237c:	00d53823          	sd	a3,16(a0)
    80002380:	01853583          	ld	a1,24(a0)
    80002384:	02053603          	ld	a2,32(a0)
    80002388:	0005b683          	ld	a3,0(a1)
    8000238c:	00c686b3          	add	a3,a3,a2
    80002390:	00d5b023          	sd	a3,0(a1)
    80002394:	00200593          	li	a1,2
    80002398:	14459073          	csrw	sip,a1
    8000239c:	01053683          	ld	a3,16(a0)
    800023a0:	00853603          	ld	a2,8(a0)
    800023a4:	00053583          	ld	a1,0(a0)
    800023a8:	34051573          	csrrw	a0,mscratch,a0
    800023ac:	30200073          	mret

00000000800023b0 <plicinit>:
    800023b0:	ff010113          	addi	sp,sp,-16
    800023b4:	00813423          	sd	s0,8(sp)
    800023b8:	01010413          	addi	s0,sp,16
    800023bc:	00813403          	ld	s0,8(sp)
    800023c0:	0c0007b7          	lui	a5,0xc000
    800023c4:	00100713          	li	a4,1
    800023c8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800023cc:	00e7a223          	sw	a4,4(a5)
    800023d0:	01010113          	addi	sp,sp,16
    800023d4:	00008067          	ret

00000000800023d8 <plicinithart>:
    800023d8:	ff010113          	addi	sp,sp,-16
    800023dc:	00813023          	sd	s0,0(sp)
    800023e0:	00113423          	sd	ra,8(sp)
    800023e4:	01010413          	addi	s0,sp,16
    800023e8:	00000097          	auipc	ra,0x0
    800023ec:	a40080e7          	jalr	-1472(ra) # 80001e28 <cpuid>
    800023f0:	0085171b          	slliw	a4,a0,0x8
    800023f4:	0c0027b7          	lui	a5,0xc002
    800023f8:	00e787b3          	add	a5,a5,a4
    800023fc:	40200713          	li	a4,1026
    80002400:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002404:	00813083          	ld	ra,8(sp)
    80002408:	00013403          	ld	s0,0(sp)
    8000240c:	00d5151b          	slliw	a0,a0,0xd
    80002410:	0c2017b7          	lui	a5,0xc201
    80002414:	00a78533          	add	a0,a5,a0
    80002418:	00052023          	sw	zero,0(a0)
    8000241c:	01010113          	addi	sp,sp,16
    80002420:	00008067          	ret

0000000080002424 <plic_claim>:
    80002424:	ff010113          	addi	sp,sp,-16
    80002428:	00813023          	sd	s0,0(sp)
    8000242c:	00113423          	sd	ra,8(sp)
    80002430:	01010413          	addi	s0,sp,16
    80002434:	00000097          	auipc	ra,0x0
    80002438:	9f4080e7          	jalr	-1548(ra) # 80001e28 <cpuid>
    8000243c:	00813083          	ld	ra,8(sp)
    80002440:	00013403          	ld	s0,0(sp)
    80002444:	00d5151b          	slliw	a0,a0,0xd
    80002448:	0c2017b7          	lui	a5,0xc201
    8000244c:	00a78533          	add	a0,a5,a0
    80002450:	00452503          	lw	a0,4(a0)
    80002454:	01010113          	addi	sp,sp,16
    80002458:	00008067          	ret

000000008000245c <plic_complete>:
    8000245c:	fe010113          	addi	sp,sp,-32
    80002460:	00813823          	sd	s0,16(sp)
    80002464:	00913423          	sd	s1,8(sp)
    80002468:	00113c23          	sd	ra,24(sp)
    8000246c:	02010413          	addi	s0,sp,32
    80002470:	00050493          	mv	s1,a0
    80002474:	00000097          	auipc	ra,0x0
    80002478:	9b4080e7          	jalr	-1612(ra) # 80001e28 <cpuid>
    8000247c:	01813083          	ld	ra,24(sp)
    80002480:	01013403          	ld	s0,16(sp)
    80002484:	00d5179b          	slliw	a5,a0,0xd
    80002488:	0c201737          	lui	a4,0xc201
    8000248c:	00f707b3          	add	a5,a4,a5
    80002490:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002494:	00813483          	ld	s1,8(sp)
    80002498:	02010113          	addi	sp,sp,32
    8000249c:	00008067          	ret

00000000800024a0 <consolewrite>:
    800024a0:	fb010113          	addi	sp,sp,-80
    800024a4:	04813023          	sd	s0,64(sp)
    800024a8:	04113423          	sd	ra,72(sp)
    800024ac:	02913c23          	sd	s1,56(sp)
    800024b0:	03213823          	sd	s2,48(sp)
    800024b4:	03313423          	sd	s3,40(sp)
    800024b8:	03413023          	sd	s4,32(sp)
    800024bc:	01513c23          	sd	s5,24(sp)
    800024c0:	05010413          	addi	s0,sp,80
    800024c4:	06c05c63          	blez	a2,8000253c <consolewrite+0x9c>
    800024c8:	00060993          	mv	s3,a2
    800024cc:	00050a13          	mv	s4,a0
    800024d0:	00058493          	mv	s1,a1
    800024d4:	00000913          	li	s2,0
    800024d8:	fff00a93          	li	s5,-1
    800024dc:	01c0006f          	j	800024f8 <consolewrite+0x58>
    800024e0:	fbf44503          	lbu	a0,-65(s0)
    800024e4:	0019091b          	addiw	s2,s2,1
    800024e8:	00148493          	addi	s1,s1,1
    800024ec:	00001097          	auipc	ra,0x1
    800024f0:	a9c080e7          	jalr	-1380(ra) # 80002f88 <uartputc>
    800024f4:	03298063          	beq	s3,s2,80002514 <consolewrite+0x74>
    800024f8:	00048613          	mv	a2,s1
    800024fc:	00100693          	li	a3,1
    80002500:	000a0593          	mv	a1,s4
    80002504:	fbf40513          	addi	a0,s0,-65
    80002508:	00000097          	auipc	ra,0x0
    8000250c:	9d8080e7          	jalr	-1576(ra) # 80001ee0 <either_copyin>
    80002510:	fd5518e3          	bne	a0,s5,800024e0 <consolewrite+0x40>
    80002514:	04813083          	ld	ra,72(sp)
    80002518:	04013403          	ld	s0,64(sp)
    8000251c:	03813483          	ld	s1,56(sp)
    80002520:	02813983          	ld	s3,40(sp)
    80002524:	02013a03          	ld	s4,32(sp)
    80002528:	01813a83          	ld	s5,24(sp)
    8000252c:	00090513          	mv	a0,s2
    80002530:	03013903          	ld	s2,48(sp)
    80002534:	05010113          	addi	sp,sp,80
    80002538:	00008067          	ret
    8000253c:	00000913          	li	s2,0
    80002540:	fd5ff06f          	j	80002514 <consolewrite+0x74>

0000000080002544 <consoleread>:
    80002544:	f9010113          	addi	sp,sp,-112
    80002548:	06813023          	sd	s0,96(sp)
    8000254c:	04913c23          	sd	s1,88(sp)
    80002550:	05213823          	sd	s2,80(sp)
    80002554:	05313423          	sd	s3,72(sp)
    80002558:	05413023          	sd	s4,64(sp)
    8000255c:	03513c23          	sd	s5,56(sp)
    80002560:	03613823          	sd	s6,48(sp)
    80002564:	03713423          	sd	s7,40(sp)
    80002568:	03813023          	sd	s8,32(sp)
    8000256c:	06113423          	sd	ra,104(sp)
    80002570:	01913c23          	sd	s9,24(sp)
    80002574:	07010413          	addi	s0,sp,112
    80002578:	00060b93          	mv	s7,a2
    8000257c:	00050913          	mv	s2,a0
    80002580:	00058c13          	mv	s8,a1
    80002584:	00060b1b          	sext.w	s6,a2
    80002588:	00003497          	auipc	s1,0x3
    8000258c:	19048493          	addi	s1,s1,400 # 80005718 <cons>
    80002590:	00400993          	li	s3,4
    80002594:	fff00a13          	li	s4,-1
    80002598:	00a00a93          	li	s5,10
    8000259c:	05705e63          	blez	s7,800025f8 <consoleread+0xb4>
    800025a0:	09c4a703          	lw	a4,156(s1)
    800025a4:	0984a783          	lw	a5,152(s1)
    800025a8:	0007071b          	sext.w	a4,a4
    800025ac:	08e78463          	beq	a5,a4,80002634 <consoleread+0xf0>
    800025b0:	07f7f713          	andi	a4,a5,127
    800025b4:	00e48733          	add	a4,s1,a4
    800025b8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800025bc:	0017869b          	addiw	a3,a5,1
    800025c0:	08d4ac23          	sw	a3,152(s1)
    800025c4:	00070c9b          	sext.w	s9,a4
    800025c8:	0b370663          	beq	a4,s3,80002674 <consoleread+0x130>
    800025cc:	00100693          	li	a3,1
    800025d0:	f9f40613          	addi	a2,s0,-97
    800025d4:	000c0593          	mv	a1,s8
    800025d8:	00090513          	mv	a0,s2
    800025dc:	f8e40fa3          	sb	a4,-97(s0)
    800025e0:	00000097          	auipc	ra,0x0
    800025e4:	8b4080e7          	jalr	-1868(ra) # 80001e94 <either_copyout>
    800025e8:	01450863          	beq	a0,s4,800025f8 <consoleread+0xb4>
    800025ec:	001c0c13          	addi	s8,s8,1
    800025f0:	fffb8b9b          	addiw	s7,s7,-1
    800025f4:	fb5c94e3          	bne	s9,s5,8000259c <consoleread+0x58>
    800025f8:	000b851b          	sext.w	a0,s7
    800025fc:	06813083          	ld	ra,104(sp)
    80002600:	06013403          	ld	s0,96(sp)
    80002604:	05813483          	ld	s1,88(sp)
    80002608:	05013903          	ld	s2,80(sp)
    8000260c:	04813983          	ld	s3,72(sp)
    80002610:	04013a03          	ld	s4,64(sp)
    80002614:	03813a83          	ld	s5,56(sp)
    80002618:	02813b83          	ld	s7,40(sp)
    8000261c:	02013c03          	ld	s8,32(sp)
    80002620:	01813c83          	ld	s9,24(sp)
    80002624:	40ab053b          	subw	a0,s6,a0
    80002628:	03013b03          	ld	s6,48(sp)
    8000262c:	07010113          	addi	sp,sp,112
    80002630:	00008067          	ret
    80002634:	00001097          	auipc	ra,0x1
    80002638:	1d8080e7          	jalr	472(ra) # 8000380c <push_on>
    8000263c:	0984a703          	lw	a4,152(s1)
    80002640:	09c4a783          	lw	a5,156(s1)
    80002644:	0007879b          	sext.w	a5,a5
    80002648:	fef70ce3          	beq	a4,a5,80002640 <consoleread+0xfc>
    8000264c:	00001097          	auipc	ra,0x1
    80002650:	234080e7          	jalr	564(ra) # 80003880 <pop_on>
    80002654:	0984a783          	lw	a5,152(s1)
    80002658:	07f7f713          	andi	a4,a5,127
    8000265c:	00e48733          	add	a4,s1,a4
    80002660:	01874703          	lbu	a4,24(a4)
    80002664:	0017869b          	addiw	a3,a5,1
    80002668:	08d4ac23          	sw	a3,152(s1)
    8000266c:	00070c9b          	sext.w	s9,a4
    80002670:	f5371ee3          	bne	a4,s3,800025cc <consoleread+0x88>
    80002674:	000b851b          	sext.w	a0,s7
    80002678:	f96bf2e3          	bgeu	s7,s6,800025fc <consoleread+0xb8>
    8000267c:	08f4ac23          	sw	a5,152(s1)
    80002680:	f7dff06f          	j	800025fc <consoleread+0xb8>

0000000080002684 <consputc>:
    80002684:	10000793          	li	a5,256
    80002688:	00f50663          	beq	a0,a5,80002694 <consputc+0x10>
    8000268c:	00001317          	auipc	t1,0x1
    80002690:	9f430067          	jr	-1548(t1) # 80003080 <uartputc_sync>
    80002694:	ff010113          	addi	sp,sp,-16
    80002698:	00113423          	sd	ra,8(sp)
    8000269c:	00813023          	sd	s0,0(sp)
    800026a0:	01010413          	addi	s0,sp,16
    800026a4:	00800513          	li	a0,8
    800026a8:	00001097          	auipc	ra,0x1
    800026ac:	9d8080e7          	jalr	-1576(ra) # 80003080 <uartputc_sync>
    800026b0:	02000513          	li	a0,32
    800026b4:	00001097          	auipc	ra,0x1
    800026b8:	9cc080e7          	jalr	-1588(ra) # 80003080 <uartputc_sync>
    800026bc:	00013403          	ld	s0,0(sp)
    800026c0:	00813083          	ld	ra,8(sp)
    800026c4:	00800513          	li	a0,8
    800026c8:	01010113          	addi	sp,sp,16
    800026cc:	00001317          	auipc	t1,0x1
    800026d0:	9b430067          	jr	-1612(t1) # 80003080 <uartputc_sync>

00000000800026d4 <consoleintr>:
    800026d4:	fe010113          	addi	sp,sp,-32
    800026d8:	00813823          	sd	s0,16(sp)
    800026dc:	00913423          	sd	s1,8(sp)
    800026e0:	01213023          	sd	s2,0(sp)
    800026e4:	00113c23          	sd	ra,24(sp)
    800026e8:	02010413          	addi	s0,sp,32
    800026ec:	00003917          	auipc	s2,0x3
    800026f0:	02c90913          	addi	s2,s2,44 # 80005718 <cons>
    800026f4:	00050493          	mv	s1,a0
    800026f8:	00090513          	mv	a0,s2
    800026fc:	00001097          	auipc	ra,0x1
    80002700:	e40080e7          	jalr	-448(ra) # 8000353c <acquire>
    80002704:	02048c63          	beqz	s1,8000273c <consoleintr+0x68>
    80002708:	0a092783          	lw	a5,160(s2)
    8000270c:	09892703          	lw	a4,152(s2)
    80002710:	07f00693          	li	a3,127
    80002714:	40e7873b          	subw	a4,a5,a4
    80002718:	02e6e263          	bltu	a3,a4,8000273c <consoleintr+0x68>
    8000271c:	00d00713          	li	a4,13
    80002720:	04e48063          	beq	s1,a4,80002760 <consoleintr+0x8c>
    80002724:	07f7f713          	andi	a4,a5,127
    80002728:	00e90733          	add	a4,s2,a4
    8000272c:	0017879b          	addiw	a5,a5,1
    80002730:	0af92023          	sw	a5,160(s2)
    80002734:	00970c23          	sb	s1,24(a4)
    80002738:	08f92e23          	sw	a5,156(s2)
    8000273c:	01013403          	ld	s0,16(sp)
    80002740:	01813083          	ld	ra,24(sp)
    80002744:	00813483          	ld	s1,8(sp)
    80002748:	00013903          	ld	s2,0(sp)
    8000274c:	00003517          	auipc	a0,0x3
    80002750:	fcc50513          	addi	a0,a0,-52 # 80005718 <cons>
    80002754:	02010113          	addi	sp,sp,32
    80002758:	00001317          	auipc	t1,0x1
    8000275c:	eb030067          	jr	-336(t1) # 80003608 <release>
    80002760:	00a00493          	li	s1,10
    80002764:	fc1ff06f          	j	80002724 <consoleintr+0x50>

0000000080002768 <consoleinit>:
    80002768:	fe010113          	addi	sp,sp,-32
    8000276c:	00113c23          	sd	ra,24(sp)
    80002770:	00813823          	sd	s0,16(sp)
    80002774:	00913423          	sd	s1,8(sp)
    80002778:	02010413          	addi	s0,sp,32
    8000277c:	00003497          	auipc	s1,0x3
    80002780:	f9c48493          	addi	s1,s1,-100 # 80005718 <cons>
    80002784:	00048513          	mv	a0,s1
    80002788:	00002597          	auipc	a1,0x2
    8000278c:	a6858593          	addi	a1,a1,-1432 # 800041f0 <CONSOLE_STATUS+0x1e0>
    80002790:	00001097          	auipc	ra,0x1
    80002794:	d88080e7          	jalr	-632(ra) # 80003518 <initlock>
    80002798:	00000097          	auipc	ra,0x0
    8000279c:	7ac080e7          	jalr	1964(ra) # 80002f44 <uartinit>
    800027a0:	01813083          	ld	ra,24(sp)
    800027a4:	01013403          	ld	s0,16(sp)
    800027a8:	00000797          	auipc	a5,0x0
    800027ac:	d9c78793          	addi	a5,a5,-612 # 80002544 <consoleread>
    800027b0:	0af4bc23          	sd	a5,184(s1)
    800027b4:	00000797          	auipc	a5,0x0
    800027b8:	cec78793          	addi	a5,a5,-788 # 800024a0 <consolewrite>
    800027bc:	0cf4b023          	sd	a5,192(s1)
    800027c0:	00813483          	ld	s1,8(sp)
    800027c4:	02010113          	addi	sp,sp,32
    800027c8:	00008067          	ret

00000000800027cc <console_read>:
    800027cc:	ff010113          	addi	sp,sp,-16
    800027d0:	00813423          	sd	s0,8(sp)
    800027d4:	01010413          	addi	s0,sp,16
    800027d8:	00813403          	ld	s0,8(sp)
    800027dc:	00003317          	auipc	t1,0x3
    800027e0:	ff433303          	ld	t1,-12(t1) # 800057d0 <devsw+0x10>
    800027e4:	01010113          	addi	sp,sp,16
    800027e8:	00030067          	jr	t1

00000000800027ec <console_write>:
    800027ec:	ff010113          	addi	sp,sp,-16
    800027f0:	00813423          	sd	s0,8(sp)
    800027f4:	01010413          	addi	s0,sp,16
    800027f8:	00813403          	ld	s0,8(sp)
    800027fc:	00003317          	auipc	t1,0x3
    80002800:	fdc33303          	ld	t1,-36(t1) # 800057d8 <devsw+0x18>
    80002804:	01010113          	addi	sp,sp,16
    80002808:	00030067          	jr	t1

000000008000280c <panic>:
    8000280c:	fe010113          	addi	sp,sp,-32
    80002810:	00113c23          	sd	ra,24(sp)
    80002814:	00813823          	sd	s0,16(sp)
    80002818:	00913423          	sd	s1,8(sp)
    8000281c:	02010413          	addi	s0,sp,32
    80002820:	00050493          	mv	s1,a0
    80002824:	00002517          	auipc	a0,0x2
    80002828:	9d450513          	addi	a0,a0,-1580 # 800041f8 <CONSOLE_STATUS+0x1e8>
    8000282c:	00003797          	auipc	a5,0x3
    80002830:	0407a623          	sw	zero,76(a5) # 80005878 <pr+0x18>
    80002834:	00000097          	auipc	ra,0x0
    80002838:	034080e7          	jalr	52(ra) # 80002868 <__printf>
    8000283c:	00048513          	mv	a0,s1
    80002840:	00000097          	auipc	ra,0x0
    80002844:	028080e7          	jalr	40(ra) # 80002868 <__printf>
    80002848:	00002517          	auipc	a0,0x2
    8000284c:	99050513          	addi	a0,a0,-1648 # 800041d8 <CONSOLE_STATUS+0x1c8>
    80002850:	00000097          	auipc	ra,0x0
    80002854:	018080e7          	jalr	24(ra) # 80002868 <__printf>
    80002858:	00100793          	li	a5,1
    8000285c:	00002717          	auipc	a4,0x2
    80002860:	daf72e23          	sw	a5,-580(a4) # 80004618 <panicked>
    80002864:	0000006f          	j	80002864 <panic+0x58>

0000000080002868 <__printf>:
    80002868:	f3010113          	addi	sp,sp,-208
    8000286c:	08813023          	sd	s0,128(sp)
    80002870:	07313423          	sd	s3,104(sp)
    80002874:	09010413          	addi	s0,sp,144
    80002878:	05813023          	sd	s8,64(sp)
    8000287c:	08113423          	sd	ra,136(sp)
    80002880:	06913c23          	sd	s1,120(sp)
    80002884:	07213823          	sd	s2,112(sp)
    80002888:	07413023          	sd	s4,96(sp)
    8000288c:	05513c23          	sd	s5,88(sp)
    80002890:	05613823          	sd	s6,80(sp)
    80002894:	05713423          	sd	s7,72(sp)
    80002898:	03913c23          	sd	s9,56(sp)
    8000289c:	03a13823          	sd	s10,48(sp)
    800028a0:	03b13423          	sd	s11,40(sp)
    800028a4:	00003317          	auipc	t1,0x3
    800028a8:	fbc30313          	addi	t1,t1,-68 # 80005860 <pr>
    800028ac:	01832c03          	lw	s8,24(t1)
    800028b0:	00b43423          	sd	a1,8(s0)
    800028b4:	00c43823          	sd	a2,16(s0)
    800028b8:	00d43c23          	sd	a3,24(s0)
    800028bc:	02e43023          	sd	a4,32(s0)
    800028c0:	02f43423          	sd	a5,40(s0)
    800028c4:	03043823          	sd	a6,48(s0)
    800028c8:	03143c23          	sd	a7,56(s0)
    800028cc:	00050993          	mv	s3,a0
    800028d0:	4a0c1663          	bnez	s8,80002d7c <__printf+0x514>
    800028d4:	60098c63          	beqz	s3,80002eec <__printf+0x684>
    800028d8:	0009c503          	lbu	a0,0(s3)
    800028dc:	00840793          	addi	a5,s0,8
    800028e0:	f6f43c23          	sd	a5,-136(s0)
    800028e4:	00000493          	li	s1,0
    800028e8:	22050063          	beqz	a0,80002b08 <__printf+0x2a0>
    800028ec:	00002a37          	lui	s4,0x2
    800028f0:	00018ab7          	lui	s5,0x18
    800028f4:	000f4b37          	lui	s6,0xf4
    800028f8:	00989bb7          	lui	s7,0x989
    800028fc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002900:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002904:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002908:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000290c:	00148c9b          	addiw	s9,s1,1
    80002910:	02500793          	li	a5,37
    80002914:	01998933          	add	s2,s3,s9
    80002918:	38f51263          	bne	a0,a5,80002c9c <__printf+0x434>
    8000291c:	00094783          	lbu	a5,0(s2)
    80002920:	00078c9b          	sext.w	s9,a5
    80002924:	1e078263          	beqz	a5,80002b08 <__printf+0x2a0>
    80002928:	0024849b          	addiw	s1,s1,2
    8000292c:	07000713          	li	a4,112
    80002930:	00998933          	add	s2,s3,s1
    80002934:	38e78a63          	beq	a5,a4,80002cc8 <__printf+0x460>
    80002938:	20f76863          	bltu	a4,a5,80002b48 <__printf+0x2e0>
    8000293c:	42a78863          	beq	a5,a0,80002d6c <__printf+0x504>
    80002940:	06400713          	li	a4,100
    80002944:	40e79663          	bne	a5,a4,80002d50 <__printf+0x4e8>
    80002948:	f7843783          	ld	a5,-136(s0)
    8000294c:	0007a603          	lw	a2,0(a5)
    80002950:	00878793          	addi	a5,a5,8
    80002954:	f6f43c23          	sd	a5,-136(s0)
    80002958:	42064a63          	bltz	a2,80002d8c <__printf+0x524>
    8000295c:	00a00713          	li	a4,10
    80002960:	02e677bb          	remuw	a5,a2,a4
    80002964:	00002d97          	auipc	s11,0x2
    80002968:	8bcd8d93          	addi	s11,s11,-1860 # 80004220 <digits>
    8000296c:	00900593          	li	a1,9
    80002970:	0006051b          	sext.w	a0,a2
    80002974:	00000c93          	li	s9,0
    80002978:	02079793          	slli	a5,a5,0x20
    8000297c:	0207d793          	srli	a5,a5,0x20
    80002980:	00fd87b3          	add	a5,s11,a5
    80002984:	0007c783          	lbu	a5,0(a5)
    80002988:	02e656bb          	divuw	a3,a2,a4
    8000298c:	f8f40023          	sb	a5,-128(s0)
    80002990:	14c5d863          	bge	a1,a2,80002ae0 <__printf+0x278>
    80002994:	06300593          	li	a1,99
    80002998:	00100c93          	li	s9,1
    8000299c:	02e6f7bb          	remuw	a5,a3,a4
    800029a0:	02079793          	slli	a5,a5,0x20
    800029a4:	0207d793          	srli	a5,a5,0x20
    800029a8:	00fd87b3          	add	a5,s11,a5
    800029ac:	0007c783          	lbu	a5,0(a5)
    800029b0:	02e6d73b          	divuw	a4,a3,a4
    800029b4:	f8f400a3          	sb	a5,-127(s0)
    800029b8:	12a5f463          	bgeu	a1,a0,80002ae0 <__printf+0x278>
    800029bc:	00a00693          	li	a3,10
    800029c0:	00900593          	li	a1,9
    800029c4:	02d777bb          	remuw	a5,a4,a3
    800029c8:	02079793          	slli	a5,a5,0x20
    800029cc:	0207d793          	srli	a5,a5,0x20
    800029d0:	00fd87b3          	add	a5,s11,a5
    800029d4:	0007c503          	lbu	a0,0(a5)
    800029d8:	02d757bb          	divuw	a5,a4,a3
    800029dc:	f8a40123          	sb	a0,-126(s0)
    800029e0:	48e5f263          	bgeu	a1,a4,80002e64 <__printf+0x5fc>
    800029e4:	06300513          	li	a0,99
    800029e8:	02d7f5bb          	remuw	a1,a5,a3
    800029ec:	02059593          	slli	a1,a1,0x20
    800029f0:	0205d593          	srli	a1,a1,0x20
    800029f4:	00bd85b3          	add	a1,s11,a1
    800029f8:	0005c583          	lbu	a1,0(a1)
    800029fc:	02d7d7bb          	divuw	a5,a5,a3
    80002a00:	f8b401a3          	sb	a1,-125(s0)
    80002a04:	48e57263          	bgeu	a0,a4,80002e88 <__printf+0x620>
    80002a08:	3e700513          	li	a0,999
    80002a0c:	02d7f5bb          	remuw	a1,a5,a3
    80002a10:	02059593          	slli	a1,a1,0x20
    80002a14:	0205d593          	srli	a1,a1,0x20
    80002a18:	00bd85b3          	add	a1,s11,a1
    80002a1c:	0005c583          	lbu	a1,0(a1)
    80002a20:	02d7d7bb          	divuw	a5,a5,a3
    80002a24:	f8b40223          	sb	a1,-124(s0)
    80002a28:	46e57663          	bgeu	a0,a4,80002e94 <__printf+0x62c>
    80002a2c:	02d7f5bb          	remuw	a1,a5,a3
    80002a30:	02059593          	slli	a1,a1,0x20
    80002a34:	0205d593          	srli	a1,a1,0x20
    80002a38:	00bd85b3          	add	a1,s11,a1
    80002a3c:	0005c583          	lbu	a1,0(a1)
    80002a40:	02d7d7bb          	divuw	a5,a5,a3
    80002a44:	f8b402a3          	sb	a1,-123(s0)
    80002a48:	46ea7863          	bgeu	s4,a4,80002eb8 <__printf+0x650>
    80002a4c:	02d7f5bb          	remuw	a1,a5,a3
    80002a50:	02059593          	slli	a1,a1,0x20
    80002a54:	0205d593          	srli	a1,a1,0x20
    80002a58:	00bd85b3          	add	a1,s11,a1
    80002a5c:	0005c583          	lbu	a1,0(a1)
    80002a60:	02d7d7bb          	divuw	a5,a5,a3
    80002a64:	f8b40323          	sb	a1,-122(s0)
    80002a68:	3eeaf863          	bgeu	s5,a4,80002e58 <__printf+0x5f0>
    80002a6c:	02d7f5bb          	remuw	a1,a5,a3
    80002a70:	02059593          	slli	a1,a1,0x20
    80002a74:	0205d593          	srli	a1,a1,0x20
    80002a78:	00bd85b3          	add	a1,s11,a1
    80002a7c:	0005c583          	lbu	a1,0(a1)
    80002a80:	02d7d7bb          	divuw	a5,a5,a3
    80002a84:	f8b403a3          	sb	a1,-121(s0)
    80002a88:	42eb7e63          	bgeu	s6,a4,80002ec4 <__printf+0x65c>
    80002a8c:	02d7f5bb          	remuw	a1,a5,a3
    80002a90:	02059593          	slli	a1,a1,0x20
    80002a94:	0205d593          	srli	a1,a1,0x20
    80002a98:	00bd85b3          	add	a1,s11,a1
    80002a9c:	0005c583          	lbu	a1,0(a1)
    80002aa0:	02d7d7bb          	divuw	a5,a5,a3
    80002aa4:	f8b40423          	sb	a1,-120(s0)
    80002aa8:	42ebfc63          	bgeu	s7,a4,80002ee0 <__printf+0x678>
    80002aac:	02079793          	slli	a5,a5,0x20
    80002ab0:	0207d793          	srli	a5,a5,0x20
    80002ab4:	00fd8db3          	add	s11,s11,a5
    80002ab8:	000dc703          	lbu	a4,0(s11)
    80002abc:	00a00793          	li	a5,10
    80002ac0:	00900c93          	li	s9,9
    80002ac4:	f8e404a3          	sb	a4,-119(s0)
    80002ac8:	00065c63          	bgez	a2,80002ae0 <__printf+0x278>
    80002acc:	f9040713          	addi	a4,s0,-112
    80002ad0:	00f70733          	add	a4,a4,a5
    80002ad4:	02d00693          	li	a3,45
    80002ad8:	fed70823          	sb	a3,-16(a4)
    80002adc:	00078c93          	mv	s9,a5
    80002ae0:	f8040793          	addi	a5,s0,-128
    80002ae4:	01978cb3          	add	s9,a5,s9
    80002ae8:	f7f40d13          	addi	s10,s0,-129
    80002aec:	000cc503          	lbu	a0,0(s9)
    80002af0:	fffc8c93          	addi	s9,s9,-1
    80002af4:	00000097          	auipc	ra,0x0
    80002af8:	b90080e7          	jalr	-1136(ra) # 80002684 <consputc>
    80002afc:	ffac98e3          	bne	s9,s10,80002aec <__printf+0x284>
    80002b00:	00094503          	lbu	a0,0(s2)
    80002b04:	e00514e3          	bnez	a0,8000290c <__printf+0xa4>
    80002b08:	1a0c1663          	bnez	s8,80002cb4 <__printf+0x44c>
    80002b0c:	08813083          	ld	ra,136(sp)
    80002b10:	08013403          	ld	s0,128(sp)
    80002b14:	07813483          	ld	s1,120(sp)
    80002b18:	07013903          	ld	s2,112(sp)
    80002b1c:	06813983          	ld	s3,104(sp)
    80002b20:	06013a03          	ld	s4,96(sp)
    80002b24:	05813a83          	ld	s5,88(sp)
    80002b28:	05013b03          	ld	s6,80(sp)
    80002b2c:	04813b83          	ld	s7,72(sp)
    80002b30:	04013c03          	ld	s8,64(sp)
    80002b34:	03813c83          	ld	s9,56(sp)
    80002b38:	03013d03          	ld	s10,48(sp)
    80002b3c:	02813d83          	ld	s11,40(sp)
    80002b40:	0d010113          	addi	sp,sp,208
    80002b44:	00008067          	ret
    80002b48:	07300713          	li	a4,115
    80002b4c:	1ce78a63          	beq	a5,a4,80002d20 <__printf+0x4b8>
    80002b50:	07800713          	li	a4,120
    80002b54:	1ee79e63          	bne	a5,a4,80002d50 <__printf+0x4e8>
    80002b58:	f7843783          	ld	a5,-136(s0)
    80002b5c:	0007a703          	lw	a4,0(a5)
    80002b60:	00878793          	addi	a5,a5,8
    80002b64:	f6f43c23          	sd	a5,-136(s0)
    80002b68:	28074263          	bltz	a4,80002dec <__printf+0x584>
    80002b6c:	00001d97          	auipc	s11,0x1
    80002b70:	6b4d8d93          	addi	s11,s11,1716 # 80004220 <digits>
    80002b74:	00f77793          	andi	a5,a4,15
    80002b78:	00fd87b3          	add	a5,s11,a5
    80002b7c:	0007c683          	lbu	a3,0(a5)
    80002b80:	00f00613          	li	a2,15
    80002b84:	0007079b          	sext.w	a5,a4
    80002b88:	f8d40023          	sb	a3,-128(s0)
    80002b8c:	0047559b          	srliw	a1,a4,0x4
    80002b90:	0047569b          	srliw	a3,a4,0x4
    80002b94:	00000c93          	li	s9,0
    80002b98:	0ee65063          	bge	a2,a4,80002c78 <__printf+0x410>
    80002b9c:	00f6f693          	andi	a3,a3,15
    80002ba0:	00dd86b3          	add	a3,s11,a3
    80002ba4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002ba8:	0087d79b          	srliw	a5,a5,0x8
    80002bac:	00100c93          	li	s9,1
    80002bb0:	f8d400a3          	sb	a3,-127(s0)
    80002bb4:	0cb67263          	bgeu	a2,a1,80002c78 <__printf+0x410>
    80002bb8:	00f7f693          	andi	a3,a5,15
    80002bbc:	00dd86b3          	add	a3,s11,a3
    80002bc0:	0006c583          	lbu	a1,0(a3)
    80002bc4:	00f00613          	li	a2,15
    80002bc8:	0047d69b          	srliw	a3,a5,0x4
    80002bcc:	f8b40123          	sb	a1,-126(s0)
    80002bd0:	0047d593          	srli	a1,a5,0x4
    80002bd4:	28f67e63          	bgeu	a2,a5,80002e70 <__printf+0x608>
    80002bd8:	00f6f693          	andi	a3,a3,15
    80002bdc:	00dd86b3          	add	a3,s11,a3
    80002be0:	0006c503          	lbu	a0,0(a3)
    80002be4:	0087d813          	srli	a6,a5,0x8
    80002be8:	0087d69b          	srliw	a3,a5,0x8
    80002bec:	f8a401a3          	sb	a0,-125(s0)
    80002bf0:	28b67663          	bgeu	a2,a1,80002e7c <__printf+0x614>
    80002bf4:	00f6f693          	andi	a3,a3,15
    80002bf8:	00dd86b3          	add	a3,s11,a3
    80002bfc:	0006c583          	lbu	a1,0(a3)
    80002c00:	00c7d513          	srli	a0,a5,0xc
    80002c04:	00c7d69b          	srliw	a3,a5,0xc
    80002c08:	f8b40223          	sb	a1,-124(s0)
    80002c0c:	29067a63          	bgeu	a2,a6,80002ea0 <__printf+0x638>
    80002c10:	00f6f693          	andi	a3,a3,15
    80002c14:	00dd86b3          	add	a3,s11,a3
    80002c18:	0006c583          	lbu	a1,0(a3)
    80002c1c:	0107d813          	srli	a6,a5,0x10
    80002c20:	0107d69b          	srliw	a3,a5,0x10
    80002c24:	f8b402a3          	sb	a1,-123(s0)
    80002c28:	28a67263          	bgeu	a2,a0,80002eac <__printf+0x644>
    80002c2c:	00f6f693          	andi	a3,a3,15
    80002c30:	00dd86b3          	add	a3,s11,a3
    80002c34:	0006c683          	lbu	a3,0(a3)
    80002c38:	0147d79b          	srliw	a5,a5,0x14
    80002c3c:	f8d40323          	sb	a3,-122(s0)
    80002c40:	21067663          	bgeu	a2,a6,80002e4c <__printf+0x5e4>
    80002c44:	02079793          	slli	a5,a5,0x20
    80002c48:	0207d793          	srli	a5,a5,0x20
    80002c4c:	00fd8db3          	add	s11,s11,a5
    80002c50:	000dc683          	lbu	a3,0(s11)
    80002c54:	00800793          	li	a5,8
    80002c58:	00700c93          	li	s9,7
    80002c5c:	f8d403a3          	sb	a3,-121(s0)
    80002c60:	00075c63          	bgez	a4,80002c78 <__printf+0x410>
    80002c64:	f9040713          	addi	a4,s0,-112
    80002c68:	00f70733          	add	a4,a4,a5
    80002c6c:	02d00693          	li	a3,45
    80002c70:	fed70823          	sb	a3,-16(a4)
    80002c74:	00078c93          	mv	s9,a5
    80002c78:	f8040793          	addi	a5,s0,-128
    80002c7c:	01978cb3          	add	s9,a5,s9
    80002c80:	f7f40d13          	addi	s10,s0,-129
    80002c84:	000cc503          	lbu	a0,0(s9)
    80002c88:	fffc8c93          	addi	s9,s9,-1
    80002c8c:	00000097          	auipc	ra,0x0
    80002c90:	9f8080e7          	jalr	-1544(ra) # 80002684 <consputc>
    80002c94:	ff9d18e3          	bne	s10,s9,80002c84 <__printf+0x41c>
    80002c98:	0100006f          	j	80002ca8 <__printf+0x440>
    80002c9c:	00000097          	auipc	ra,0x0
    80002ca0:	9e8080e7          	jalr	-1560(ra) # 80002684 <consputc>
    80002ca4:	000c8493          	mv	s1,s9
    80002ca8:	00094503          	lbu	a0,0(s2)
    80002cac:	c60510e3          	bnez	a0,8000290c <__printf+0xa4>
    80002cb0:	e40c0ee3          	beqz	s8,80002b0c <__printf+0x2a4>
    80002cb4:	00003517          	auipc	a0,0x3
    80002cb8:	bac50513          	addi	a0,a0,-1108 # 80005860 <pr>
    80002cbc:	00001097          	auipc	ra,0x1
    80002cc0:	94c080e7          	jalr	-1716(ra) # 80003608 <release>
    80002cc4:	e49ff06f          	j	80002b0c <__printf+0x2a4>
    80002cc8:	f7843783          	ld	a5,-136(s0)
    80002ccc:	03000513          	li	a0,48
    80002cd0:	01000d13          	li	s10,16
    80002cd4:	00878713          	addi	a4,a5,8
    80002cd8:	0007bc83          	ld	s9,0(a5)
    80002cdc:	f6e43c23          	sd	a4,-136(s0)
    80002ce0:	00000097          	auipc	ra,0x0
    80002ce4:	9a4080e7          	jalr	-1628(ra) # 80002684 <consputc>
    80002ce8:	07800513          	li	a0,120
    80002cec:	00000097          	auipc	ra,0x0
    80002cf0:	998080e7          	jalr	-1640(ra) # 80002684 <consputc>
    80002cf4:	00001d97          	auipc	s11,0x1
    80002cf8:	52cd8d93          	addi	s11,s11,1324 # 80004220 <digits>
    80002cfc:	03ccd793          	srli	a5,s9,0x3c
    80002d00:	00fd87b3          	add	a5,s11,a5
    80002d04:	0007c503          	lbu	a0,0(a5)
    80002d08:	fffd0d1b          	addiw	s10,s10,-1
    80002d0c:	004c9c93          	slli	s9,s9,0x4
    80002d10:	00000097          	auipc	ra,0x0
    80002d14:	974080e7          	jalr	-1676(ra) # 80002684 <consputc>
    80002d18:	fe0d12e3          	bnez	s10,80002cfc <__printf+0x494>
    80002d1c:	f8dff06f          	j	80002ca8 <__printf+0x440>
    80002d20:	f7843783          	ld	a5,-136(s0)
    80002d24:	0007bc83          	ld	s9,0(a5)
    80002d28:	00878793          	addi	a5,a5,8
    80002d2c:	f6f43c23          	sd	a5,-136(s0)
    80002d30:	000c9a63          	bnez	s9,80002d44 <__printf+0x4dc>
    80002d34:	1080006f          	j	80002e3c <__printf+0x5d4>
    80002d38:	001c8c93          	addi	s9,s9,1
    80002d3c:	00000097          	auipc	ra,0x0
    80002d40:	948080e7          	jalr	-1720(ra) # 80002684 <consputc>
    80002d44:	000cc503          	lbu	a0,0(s9)
    80002d48:	fe0518e3          	bnez	a0,80002d38 <__printf+0x4d0>
    80002d4c:	f5dff06f          	j	80002ca8 <__printf+0x440>
    80002d50:	02500513          	li	a0,37
    80002d54:	00000097          	auipc	ra,0x0
    80002d58:	930080e7          	jalr	-1744(ra) # 80002684 <consputc>
    80002d5c:	000c8513          	mv	a0,s9
    80002d60:	00000097          	auipc	ra,0x0
    80002d64:	924080e7          	jalr	-1756(ra) # 80002684 <consputc>
    80002d68:	f41ff06f          	j	80002ca8 <__printf+0x440>
    80002d6c:	02500513          	li	a0,37
    80002d70:	00000097          	auipc	ra,0x0
    80002d74:	914080e7          	jalr	-1772(ra) # 80002684 <consputc>
    80002d78:	f31ff06f          	j	80002ca8 <__printf+0x440>
    80002d7c:	00030513          	mv	a0,t1
    80002d80:	00000097          	auipc	ra,0x0
    80002d84:	7bc080e7          	jalr	1980(ra) # 8000353c <acquire>
    80002d88:	b4dff06f          	j	800028d4 <__printf+0x6c>
    80002d8c:	40c0053b          	negw	a0,a2
    80002d90:	00a00713          	li	a4,10
    80002d94:	02e576bb          	remuw	a3,a0,a4
    80002d98:	00001d97          	auipc	s11,0x1
    80002d9c:	488d8d93          	addi	s11,s11,1160 # 80004220 <digits>
    80002da0:	ff700593          	li	a1,-9
    80002da4:	02069693          	slli	a3,a3,0x20
    80002da8:	0206d693          	srli	a3,a3,0x20
    80002dac:	00dd86b3          	add	a3,s11,a3
    80002db0:	0006c683          	lbu	a3,0(a3)
    80002db4:	02e557bb          	divuw	a5,a0,a4
    80002db8:	f8d40023          	sb	a3,-128(s0)
    80002dbc:	10b65e63          	bge	a2,a1,80002ed8 <__printf+0x670>
    80002dc0:	06300593          	li	a1,99
    80002dc4:	02e7f6bb          	remuw	a3,a5,a4
    80002dc8:	02069693          	slli	a3,a3,0x20
    80002dcc:	0206d693          	srli	a3,a3,0x20
    80002dd0:	00dd86b3          	add	a3,s11,a3
    80002dd4:	0006c683          	lbu	a3,0(a3)
    80002dd8:	02e7d73b          	divuw	a4,a5,a4
    80002ddc:	00200793          	li	a5,2
    80002de0:	f8d400a3          	sb	a3,-127(s0)
    80002de4:	bca5ece3          	bltu	a1,a0,800029bc <__printf+0x154>
    80002de8:	ce5ff06f          	j	80002acc <__printf+0x264>
    80002dec:	40e007bb          	negw	a5,a4
    80002df0:	00001d97          	auipc	s11,0x1
    80002df4:	430d8d93          	addi	s11,s11,1072 # 80004220 <digits>
    80002df8:	00f7f693          	andi	a3,a5,15
    80002dfc:	00dd86b3          	add	a3,s11,a3
    80002e00:	0006c583          	lbu	a1,0(a3)
    80002e04:	ff100613          	li	a2,-15
    80002e08:	0047d69b          	srliw	a3,a5,0x4
    80002e0c:	f8b40023          	sb	a1,-128(s0)
    80002e10:	0047d59b          	srliw	a1,a5,0x4
    80002e14:	0ac75e63          	bge	a4,a2,80002ed0 <__printf+0x668>
    80002e18:	00f6f693          	andi	a3,a3,15
    80002e1c:	00dd86b3          	add	a3,s11,a3
    80002e20:	0006c603          	lbu	a2,0(a3)
    80002e24:	00f00693          	li	a3,15
    80002e28:	0087d79b          	srliw	a5,a5,0x8
    80002e2c:	f8c400a3          	sb	a2,-127(s0)
    80002e30:	d8b6e4e3          	bltu	a3,a1,80002bb8 <__printf+0x350>
    80002e34:	00200793          	li	a5,2
    80002e38:	e2dff06f          	j	80002c64 <__printf+0x3fc>
    80002e3c:	00001c97          	auipc	s9,0x1
    80002e40:	3c4c8c93          	addi	s9,s9,964 # 80004200 <CONSOLE_STATUS+0x1f0>
    80002e44:	02800513          	li	a0,40
    80002e48:	ef1ff06f          	j	80002d38 <__printf+0x4d0>
    80002e4c:	00700793          	li	a5,7
    80002e50:	00600c93          	li	s9,6
    80002e54:	e0dff06f          	j	80002c60 <__printf+0x3f8>
    80002e58:	00700793          	li	a5,7
    80002e5c:	00600c93          	li	s9,6
    80002e60:	c69ff06f          	j	80002ac8 <__printf+0x260>
    80002e64:	00300793          	li	a5,3
    80002e68:	00200c93          	li	s9,2
    80002e6c:	c5dff06f          	j	80002ac8 <__printf+0x260>
    80002e70:	00300793          	li	a5,3
    80002e74:	00200c93          	li	s9,2
    80002e78:	de9ff06f          	j	80002c60 <__printf+0x3f8>
    80002e7c:	00400793          	li	a5,4
    80002e80:	00300c93          	li	s9,3
    80002e84:	dddff06f          	j	80002c60 <__printf+0x3f8>
    80002e88:	00400793          	li	a5,4
    80002e8c:	00300c93          	li	s9,3
    80002e90:	c39ff06f          	j	80002ac8 <__printf+0x260>
    80002e94:	00500793          	li	a5,5
    80002e98:	00400c93          	li	s9,4
    80002e9c:	c2dff06f          	j	80002ac8 <__printf+0x260>
    80002ea0:	00500793          	li	a5,5
    80002ea4:	00400c93          	li	s9,4
    80002ea8:	db9ff06f          	j	80002c60 <__printf+0x3f8>
    80002eac:	00600793          	li	a5,6
    80002eb0:	00500c93          	li	s9,5
    80002eb4:	dadff06f          	j	80002c60 <__printf+0x3f8>
    80002eb8:	00600793          	li	a5,6
    80002ebc:	00500c93          	li	s9,5
    80002ec0:	c09ff06f          	j	80002ac8 <__printf+0x260>
    80002ec4:	00800793          	li	a5,8
    80002ec8:	00700c93          	li	s9,7
    80002ecc:	bfdff06f          	j	80002ac8 <__printf+0x260>
    80002ed0:	00100793          	li	a5,1
    80002ed4:	d91ff06f          	j	80002c64 <__printf+0x3fc>
    80002ed8:	00100793          	li	a5,1
    80002edc:	bf1ff06f          	j	80002acc <__printf+0x264>
    80002ee0:	00900793          	li	a5,9
    80002ee4:	00800c93          	li	s9,8
    80002ee8:	be1ff06f          	j	80002ac8 <__printf+0x260>
    80002eec:	00001517          	auipc	a0,0x1
    80002ef0:	31c50513          	addi	a0,a0,796 # 80004208 <CONSOLE_STATUS+0x1f8>
    80002ef4:	00000097          	auipc	ra,0x0
    80002ef8:	918080e7          	jalr	-1768(ra) # 8000280c <panic>

0000000080002efc <printfinit>:
    80002efc:	fe010113          	addi	sp,sp,-32
    80002f00:	00813823          	sd	s0,16(sp)
    80002f04:	00913423          	sd	s1,8(sp)
    80002f08:	00113c23          	sd	ra,24(sp)
    80002f0c:	02010413          	addi	s0,sp,32
    80002f10:	00003497          	auipc	s1,0x3
    80002f14:	95048493          	addi	s1,s1,-1712 # 80005860 <pr>
    80002f18:	00048513          	mv	a0,s1
    80002f1c:	00001597          	auipc	a1,0x1
    80002f20:	2fc58593          	addi	a1,a1,764 # 80004218 <CONSOLE_STATUS+0x208>
    80002f24:	00000097          	auipc	ra,0x0
    80002f28:	5f4080e7          	jalr	1524(ra) # 80003518 <initlock>
    80002f2c:	01813083          	ld	ra,24(sp)
    80002f30:	01013403          	ld	s0,16(sp)
    80002f34:	0004ac23          	sw	zero,24(s1)
    80002f38:	00813483          	ld	s1,8(sp)
    80002f3c:	02010113          	addi	sp,sp,32
    80002f40:	00008067          	ret

0000000080002f44 <uartinit>:
    80002f44:	ff010113          	addi	sp,sp,-16
    80002f48:	00813423          	sd	s0,8(sp)
    80002f4c:	01010413          	addi	s0,sp,16
    80002f50:	100007b7          	lui	a5,0x10000
    80002f54:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002f58:	f8000713          	li	a4,-128
    80002f5c:	00e781a3          	sb	a4,3(a5)
    80002f60:	00300713          	li	a4,3
    80002f64:	00e78023          	sb	a4,0(a5)
    80002f68:	000780a3          	sb	zero,1(a5)
    80002f6c:	00e781a3          	sb	a4,3(a5)
    80002f70:	00700693          	li	a3,7
    80002f74:	00d78123          	sb	a3,2(a5)
    80002f78:	00e780a3          	sb	a4,1(a5)
    80002f7c:	00813403          	ld	s0,8(sp)
    80002f80:	01010113          	addi	sp,sp,16
    80002f84:	00008067          	ret

0000000080002f88 <uartputc>:
    80002f88:	00001797          	auipc	a5,0x1
    80002f8c:	6907a783          	lw	a5,1680(a5) # 80004618 <panicked>
    80002f90:	00078463          	beqz	a5,80002f98 <uartputc+0x10>
    80002f94:	0000006f          	j	80002f94 <uartputc+0xc>
    80002f98:	fd010113          	addi	sp,sp,-48
    80002f9c:	02813023          	sd	s0,32(sp)
    80002fa0:	00913c23          	sd	s1,24(sp)
    80002fa4:	01213823          	sd	s2,16(sp)
    80002fa8:	01313423          	sd	s3,8(sp)
    80002fac:	02113423          	sd	ra,40(sp)
    80002fb0:	03010413          	addi	s0,sp,48
    80002fb4:	00001917          	auipc	s2,0x1
    80002fb8:	66c90913          	addi	s2,s2,1644 # 80004620 <uart_tx_r>
    80002fbc:	00093783          	ld	a5,0(s2)
    80002fc0:	00001497          	auipc	s1,0x1
    80002fc4:	66848493          	addi	s1,s1,1640 # 80004628 <uart_tx_w>
    80002fc8:	0004b703          	ld	a4,0(s1)
    80002fcc:	02078693          	addi	a3,a5,32
    80002fd0:	00050993          	mv	s3,a0
    80002fd4:	02e69c63          	bne	a3,a4,8000300c <uartputc+0x84>
    80002fd8:	00001097          	auipc	ra,0x1
    80002fdc:	834080e7          	jalr	-1996(ra) # 8000380c <push_on>
    80002fe0:	00093783          	ld	a5,0(s2)
    80002fe4:	0004b703          	ld	a4,0(s1)
    80002fe8:	02078793          	addi	a5,a5,32
    80002fec:	00e79463          	bne	a5,a4,80002ff4 <uartputc+0x6c>
    80002ff0:	0000006f          	j	80002ff0 <uartputc+0x68>
    80002ff4:	00001097          	auipc	ra,0x1
    80002ff8:	88c080e7          	jalr	-1908(ra) # 80003880 <pop_on>
    80002ffc:	00093783          	ld	a5,0(s2)
    80003000:	0004b703          	ld	a4,0(s1)
    80003004:	02078693          	addi	a3,a5,32
    80003008:	fce688e3          	beq	a3,a4,80002fd8 <uartputc+0x50>
    8000300c:	01f77693          	andi	a3,a4,31
    80003010:	00003597          	auipc	a1,0x3
    80003014:	87058593          	addi	a1,a1,-1936 # 80005880 <uart_tx_buf>
    80003018:	00d586b3          	add	a3,a1,a3
    8000301c:	00170713          	addi	a4,a4,1
    80003020:	01368023          	sb	s3,0(a3)
    80003024:	00e4b023          	sd	a4,0(s1)
    80003028:	10000637          	lui	a2,0x10000
    8000302c:	02f71063          	bne	a4,a5,8000304c <uartputc+0xc4>
    80003030:	0340006f          	j	80003064 <uartputc+0xdc>
    80003034:	00074703          	lbu	a4,0(a4)
    80003038:	00f93023          	sd	a5,0(s2)
    8000303c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003040:	00093783          	ld	a5,0(s2)
    80003044:	0004b703          	ld	a4,0(s1)
    80003048:	00f70e63          	beq	a4,a5,80003064 <uartputc+0xdc>
    8000304c:	00564683          	lbu	a3,5(a2)
    80003050:	01f7f713          	andi	a4,a5,31
    80003054:	00e58733          	add	a4,a1,a4
    80003058:	0206f693          	andi	a3,a3,32
    8000305c:	00178793          	addi	a5,a5,1
    80003060:	fc069ae3          	bnez	a3,80003034 <uartputc+0xac>
    80003064:	02813083          	ld	ra,40(sp)
    80003068:	02013403          	ld	s0,32(sp)
    8000306c:	01813483          	ld	s1,24(sp)
    80003070:	01013903          	ld	s2,16(sp)
    80003074:	00813983          	ld	s3,8(sp)
    80003078:	03010113          	addi	sp,sp,48
    8000307c:	00008067          	ret

0000000080003080 <uartputc_sync>:
    80003080:	ff010113          	addi	sp,sp,-16
    80003084:	00813423          	sd	s0,8(sp)
    80003088:	01010413          	addi	s0,sp,16
    8000308c:	00001717          	auipc	a4,0x1
    80003090:	58c72703          	lw	a4,1420(a4) # 80004618 <panicked>
    80003094:	02071663          	bnez	a4,800030c0 <uartputc_sync+0x40>
    80003098:	00050793          	mv	a5,a0
    8000309c:	100006b7          	lui	a3,0x10000
    800030a0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800030a4:	02077713          	andi	a4,a4,32
    800030a8:	fe070ce3          	beqz	a4,800030a0 <uartputc_sync+0x20>
    800030ac:	0ff7f793          	andi	a5,a5,255
    800030b0:	00f68023          	sb	a5,0(a3)
    800030b4:	00813403          	ld	s0,8(sp)
    800030b8:	01010113          	addi	sp,sp,16
    800030bc:	00008067          	ret
    800030c0:	0000006f          	j	800030c0 <uartputc_sync+0x40>

00000000800030c4 <uartstart>:
    800030c4:	ff010113          	addi	sp,sp,-16
    800030c8:	00813423          	sd	s0,8(sp)
    800030cc:	01010413          	addi	s0,sp,16
    800030d0:	00001617          	auipc	a2,0x1
    800030d4:	55060613          	addi	a2,a2,1360 # 80004620 <uart_tx_r>
    800030d8:	00001517          	auipc	a0,0x1
    800030dc:	55050513          	addi	a0,a0,1360 # 80004628 <uart_tx_w>
    800030e0:	00063783          	ld	a5,0(a2)
    800030e4:	00053703          	ld	a4,0(a0)
    800030e8:	04f70263          	beq	a4,a5,8000312c <uartstart+0x68>
    800030ec:	100005b7          	lui	a1,0x10000
    800030f0:	00002817          	auipc	a6,0x2
    800030f4:	79080813          	addi	a6,a6,1936 # 80005880 <uart_tx_buf>
    800030f8:	01c0006f          	j	80003114 <uartstart+0x50>
    800030fc:	0006c703          	lbu	a4,0(a3)
    80003100:	00f63023          	sd	a5,0(a2)
    80003104:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003108:	00063783          	ld	a5,0(a2)
    8000310c:	00053703          	ld	a4,0(a0)
    80003110:	00f70e63          	beq	a4,a5,8000312c <uartstart+0x68>
    80003114:	01f7f713          	andi	a4,a5,31
    80003118:	00e806b3          	add	a3,a6,a4
    8000311c:	0055c703          	lbu	a4,5(a1)
    80003120:	00178793          	addi	a5,a5,1
    80003124:	02077713          	andi	a4,a4,32
    80003128:	fc071ae3          	bnez	a4,800030fc <uartstart+0x38>
    8000312c:	00813403          	ld	s0,8(sp)
    80003130:	01010113          	addi	sp,sp,16
    80003134:	00008067          	ret

0000000080003138 <uartgetc>:
    80003138:	ff010113          	addi	sp,sp,-16
    8000313c:	00813423          	sd	s0,8(sp)
    80003140:	01010413          	addi	s0,sp,16
    80003144:	10000737          	lui	a4,0x10000
    80003148:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000314c:	0017f793          	andi	a5,a5,1
    80003150:	00078c63          	beqz	a5,80003168 <uartgetc+0x30>
    80003154:	00074503          	lbu	a0,0(a4)
    80003158:	0ff57513          	andi	a0,a0,255
    8000315c:	00813403          	ld	s0,8(sp)
    80003160:	01010113          	addi	sp,sp,16
    80003164:	00008067          	ret
    80003168:	fff00513          	li	a0,-1
    8000316c:	ff1ff06f          	j	8000315c <uartgetc+0x24>

0000000080003170 <uartintr>:
    80003170:	100007b7          	lui	a5,0x10000
    80003174:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003178:	0017f793          	andi	a5,a5,1
    8000317c:	0a078463          	beqz	a5,80003224 <uartintr+0xb4>
    80003180:	fe010113          	addi	sp,sp,-32
    80003184:	00813823          	sd	s0,16(sp)
    80003188:	00913423          	sd	s1,8(sp)
    8000318c:	00113c23          	sd	ra,24(sp)
    80003190:	02010413          	addi	s0,sp,32
    80003194:	100004b7          	lui	s1,0x10000
    80003198:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000319c:	0ff57513          	andi	a0,a0,255
    800031a0:	fffff097          	auipc	ra,0xfffff
    800031a4:	534080e7          	jalr	1332(ra) # 800026d4 <consoleintr>
    800031a8:	0054c783          	lbu	a5,5(s1)
    800031ac:	0017f793          	andi	a5,a5,1
    800031b0:	fe0794e3          	bnez	a5,80003198 <uartintr+0x28>
    800031b4:	00001617          	auipc	a2,0x1
    800031b8:	46c60613          	addi	a2,a2,1132 # 80004620 <uart_tx_r>
    800031bc:	00001517          	auipc	a0,0x1
    800031c0:	46c50513          	addi	a0,a0,1132 # 80004628 <uart_tx_w>
    800031c4:	00063783          	ld	a5,0(a2)
    800031c8:	00053703          	ld	a4,0(a0)
    800031cc:	04f70263          	beq	a4,a5,80003210 <uartintr+0xa0>
    800031d0:	100005b7          	lui	a1,0x10000
    800031d4:	00002817          	auipc	a6,0x2
    800031d8:	6ac80813          	addi	a6,a6,1708 # 80005880 <uart_tx_buf>
    800031dc:	01c0006f          	j	800031f8 <uartintr+0x88>
    800031e0:	0006c703          	lbu	a4,0(a3)
    800031e4:	00f63023          	sd	a5,0(a2)
    800031e8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800031ec:	00063783          	ld	a5,0(a2)
    800031f0:	00053703          	ld	a4,0(a0)
    800031f4:	00f70e63          	beq	a4,a5,80003210 <uartintr+0xa0>
    800031f8:	01f7f713          	andi	a4,a5,31
    800031fc:	00e806b3          	add	a3,a6,a4
    80003200:	0055c703          	lbu	a4,5(a1)
    80003204:	00178793          	addi	a5,a5,1
    80003208:	02077713          	andi	a4,a4,32
    8000320c:	fc071ae3          	bnez	a4,800031e0 <uartintr+0x70>
    80003210:	01813083          	ld	ra,24(sp)
    80003214:	01013403          	ld	s0,16(sp)
    80003218:	00813483          	ld	s1,8(sp)
    8000321c:	02010113          	addi	sp,sp,32
    80003220:	00008067          	ret
    80003224:	00001617          	auipc	a2,0x1
    80003228:	3fc60613          	addi	a2,a2,1020 # 80004620 <uart_tx_r>
    8000322c:	00001517          	auipc	a0,0x1
    80003230:	3fc50513          	addi	a0,a0,1020 # 80004628 <uart_tx_w>
    80003234:	00063783          	ld	a5,0(a2)
    80003238:	00053703          	ld	a4,0(a0)
    8000323c:	04f70263          	beq	a4,a5,80003280 <uartintr+0x110>
    80003240:	100005b7          	lui	a1,0x10000
    80003244:	00002817          	auipc	a6,0x2
    80003248:	63c80813          	addi	a6,a6,1596 # 80005880 <uart_tx_buf>
    8000324c:	01c0006f          	j	80003268 <uartintr+0xf8>
    80003250:	0006c703          	lbu	a4,0(a3)
    80003254:	00f63023          	sd	a5,0(a2)
    80003258:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000325c:	00063783          	ld	a5,0(a2)
    80003260:	00053703          	ld	a4,0(a0)
    80003264:	02f70063          	beq	a4,a5,80003284 <uartintr+0x114>
    80003268:	01f7f713          	andi	a4,a5,31
    8000326c:	00e806b3          	add	a3,a6,a4
    80003270:	0055c703          	lbu	a4,5(a1)
    80003274:	00178793          	addi	a5,a5,1
    80003278:	02077713          	andi	a4,a4,32
    8000327c:	fc071ae3          	bnez	a4,80003250 <uartintr+0xe0>
    80003280:	00008067          	ret
    80003284:	00008067          	ret

0000000080003288 <kinit>:
    80003288:	fc010113          	addi	sp,sp,-64
    8000328c:	02913423          	sd	s1,40(sp)
    80003290:	fffff7b7          	lui	a5,0xfffff
    80003294:	00003497          	auipc	s1,0x3
    80003298:	60b48493          	addi	s1,s1,1547 # 8000689f <end+0xfff>
    8000329c:	02813823          	sd	s0,48(sp)
    800032a0:	01313c23          	sd	s3,24(sp)
    800032a4:	00f4f4b3          	and	s1,s1,a5
    800032a8:	02113c23          	sd	ra,56(sp)
    800032ac:	03213023          	sd	s2,32(sp)
    800032b0:	01413823          	sd	s4,16(sp)
    800032b4:	01513423          	sd	s5,8(sp)
    800032b8:	04010413          	addi	s0,sp,64
    800032bc:	000017b7          	lui	a5,0x1
    800032c0:	01100993          	li	s3,17
    800032c4:	00f487b3          	add	a5,s1,a5
    800032c8:	01b99993          	slli	s3,s3,0x1b
    800032cc:	06f9e063          	bltu	s3,a5,8000332c <kinit+0xa4>
    800032d0:	00002a97          	auipc	s5,0x2
    800032d4:	5d0a8a93          	addi	s5,s5,1488 # 800058a0 <end>
    800032d8:	0754ec63          	bltu	s1,s5,80003350 <kinit+0xc8>
    800032dc:	0734fa63          	bgeu	s1,s3,80003350 <kinit+0xc8>
    800032e0:	00088a37          	lui	s4,0x88
    800032e4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800032e8:	00001917          	auipc	s2,0x1
    800032ec:	34890913          	addi	s2,s2,840 # 80004630 <kmem>
    800032f0:	00ca1a13          	slli	s4,s4,0xc
    800032f4:	0140006f          	j	80003308 <kinit+0x80>
    800032f8:	000017b7          	lui	a5,0x1
    800032fc:	00f484b3          	add	s1,s1,a5
    80003300:	0554e863          	bltu	s1,s5,80003350 <kinit+0xc8>
    80003304:	0534f663          	bgeu	s1,s3,80003350 <kinit+0xc8>
    80003308:	00001637          	lui	a2,0x1
    8000330c:	00100593          	li	a1,1
    80003310:	00048513          	mv	a0,s1
    80003314:	00000097          	auipc	ra,0x0
    80003318:	5e4080e7          	jalr	1508(ra) # 800038f8 <__memset>
    8000331c:	00093783          	ld	a5,0(s2)
    80003320:	00f4b023          	sd	a5,0(s1)
    80003324:	00993023          	sd	s1,0(s2)
    80003328:	fd4498e3          	bne	s1,s4,800032f8 <kinit+0x70>
    8000332c:	03813083          	ld	ra,56(sp)
    80003330:	03013403          	ld	s0,48(sp)
    80003334:	02813483          	ld	s1,40(sp)
    80003338:	02013903          	ld	s2,32(sp)
    8000333c:	01813983          	ld	s3,24(sp)
    80003340:	01013a03          	ld	s4,16(sp)
    80003344:	00813a83          	ld	s5,8(sp)
    80003348:	04010113          	addi	sp,sp,64
    8000334c:	00008067          	ret
    80003350:	00001517          	auipc	a0,0x1
    80003354:	ee850513          	addi	a0,a0,-280 # 80004238 <digits+0x18>
    80003358:	fffff097          	auipc	ra,0xfffff
    8000335c:	4b4080e7          	jalr	1204(ra) # 8000280c <panic>

0000000080003360 <freerange>:
    80003360:	fc010113          	addi	sp,sp,-64
    80003364:	000017b7          	lui	a5,0x1
    80003368:	02913423          	sd	s1,40(sp)
    8000336c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003370:	009504b3          	add	s1,a0,s1
    80003374:	fffff537          	lui	a0,0xfffff
    80003378:	02813823          	sd	s0,48(sp)
    8000337c:	02113c23          	sd	ra,56(sp)
    80003380:	03213023          	sd	s2,32(sp)
    80003384:	01313c23          	sd	s3,24(sp)
    80003388:	01413823          	sd	s4,16(sp)
    8000338c:	01513423          	sd	s5,8(sp)
    80003390:	01613023          	sd	s6,0(sp)
    80003394:	04010413          	addi	s0,sp,64
    80003398:	00a4f4b3          	and	s1,s1,a0
    8000339c:	00f487b3          	add	a5,s1,a5
    800033a0:	06f5e463          	bltu	a1,a5,80003408 <freerange+0xa8>
    800033a4:	00002a97          	auipc	s5,0x2
    800033a8:	4fca8a93          	addi	s5,s5,1276 # 800058a0 <end>
    800033ac:	0954e263          	bltu	s1,s5,80003430 <freerange+0xd0>
    800033b0:	01100993          	li	s3,17
    800033b4:	01b99993          	slli	s3,s3,0x1b
    800033b8:	0734fc63          	bgeu	s1,s3,80003430 <freerange+0xd0>
    800033bc:	00058a13          	mv	s4,a1
    800033c0:	00001917          	auipc	s2,0x1
    800033c4:	27090913          	addi	s2,s2,624 # 80004630 <kmem>
    800033c8:	00002b37          	lui	s6,0x2
    800033cc:	0140006f          	j	800033e0 <freerange+0x80>
    800033d0:	000017b7          	lui	a5,0x1
    800033d4:	00f484b3          	add	s1,s1,a5
    800033d8:	0554ec63          	bltu	s1,s5,80003430 <freerange+0xd0>
    800033dc:	0534fa63          	bgeu	s1,s3,80003430 <freerange+0xd0>
    800033e0:	00001637          	lui	a2,0x1
    800033e4:	00100593          	li	a1,1
    800033e8:	00048513          	mv	a0,s1
    800033ec:	00000097          	auipc	ra,0x0
    800033f0:	50c080e7          	jalr	1292(ra) # 800038f8 <__memset>
    800033f4:	00093703          	ld	a4,0(s2)
    800033f8:	016487b3          	add	a5,s1,s6
    800033fc:	00e4b023          	sd	a4,0(s1)
    80003400:	00993023          	sd	s1,0(s2)
    80003404:	fcfa76e3          	bgeu	s4,a5,800033d0 <freerange+0x70>
    80003408:	03813083          	ld	ra,56(sp)
    8000340c:	03013403          	ld	s0,48(sp)
    80003410:	02813483          	ld	s1,40(sp)
    80003414:	02013903          	ld	s2,32(sp)
    80003418:	01813983          	ld	s3,24(sp)
    8000341c:	01013a03          	ld	s4,16(sp)
    80003420:	00813a83          	ld	s5,8(sp)
    80003424:	00013b03          	ld	s6,0(sp)
    80003428:	04010113          	addi	sp,sp,64
    8000342c:	00008067          	ret
    80003430:	00001517          	auipc	a0,0x1
    80003434:	e0850513          	addi	a0,a0,-504 # 80004238 <digits+0x18>
    80003438:	fffff097          	auipc	ra,0xfffff
    8000343c:	3d4080e7          	jalr	980(ra) # 8000280c <panic>

0000000080003440 <kfree>:
    80003440:	fe010113          	addi	sp,sp,-32
    80003444:	00813823          	sd	s0,16(sp)
    80003448:	00113c23          	sd	ra,24(sp)
    8000344c:	00913423          	sd	s1,8(sp)
    80003450:	02010413          	addi	s0,sp,32
    80003454:	03451793          	slli	a5,a0,0x34
    80003458:	04079c63          	bnez	a5,800034b0 <kfree+0x70>
    8000345c:	00002797          	auipc	a5,0x2
    80003460:	44478793          	addi	a5,a5,1092 # 800058a0 <end>
    80003464:	00050493          	mv	s1,a0
    80003468:	04f56463          	bltu	a0,a5,800034b0 <kfree+0x70>
    8000346c:	01100793          	li	a5,17
    80003470:	01b79793          	slli	a5,a5,0x1b
    80003474:	02f57e63          	bgeu	a0,a5,800034b0 <kfree+0x70>
    80003478:	00001637          	lui	a2,0x1
    8000347c:	00100593          	li	a1,1
    80003480:	00000097          	auipc	ra,0x0
    80003484:	478080e7          	jalr	1144(ra) # 800038f8 <__memset>
    80003488:	00001797          	auipc	a5,0x1
    8000348c:	1a878793          	addi	a5,a5,424 # 80004630 <kmem>
    80003490:	0007b703          	ld	a4,0(a5)
    80003494:	01813083          	ld	ra,24(sp)
    80003498:	01013403          	ld	s0,16(sp)
    8000349c:	00e4b023          	sd	a4,0(s1)
    800034a0:	0097b023          	sd	s1,0(a5)
    800034a4:	00813483          	ld	s1,8(sp)
    800034a8:	02010113          	addi	sp,sp,32
    800034ac:	00008067          	ret
    800034b0:	00001517          	auipc	a0,0x1
    800034b4:	d8850513          	addi	a0,a0,-632 # 80004238 <digits+0x18>
    800034b8:	fffff097          	auipc	ra,0xfffff
    800034bc:	354080e7          	jalr	852(ra) # 8000280c <panic>

00000000800034c0 <kalloc>:
    800034c0:	fe010113          	addi	sp,sp,-32
    800034c4:	00813823          	sd	s0,16(sp)
    800034c8:	00913423          	sd	s1,8(sp)
    800034cc:	00113c23          	sd	ra,24(sp)
    800034d0:	02010413          	addi	s0,sp,32
    800034d4:	00001797          	auipc	a5,0x1
    800034d8:	15c78793          	addi	a5,a5,348 # 80004630 <kmem>
    800034dc:	0007b483          	ld	s1,0(a5)
    800034e0:	02048063          	beqz	s1,80003500 <kalloc+0x40>
    800034e4:	0004b703          	ld	a4,0(s1)
    800034e8:	00001637          	lui	a2,0x1
    800034ec:	00500593          	li	a1,5
    800034f0:	00048513          	mv	a0,s1
    800034f4:	00e7b023          	sd	a4,0(a5)
    800034f8:	00000097          	auipc	ra,0x0
    800034fc:	400080e7          	jalr	1024(ra) # 800038f8 <__memset>
    80003500:	01813083          	ld	ra,24(sp)
    80003504:	01013403          	ld	s0,16(sp)
    80003508:	00048513          	mv	a0,s1
    8000350c:	00813483          	ld	s1,8(sp)
    80003510:	02010113          	addi	sp,sp,32
    80003514:	00008067          	ret

0000000080003518 <initlock>:
    80003518:	ff010113          	addi	sp,sp,-16
    8000351c:	00813423          	sd	s0,8(sp)
    80003520:	01010413          	addi	s0,sp,16
    80003524:	00813403          	ld	s0,8(sp)
    80003528:	00b53423          	sd	a1,8(a0)
    8000352c:	00052023          	sw	zero,0(a0)
    80003530:	00053823          	sd	zero,16(a0)
    80003534:	01010113          	addi	sp,sp,16
    80003538:	00008067          	ret

000000008000353c <acquire>:
    8000353c:	fe010113          	addi	sp,sp,-32
    80003540:	00813823          	sd	s0,16(sp)
    80003544:	00913423          	sd	s1,8(sp)
    80003548:	00113c23          	sd	ra,24(sp)
    8000354c:	01213023          	sd	s2,0(sp)
    80003550:	02010413          	addi	s0,sp,32
    80003554:	00050493          	mv	s1,a0
    80003558:	10002973          	csrr	s2,sstatus
    8000355c:	100027f3          	csrr	a5,sstatus
    80003560:	ffd7f793          	andi	a5,a5,-3
    80003564:	10079073          	csrw	sstatus,a5
    80003568:	fffff097          	auipc	ra,0xfffff
    8000356c:	8e0080e7          	jalr	-1824(ra) # 80001e48 <mycpu>
    80003570:	07852783          	lw	a5,120(a0)
    80003574:	06078e63          	beqz	a5,800035f0 <acquire+0xb4>
    80003578:	fffff097          	auipc	ra,0xfffff
    8000357c:	8d0080e7          	jalr	-1840(ra) # 80001e48 <mycpu>
    80003580:	07852783          	lw	a5,120(a0)
    80003584:	0004a703          	lw	a4,0(s1)
    80003588:	0017879b          	addiw	a5,a5,1
    8000358c:	06f52c23          	sw	a5,120(a0)
    80003590:	04071063          	bnez	a4,800035d0 <acquire+0x94>
    80003594:	00100713          	li	a4,1
    80003598:	00070793          	mv	a5,a4
    8000359c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800035a0:	0007879b          	sext.w	a5,a5
    800035a4:	fe079ae3          	bnez	a5,80003598 <acquire+0x5c>
    800035a8:	0ff0000f          	fence
    800035ac:	fffff097          	auipc	ra,0xfffff
    800035b0:	89c080e7          	jalr	-1892(ra) # 80001e48 <mycpu>
    800035b4:	01813083          	ld	ra,24(sp)
    800035b8:	01013403          	ld	s0,16(sp)
    800035bc:	00a4b823          	sd	a0,16(s1)
    800035c0:	00013903          	ld	s2,0(sp)
    800035c4:	00813483          	ld	s1,8(sp)
    800035c8:	02010113          	addi	sp,sp,32
    800035cc:	00008067          	ret
    800035d0:	0104b903          	ld	s2,16(s1)
    800035d4:	fffff097          	auipc	ra,0xfffff
    800035d8:	874080e7          	jalr	-1932(ra) # 80001e48 <mycpu>
    800035dc:	faa91ce3          	bne	s2,a0,80003594 <acquire+0x58>
    800035e0:	00001517          	auipc	a0,0x1
    800035e4:	c6050513          	addi	a0,a0,-928 # 80004240 <digits+0x20>
    800035e8:	fffff097          	auipc	ra,0xfffff
    800035ec:	224080e7          	jalr	548(ra) # 8000280c <panic>
    800035f0:	00195913          	srli	s2,s2,0x1
    800035f4:	fffff097          	auipc	ra,0xfffff
    800035f8:	854080e7          	jalr	-1964(ra) # 80001e48 <mycpu>
    800035fc:	00197913          	andi	s2,s2,1
    80003600:	07252e23          	sw	s2,124(a0)
    80003604:	f75ff06f          	j	80003578 <acquire+0x3c>

0000000080003608 <release>:
    80003608:	fe010113          	addi	sp,sp,-32
    8000360c:	00813823          	sd	s0,16(sp)
    80003610:	00113c23          	sd	ra,24(sp)
    80003614:	00913423          	sd	s1,8(sp)
    80003618:	01213023          	sd	s2,0(sp)
    8000361c:	02010413          	addi	s0,sp,32
    80003620:	00052783          	lw	a5,0(a0)
    80003624:	00079a63          	bnez	a5,80003638 <release+0x30>
    80003628:	00001517          	auipc	a0,0x1
    8000362c:	c2050513          	addi	a0,a0,-992 # 80004248 <digits+0x28>
    80003630:	fffff097          	auipc	ra,0xfffff
    80003634:	1dc080e7          	jalr	476(ra) # 8000280c <panic>
    80003638:	01053903          	ld	s2,16(a0)
    8000363c:	00050493          	mv	s1,a0
    80003640:	fffff097          	auipc	ra,0xfffff
    80003644:	808080e7          	jalr	-2040(ra) # 80001e48 <mycpu>
    80003648:	fea910e3          	bne	s2,a0,80003628 <release+0x20>
    8000364c:	0004b823          	sd	zero,16(s1)
    80003650:	0ff0000f          	fence
    80003654:	0f50000f          	fence	iorw,ow
    80003658:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000365c:	ffffe097          	auipc	ra,0xffffe
    80003660:	7ec080e7          	jalr	2028(ra) # 80001e48 <mycpu>
    80003664:	100027f3          	csrr	a5,sstatus
    80003668:	0027f793          	andi	a5,a5,2
    8000366c:	04079a63          	bnez	a5,800036c0 <release+0xb8>
    80003670:	07852783          	lw	a5,120(a0)
    80003674:	02f05e63          	blez	a5,800036b0 <release+0xa8>
    80003678:	fff7871b          	addiw	a4,a5,-1
    8000367c:	06e52c23          	sw	a4,120(a0)
    80003680:	00071c63          	bnez	a4,80003698 <release+0x90>
    80003684:	07c52783          	lw	a5,124(a0)
    80003688:	00078863          	beqz	a5,80003698 <release+0x90>
    8000368c:	100027f3          	csrr	a5,sstatus
    80003690:	0027e793          	ori	a5,a5,2
    80003694:	10079073          	csrw	sstatus,a5
    80003698:	01813083          	ld	ra,24(sp)
    8000369c:	01013403          	ld	s0,16(sp)
    800036a0:	00813483          	ld	s1,8(sp)
    800036a4:	00013903          	ld	s2,0(sp)
    800036a8:	02010113          	addi	sp,sp,32
    800036ac:	00008067          	ret
    800036b0:	00001517          	auipc	a0,0x1
    800036b4:	bb850513          	addi	a0,a0,-1096 # 80004268 <digits+0x48>
    800036b8:	fffff097          	auipc	ra,0xfffff
    800036bc:	154080e7          	jalr	340(ra) # 8000280c <panic>
    800036c0:	00001517          	auipc	a0,0x1
    800036c4:	b9050513          	addi	a0,a0,-1136 # 80004250 <digits+0x30>
    800036c8:	fffff097          	auipc	ra,0xfffff
    800036cc:	144080e7          	jalr	324(ra) # 8000280c <panic>

00000000800036d0 <holding>:
    800036d0:	00052783          	lw	a5,0(a0)
    800036d4:	00079663          	bnez	a5,800036e0 <holding+0x10>
    800036d8:	00000513          	li	a0,0
    800036dc:	00008067          	ret
    800036e0:	fe010113          	addi	sp,sp,-32
    800036e4:	00813823          	sd	s0,16(sp)
    800036e8:	00913423          	sd	s1,8(sp)
    800036ec:	00113c23          	sd	ra,24(sp)
    800036f0:	02010413          	addi	s0,sp,32
    800036f4:	01053483          	ld	s1,16(a0)
    800036f8:	ffffe097          	auipc	ra,0xffffe
    800036fc:	750080e7          	jalr	1872(ra) # 80001e48 <mycpu>
    80003700:	01813083          	ld	ra,24(sp)
    80003704:	01013403          	ld	s0,16(sp)
    80003708:	40a48533          	sub	a0,s1,a0
    8000370c:	00153513          	seqz	a0,a0
    80003710:	00813483          	ld	s1,8(sp)
    80003714:	02010113          	addi	sp,sp,32
    80003718:	00008067          	ret

000000008000371c <push_off>:
    8000371c:	fe010113          	addi	sp,sp,-32
    80003720:	00813823          	sd	s0,16(sp)
    80003724:	00113c23          	sd	ra,24(sp)
    80003728:	00913423          	sd	s1,8(sp)
    8000372c:	02010413          	addi	s0,sp,32
    80003730:	100024f3          	csrr	s1,sstatus
    80003734:	100027f3          	csrr	a5,sstatus
    80003738:	ffd7f793          	andi	a5,a5,-3
    8000373c:	10079073          	csrw	sstatus,a5
    80003740:	ffffe097          	auipc	ra,0xffffe
    80003744:	708080e7          	jalr	1800(ra) # 80001e48 <mycpu>
    80003748:	07852783          	lw	a5,120(a0)
    8000374c:	02078663          	beqz	a5,80003778 <push_off+0x5c>
    80003750:	ffffe097          	auipc	ra,0xffffe
    80003754:	6f8080e7          	jalr	1784(ra) # 80001e48 <mycpu>
    80003758:	07852783          	lw	a5,120(a0)
    8000375c:	01813083          	ld	ra,24(sp)
    80003760:	01013403          	ld	s0,16(sp)
    80003764:	0017879b          	addiw	a5,a5,1
    80003768:	06f52c23          	sw	a5,120(a0)
    8000376c:	00813483          	ld	s1,8(sp)
    80003770:	02010113          	addi	sp,sp,32
    80003774:	00008067          	ret
    80003778:	0014d493          	srli	s1,s1,0x1
    8000377c:	ffffe097          	auipc	ra,0xffffe
    80003780:	6cc080e7          	jalr	1740(ra) # 80001e48 <mycpu>
    80003784:	0014f493          	andi	s1,s1,1
    80003788:	06952e23          	sw	s1,124(a0)
    8000378c:	fc5ff06f          	j	80003750 <push_off+0x34>

0000000080003790 <pop_off>:
    80003790:	ff010113          	addi	sp,sp,-16
    80003794:	00813023          	sd	s0,0(sp)
    80003798:	00113423          	sd	ra,8(sp)
    8000379c:	01010413          	addi	s0,sp,16
    800037a0:	ffffe097          	auipc	ra,0xffffe
    800037a4:	6a8080e7          	jalr	1704(ra) # 80001e48 <mycpu>
    800037a8:	100027f3          	csrr	a5,sstatus
    800037ac:	0027f793          	andi	a5,a5,2
    800037b0:	04079663          	bnez	a5,800037fc <pop_off+0x6c>
    800037b4:	07852783          	lw	a5,120(a0)
    800037b8:	02f05a63          	blez	a5,800037ec <pop_off+0x5c>
    800037bc:	fff7871b          	addiw	a4,a5,-1
    800037c0:	06e52c23          	sw	a4,120(a0)
    800037c4:	00071c63          	bnez	a4,800037dc <pop_off+0x4c>
    800037c8:	07c52783          	lw	a5,124(a0)
    800037cc:	00078863          	beqz	a5,800037dc <pop_off+0x4c>
    800037d0:	100027f3          	csrr	a5,sstatus
    800037d4:	0027e793          	ori	a5,a5,2
    800037d8:	10079073          	csrw	sstatus,a5
    800037dc:	00813083          	ld	ra,8(sp)
    800037e0:	00013403          	ld	s0,0(sp)
    800037e4:	01010113          	addi	sp,sp,16
    800037e8:	00008067          	ret
    800037ec:	00001517          	auipc	a0,0x1
    800037f0:	a7c50513          	addi	a0,a0,-1412 # 80004268 <digits+0x48>
    800037f4:	fffff097          	auipc	ra,0xfffff
    800037f8:	018080e7          	jalr	24(ra) # 8000280c <panic>
    800037fc:	00001517          	auipc	a0,0x1
    80003800:	a5450513          	addi	a0,a0,-1452 # 80004250 <digits+0x30>
    80003804:	fffff097          	auipc	ra,0xfffff
    80003808:	008080e7          	jalr	8(ra) # 8000280c <panic>

000000008000380c <push_on>:
    8000380c:	fe010113          	addi	sp,sp,-32
    80003810:	00813823          	sd	s0,16(sp)
    80003814:	00113c23          	sd	ra,24(sp)
    80003818:	00913423          	sd	s1,8(sp)
    8000381c:	02010413          	addi	s0,sp,32
    80003820:	100024f3          	csrr	s1,sstatus
    80003824:	100027f3          	csrr	a5,sstatus
    80003828:	0027e793          	ori	a5,a5,2
    8000382c:	10079073          	csrw	sstatus,a5
    80003830:	ffffe097          	auipc	ra,0xffffe
    80003834:	618080e7          	jalr	1560(ra) # 80001e48 <mycpu>
    80003838:	07852783          	lw	a5,120(a0)
    8000383c:	02078663          	beqz	a5,80003868 <push_on+0x5c>
    80003840:	ffffe097          	auipc	ra,0xffffe
    80003844:	608080e7          	jalr	1544(ra) # 80001e48 <mycpu>
    80003848:	07852783          	lw	a5,120(a0)
    8000384c:	01813083          	ld	ra,24(sp)
    80003850:	01013403          	ld	s0,16(sp)
    80003854:	0017879b          	addiw	a5,a5,1
    80003858:	06f52c23          	sw	a5,120(a0)
    8000385c:	00813483          	ld	s1,8(sp)
    80003860:	02010113          	addi	sp,sp,32
    80003864:	00008067          	ret
    80003868:	0014d493          	srli	s1,s1,0x1
    8000386c:	ffffe097          	auipc	ra,0xffffe
    80003870:	5dc080e7          	jalr	1500(ra) # 80001e48 <mycpu>
    80003874:	0014f493          	andi	s1,s1,1
    80003878:	06952e23          	sw	s1,124(a0)
    8000387c:	fc5ff06f          	j	80003840 <push_on+0x34>

0000000080003880 <pop_on>:
    80003880:	ff010113          	addi	sp,sp,-16
    80003884:	00813023          	sd	s0,0(sp)
    80003888:	00113423          	sd	ra,8(sp)
    8000388c:	01010413          	addi	s0,sp,16
    80003890:	ffffe097          	auipc	ra,0xffffe
    80003894:	5b8080e7          	jalr	1464(ra) # 80001e48 <mycpu>
    80003898:	100027f3          	csrr	a5,sstatus
    8000389c:	0027f793          	andi	a5,a5,2
    800038a0:	04078463          	beqz	a5,800038e8 <pop_on+0x68>
    800038a4:	07852783          	lw	a5,120(a0)
    800038a8:	02f05863          	blez	a5,800038d8 <pop_on+0x58>
    800038ac:	fff7879b          	addiw	a5,a5,-1
    800038b0:	06f52c23          	sw	a5,120(a0)
    800038b4:	07853783          	ld	a5,120(a0)
    800038b8:	00079863          	bnez	a5,800038c8 <pop_on+0x48>
    800038bc:	100027f3          	csrr	a5,sstatus
    800038c0:	ffd7f793          	andi	a5,a5,-3
    800038c4:	10079073          	csrw	sstatus,a5
    800038c8:	00813083          	ld	ra,8(sp)
    800038cc:	00013403          	ld	s0,0(sp)
    800038d0:	01010113          	addi	sp,sp,16
    800038d4:	00008067          	ret
    800038d8:	00001517          	auipc	a0,0x1
    800038dc:	9b850513          	addi	a0,a0,-1608 # 80004290 <digits+0x70>
    800038e0:	fffff097          	auipc	ra,0xfffff
    800038e4:	f2c080e7          	jalr	-212(ra) # 8000280c <panic>
    800038e8:	00001517          	auipc	a0,0x1
    800038ec:	98850513          	addi	a0,a0,-1656 # 80004270 <digits+0x50>
    800038f0:	fffff097          	auipc	ra,0xfffff
    800038f4:	f1c080e7          	jalr	-228(ra) # 8000280c <panic>

00000000800038f8 <__memset>:
    800038f8:	ff010113          	addi	sp,sp,-16
    800038fc:	00813423          	sd	s0,8(sp)
    80003900:	01010413          	addi	s0,sp,16
    80003904:	1a060e63          	beqz	a2,80003ac0 <__memset+0x1c8>
    80003908:	40a007b3          	neg	a5,a0
    8000390c:	0077f793          	andi	a5,a5,7
    80003910:	00778693          	addi	a3,a5,7
    80003914:	00b00813          	li	a6,11
    80003918:	0ff5f593          	andi	a1,a1,255
    8000391c:	fff6071b          	addiw	a4,a2,-1
    80003920:	1b06e663          	bltu	a3,a6,80003acc <__memset+0x1d4>
    80003924:	1cd76463          	bltu	a4,a3,80003aec <__memset+0x1f4>
    80003928:	1a078e63          	beqz	a5,80003ae4 <__memset+0x1ec>
    8000392c:	00b50023          	sb	a1,0(a0)
    80003930:	00100713          	li	a4,1
    80003934:	1ae78463          	beq	a5,a4,80003adc <__memset+0x1e4>
    80003938:	00b500a3          	sb	a1,1(a0)
    8000393c:	00200713          	li	a4,2
    80003940:	1ae78a63          	beq	a5,a4,80003af4 <__memset+0x1fc>
    80003944:	00b50123          	sb	a1,2(a0)
    80003948:	00300713          	li	a4,3
    8000394c:	18e78463          	beq	a5,a4,80003ad4 <__memset+0x1dc>
    80003950:	00b501a3          	sb	a1,3(a0)
    80003954:	00400713          	li	a4,4
    80003958:	1ae78263          	beq	a5,a4,80003afc <__memset+0x204>
    8000395c:	00b50223          	sb	a1,4(a0)
    80003960:	00500713          	li	a4,5
    80003964:	1ae78063          	beq	a5,a4,80003b04 <__memset+0x20c>
    80003968:	00b502a3          	sb	a1,5(a0)
    8000396c:	00700713          	li	a4,7
    80003970:	18e79e63          	bne	a5,a4,80003b0c <__memset+0x214>
    80003974:	00b50323          	sb	a1,6(a0)
    80003978:	00700e93          	li	t4,7
    8000397c:	00859713          	slli	a4,a1,0x8
    80003980:	00e5e733          	or	a4,a1,a4
    80003984:	01059e13          	slli	t3,a1,0x10
    80003988:	01c76e33          	or	t3,a4,t3
    8000398c:	01859313          	slli	t1,a1,0x18
    80003990:	006e6333          	or	t1,t3,t1
    80003994:	02059893          	slli	a7,a1,0x20
    80003998:	40f60e3b          	subw	t3,a2,a5
    8000399c:	011368b3          	or	a7,t1,a7
    800039a0:	02859813          	slli	a6,a1,0x28
    800039a4:	0108e833          	or	a6,a7,a6
    800039a8:	03059693          	slli	a3,a1,0x30
    800039ac:	003e589b          	srliw	a7,t3,0x3
    800039b0:	00d866b3          	or	a3,a6,a3
    800039b4:	03859713          	slli	a4,a1,0x38
    800039b8:	00389813          	slli	a6,a7,0x3
    800039bc:	00f507b3          	add	a5,a0,a5
    800039c0:	00e6e733          	or	a4,a3,a4
    800039c4:	000e089b          	sext.w	a7,t3
    800039c8:	00f806b3          	add	a3,a6,a5
    800039cc:	00e7b023          	sd	a4,0(a5)
    800039d0:	00878793          	addi	a5,a5,8
    800039d4:	fed79ce3          	bne	a5,a3,800039cc <__memset+0xd4>
    800039d8:	ff8e7793          	andi	a5,t3,-8
    800039dc:	0007871b          	sext.w	a4,a5
    800039e0:	01d787bb          	addw	a5,a5,t4
    800039e4:	0ce88e63          	beq	a7,a4,80003ac0 <__memset+0x1c8>
    800039e8:	00f50733          	add	a4,a0,a5
    800039ec:	00b70023          	sb	a1,0(a4)
    800039f0:	0017871b          	addiw	a4,a5,1
    800039f4:	0cc77663          	bgeu	a4,a2,80003ac0 <__memset+0x1c8>
    800039f8:	00e50733          	add	a4,a0,a4
    800039fc:	00b70023          	sb	a1,0(a4)
    80003a00:	0027871b          	addiw	a4,a5,2
    80003a04:	0ac77e63          	bgeu	a4,a2,80003ac0 <__memset+0x1c8>
    80003a08:	00e50733          	add	a4,a0,a4
    80003a0c:	00b70023          	sb	a1,0(a4)
    80003a10:	0037871b          	addiw	a4,a5,3
    80003a14:	0ac77663          	bgeu	a4,a2,80003ac0 <__memset+0x1c8>
    80003a18:	00e50733          	add	a4,a0,a4
    80003a1c:	00b70023          	sb	a1,0(a4)
    80003a20:	0047871b          	addiw	a4,a5,4
    80003a24:	08c77e63          	bgeu	a4,a2,80003ac0 <__memset+0x1c8>
    80003a28:	00e50733          	add	a4,a0,a4
    80003a2c:	00b70023          	sb	a1,0(a4)
    80003a30:	0057871b          	addiw	a4,a5,5
    80003a34:	08c77663          	bgeu	a4,a2,80003ac0 <__memset+0x1c8>
    80003a38:	00e50733          	add	a4,a0,a4
    80003a3c:	00b70023          	sb	a1,0(a4)
    80003a40:	0067871b          	addiw	a4,a5,6
    80003a44:	06c77e63          	bgeu	a4,a2,80003ac0 <__memset+0x1c8>
    80003a48:	00e50733          	add	a4,a0,a4
    80003a4c:	00b70023          	sb	a1,0(a4)
    80003a50:	0077871b          	addiw	a4,a5,7
    80003a54:	06c77663          	bgeu	a4,a2,80003ac0 <__memset+0x1c8>
    80003a58:	00e50733          	add	a4,a0,a4
    80003a5c:	00b70023          	sb	a1,0(a4)
    80003a60:	0087871b          	addiw	a4,a5,8
    80003a64:	04c77e63          	bgeu	a4,a2,80003ac0 <__memset+0x1c8>
    80003a68:	00e50733          	add	a4,a0,a4
    80003a6c:	00b70023          	sb	a1,0(a4)
    80003a70:	0097871b          	addiw	a4,a5,9
    80003a74:	04c77663          	bgeu	a4,a2,80003ac0 <__memset+0x1c8>
    80003a78:	00e50733          	add	a4,a0,a4
    80003a7c:	00b70023          	sb	a1,0(a4)
    80003a80:	00a7871b          	addiw	a4,a5,10
    80003a84:	02c77e63          	bgeu	a4,a2,80003ac0 <__memset+0x1c8>
    80003a88:	00e50733          	add	a4,a0,a4
    80003a8c:	00b70023          	sb	a1,0(a4)
    80003a90:	00b7871b          	addiw	a4,a5,11
    80003a94:	02c77663          	bgeu	a4,a2,80003ac0 <__memset+0x1c8>
    80003a98:	00e50733          	add	a4,a0,a4
    80003a9c:	00b70023          	sb	a1,0(a4)
    80003aa0:	00c7871b          	addiw	a4,a5,12
    80003aa4:	00c77e63          	bgeu	a4,a2,80003ac0 <__memset+0x1c8>
    80003aa8:	00e50733          	add	a4,a0,a4
    80003aac:	00b70023          	sb	a1,0(a4)
    80003ab0:	00d7879b          	addiw	a5,a5,13
    80003ab4:	00c7f663          	bgeu	a5,a2,80003ac0 <__memset+0x1c8>
    80003ab8:	00f507b3          	add	a5,a0,a5
    80003abc:	00b78023          	sb	a1,0(a5)
    80003ac0:	00813403          	ld	s0,8(sp)
    80003ac4:	01010113          	addi	sp,sp,16
    80003ac8:	00008067          	ret
    80003acc:	00b00693          	li	a3,11
    80003ad0:	e55ff06f          	j	80003924 <__memset+0x2c>
    80003ad4:	00300e93          	li	t4,3
    80003ad8:	ea5ff06f          	j	8000397c <__memset+0x84>
    80003adc:	00100e93          	li	t4,1
    80003ae0:	e9dff06f          	j	8000397c <__memset+0x84>
    80003ae4:	00000e93          	li	t4,0
    80003ae8:	e95ff06f          	j	8000397c <__memset+0x84>
    80003aec:	00000793          	li	a5,0
    80003af0:	ef9ff06f          	j	800039e8 <__memset+0xf0>
    80003af4:	00200e93          	li	t4,2
    80003af8:	e85ff06f          	j	8000397c <__memset+0x84>
    80003afc:	00400e93          	li	t4,4
    80003b00:	e7dff06f          	j	8000397c <__memset+0x84>
    80003b04:	00500e93          	li	t4,5
    80003b08:	e75ff06f          	j	8000397c <__memset+0x84>
    80003b0c:	00600e93          	li	t4,6
    80003b10:	e6dff06f          	j	8000397c <__memset+0x84>

0000000080003b14 <__memmove>:
    80003b14:	ff010113          	addi	sp,sp,-16
    80003b18:	00813423          	sd	s0,8(sp)
    80003b1c:	01010413          	addi	s0,sp,16
    80003b20:	0e060863          	beqz	a2,80003c10 <__memmove+0xfc>
    80003b24:	fff6069b          	addiw	a3,a2,-1
    80003b28:	0006881b          	sext.w	a6,a3
    80003b2c:	0ea5e863          	bltu	a1,a0,80003c1c <__memmove+0x108>
    80003b30:	00758713          	addi	a4,a1,7
    80003b34:	00a5e7b3          	or	a5,a1,a0
    80003b38:	40a70733          	sub	a4,a4,a0
    80003b3c:	0077f793          	andi	a5,a5,7
    80003b40:	00f73713          	sltiu	a4,a4,15
    80003b44:	00174713          	xori	a4,a4,1
    80003b48:	0017b793          	seqz	a5,a5
    80003b4c:	00e7f7b3          	and	a5,a5,a4
    80003b50:	10078863          	beqz	a5,80003c60 <__memmove+0x14c>
    80003b54:	00900793          	li	a5,9
    80003b58:	1107f463          	bgeu	a5,a6,80003c60 <__memmove+0x14c>
    80003b5c:	0036581b          	srliw	a6,a2,0x3
    80003b60:	fff8081b          	addiw	a6,a6,-1
    80003b64:	02081813          	slli	a6,a6,0x20
    80003b68:	01d85893          	srli	a7,a6,0x1d
    80003b6c:	00858813          	addi	a6,a1,8
    80003b70:	00058793          	mv	a5,a1
    80003b74:	00050713          	mv	a4,a0
    80003b78:	01088833          	add	a6,a7,a6
    80003b7c:	0007b883          	ld	a7,0(a5)
    80003b80:	00878793          	addi	a5,a5,8
    80003b84:	00870713          	addi	a4,a4,8
    80003b88:	ff173c23          	sd	a7,-8(a4)
    80003b8c:	ff0798e3          	bne	a5,a6,80003b7c <__memmove+0x68>
    80003b90:	ff867713          	andi	a4,a2,-8
    80003b94:	02071793          	slli	a5,a4,0x20
    80003b98:	0207d793          	srli	a5,a5,0x20
    80003b9c:	00f585b3          	add	a1,a1,a5
    80003ba0:	40e686bb          	subw	a3,a3,a4
    80003ba4:	00f507b3          	add	a5,a0,a5
    80003ba8:	06e60463          	beq	a2,a4,80003c10 <__memmove+0xfc>
    80003bac:	0005c703          	lbu	a4,0(a1)
    80003bb0:	00e78023          	sb	a4,0(a5)
    80003bb4:	04068e63          	beqz	a3,80003c10 <__memmove+0xfc>
    80003bb8:	0015c603          	lbu	a2,1(a1)
    80003bbc:	00100713          	li	a4,1
    80003bc0:	00c780a3          	sb	a2,1(a5)
    80003bc4:	04e68663          	beq	a3,a4,80003c10 <__memmove+0xfc>
    80003bc8:	0025c603          	lbu	a2,2(a1)
    80003bcc:	00200713          	li	a4,2
    80003bd0:	00c78123          	sb	a2,2(a5)
    80003bd4:	02e68e63          	beq	a3,a4,80003c10 <__memmove+0xfc>
    80003bd8:	0035c603          	lbu	a2,3(a1)
    80003bdc:	00300713          	li	a4,3
    80003be0:	00c781a3          	sb	a2,3(a5)
    80003be4:	02e68663          	beq	a3,a4,80003c10 <__memmove+0xfc>
    80003be8:	0045c603          	lbu	a2,4(a1)
    80003bec:	00400713          	li	a4,4
    80003bf0:	00c78223          	sb	a2,4(a5)
    80003bf4:	00e68e63          	beq	a3,a4,80003c10 <__memmove+0xfc>
    80003bf8:	0055c603          	lbu	a2,5(a1)
    80003bfc:	00500713          	li	a4,5
    80003c00:	00c782a3          	sb	a2,5(a5)
    80003c04:	00e68663          	beq	a3,a4,80003c10 <__memmove+0xfc>
    80003c08:	0065c703          	lbu	a4,6(a1)
    80003c0c:	00e78323          	sb	a4,6(a5)
    80003c10:	00813403          	ld	s0,8(sp)
    80003c14:	01010113          	addi	sp,sp,16
    80003c18:	00008067          	ret
    80003c1c:	02061713          	slli	a4,a2,0x20
    80003c20:	02075713          	srli	a4,a4,0x20
    80003c24:	00e587b3          	add	a5,a1,a4
    80003c28:	f0f574e3          	bgeu	a0,a5,80003b30 <__memmove+0x1c>
    80003c2c:	02069613          	slli	a2,a3,0x20
    80003c30:	02065613          	srli	a2,a2,0x20
    80003c34:	fff64613          	not	a2,a2
    80003c38:	00e50733          	add	a4,a0,a4
    80003c3c:	00c78633          	add	a2,a5,a2
    80003c40:	fff7c683          	lbu	a3,-1(a5)
    80003c44:	fff78793          	addi	a5,a5,-1
    80003c48:	fff70713          	addi	a4,a4,-1
    80003c4c:	00d70023          	sb	a3,0(a4)
    80003c50:	fec798e3          	bne	a5,a2,80003c40 <__memmove+0x12c>
    80003c54:	00813403          	ld	s0,8(sp)
    80003c58:	01010113          	addi	sp,sp,16
    80003c5c:	00008067          	ret
    80003c60:	02069713          	slli	a4,a3,0x20
    80003c64:	02075713          	srli	a4,a4,0x20
    80003c68:	00170713          	addi	a4,a4,1
    80003c6c:	00e50733          	add	a4,a0,a4
    80003c70:	00050793          	mv	a5,a0
    80003c74:	0005c683          	lbu	a3,0(a1)
    80003c78:	00178793          	addi	a5,a5,1
    80003c7c:	00158593          	addi	a1,a1,1
    80003c80:	fed78fa3          	sb	a3,-1(a5)
    80003c84:	fee798e3          	bne	a5,a4,80003c74 <__memmove+0x160>
    80003c88:	f89ff06f          	j	80003c10 <__memmove+0xfc>

0000000080003c8c <__putc>:
    80003c8c:	fe010113          	addi	sp,sp,-32
    80003c90:	00813823          	sd	s0,16(sp)
    80003c94:	00113c23          	sd	ra,24(sp)
    80003c98:	02010413          	addi	s0,sp,32
    80003c9c:	00050793          	mv	a5,a0
    80003ca0:	fef40593          	addi	a1,s0,-17
    80003ca4:	00100613          	li	a2,1
    80003ca8:	00000513          	li	a0,0
    80003cac:	fef407a3          	sb	a5,-17(s0)
    80003cb0:	fffff097          	auipc	ra,0xfffff
    80003cb4:	b3c080e7          	jalr	-1220(ra) # 800027ec <console_write>
    80003cb8:	01813083          	ld	ra,24(sp)
    80003cbc:	01013403          	ld	s0,16(sp)
    80003cc0:	02010113          	addi	sp,sp,32
    80003cc4:	00008067          	ret

0000000080003cc8 <__getc>:
    80003cc8:	fe010113          	addi	sp,sp,-32
    80003ccc:	00813823          	sd	s0,16(sp)
    80003cd0:	00113c23          	sd	ra,24(sp)
    80003cd4:	02010413          	addi	s0,sp,32
    80003cd8:	fe840593          	addi	a1,s0,-24
    80003cdc:	00100613          	li	a2,1
    80003ce0:	00000513          	li	a0,0
    80003ce4:	fffff097          	auipc	ra,0xfffff
    80003ce8:	ae8080e7          	jalr	-1304(ra) # 800027cc <console_read>
    80003cec:	fe844503          	lbu	a0,-24(s0)
    80003cf0:	01813083          	ld	ra,24(sp)
    80003cf4:	01013403          	ld	s0,16(sp)
    80003cf8:	02010113          	addi	sp,sp,32
    80003cfc:	00008067          	ret

0000000080003d00 <console_handler>:
    80003d00:	fe010113          	addi	sp,sp,-32
    80003d04:	00813823          	sd	s0,16(sp)
    80003d08:	00113c23          	sd	ra,24(sp)
    80003d0c:	00913423          	sd	s1,8(sp)
    80003d10:	02010413          	addi	s0,sp,32
    80003d14:	14202773          	csrr	a4,scause
    80003d18:	100027f3          	csrr	a5,sstatus
    80003d1c:	0027f793          	andi	a5,a5,2
    80003d20:	06079e63          	bnez	a5,80003d9c <console_handler+0x9c>
    80003d24:	00074c63          	bltz	a4,80003d3c <console_handler+0x3c>
    80003d28:	01813083          	ld	ra,24(sp)
    80003d2c:	01013403          	ld	s0,16(sp)
    80003d30:	00813483          	ld	s1,8(sp)
    80003d34:	02010113          	addi	sp,sp,32
    80003d38:	00008067          	ret
    80003d3c:	0ff77713          	andi	a4,a4,255
    80003d40:	00900793          	li	a5,9
    80003d44:	fef712e3          	bne	a4,a5,80003d28 <console_handler+0x28>
    80003d48:	ffffe097          	auipc	ra,0xffffe
    80003d4c:	6dc080e7          	jalr	1756(ra) # 80002424 <plic_claim>
    80003d50:	00a00793          	li	a5,10
    80003d54:	00050493          	mv	s1,a0
    80003d58:	02f50c63          	beq	a0,a5,80003d90 <console_handler+0x90>
    80003d5c:	fc0506e3          	beqz	a0,80003d28 <console_handler+0x28>
    80003d60:	00050593          	mv	a1,a0
    80003d64:	00000517          	auipc	a0,0x0
    80003d68:	43450513          	addi	a0,a0,1076 # 80004198 <CONSOLE_STATUS+0x188>
    80003d6c:	fffff097          	auipc	ra,0xfffff
    80003d70:	afc080e7          	jalr	-1284(ra) # 80002868 <__printf>
    80003d74:	01013403          	ld	s0,16(sp)
    80003d78:	01813083          	ld	ra,24(sp)
    80003d7c:	00048513          	mv	a0,s1
    80003d80:	00813483          	ld	s1,8(sp)
    80003d84:	02010113          	addi	sp,sp,32
    80003d88:	ffffe317          	auipc	t1,0xffffe
    80003d8c:	6d430067          	jr	1748(t1) # 8000245c <plic_complete>
    80003d90:	fffff097          	auipc	ra,0xfffff
    80003d94:	3e0080e7          	jalr	992(ra) # 80003170 <uartintr>
    80003d98:	fddff06f          	j	80003d74 <console_handler+0x74>
    80003d9c:	00000517          	auipc	a0,0x0
    80003da0:	4fc50513          	addi	a0,a0,1276 # 80004298 <digits+0x78>
    80003da4:	fffff097          	auipc	ra,0xfffff
    80003da8:	a68080e7          	jalr	-1432(ra) # 8000280c <panic>
	...
