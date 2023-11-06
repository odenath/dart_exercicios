//Faça uma sub-rotina que receba um valor inteiro, calcule e mostre o seu fatorial
import 'dart:io';

int fatorial(int num) {
  int fat = 1;
  for (int i = 1; i <= num; i++) {
    fat *= i;
  }
  return fat;
}

void main() {
  print("Digite um número inteiro e eu darei o fatorial");
  int p = int.parse(stdin.readLineSync() ?? '0');
  print(fatorial(p));
}
