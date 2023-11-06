// Faça um programa que preencha uma matriz 3x3 com números reais e outro valor numérico digitado
// pelo usuário. O programa deverá calcular a matriz resultante da multiplicação do número digitado por elemento da matriz

import 'dart:io';
import 'dart:math';

void main() {
  List<List<double>> matriz = List.generate(
    3, (row) => List.generate(3, (collumn) => (Random().nextDouble() * 200) - 100));
  List<List<double>> matrizFinal =
      List.generate(3, (row) => List.generate(3, (collumn) => 0));
  int numero;
  print("Digite um número inteiro");
  numero = int.parse(stdin.readLineSync() ?? '0');
  for (List<double> linha in matriz) {
    print(linha.map((numero) => numero.toStringAsFixed(2)).toList());
  }
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      matrizFinal[i][j] = matriz[i][j] * numero;
    }
  }
  for (List<double> linha in matrizFinal) {
    print(linha);
  }
}
