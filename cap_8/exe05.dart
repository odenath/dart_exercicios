//Faça uma sub-rotina que receba um valor inteiro e verifique se ele é positivo ou nagativo

import 'dart:io';

bool eai(int num) {
  if (num < 0) {
    return false;
  } else {
    return true;
  }
}

void main() {
  print("Digite o número, e vai receber True se positivo, false se negativo");
  int num = int.parse(stdin.readLineSync() ?? '0');
  print(eai(num));
}
