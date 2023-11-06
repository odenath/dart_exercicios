//30% aos funcionários com salários inferiores a 500
//ou enviar uma mensagem

import 'dart:io';

void main() {
  double salary = double.parse(stdin.readLineSync() ?? '0');

  if (salary < 500) {
    salary *= 1.3;
    print("O salário é $salary");
  } else {
    print("Salário inalterado");
  }
}
