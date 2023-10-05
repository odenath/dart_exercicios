// Faça um programa que preencha um vetor com 10 números reais, calcule e mostre a quantidade de
// números negativos e a soma dos numeros positivos desse vetor.

import 'dart:math';

void main() {
  List<int> numeros = List.generate(10, (index) {
    int numeroAleatorio = Random().nextInt(201) - 100;
    return numeroAleatorio;
  });
  int somaNegativos = numeros.where((numero) => numero < 0).reduce((a, b) => a + b);
  int quantidadeNegativos = numeros.where((numero) => numero < 0).length;
  int somaPositivos = numeros.where((numero) => numero > 0).reduce((a, b) => a + b);

  print(numeros);
  print("A soma dos numeros negativos é $somaNegativos");
  print("A quantidade de numeros negativos é $quantidadeNegativos");
  print("A soma dos numeros positivos é $somaPositivos");
}
