// C-Programm fuer Termin5 RA SS2020
// Name:
// Datum:

#include <stdio.h>

int fiborec(int);
int fiboiter(int);
int fiboreccache(int);
int fiboitercache(int);

int c_fiborec(int);
int c_fiboiter(int);

int main()
{
	int n;
	int bis = 10;	// wieviele Fibonacci-Werte sollen ermittelt werden
	for ( n = 0; n <= bis ; n++ )
	{	
		printf("Fiborec %d: %d\n", n, fiborec(n));
	}
	for ( n= 0; n <= bis ; n++ )
	{	
		printf("Fiboiter %d: %d\n", n, fiboiter(n));
	}
	for ( n= 0; n <= bis ; n++ )
	{	
		printf("Fiboitercache %d: %d\n", n, fiboitercache(n));
	}
	for ( n= 0; n <= bis ; n++ )
	{	
		printf("Fiboreccache %d: %d\n", n, fiboreccache(n));
	}
	return 0;
}

int c_fiborec(int n)
{
	if (n==0)
		return 0;
	if (n<=2)
		return 1;
		
	return c_fiborec(n-1) + c_fiborec(n-2);
}

int c_fiboiter(int n)
{
	int a=0;
	int b=1;
	int neu;
	int x;
	for (x=1; x<=n; x++)
	{
		neu = a+b;
		a = b;
		b = neu;
	}
	return a;
}


