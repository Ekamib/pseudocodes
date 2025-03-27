Algoritmo VentaZapatosPorTarifa
	Definir tarifa Como Caracter;
	Definir cantidad, precioUnitario, totalVenta, impuesto, totalPagar Como Real;
	Definir totalA, totalB, totalC, clientesAtendidos, ingresoTotal Como Real;
	Definir paresA, paresB, paresC Como Entero;
	
	// Inicialización de variables
	totalA <- 0;
	totalB <- 0;
	totalC <- 0;
	paresA <- 0;
	paresB <- 0;
	paresC <- 0;
	clientesAtendidos <- 0;
	ingresoTotal <- 0;
	
	Repetir
		Escribir "Tarifa no valida - intente nuevamente.";

		Leer tarifa;
		tarifa <- Mayusculas(tarifa);
		
		Si tarifa <> "X" Entonces
			Escribir "Ingrese cantidad de pares a comprar:";
			Leer cantidad;
			
			Si tarifa = "A" Entonces
				precioUnitario <- 220;
				paresA <- paresA + cantidad;
			Sino
				Si tarifa = "B" Entonces
					precioUnitario <- 210;
					paresB <- paresB + cantidad;
				Sino
					Si tarifa = "C" Entonces
						precioUnitario <- 200;
						paresC <- paresC + cantidad;
					Sino
						Escribir "Tarifa no valida - intente nuevamente.";
						precioUnitario <- 0;
					FinSi
				FinSi
			FinSi
			
			Si precioUnitario > 0 Entonces
				totalVenta <- precioUnitario * cantidad;
				impuesto <- totalVenta * 0.15;
				totalPagar <- totalVenta + impuesto;
				
				Escribir "Tipo de tarifa: ", tarifa;
				Escribir "Total venta: L ", totalVenta;
				Escribir "Impuesto (15%): L ", impuesto;
				Escribir "Total a pagar: L ", totalPagar;
				
				clientesAtendidos <- clientesAtendidos + 1;
				ingresoTotal <- ingresoTotal + totalPagar;
			FinSi
		FinSi
	Hasta Que tarifa = "X";
	
	Escribir "---- Reporte Final ----";
	Escribir "Pares vendidos en tarifa A: ", paresA;
	Escribir "Pares vendidos en tarifa B: ", paresB;
	Escribir "Pares vendidos en tarifa C: ", paresC;
	Escribir "Total clientes atendidos: ", clientesAtendidos;
	Escribir "Ingreso total del día: L ", ingresoTotal;
FinAlgoritmo

