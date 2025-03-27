Proceso MenuPrincipal
	Definir opcion, total, calif, i, aprobados Como Entero;
	Definir peso_lbs, altura, peso_kg, imc Como Real;
	Definir respuesta Como Cadena;
	
	Repetir
		Escribir "======================";
		Escribir "       MEN�";
		Escribir "1. Calcular IMC";
		Escribir "2. Verificar Calificaciones";
		Escribir "3. Salir";
		Escribir "Elige una opci�n (1-3):";
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
				Escribir "Clasificaci�n: Delgadez severa";
			Sino
				Si imc >= 16 Y imc < 17 Entonces
					Escribir "Clasificaci�n: Delgadez moderada";
				Sino
					Si imc >= 17 Y imc < 18.5 Entonces
						Escribir "Clasificaci�n: Delgadez aceptable";
					Sino
						Si imc >= 18.5 Y imc < 25 Entonces
							Escribir "Clasificaci�n: Peso normal";
						Sino
							Escribir "Clasificaci�n: Sobrepeso";
						FinSi
					FinSi
				FinSi
			FinSi
			
		Sino
			Si opcion = 2 Entonces
				Escribir "�Cu�ntas calificaciones vas a ingresar?";
				Leer total;
				aprobados <- 0;
				
				Para i <- 1 Hasta total Con Paso 1 Hacer
					Escribir "Ingresa la calificaci�n ", i, ":";
					Leer calif;
					Si calif >= 6 Entonces
						aprobados <- aprobados + 1;
					FinSi
				FinPara
				
				Escribir "Total de alumnos aprobados: ", aprobados;
				
			Sino
				Si opcion = 3 Entonces
					Escribir "Gracias por usar este programa. �Hasta pronto!";
				Sino
					Escribir "Opci�n no v�lida. Intenta otra vez.";
				FinSi
			FinSi
		FinSi
		
		Si opcion <> 3 Entonces
			Escribir "�Deseas realizar otra operaci�n? (S/N)";
			Leer respuesta;
		FinSi
		
	Hasta Que opcion = 3 O Mayusculas(respuesta) = "N"

FinProceso
