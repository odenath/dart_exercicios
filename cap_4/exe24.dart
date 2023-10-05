//Faça um programa que receba o preço, a categoria(1-limpeza, 2-alimentação ou 3 vestuário e a situação (R- produtos que necessitam de refrigeração e N- produtos que n necessitam de refrigeração
//o valor do aumento, usando as regras que se seguem
//<=25  1 5% 2 8% 3 10%
//>25 1 12% 2 15% 3 18%

import 'dart:io';

void main() {
  double preco;
  int categoria;
  String situacao;
  double aumento;
  double novoPreco;

  print("Digite o preço do produto: ");
  preco = double.parse(stdin.readLineSync()!);
  print(
      "Digite a categoria do produto: 1-limpeza, 2-alimentação ou 3-vestuário");
  categoria = int.parse(stdin.readLineSync()!);
  print(
      "Digite a situação do produto: R- produtos que necessitam de refrigeração e N- produtos que n necessitam de refrigeração");
  situacao = stdin.readLineSync()!;
  if (preco <= 25 && categoria == 1) {
    aumento = preco * 0.05;
    novoPreco = preco + aumento;
    print("O valor do aumento é de: $aumento");
    print("O novo preço é de: $novoPreco $situacao");
  } else if (preco <= 25 && categoria == 2) {
    aumento = preco * 0.08;
    novoPreco = preco + aumento;
    print("O valor do aumento é de: $aumento");
    print("O novo preço é de: $novoPreco");
  } else if (preco <= 25 && categoria == 3) {
    aumento = preco * 0.10;
    novoPreco = preco + aumento;
    print("O valor do aumento é de: $aumento");
    print("O novo preço é de: $novoPreco");
  } else if (preco > 25 && categoria == 1) {
    aumento = preco * 0.12;
    novoPreco = preco + aumento;
    print("O valor do aumento é de: $aumento");
    print("O novo preço é de: $novoPreco");
  } else if (preco > 25 && categoria == 2) {
    aumento = preco * 0.15;
    novoPreco = preco + aumento;
    print("O valor do aumento é de: $aumento");
    print("O novo preço é de: $novoPreco");
  } else if (preco > 25 && categoria == 3) {
    aumento = preco * 0.18;
    novoPreco = preco + aumento;
    print("O valor do aumento é de: $aumento");
    print("O novo preço é de: $novoPreco");
  }
}
