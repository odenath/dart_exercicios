//Faça um programa que receba:
// o código do produto comprado
// a quantidade comprada do produto
//
//Calcule e mostre:
// O preço unitário do produto comprado a tabela 1:
// O preço total da nota
// O valor do desconto, seguindo a tabela 2 e aplicando sobre o preço total
// da nota
// o preço final da nmota depois do desconto
//TABELA 1
//1 a 10 10reais
//11 a 20 15 reais
//21 a 30 20 reais
//31 a 40 30 reais
//TABELA 2
//até 250 5 %
//de 250 a 500 10%
//acima de 500 15%

import 'dart:io';

void main() {
  int codigo;
  int quantidade;
  print('Digite o codigo do produto');
  codigo = int.parse(stdin.readLineSync() ?? '0');
  print('Digite a quantidade do produto');
  quantidade = int.parse(stdin.readLineSync() ?? '0');

  if (codigo >= 1 && codigo <= 10) {
    print("O preço unitário do produto comprado é 10 reais");
    print("O preço total da nota é ${quantidade * 10} reais");
    if (quantidade * 10 <= 250) {
      print("O valor do desconto é ${quantidade * 10 * 0.05} reais");
      print(
          "O preço final da nota depois do desconto é ${quantidade * 10 * 0.95} reais");
    } else if (quantidade * 10 > 250 && quantidade * 10 <= 500) {
      print("O valor do desconto é ${quantidade * 10 * 0.1} reais");
      print(
          "O preço final da nota depois do desconto é ${quantidade * 10 * 0.9} reais");
    } else if (quantidade * 10 > 500) {
      print("O valor do desconto é ${quantidade * 10 * 0.15} reais");
      print(
          "O preço final da nota depois do desconto é ${quantidade * 10 * 0.85} reais");
    }
  } else if (codigo >= 11 && codigo <= 20) {
    print("O preço unitário do produto comprado é 15 reais");
    print("O preço total da nota é ${quantidade * 15} reais");
    if (quantidade * 15 <= 250) {
      print("O valor do desconto é ${quantidade * 15 * 0.05} reais");
      print(
          "O preço final da nota depois do desconto é ${quantidade * 15 * 0.95} reais");
    } else if (quantidade * 15 > 250 && quantidade * 15 <= 500) {
      print("O valor do desconto é ${quantidade * 15 * 0.1} reais");
      print(
          "O preço final da nota depois do desconto é ${quantidade * 15 * 0.9} reais");
    } else if (quantidade * 15 > 500) {
      print("O valor do desconto é ${quantidade * 15 * 0.15} reais");
      print(
          "O preço final da nota depois do desconto é ${quantidade * 15 * 0.85} reais");
    }
  } else if (codigo >= 21 && codigo <= 30) {
    print("O preço unitário do produto comprado é 20 reais");
    print("O preço total da nota é ${quantidade * 20} reais");
    if (quantidade * 20 <= 250) {
      print("O valor do desconto é ${quantidade * 20 * 0.05} reais");
      print(
          "O preço final da nota depois do desconto é ${quantidade * 20 * 0.95} reais");
    } else if (quantidade * 20 > 250 && quantidade * 20 <= 500) {
      print("O valor do desconto é ${quantidade * 20 * 0.1} reais");
      print(
          "O preço final da nota depois do desconto é ${quantidade * 20 * 0.9} reais");
    } else if (quantidade * 20 > 500) {
      print("O valor do desconto é ${quantidade * 20 * 0.15} reais");
      print(
          "O preço final da nota depois do desconto é ${quantidade * 20 * 0.85} reais");
    }
  } else if (codigo >= 31 && codigo <= 40) {
    print("O preço unitário do produto comprado é 30 reais");
    print("O preço total da nota é ${quantidade * 30} reais");
    if (quantidade * 30 <= 250) {
      print("O valor do desconto é ${quantidade * 30 * 0.05} reais");
      print(
          "O preço final da nota depois do desconto é ${quantidade * 30 * 0.95} reais");
    } else if (quantidade * 30 > 250 && quantidade * 30 <= 500) {
      print("O valor do desconto é ${quantidade * 30 * 0.1} reais");
      print(
          "O preço final da nota depois do desconto é ${quantidade * 30 * 0.9} reais");
    } else if (quantidade * 30 > 500) {
      print("O valor do desconto é ${quantidade * 30 * 0.15} reais");
      print(
          "O preço final da nota depois do desconto é ${quantidade * 30 * 0.85} reais");
    }
  } else {
    print("Codigo invalido");
  }
}
