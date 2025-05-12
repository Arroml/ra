@ Name:		Stefan Rapp
@ Datum:	2020-06-28

	.file	"newGen.S"
	.text			@ legt eine Textsection fuer PrgrammCode + Konstanten an
	.align	2		@ sorgt dafuer, dass nachfolgende Anweisungen auf einer durch 4 teilbaren Adresse liegen
				@ d.h. die unteren 2 Bit sind 0

	.global	neighbors	@ nimmt das Symbol neighbors in die globale Sysmboltabelle auf
	.type	neighbors,function
neighbors:
	push	{r4, r5, lr}	@ Nur als Beispiel, je nach dem welche Variablen sie zusätzlich brauchen
	pop	{r4, r5, pc} 	@ Ende von neighbors

.neighbors_end:
	.size	neighbors,.neighbors_end-neighbors

	.global	newGen		@ nimmt das Symbol newGen in die globale Sysmboltabelle auf
	.type	newGen,function
newGen:
	push	{r4, r5, lr}

	pop	{r4, r5, pc} 	@ Ende von newGen

.newGen_end:
	.size	newGen,.newGen_end-newGen
.end				@ End of File
