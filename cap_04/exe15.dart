//Uma agencia bancária possui 2 tipos de investimento, conforme o
//quadro a seguir. Faça um programa que receba o tipo de
//investimento
//e seu valor e que calcule e mostre o valor corrigido de acordo com o
//tipo de investimento

import 'dart:io';

class Agencia {
  late double valor;
  late String tipo;

  Agencia(double valor) {
    this.valor = valor;
  }

  void insvetimento() {
    if (this.tipo == "P") {
      print(this.valor * 1.03);
    } else if (this.tipo == "C") {
      print(this.valor * 1.05);
    }
  }
}

void main() {
  Agencia p1 = Agencia(12);
  print("Digite o tipo do investimento P ou C");
  p1.tipo = stdin.readLineSync()!;
  p1.insvetimento();
}
