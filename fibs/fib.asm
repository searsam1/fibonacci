Include Irvine32.inc
 .data
 limit DWORD 12
 count DWORD 2
 .code
 main PROC
xor eax,eax
		xor ebx,ebx
	.if limit==0
		jmp L2
	.ENDIF
			mov eax,0
			call writeint
			call crlf
			mov eax,1
			call writeint
			call crlf
			mov edx,eax
			add eax,ebx
			mov esi,2
			sub limit,esi
			mov ecx,limit
	
		L1:
			mov edi,count
			cmp edi,limit
		je L2
			mov edx,eax
			add eax,ebx
			call writeint
			call crlf
			mov ebx,edx
			inc edi
		loop L1
		
		L2:
		exit
 main ENDP
 END main
