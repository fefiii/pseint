Algoritmo FormativaEF
	// hacer un diagrama de flujo que realice lo sigt:
	// Registre las temperaturas diarias(máxima y minima)
	// Ingrese N cantidad de dias
	// Calcular el promedio temperatura en el periodo establacido
	// Calcular la maxima temperatura de todo el periodo
	// Calcular la minima temperatura de todo el periodo
	// Documentar
	Definir max, maxtem, min, mintem,promtem , sumatem Como Real
	Definir dias Como Entero
	maxtem <- -100
	mintem <- 100
	Escribir 'Bienvenido al diagrama de estefi'
	Escribir ''
	Escribir 'Ingrese cantidad de dias que desea registrar'
	Leer dias
	Escribir ''
	Para N<-1 Hasta dias Hacer
		Repetir
			Escribir 'Cual es la temperatura maxima del dia ',N
			Leer max
		Hasta Que max>-50 Y max<50
		Escribir ''
		Repetir
			Escribir 'Cual es la temperatura minima del dia ',N
			Leer min
		Hasta Que min>-50 Y min<50
		Si max > maxtem Entonces
			maxtem <- max
		FinSi
		Si min < mintem Entonces
			mintem <- min
		FinSi
		sumatem <- max+min
	FinPara
	promtem <- sumatem/dias
	Escribir ''
	Escribir 'El promedio de temperatura es de ',promtem
	Escribir 'La temperatura mas baja fue de ',mintem
	Escribir 'La temperatura mas alta fue de ',maxtem
FinAlgoritmo

