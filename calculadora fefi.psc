Algoritmo CALCULADORA
	Definir n1, n2 Como Entero
	Definir op,nop Como caracter
	Definir r Como Real
	
	Escribir "Bienvenido a la calculadora de INSUCO"
	Escribir ""
	
	Escribir "Ingrese primer numero"
	Leer n1
	
	Repetir
		Escribir "Ingrese otro numero"
	Leer n2
	Escribir "ingrese la operatoria"
	Escribir "1 : si desea sumar"
	Escribir "2 : si desea RESTAR"
	Escribir "3 : si desea MULTIPLICAR"
	Escribir "4 : si desea DIVIDIR"
	Leer op

Hasta Que (op=="1" o op=="2" o op=="3" o op=="4")

Si op=="1" Entonces
	r=n1 + n2
	nop = "SUMA"
SiNo
	Si op=="2" Entonces
		r=n1 - n2
		nop ="RESTA"
	SiNo
		Si op=="3" Entonces
			r=n1 * n2
			nop ="MULTIPLICAR"
		SiNo
			Si op=="4" Entonces
				r=n1/n2
				nop = "DIVISION" 
			SiNo
				
			Fin Si
			
		Fin Si
		
	Fin Si
	
Fin Si

Escribir ""
Escribir "El resultado de la ",nop, " es ",r
	
FinAlgoritmo