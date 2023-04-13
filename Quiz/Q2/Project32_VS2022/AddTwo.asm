; .asm - adds two 32-bit integers.
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
INCLUDE Irvine32.inc
.code
main proc
	mov eax,10010001
	movzx eax,ah
	movzx eax,al
	Call WriteInt
	invoke ExitProcess,0
main endp
end main