.data
.text

.global timestamp

timestamp:

push %ebx
xor %eax, %eax
cpuid
rdtsc
pop %ebx

ret

