//
// Programmgeruestbeispiel zur Aufgabe3
//
//Name:		
//Datum:	

	.file	"aufgabe3.S"
	.text	
	.align	2
	.global	main
	.type	main, function
main:
	push	{R6, R9, LR}
	
	adr	r9, main
	
	ldmdb	R9, {R1, R2, R6}
	ldmia	R9!, {R1, R2, R6}  	
			
	pop	{R6, R9, PC}

.Lfe1:
	.size	main,.Lfe1-main


	

