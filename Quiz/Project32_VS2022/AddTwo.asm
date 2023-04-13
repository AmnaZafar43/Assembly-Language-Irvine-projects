; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
INCLUDE Irvine32.inc
.data
Var1 DWORD 5
Var2 DWORD 10
.code
main proc
	mov eax,Var1
	mov ebx,Var2
	mov ecx,3
	L1:
		sub eax,ebx
	Call WriteInt
	invoke ExitProcess,0
main endp
end main