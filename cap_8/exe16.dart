//Faça uma sub-rotina que receba um vetor X de 20 números reais como parâmetro e retorne a soma dos elementos de X;

import 'dart:math';

int somaElementos(List<int> matrix) {
  int soma = matrix.reduce((a, b) => a + b);

  return soma;
}

void main() {
  List<int> listinha =
      List.generate(20, (index) => Random().nextInt(201) * 100);
  print(listinha);
  print(somaElementos(listinha));
}
