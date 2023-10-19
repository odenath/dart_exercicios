//Crie uma sub-rotina que receba como parâmetro dois valores X e Z, calcule e retorne X² sem utilizar funções ou operadores de potência prontos.
import 'dart:io';

int potenciaPotente(int numero, int power) {
  int mypow = numero;
  for (int i = 1; i < power; i++) {
    mypow *= numero;
  }
  return mypow;
}

void main() {
  print("Digite um número inteiro:");
  int number = int.parse(stdin.readLineSync() ?? '0');
  print("Digite a potência:");
  int potencia = int.parse(stdin.readLineSync() ?? '0');
  print(potenciaPotente(number, potencia));
}
