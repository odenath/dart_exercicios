//Elabore uma sub-rotina que receba um vetor X de 15 números inteiros como parâmetro e retorne a quantidade de valores pares em X;
import 'dart:math';

int qtdPares(List<int> matrix) {
  int qtd = 0;
  for (int i = 0; i < matrix.length; i++) {
    if (matrix[i] % 2 == 0) {
      qtd++;
    }
  }
  return qtd;
}

void main() {
  List<int> listinha =
      List.generate(15, (index) => Random().nextInt(201) - 100);
  print(listinha);
  print(qtdPares(listinha));
}
