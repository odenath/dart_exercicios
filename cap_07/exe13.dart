// Faça uma matriz 2x3, calcule e mostre a quantidade de elementos da matriz que não pertencem ao intervalo[5,15]

import 'dart:math';

void main() {
  List<List<int>> matriz = List.generate(
      2, (row) => List.generate(3, (collumn) => Random().nextInt(100)));
  int qtd5E15 = 0;

  for (List<int> linha in matriz) {
    print(linha);
  }
   for (List<int> linha in matriz) {
    for (int elemento in linha) {
      if (elemento < 5 || elemento > 15) {
        qtd5E15++;
      }
    }
  }
  print("A quantidade de elementos que não pertencem ao intervalo [5,15] é: $qtd5E15");
 
}
