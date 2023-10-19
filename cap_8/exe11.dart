//Elabore uma sub-rotina que receba como parâmetro um valor N(inteiro e maior ou igual a 1) e determine o valor da sequência S, descrita
//a seguir: (n²+1)/(n+3)
//ctrl d
//depois formatar para pegar apenas as duas casas principais

import 'dart:io';
import 'dart:math';

dynamic rotina(double numero, double sequencia) {
  List<dynamic> soma = [];
  for (double i = 0; i < sequencia; i++) {
    soma.add((pow(numero, 2) / (numero + 3)));
    numero++;
  }
  return soma;
}

void main() {
  print("Digite um número inteiro :");
  double number = double.parse(stdin.readLineSync() ?? '0');
  print("Digite a quantidade da sequência:");
  double sequence = double.parse(stdin.readLineSync() ?? '0');
  print(rotina(number, sequence));
}
