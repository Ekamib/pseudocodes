Proceso CalcularSolido
    Definir opcion Como Entero;
    Definir radio, altura, base, apotema, area, volumen Como Real;
    Definir valor_pi Como Real;
    valor_pi <- 3.1416;
	
    Escribir "Seleccione una opci�n para calcular:";
    Escribir "1. Esfera";
    Escribir "2. Pir�mide";
    Escribir "3. Cilindro";
    Leer opcion;
	
    Segun opcion Hacer
        Caso 1:  // Esfera
            Escribir "Ingrese el radio de la esfera:";
            Leer radio;
            area <- 4.0 * valor_pi * (radio * radio);
            volumen <- (4.0 / 3.0) * valor_pi * (radio * radio * radio);
            Escribir "�rea de la superficie de la esfera: ", area;
            Escribir "Volumen de la esfera: ", volumen;
			
        Caso 2:  // Pir�mide
            Escribir "Ingrese la base de la pir�mide:";
            Leer base;
            Escribir "Ingrese la altura de la pir�mide:";
            Leer altura;
            Escribir "Ingrese la apotema de la pir�mide:";
            Leer apotema;
            area <- (base * apotema) / 2.0;
            volumen <- (1.0 / 3.0) * base * altura;
            Escribir "�rea de la superficie de la pir�mide: ", area;
            Escribir "Volumen de la pir�mide: ", volumen;
			
        Caso 3:  // Cilindro
            Escribir "Ingrese el radio del cilindro:";
            Leer radio;
            Escribir "Ingrese la altura del cilindro:";
            Leer altura;
            area <- 2.0 * valor_pi * radio * (radio + altura);
            volumen <- valor_pi * (radio * radio) * altura;
            Escribir "�rea de la superficie del cilindro: ", area;
            Escribir "Volumen del cilindro: ", volumen;
			
        De Otro Modo:
            Escribir "Opci�n no v�lida. Por favor, seleccione una opci�n entre 1 y 3.";
    FinSegun;
FinProceso

