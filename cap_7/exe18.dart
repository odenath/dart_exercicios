// Faça um programa que preencha uma matriz 8x6 de inteiros,
// calcule e mostre a média dos elementos das linhas pares da matriz;

import 'dart:math';

void main() {
  List<List<int>> matriz =
      List.generate(8, (i) => List.generate(6, (j) => Random().nextInt(100)));
  List<int> media = [];
  int temp = 0;

  for (List<int> linha in matriz) {
    print(linha);
  }
  for (int i = 0; i < matriz.length; i++) {
    for (int j = 0; j < 6; j++) {
      if (i % 2 == 0) {
        temp += matriz[i][j];
      }
    }
    if(temp != 0){
      media.add(temp);
    }
    
    temp = 0;
  }
  print("");
  print(media);
}
