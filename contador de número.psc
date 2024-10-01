Algoritmo numeros_para_5_decimas
	// Crear un diagrama de flujo que realice lo siguiente:
	// Ingrese números hasta ingresar el CERO
	// Solo ingresar números positivos
	// Contar cuantos números pares hay
	// Contar cuantos números impares hay
	// Comtar cuantos números primos hay
	// Mostrar el promedio total de todos los números
	Definir num,contpar,contimpar,sum,prom Como Real
	contpri <- 0
	Escribir 'Bienvenido al contador de números pares,impares y primos'
	Escribir ''
	Repetir
		Escribir 'Ingrese cualquier número positivo'
		Leer num
	Hasta Que num>=0
	Mientras num<>0 Hacer
		// fin de la vuelta
		cont = 0
		Para i<-1 Hasta num Hacer
			Si num MOD i==0 Entonces
				cont <- cont+1
			FinSi
		FinPara
		Si cont==2 Entonces
			Escribir 'número primo'
			contpri <- contpri+1
		SiNo
			Escribir 'nomero no primo'
		FinSi
		Si num MOD 2==0 Entonces
			Escribir 'número par'
			contpar <- contpar+1
		SiNo
			Escribir 'número impar'
			contimpar <- contimpar+1
		FinSi
		// nueva vuelta
		Escribir ""
		cont <- cont+1
		sum <- sum+num
		Repetir
			Escribir 'Ingrese cualquier número positivo (ingrese 0 si desea terminar)'
			Leer num
		Hasta Que num>=0
	FinMientras
	prom <- sum/cont
	Escribir 'hay ',contpri," 	de números primos'
	Escribir 'hay ',contpar," de números pares'
	Escribir 'hay ", contimpar," de números impares"
	Escribir 'El promedio total de todos los numeros es de ',prom
FinAlgoritmo

