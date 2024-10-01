Algoritmo compra_y_venta
	// Crear un diagrama de flujo que realice lo siguiente:
	// Ingrese nombre del comprador   °
	// Ingrese producto   °
	// Ingrese precio    °
	// Ingrese cantidad     O 
	// Finalizar productos hasta que ingresar el producto X   °
	// Ingrese uno de los 3 vendedores o cajeros
	// (que atendio al cliente)
	// Calcular el total a pagar
	Definir producto,nombre,vendedor Como Caracter
	Definir precio,cantidad Como Entero
	Escribir 'Bienvenido al supermercado de fefi'
	Escribir ''
	// ingreso de datos
	Escribir 'Ingrese nombre del comprador'
	Leer nombre
	Escribir 'Ingrese producto'
	Leer producto
	Mientras producto<>'X' Hacer
		Repetir
			Escribir 'Ingrese precio'
			Leer precio
		Hasta Que (precio>=0) Y (precio<=10000)
		
		Repetir
			Escribir 'Ingrese cantidad de producto'
			Leer cantidad
		Hasta Que (cantidad>=0) Y (cantidad<=50)
		
	
		totalpagar <- precio*cantidad
		
		totalfinal <- totalfinal+totalpagar
		
		// fin de la vuelta de productos
		// calculos
		// nueva vuelta o nuevo producto
		Escribir 'Ingrese producto','(se decea finaizar precione X)'
		Leer producto
	FinMientras
	Repetir
		Escribir 'Ingrese que vendedor lo atendio'
		Escribir ''
		Escribir 'A:stich'
		Escribir 'B:gala'
		Escribir 'C:lia'
		Leer vendedor
	Hasta Que vendedor=='A' O vendedor=='B' O vendedor=='C'
	Si vendedor== 'A' Entonces
		vendedor <- "stich"
	FinSi
	Si Vendedor=='B' Entonces
		vendedor <- "gala"
	FinSi
	Si vendedor=='C' Entonces
		vendedor <- "lia"
	FinSi
	Escribir ''
	Escribir nombre,' su total a pagar es de ',totalfinal,' y fue atendido por ',vendedor
FinAlgoritmo

