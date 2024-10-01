Algoritmo formativa_EFR
	// crear un algoritmo en diagrama de flujo para los JJOO:
	// que realice lo siguiente.
	// ingresar nombre de deportista hasta que ingrese el nombre x
	// debe ingresar pais, edad, deporte, genero y puesto obtenido
	// pais (chile, argentina, brasil, estados unidos, jamaica, china, y españa)
	// deporte (futbol, basquetbol, voleybol, tenis, tiro al disco)
	// responder lo siguiente:
	// 1)cuantas medallas de oro tiene chile
	// 2)cuantas medallas suman las mujeres
	// 3)cual es el deporte que tiene mas medallas
	// 4)cual es el pais que tiene mas medallas
	// 5)mostrar el podium del tenis masculino
	// (nombre y pais de los tenistas premium)
	
	
	Escribir 'Bienvenido a los JJOO'
	Escribir ''
	Escribir '¿cual es el nombre del deportista?'
	Leer deportista
	Escribir ''
	Mientras deportista<>'X' o deportista<>'x' Hacer
		Repetir
			Escribir 'ingrese edad del deportista'
			Leer edad
			Escribir ''
		Hasta Que edad<=15 y edad>=50
		Repetir
			Escribir 'ingrese el pais del deportista'
			Escribir '1=chile'
			Escribir '2=argentina'
			Escribir '3=brasil'
			Escribir '4=estados unidos'
			Escribir '5=jamaica'
			Escribir '6=china'
			Escribir '7=españa'
			Leer pais
		Hasta Que ((pais='1')o (pais='2')o(pais='3')o(pais='4')o(pais='5')o(pais='6')o(pais='7'))
		Repetir
			Escribir 'A=futbol'
			Escribir 'B=basquetbol'
			Escribir 'C=voleibol'
			Escribir 'D=tenis'
			Escribir 'E=tiro al disco'
			Leer deporte
		Hasta Que (deporte='A')o(deporte='B')o(deporte='C')o(deporte='D')o(deporte='E')
		Repetir
			Escribir 'en que puesto quedo el deportista'
			Leer top_dep
		Hasta Que top_dep>=1 y top_dep<=16
		Repetir
			Escribir 'ingrese que medalla gano'
			Escribir 'ORO= medalla de oro'
			Escribir 'PLATA=medalla de plata'
			Escribir 'BRONCE=medalla de bronce'
			Escribir 'NINGUNA=no gano ninguna medalla'
		Hasta Que condicion
	FinMientras
FinAlgoritmo

