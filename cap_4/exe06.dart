//Faça um programa que receba 2 números e faça as operações
//O primeiro elevado ao segundo número
//Raiz quadrada de cada um dos números
//Raiz cúbica de cada um dos número

import 'dart:io';
import 'dart:math';

void main() {
  print("Digite o primeiro número:");
  int number1 = int.parse(stdin.readLineSync() ?? '0');
    print("Digite o segundo número:");
  int number2 = int.parse(stdin.readLineSync() ?? '0');

  print("Resultado da potência: ${pow(number1,number2)}");

    if (number1 >= 0 && number2 >= 0) {
    // Calcula a raiz quadrada de cada número
    double raizQuadrada1 = sqrt(number1);
    double raizQuadrada2 = sqrt(number2);
    print("Raiz quadrada do primeiro número: $raizQuadrada1");
    print("Raiz quadrada do segundo número: $raizQuadrada2");

    // Calcula a raiz cúbica de cada número
    double raizCubica1 = pow(number1, 1/3)as double;
    double raizCubica2 = pow(number2, 1/3).toDouble();
    print("Raiz cúbica do primeiro número: $raizCubica1");
    print("Raiz cúbica do segundo número: $raizCubica2");
  } else {
    print("A raiz quadrada e a raiz cúbica não são definidas para números negativos.");
  }

}



 







