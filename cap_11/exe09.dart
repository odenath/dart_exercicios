//Faça um programa que mostre todos os recebimentos com valor acima de um valor dado pelo usuário

import 'dart:io';

import 'exe03.dart';

void main() {
  File recebimentos = pathClientes()[1];

  List<dynamic> recebimentoInicial = recebimentos.readAsLinesSync();
  List<dynamic> recebimentoMatriz =
      recebimentos.readAsStringSync().split(" | ");
  List<double> recebimentoNumeros = [];

  print("Digite o valor: ");
  double input = double.parse(stdin.readLineSync() ?? '0');

  var regex1 = RegExp(r'\d+\.\d{2}');

  for (dynamic i in recebimentoMatriz) {
    if (regex1.hasMatch(i) && double.tryParse(i) != null) {
      print("regex1: $i");
      var temp = double.parse(i);
      if (input < temp) {
        print(temp);
        recebimentoNumeros.add(temp);
        recebimentoInicial.forEach((element) {
          if (element.contains(temp.toString())) {
            print(element);
          }
        });
      }
    }
  }
}
