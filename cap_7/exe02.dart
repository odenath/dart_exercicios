// Crie um programa que preencha uma matriz 2x4 com números inteiros, calcule e mostre:
// -a qtd de elementos entre 12 e 20 em cada linha
// -a média dos elementos pares da matriz.

import 'dart:math';

void main(){
  List<List<int>> lista = List.generate(2, (row) => List.generate(4, (number) => Random().nextInt(21)));
  int qtd = 0;
  int soma = 0;
  int media = 0;
  for (List<int> linha in lista) {
    print(linha);
  }
  for (List<int> linha in lista) {
    for (int number in linha) {
      if (number >= 12 && number <= 20) {
        qtd++;
        print(number);
      }
      if (number % 2 == 0) {
        soma += number;
      }
    }
  }
  media = soma ~/ (lista.length * lista[0].length);
  print("Totalizou $qtd números entre 12 e 20");
  print("A média dos números pares é $media");
}