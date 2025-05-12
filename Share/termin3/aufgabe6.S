// Name:		Matrikelnummer:
// Name:		Matrikelnummer:
// Datum

	.file	"aufgabe6.S"
	.text		@ legt eine Textsection fuer PrgrammCode + Konstanten an
	.align	2	@ sorgt dafuer, dass nachfolgende Anweisungen auf einer durch 4 teilbaren Adresse liegen
			@ unteren 2 Bit sind 0
	.global	main	@ nimmt das Symbol main in die globale Sysmboltabelle auf
	.type	main,function
main:
	push	{r0, r1, lr}

	ldr	R0, =0xaabbccdd
	ldr	R1, =0xffbbffbb

	EOR r0, r0, r1
	EOR r1, r0, r1
	EOR r0, r0, r1

	pop	{r0, r1, pc}
.Lfe1:
	.size	main,.Lfe1-main

// End of File
