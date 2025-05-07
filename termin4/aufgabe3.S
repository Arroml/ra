// Loesung zu Aufgaben 3 und folgende
// Name: 	 	Matrikelnummer: 
// Name: 		Matrikelnummer: 
// Datum:
	.file "aufgabe3.S"
	.text 		@ legt eine Textsection fuer PrgrammCode + Konstanten an
	.align 2 	@ sorgt dafuer, dass nachfolgende Anweisungen auf einer durch 4 teilbaren Adresse liegen	
			@ unteren 2 Bit sind 0
	.global main 	@ nimmt das Symbol main in die globale Sysmboltabelle auf
	.type main,function
main:
	push	{lr} @ Ruecksprungadresse und Register sichern
	ldr R0, Adr_StringA
@	..
	bl kopieren
@	..
	bl grossschreibung
@	..
	bl sortieren
	pop {pc}
	
kopieren:
@ hier Ihr Programm zum Kopieren eines String
loop_kopieren:	
@	..
	bx lr


grossschreibung:
@ hier Ihr Programm zum Wandeln in Grossbuchstaben
@	..
	bx lr	
	
	
sortieren:
@ hier Ihr Programm zum alphabetisch sortieren 
@	..
	bx	lr

Adr_StringA:	.word StringA 	@ auf dieser Speicherstelle liegt die Adresse,
				@ welche auf das erste Zeichen von StringA zeigt

.Lfe1:
	.size main,.Lfe1-main

// .data-Section fuer initialisierte Daten
	.data
StringA: .asciz "Dies ist ein String!"

// .comm-Section fuer nicht initialisierte Daten
	.comm StringB, 256 	@ Speicherbereich mit der max. Groesse eines StringA reservieren

// End of File

