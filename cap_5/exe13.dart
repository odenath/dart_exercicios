//Faça um programa que receba a idade e o peso de quinze pessoas, e que calcule e mostre
////as médias das pessoas da mesma faixa etária.
//As faixas etárias são de 1 a 10 anos, de 11 a 20 anos, de 21 a 30 anos e de 31 anos p/cima

import "dart:io";

void main() {
  int idade;
  int peso;
  double media1 = 0;
  int contador1 = 0;
  double media2 = 0;
  int contador2 = 0;
  double media3 = 0;
  int contador3 = 0;
  double media4 = 0;
  int contador4 = 0;
  for (int i = 0; i < 10; i++) {
    print("Digite a idade da pessoa ${i + 1}");
    idade = int.parse(stdin.readLineSync() ?? '0');
    print("Digite o peso da pessoa ${i + 1}");
    peso = int.parse(stdin.readLineSync() ?? '0');
    if (idade > 1 && idade <= 10) {
      media1 += peso;
      contador1++;
    }
    if (idade > 10 && idade <= 20) {
      media2 += peso;
      contador2++;
    }
    if (idade > 20 && idade <= 30) {
      media3 += peso;
      contador3++;
    }
    if (idade > 30) {
      media4 += peso;
      contador4++;
      }
    }
    print("A média de peso da faixa etária de 1 a 10 anos é ${media1 / contador1}");
    print("A média de peso da faixa etária de 11 a 20 anos é ${media2 / contador2}");
    print("A média de peso da faixa etária de 21 a 30 anos é ${media3 / contador3}");
    print("A média de peso da faixa etária de 31 anos para cima é ${media4 / contador4}");
  
  }

