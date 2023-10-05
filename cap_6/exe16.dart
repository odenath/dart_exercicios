// Faça um programa que receba o nome de cinco produtos e seus respectivos preços, calcule e mostre:
// a quantidade de produtos com preço inferior a 50
// o nome dos produtos com preço entre 50 e 100
// a média dos preços dos produtos com preço superior a 100

import 'dart:io';

void main() {
  List<String> nomeProduto = [];
  List<double> preco = [];
  int qtdInf50 = 0;
  List<int> indiceEntre50e100 = [];
  double mediaSup100 = 0;
  int contadorMediaSup = 0;

  for (int i = 0; i < 5; i++) {
    print("Digite o nome do produto");
    nomeProduto.add(stdin.readLineSync() ?? '');
    print("Digite o preço do produto:");
    preco.add(double.parse(stdin.readLineSync() ?? '0'));
  }
  for (int i = 0; i < 5; i++) {
    if (preco[i] < 50) {
      qtdInf50++;
    }
    if (preco[i] >= 50 && preco[i] < 100) {
      indiceEntre50e100.add(i);
    }
    if (preco[i] > 100) {
      mediaSup100 += preco[i];
      contadorMediaSup++;
    }
  }
  print("A quantidade de pessoas com preço inferior é de $qtdInf50");
  for (int i = 0; i < indiceEntre50e100.length; i++) {
    print(
        "O nome dos clientes que estão entre 50 e 100 é ${nomeProduto[indiceEntre50e100[i]]}");
  }
  print(
      "A média de pessoas com preço superior a 100 é de ${mediaSup100 / contadorMediaSup}");
}
