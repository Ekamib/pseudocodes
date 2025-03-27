Algoritmo Calculo_IMC
    Definir peso_libras, peso_kg, altura, imc Como Real;
    
    // Entrada de datos
    Escribir "Ingrese su peso en libras: ";
    Leer peso_libras;
    Escribir "Ingrese su altura en metros: ";
    Leer altura;
    
    // Validación de datos
    Si peso_libras <= 0 O altura <= 0 Entonces
        Escribir "Error: El peso y la altura deben ser mayores a 0.";
    Sino
        // Conversión de peso de libras a kilogramos
        peso_kg <- peso_libras * 0.453592;
        
        // Cálculo del IMC
        imc <- peso_kg / (altura * altura);
        
        // Salida de resultados con formato adecuado
        Escribir "Peso en kilogramos: ", peso_kg;
        Escribir "Su Índice de Masa Corporal (IMC) es: ", imc;
    FinSi
    
FinAlgoritmo
