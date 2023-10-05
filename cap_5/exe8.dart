//Fça um programa que receba a idade/, o peso/, a altura/, a cor dos olhos/
// A azul
// P preto
// V verde
// C castanho
// e a cor dos cabelos
// P preto
// C castanho
// L louro
// R ruivo
// de vinte pessoas e que calcule e mostre:
//a quantidade de pessoas com idade superior a 50 anos e peso inferior a 60 kg;/
//a média das idades das pessoas com altura inferior a 1,5 metros;/
//a percentagem de pessoas com olhos azuis entre todas as pessoas analizadas/
//a quantidade de pessoas ruivas e que n possuem olhos azuis

import 'dart:io';

void main() {
  int idade;
  double peso;
  int altura;
  String corOlhos;
  String corCabelos;
  int idadeSuperior50e60kg = 0;
  int idadeInferior150 = 0;
  int contadorAlturaInferior150 = 0;
  int contadorOlhosAzuis = 0;
  int contadorRuivasSemOlhosAzuis = 0;
  for (int i = 0; i < 25; i++) {
    print("Digite a sua idade");
    idade = int.parse(stdin.readLineSync() ?? '0');
    print("Digite o seu peso");
    peso = double.parse(stdin.readLineSync() ?? '0');
    print("Digite a sua altura em CM");
    altura = int.parse(stdin.readLineSync() ?? '0');
    print("Digite a cor dos seus olhos:");
    corOlhos = stdin.readLineSync()!;
    switch (corOlhos.toUpperCase().substring(0, 1)) {
      case "A":
        corOlhos = "A";
        print(corOlhos);
        break;
      case "P":
        corOlhos = "P";
        print(corOlhos);
        break;
      case "V":
        corOlhos = "V";
        print(corOlhos);
        break;
      case "C":
        corOlhos = "C";
        print(corOlhos);
        break;
      default:
        print("Cor dos olhos inválida");
    }
    print("Digite a cor dos seus cabelos:");
    corCabelos = stdin.readLineSync()!;
    switch (corCabelos.toUpperCase().substring(0, 1)) {
      case "P":
        corCabelos = "P";
        print(corCabelos);
        break;
      case "C":
        corCabelos = "C";
        print(corCabelos);
        break;
      case "L":
        corCabelos = "L";
        print(corCabelos);
        break;
      case "R":
        corCabelos = "R";
        print(corCabelos);
        break;
      default:
        print("Cor dos cabelos inválida");
    }
    if (idade > 50 && peso < 60) {
      idadeSuperior50e60kg++;
    }
    if (altura < 150) {
      idadeInferior150 += idade;
      contadorAlturaInferior150++;
    }
    if (corOlhos == "A") {
      contadorOlhosAzuis++;
    }
    if (corOlhos == "A" && corCabelos != "R") {
      contadorRuivasSemOlhosAzuis++;
    }
  }
  print(
      "Quantidade de pessoas com idade superior a 50 anos e peso inferior a 60kg: $idadeSuperior50e60kg");
  print(
      "Média das idades das pessoas com altura inferior a 1,5 metros: ${idadeInferior150 / contadorAlturaInferior150}");
  print(
      "A porcentagem  de pessoas com olhos azuis é ${(contadorOlhosAzuis / 25) * 100}%");
  print(
      "A quantidade de pessoas ruivas que não possuem olhos azuis é de  $contadorRuivasSemOlhosAzuis");
}
