Algoritmo numeros_para_5_decimas
	// Crear un diagrama de flujo que realice lo siguiente:
	// Ingrese n�meros hasta ingresar el CERO
	// Solo ingresar n�meros positivos
	// Contar cuantos n�meros pares hay
	// Contar cuantos n�meros impares hay
	// Comtar cuantos n�meros primos hay
	// Mostrar el promedio total de todos los n�meros
	Definir num,contpar,contimpar,sum,prom Como Real
	contpri <- 0
	Escribir 'Bienvenido al contador de n�meros pares,impares y primos'
	Escribir ''
	Repetir
		Escribir 'Ingrese cualquier n�mero positivo'
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
			Escribir 'n�mero primo'
			contpri <- contpri+1
		SiNo
			Escribir 'nomero no primo'
		FinSi
		Si num MOD 2==0 Entonces
			Escribir 'n�mero par'
			contpar <- contpar+1
		SiNo
			Escribir 'n�mero impar'
			contimpar <- contimpar+1
		FinSi
		// nueva vuelta
		Escribir ""
		cont <- cont+1
		sum <- sum+num
		Repetir
			Escribir 'Ingrese cualquier n�mero positivo (ingrese 0 si desea terminar)'
			Leer num
		Hasta Que num>=0
	FinMientras
	prom <- sum/cont
	Escribir 'hay ',contpri," 	de n�meros primos'
	Escribir 'hay ',contpar," de n�meros pares'
	Escribir 'hay ", contimpar," de n�meros impares"
	Escribir 'El promedio total de todos los numeros es de ',prom
FinAlgoritmo

