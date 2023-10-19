//Crie uma sub-rotina que receba como parâmetro um valor inteiro e positivo e retorne a soma dos divisores
//cracking the coding interview

import 'dart:io';

dynamic soma(int numero) {
  List<int> todosDivisores = [];
  int soma = 0;
  for (int i = 1; i <= numero; i++) {
    if (numero % i == 0) {
      todosDivisores.add(i);
    }
  }
  for (int item in todosDivisores) {
    soma += item;
  }
  print(todosDivisores);
  return soma;
}

void main() {
  print("Digite um número e eu vou retornar a soma dos divisores");
  int number = int.parse(stdin.readLineSync() ?? '0');
  print(soma(number));
}
