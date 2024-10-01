Algoritmo prueba_estefania
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
	
	// Definir variables
    Definir usuario Como Caracter
    Definir edad Como Entero
    Definir pelicula Como Entero
    Definir func Como Entero
    Definir idioma Como Entero
    Definir horario Como Entero
    Definir entrada Como Real
    Definir np, genero, funci, entra Como Caracter
    Definir cf1, cf2, cf3, cf4, cf5 Como Entero
    Definir dinero1, dinero2, dinero3, dinero4, dinero5 Como Real
    Definir minpeli, maxingresos Como Real
    Definir generomasvend, pelimásrecaudada, idiomavisto, horariomenosrecaudado Como Caracter
    Definir contniño, contes, contin Como Entero
    Definir ingresos_diurno, ingresos_vespertino Como Real
    Definir adultos_3D Como Entero
	
    // Inicializar contadores y variables de ingresos
    cf1 <- 0
    cf2 <- 0
    cf3 <- 0
    cf4 <- 0
    cf5 <- 0
    dinero1 <- 0
    dinero2 <- 0
    dinero3 <- 0
    dinero4 <- 0
    dinero5 <- 0
    ingresos_diurno <- 0
    ingresos_vespertino <- 0
    minpeli <- 0
    maxingresos <- 0
    contniño <- 0
    contes <- 0
    contin <- 0
    adultos_3D <- 0
	
    Escribir "*Bienvenido al cine de fefi *"
    Escribir ""
	
    Escribir "Ingrese usuario"
    Leer usuario
    Escribir ""
	
    Mientras ((usuario<>"x") y (usuario<>"X")) Hacer
        Repetir
            Escribir "Ingrese edad"
            Leer edad
            Escribir ""
        Hasta Que edad>=1 y edad<=110
        
        Si edad >= 1 y edad <=12 Entonces
            contniño <- contniño + 1
        FinSi
        
        Repetir
            Escribir "Elija su película"
            Escribir ""
			Escribir '1:DEADPOOL '
			Escribir '2:ROMPER EL CIRCULO'
			Escribir '3:ASI EN LA TIERRA COMO EN EL INFIERNO'
			Escribir '4:EL HOYO'
			Escribir '5:SR. Y SRA. SMITH'
            Leer pelicula
        Hasta Que pelicula>=1 y pelicula<=5
        
        Si pelicula = 1 Entonces
            np<- "DEADPOOL"
            genero <- "Comedia"
            cf1 <- cf + 1
        SiNo
            Si pelicula = 2 Entonces
                np <- "ROMPER EL CIRCULO"
                genero <- "Romance"
                cf2 <- cf2 + 1
            SiNo
                Si pelicula = 3 Entonces
                    np <- "ASI EN LA TIERRA COMO EN EL INFIERNO"
                    genero <- "Terror"
                    cf3 <- cf3 + 1
                SiNo
                    Si pelicula = 4 Entonces
                        np <- "EL HOYO"
                        genero <- "Ciencia Ficción"
                        cf4 <- cf4 + 1
                    SiNo
                        np <- "SR. Y SRA. SMITH"
                        genero <- "Acción"
                        cf5 <- cf5 + 1
                    FinSi
                FinSi
            FinSi
        FinSi
        Escribir ""
        
        Repetir
            Escribir "¿Qué función desea ver?"
            Escribir ""
            Escribir "1: 2D"
            Escribir "2: 3D"
            Escribir "3: 4DX"
            Leer func
        Hasta Que func>=1 y func<=3
        
        Si func = 1 Entonces
            entrada <- 2000
            funci <- "2D"
        SiNo
            Si func = 2 Entonces
                entrada <- 3000
                funci <- "3D"
                Si edad > 12 y edad < 65 Entonces
                    adultos_3D <- adultos_3D + 1
                FinSi
            SiNo
                entrada <- 4000
                funci <- "4DX"
            FinSi
        FinSi
        
        Si edad <= 12 Entonces
            entrada <- entrada * 0.75
            entra <- "Niño"
        SiNo
            Si edad >= 65 Entonces
                entrada <- entrada * 0.75
                entra <- "3ra edad"
            SiNo
                entra <- "Adulto"
            FinSi
        FinSi
        
        Si pelicula = 1 Entonces
            dinero1 <- dinero1 + entrada
        SiNo
            Si pelicula = 2 Entonces
                dinero2 <- dinero2 + entrada
            SiNo
                Si pelicula = 3 Entonces
                    dinero3 <- dinero3 + entrada
                SiNo
                    Si pelicula = 4 Entonces
                        dinero4 <- dinero4 + entrada
                    SiNo
                        dinero5 <- dinero5 + entrada
                    FinSi
                FinSi
            FinSi
        FinSi
        
        Si horario = 1 Entonces
            ingresos_diurno <- ingresos_diurno + entrada
        SiNo
            ingresos_vespertino <- ingresos_vespertino + entrada
        FinSi
        
        Escribir ""
        
        Repetir
            Escribir "Idioma"
            Escribir ""
            Escribir "1: Español"
            Escribir "2: Inglés"
            Leer idioma
        Hasta Que idioma>=1 y idioma<=2
        Escribir ""
        Si idioma = 1 Entonces
            contes <- contes + 1
        SiNo
            contin <- contin + 1
        FinSi
        
        Repetir
            Escribir "Horario"
            Escribir ""
            Escribir "1: Diurno"
            Escribir "2: Vespertino"
            Leer horario
        Hasta Que horario>=1 y horario<=2
        Escribir ""
        
        Escribir "Entrada:"
        Escribir ""
        Escribir "Película: ", np
        Escribir "Género: ", genero
        Escribir "Función: ", funci
        Escribir "Tipo de entrada: ", entra
        Escribir "Valor: ", entrada
        Escribir ""
        
        Escribir "Ingrese usuario, (Ingrese x si desea terminar)"
        Leer usuario
    FinMientras
    
    minpeli <- cf1
    generomasvend <- "Comedia"
    Si cf2 > minpeli Entonces
        minpeli <- cf2
        generomasvend <- "Acción"
    FinSi
    Si cf3 > minpeli Entonces
        minpeli <- cf3
        generomasvend <- "Terror"
    FinSi
    Si cf4 > minpeli Entonces
        minpeli <- cf4
        generomasvend <- "Romance"
    FinSi
    Si cf5 > minpeli Entonces
        minpeli <- cf5
        generomasvendn <- "Ciencia Ficción"
    FinSi
    
    Si contes > contin Entonces
        idiomavisto <- "Español"
    SiNo
        idiomavisto <- "Inglés"
    FinSi

    maxingresos <- dinero1
    pelimásrecaudada <- "DEADPOOL"
    Si dinero2 > maxingresos Entonces
        maxingresos <- dinero2
        pelimásrecaudada <- "ROMPER EL CIRCULO"
    FinSi
    Si dinero3 > maxingresos Entonces
        maxingresos <- dinero3
        pelimásrecaudada <- "ASI EN LA TIERRA COMO EN EL INFIERNO"
    FinSi
    Si dinero4 > maxingresos Entonces
        maxingresos <- dinero4
        pelimásrecaudada <- "EL HOYO"
    FinSi
    Si dinero5 > maxingresos Entonces
        maxingresos <- dinero5
        pelimásrecaudada <- "SR. Y SRA. SMITH"
    FinSi
   
    Si ingresos_diurno < ingresos_vespertino Entonces
        horariomenosrecaudado <- "Diurno"
    SiNo
        horariomenosrecaudado <- "Vespertino"
    FinSi
    
    Escribir ""
    Escribir "Cuántos niños asistieron: ", contniño
    Escribir "Cuál es el género que más vendió: ", generomasvend
    Escribir "Cuál es la película que más dinero recaudó: ", pelimásrecaudada
    Escribir "El idioma más visto es: ", idiomavisto
    Escribir "El horario que menos recaudó es: ", horariomenosrecaudado
    Escribir "Cantidad de adultos que miraron películas en 3D: ", adultos_3D
FinAlgoritmo

