// Elabore um programa que preencha uma matriz 6 x 3, calcule e mostre:
// -o maior elemento da matriz e sua respectiva posição ou seja, sua linha e coluna;
// -o menor elemento da matriz e sua respectiva posição ou seja, sua linha e coluna;

import 'dart:math';

void main() {
  List<List<int>> matriz = List.generate(
      6, (row) => List.generate(3, (number) => Random().nextInt(100)));
  int maiorElemento = matriz[0][0];
  int maiorLinha = 0;
  int maiorColuna = 0;
  int menorElemento = matriz[0][0];
  int menorLinha = 0;
  int menorColuna = 0;

  for (List<int> linha in matriz) {
    print(linha);
  }
  int tempP = matriz[0][0];
  int tempN = matriz[0][0];
  for (int i = 0; i < 6; i++) {
    for (int j = 0; j < 3; j++) {
      tempP = matriz[i][j];
      tempN = matriz[i][j];
      if (tempP > maiorElemento) {
        maiorElemento = tempP;
        maiorLinha = i;
        maiorColuna = j;
      }
      if (tempN < menorElemento) {
        menorElemento = tempN;
        menorLinha = i;
        menorColuna = j;
      }
    }
  }
  print("$maiorElemento $maiorLinha $maiorColuna");
  print("$menorElemento $menorLinha $menorColuna");
}
