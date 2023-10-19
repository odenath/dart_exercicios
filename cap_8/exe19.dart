//Faça uma sub-rotina que receba como parâmetro dois vetores de 10 números inteiros, determine e mostre o vetor intersecção entre eles.

import 'dart:math';

List<int> interseccao(List<int> listaA, List<int> listaB) {
  List<int> listaFinal = [];

  for (int i = 0; i < listaA.length; i++) {
    for (int j = 0; j < listaB.length; j++) {
      if (listaA[i] == listaB[j]) {
        listaFinal.add(listaA[i]);
      }
    }
  }

  return listaFinal;
}

void main() {
  List<int> listaA = List.generate(10, (index) => Random().nextInt(20));
  List<int> listaB = List.generate(10, (index) => Random().nextInt(20));

  print(listaA);
  print(listaB);

  print(interseccao(listaA, listaB));
}
