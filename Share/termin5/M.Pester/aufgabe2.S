//
// Programmgeruestbeispiel zur Aufgabe2
//
//Name:		
//Datum:	

	.file	"aufgabe2.S"
	.text	
	.align	2
	.global	main
	.type	main, function
main:
	push	{r4, r5, lr}
	adr	r0, Quelle
	ldr	r1, =Ziel
@ hier die beiden Befehle einfuegen Achtung denken Sie an die APCS
	
	
	pop	{r4, r5, pc}

.Lfe1:
	.size	main,.Lfe1-main
Quelle:
	.byte	1, 2, 3, 4, 5, 6, 7, 8, 8, 10, 11, 12, 13, 14, 15, 16
	
// unintialisierter zur Verfuegung stehender Speicherbereich
	.comm Ziel, 256


