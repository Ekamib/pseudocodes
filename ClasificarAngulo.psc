Proceso ClasificarAngulo
    Definir angulo Como Real;
    
    Escribir "Ingrese el valor del ángulo en grados:";
    Leer angulo;
	
    Si angulo < 90 Entonces
        Escribir "El ángulo es agudo.";
    Sino
        Si angulo = 90 Entonces
            Escribir "El ángulo es recto.";
        Sino
            Escribir "El ángulo es obtuso.";
        FinSi
    FinSi
	
FinProceso
