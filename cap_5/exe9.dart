//Faça um programa que receba dez idades, pesos e alturas, calcule e mostre:
//
// a média das idades das dez pessoas/
// a quantidade de pessoas com peso superior a 90 kg a altura inferior a 1,5 metros ou 150 cm/
// a percentagem de pessoas com idade entre 10 e 30 anos entre as pessoas que medem //mais de 1,9 metros

import 'dart:io';

void main() {
  int idade;
  double peso;
  int altura;
  int mediaIdade = 0;
  int contadorGordos = 0;
  int contador1030190 = 0;

  for (int i = 0; i < 10; i++) {
    print("Digite a sua idade");
    idade = int.parse(stdin.readLineSync() ?? '0');
    mediaIdade += idade;
    print("Digite o seu peso,utilize a vírgula para separar os gramas");
    peso = double.parse(stdin.readLineSync() ?? '0');
    print("Digite a sua altura em CM");
    altura = int.parse(stdin.readLineSync() ?? '0');
    if (peso > 90 && altura < 150) {
      contadorGordos++;
    }
    if (idade >= 10 && idade <= 30 && altura > 190) {
      contador1030190++;
    }
  }
  print("A média das idades das dez pessoas é: ${mediaIdade / 10}");
  print(
      "A quantidade de pessoas que tem mais de 90kg e menos de 150cm é de $contadorGordos");
  print(
      "A porcentagem de pessoas entre 10 a 30 anos e que tem mais de 190cm é de ${(contador1030190 / 10) * 100}");
}
