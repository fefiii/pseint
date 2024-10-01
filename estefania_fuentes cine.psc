Algoritmo estefania_fuentes
	// Crear un diagrama de flujo que realice"ventas de entradas para el cine":
	// 1) Se deben vender entradas hasta ingresar el usuario X
	// 2) Nombre del usuario
	// 3) Edad (menor que 12 es niño, mayor que 65 años es 3°edad)
	// 4) Nombre de la pelicula(hay 5 peliculas en cartelera: A gusto del alumno)
	// 5) Categoria de la pelicula (Comedia, Acción, Terror, Romance y Ciencia ficción)
	// 6) Hay precio niños, adulto, y 3°edad (niño y 3°edad tienen un descuento del 25 MOD )
	// 7) Hay funciones 2D, 3D y 4D ($2.000, $3.000 y $4.000 respectivamente)
	// 8) Hay peliculas se presentan con idioma Español o Inglés
	// 9)Los horarios son diurno y vespertino
	// se debe responder:
	// 10) Cuantos años van al cine
	// 11) Cúal fue el genero que más vende
	// 12) Cúal fue la pelicula que más plata a recaudado 
	// 13) Qué idioma lleva más publico (Español o Ingles)
	// 14)Qué horario recaudómenos dinero
	// 15) Cuantos adultos fueron a ver peliculas 3D
	cf1 <- 0
	cf2 <- 0
	cf3 <- 0
	cf4 <- 0
	cf5 <- 0
	Escribir 'Bienvenido al cine de fefi'
	Escribir ''
	Escribir 'ingrese su usuario'
	Leer usuario
	Mientras ((usuario<>'x')) Y ((usuario<>'X')) Hacer
		Repetir
			Escribir 'ingrese su edad'
			Leer edad
		Hasta Que edad>=1 Y edad<=65
		Si edad>=1 Entonces
			cc <- cc+1
		FinSi
		Repetir
			Escribir 'Elija su pelicula'
			Escribir ''
			Escribir '1:DEADPOOL '
			Escribir '2:ROMPER EL CIRCULO'
			Escribir '3:ASI EN LA TIERRA COMO EN EL INFIERNO'
			Escribir '4:EL HOYO'
			Escribir '5:SR. Y SRA. SMITH'
			Leer pelicula
		Hasta Que pelicula>=1 Y pelicula<=5
		Si pelicula=1 Entonces
			np <- 'DEADPOOL'
			genero <- 'Comedia'
			cf1 <- cf1+1
		SiNo
			Si pelicula=2 Entonces
				np <- 'ROMPER EL CIRCULO'
				genero <- 'Romance'
				cf2 <- cf2+1
			SiNo
				Si pelicula='3' Entonces
					np <- 'ASI EN LA TIERRA COMO EN EL INFIERNO'
					genero <- 'Terror'
					cf3 <- cf3+1
				SiNo
					Si pelicula='4' Entonces
						np <- 'EL HOYO'
						genero <- 'Ciencia ficcion'
						cf4 <- cf4+1
					SiNo
						Si pelicula='5' Entonces
							np <- 'SR. Y SRA. SMITH'
							genero <- 'Accion'
							cf5 <- cf5+1
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinMientras
	Escribir ''
	Repetir
		Escribir 'Funciones'
		Escribir ''
		Escribir 'A:2D'
		Escribir 'B:3D'
		Escribir 'C:4D'
		Leer f
	Hasta Que f=='A' O f=='B' O f=='C'
	Si f=='A' Entonces
		entrada <- 2000
		func <- '2D'
	SiNo
		Si f=='B' Entonces
			entrada <- 3000
			func <- '3D'
		SiNo
			Si f=='C' Entonces
				entrada <- 4000
				func <- '4D'
			FinSi
		FinSi
	FinSi
	Si edad<=12 Entonces
		entrada <- entrada/1.25
		entrada <- "Niño"
	SiNo
		Si edad>=65 Entonces
			- entry/1.25
			entryn <- "Adulto mayor"
		SiNo
			entryn <- "Adulto"
		FinSi
	FinSi
FinAlgoritmo

