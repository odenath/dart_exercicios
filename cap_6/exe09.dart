// Faça um programa que preencha três vetores com 10 posições cada um, o primeiro vetor, com os nomes
// de 10 produtos, o segundo vetor, com os códigos dos 10 produtos, e o terceiro vetor, com os preços dos produtos.
//Mostre 1 relatório apenas com o nome, o código, o preço e o novo preço dos
// produtos que sofrerão aumento.
// Sabe-se que os produtos que sofrerão aumento são aqueles que possuem código par ou preço superior
// a 1000. Sabe-se ainda que, para os produtos que satisfazem às duas condições anteriores, código e
// preço, o aumento será de 20%, para aqueles que satisfazem apenas à condição de código, o aumento
// será de 15% e para aqueles que satisfazem apenas à condição de preço, o aumento será de 10%.

import 'dart:io';

void main() {
  List<String> nomes = [];
  List<int> cod = [];
  List<double> preco = [];
  List<int> indice = [];

  for (int i = 0; i < 3; i++) {
    print("Digite o nome do ${i + 1} produto");
    nomes.add(stdin.readLineSync() ?? '');
    print("Digite o códio do produto ${i + 1}");
    cod.add(int.parse(stdin.readLineSync() ?? '0'));
    print("Digite o preço do produto ${i + 1}");
    preco.add(double.parse(stdin.readLineSync() ?? '0'));
  }
  for (int i = 0; i < 3; i++) {
    if (cod[i] % 2 == 0 && preco[i] > 1000) {
      preco[i] *= 1.2;
      indice.add(i);
    } else if (cod[i] % 2 == 0) {
      preco[i] *= 1.15;
      indice.add(i);
    } else if (preco[i] > 1000) {
      preco[i] *= 1.10;
      indice.add(i);
    }
  }
  for (int i = 0; i < indice.length; i++) {
    print("O produto ${nomes[indice[i]]}, de código ${cod[indice[i]]}, teve um reajuste de ${preco[indice[i]]}");
  }
}
