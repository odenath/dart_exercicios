//Criar um programa que :
//utilize uma sub-rotina para receber os elementos de uma matriz 10x5 de números reais
//utilize uma sub-rotina para calcular a soma de todos os elementos localizados abaixo da sexta linha desta matriz
import 'dart:math';

List<List<int>> geradorDeMatriz() {
  List<List<int>> matrix = List.generate(
      10, (index) => List.generate(5, (index) => Random().nextInt(100)));
  return matrix;
}

int somaAbaixodaSextaLinha(List<List<int>> matrix) {
  int soma = 0;
  for (int i = 0; i < matrix.length; i++) {
    for (int j = 0; j < 5; j++) {
      if (i > 6) {
        soma += matrix[i][j];
      }
    }
  }
  return soma;
}

void main() {
  List<List<int>> matriz1 = geradorDeMatriz();
  for (List linha in matriz1) {
    print(linha);
  }
  print(somaAbaixodaSextaLinha(matriz1));
}
