Proceso ClasificarAngulo
    Definir angulo Como Real;
    
    Escribir "Ingrese el valor del �ngulo en grados:";
    Leer angulo;
	
    Si angulo < 90 Entonces
        Escribir "El �ngulo es agudo.";
    Sino
        Si angulo = 90 Entonces
            Escribir "El �ngulo es recto.";
        Sino
            Escribir "El �ngulo es obtuso.";
        FinSi
    FinSi
	
FinProceso
