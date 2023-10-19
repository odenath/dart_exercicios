//Crie um programa que preencha uma matriz 6x10, some as colunas individualmente e acumule as somas na 7ª linha da matriz. O programa
//deverá mostrar o resultado de cada coluna.

import 'dart:math';

void main() {
  List<List<int>> matriz = List.generate(
      6, (index) => List.generate(10, (index) => Random().nextInt(100)));
  List<int> soma = List.filled(10, 0);

  for (List<int> linha in matriz) {
    print(linha);
  }
  for (int i = 0; i < matriz.length; i++) {
    soma = matriz.map((e) => e.reduce((a, b) => a + b)).toList();
  }
  print("");
  print(soma);
  print("");
  matriz.add(soma);
  for (List<int> linha in matriz) {
    print(linha);
  }
}
