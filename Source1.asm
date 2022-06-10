.data

.code
armstrong proc
	mov eax, ecx
	mov r12d,edx
	xor ecx, ecx
	
	divide:
		mov ebx, 10
		xor edx,edx
		div ebx
		mov r8d,edx

		mov r9d,r12d
		mov r10d,1
		mov r11d,edx ;temp

		power:
			imul r8d,r11d
			inc r10d
			cmp r10d, r9d
			jl power
			add ecx, r8d
		cmp eax,0
		jnz divide

	mov eax,ecx
	ret
armstrong endp
end
