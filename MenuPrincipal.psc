Proceso MenuPrincipal
	Definir opcion, total, calif, i, aprobados Como Entero;
	Definir peso_lbs, altura, peso_kg, imc Como Real;
	Definir respuesta Como Cadena;
	
	Repetir
		Escribir "======================";
		Escribir "       MENÚ";
		Escribir "1. Calcular IMC";
		Escribir "2. Verificar Calificaciones";
		Escribir "3. Salir";
		Escribir "Elige una opción (1-3):";
		Leer opcion;
		
		Si opcion = 1 Entonces;
			Escribir "Ingresa tu peso en libras:";
			Leer peso_lbs;
			Escribir "Ingresa tu altura en metros:";
			Leer altura;
			
			peso_kg <- peso_lbs / 2.20462;
			imc <- peso_kg / (altura * altura);
			
			Escribir "Tu IMC es: ", imc;
			
			Si imc < 16 Entonces
				Escribir "Clasificación: Delgadez severa";
			Sino
				Si imc >= 16 Y imc < 17 Entonces
					Escribir "Clasificación: Delgadez moderada";
				Sino
					Si imc >= 17 Y imc < 18.5 Entonces
						Escribir "Clasificación: Delgadez aceptable";
					Sino
						Si imc >= 18.5 Y imc < 25 Entonces
							Escribir "Clasificación: Peso normal";
						Sino
							Escribir "Clasificación: Sobrepeso";
						FinSi
					FinSi
				FinSi
			FinSi
			
		Sino
			Si opcion = 2 Entonces
				Escribir "¿Cuántas calificaciones vas a ingresar?";
				Leer total;
				aprobados <- 0;
				
				Para i <- 1 Hasta total Con Paso 1 Hacer
					Escribir "Ingresa la calificación ", i, ":";
					Leer calif;
					Si calif >= 6 Entonces
						aprobados <- aprobados + 1;
					FinSi
				FinPara
				
				Escribir "Total de alumnos aprobados: ", aprobados;
				
			Sino
				Si opcion = 3 Entonces
					Escribir "Gracias por usar este programa. ¡Hasta pronto!";
				Sino
					Escribir "Opción no válida. Intenta otra vez.";
				FinSi
			FinSi
		FinSi
		
		Si opcion <> 3 Entonces
			Escribir "¿Deseas realizar otra operación? (S/N)";
			Leer respuesta;
		FinSi
		
	Hasta Que opcion = 3 O Mayusculas(respuesta) = "N"

FinProceso
