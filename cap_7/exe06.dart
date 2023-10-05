// Faça um programa que preencha uma matriz de 20x10 com números inteiros e some cada uma das colunas,
// armazenando o resultao da soma em um vetor. A seguir, o programa deverá multiplicar cada elemento da
// matriz pela soma da coluna e mostrar a matriz resultante.

import 'dart:math';

void main() {
  List<List<int>> matriz = List.generate(
      20, (row) => List.generate(10, (collumn) => Random().nextInt(100)));
  List<int> soma = List.filled(10, 0);
  List<List<int>> matrizFinal = List.generate(
      20, (row) => List.generate(10, (collumn) => Random().nextInt(100)));

  for (List<int> linha in matriz) {
    print(linha);
  }

  for (int i = 0; i < 20; i++) {
    for (int j = 0; j < 10; j++) {
      soma[j] += matriz[i][j];
    }
  }
  print(soma);
  for (int i = 0; i < 20; i++) {
    for (int j = 0; j < 10; j++) {
     matrizFinal[i][j]= matriz[i][j] * soma[j];
    }
  }
  for (List<int> linha in matrizFinal) {
    print(linha);
  }
}

//Depois voltar para ver a solução do professor
