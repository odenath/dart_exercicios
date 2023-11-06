//Uma empresa decide aplicar descontos nos seus preço usando a tabela a seguir
//Faça um programa que receba o preço atual de um produto e seu código e que //calcule e mostre o valor de desconto e o novo preço
//30 sem desconto
//30-100 10%
//<100   15%

import 'dart:io';

void main() {
  double valor = 1;

  while (valor > 0) {
    print("Digite o valor - para parar digite um número negativo");
    valor = double.parse(stdin.readLineSync() ?? '0');
    if (valor < 30) {
      print("Seu novo valor é $valor");
    } else if (valor >= 30 && valor < 100) {
      print("Seu novo valor é ${valor * 1.1}");
    } else {
      print("Seu novo valor é ${valor * 1.15}");
    }
  }
}
