//Faça um programa que receba 10 números, calcule e mostre a soma dos números pares e dos números primos.

import 'dart:io';

void main() {
  int numero;
  int somaNumerosPares = 0;
  int somaNumerosPrimos = 0;
  int contadorNumerosPrimos = 0;

  for (int i = 0; i < 2; i++) {
    numero = int.parse(stdin.readLineSync() ?? '0');
    if (numero % 2 == 0) {
      somaNumerosPares += numero;
    }
    for (int j = 1; j <= numero; j++) {
      if (numero % j == 0) {
        contadorNumerosPrimos++;
      }
    }
    if (contadorNumerosPrimos == 2) {
      somaNumerosPrimos += numero;
    }
    contadorNumerosPrimos = 0;
  }
  print("A soma dos números pares é $somaNumerosPares");
  print("A soma dos números primos é $somaNumerosPrimos");
}
