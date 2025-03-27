Proceso MenuPrincipal
	Definir opcion Como Entero;
	Repetir
		Escribir "=== MENÚ PRINCIPAL ===";
		Escribir "1. Programa Secuencial";
		Escribir "2. Programa Condicional";
		Escribir "3. Salir";
		Escribir "Seleccione una opción:";
		Leer opcion;
		
		Segun opcion Hacer
			Caso 1:
				// Programa Secuencial
				Definir horas, precioHora, sueldoBruto, impuesto, sueldoNeto Como Real;
				Escribir "Ingrese el número de horas trabajadas:";
				Leer horas;
				Escribir "Ingrese el precio por hora:";
				Leer precioHora;
				
				sueldoBruto <- horas * precioHora;
				impuesto <- sueldoBruto * 0.20;
				sueldoNeto <- sueldoBruto - impuesto;
				
				Escribir "El sueldo bruto es: $", sueldoBruto;
				Escribir "El impuesto (20%) es: $", impuesto;
				Escribir "El sueldo neto es: $", sueldoNeto;
			Caso 2:
				// Programa Condicional
				Definir cantidadVotantes, voto, votosA, votosB Como Entero;
				votosA <- 0;
				votosB <- 0;
				
				Escribir "Ingrese la cantidad de votantes:";
				Leer cantidadVotantes;
				
				Para i <- 1 Hasta cantidadVotantes Con Paso 1
					Escribir "Votante ", i, ": Ingrese su voto (0 para A, 1 para B):";
					Leer voto;
					Si voto = 0 Entonces
						votosA <- votosA + 1;
					Sino
						votosB <- votosB + 1;
					FinSi
				FinPara
				
				Escribir "Resultados:";
				Escribir "Candidato A: ", votosA, " votos";
				Escribir "Candidato B: ", votosB, " votos";
				
				Si votosA > votosB Entonces
					Escribir "Ganó el Candidato A";
				Sino
					Si votosB > votosA Entonces
						Escribir "Ganó el Candidato B";
					Sino
						Escribir "Empate entre ambos candidatos";
					FinSi
				FinSi
			Caso 3:
				Escribir "Gracias por usar el programa. ¡Hasta luego!";
			De Otro Modo:
				Escribir "Opción inválida. Intente nuevamente.";
		FinSegun
	Hasta Que opcion = 3
FinProceso
