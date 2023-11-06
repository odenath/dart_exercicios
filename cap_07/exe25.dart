// Faça um programa que receba os preços de 20 produtos em cinco lojas diferentes e armazene-os em uma matriz 20 x 5. Desconsidere empates,
// o programa deverá mostrar o número do produto e o número da loja do produto mais caro

import 'dart:math';

void main() {
  List<List<int>> matriz = List.generate(
      3, (row) => List.generate(3, (collumn) => Random().nextInt(100)));
  int maisCaroLojaProduto;

  for (List<int> i in matriz) {
    print(i);
  }
  maisCaroLojaProduto =
      matriz.expand((e) => e).reduce((a, b) => a > b ? a : b).toInt();
  print("O produto mais caro é o de valor R\$: $maisCaroLojaProduto");
  // matriz.getIndexof(maisCaroLojaProduto);
  // print("Da loja ${}")
  for (int i = 0; i < matriz.length; i++) { 
      if (matriz[i].any((e) => e==maisCaroLojaProduto)) {
        print("A LINHA É A ${i+1}");
      } 
  }
}
