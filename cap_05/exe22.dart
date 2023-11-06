//Elabore um programa que receba a idade e a altura de várias pessoas, calcule a mostre
//a média das alturas com mais de 50
//Para encerrar, digite idade menor ou igual a zero;

import 'dart:io';

void main() {
  int idade;
  double altura;
  double alturaMedia = 0;
  int contaVeia = 0;
  do {
    print("Digite a sua idade");
    idade = int.parse(stdin.readLineSync() ?? '0');
    if (idade <= 0) {
      break;
    }
    print("Digite a sua altura");
    altura = double.parse(stdin.readLineSync() ?? '0');
    if (idade > 50) {
      alturaMedia += altura;
      contaVeia++;
    }
  } while (idade > 0);

  print(
      "A média de da altura de velhos com mais de 50 anos é ${alturaMedia / contaVeia}");
}
