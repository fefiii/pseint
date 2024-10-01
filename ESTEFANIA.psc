Algoritmo Estefania_Fuentes_Eva2
	//Ingresar datos y notas de un grupo de productos
	//Los datos deben ser : NOMBRE, AÑO DE CREACIÓN, MARCA, PRECIO
	//Ingresar productos hasta ingrese el producto de nombre X
	//Calcular promedio de precios de todos los productos
	//Entregar el nombre del producto mas caro
	//Entregar el nombre del producto mas nuevo
	//Contar cuantos productos marca CAROZZI hay en el almacén
	
	Definir producto, marca como Caracter
	Definir precio, año como Entero
	
	suma_precio= 0
	conta_marca =0
	contador= 0
	max_precio=0
    nuev_produc=1
	
	Escribir "BIENVENIDO AL ALMACEN DE FEFI"
	Escribir ""
	
	Escribir "Ingrese el nombre del producto que deses"
	Leer producto
	
	Mientras producto <> "X" Hacer
		Repetir
			Escribir "Ingrese precio de producto"
			Leer precio
		Hasta Que precio > 0
		
		Repetir
			Escribir "Ingrese año de creación"
			Leer año
		Hasta Que año > 0
		
		//Repetir
		
		//Hasta Que marca >"X"
		
			Escribir "ingrese marca de producto"
			Leer marca
		
		Escribir "*************************"
		// fin de la vuelta
		
		// calculos
		
	    suma_precio= suma_precio + precio
		contador= contador +1
		
		
		Si marca=="carozzi" Entonces
			conta_marca = conta_marca + 1
		Fin Si
	    
		Si precio>max_precio Entonces
		
			max_precio=precio
			max_nombre= nombre
		FinSI
		
		Si nuevo>nuev_produc Entonces
			nuev_produc= nuevo
			nuev_nombre= nombre
		Fin Si
		
		
		// inicio de la vuelta
		Escribir "Ingrese el nombre del producto que deses(si desea terminar presione X)"
		Leer producto
		
	Fin Mientras
	prom = suma_precio/contador
	
	// respuestas
	Escribir "El promedio de los precios de los productos es ", prom
	
	Escribir "El producto mas caro es ", max_nombre, "con un valor de ", max_precio
	
	Escribir "El producto mas nuevo es ", nuev_produc
	
	Escribir "Los productos marca CAROZZI son ", conta_marca
	
FinAlgoritmo
