//Faça um programa que mostre todos os recebimentos com data de vencimento dentro de um período qualquer. Não se esqueça de mostrar também o
//nome do cliente e o total de dias em atraso. Quando não houver atraso, mostrar zero.
//Datetime

import 'dart:io';

import 'exe03.dart';

//Regex   converter a data de dd/mm/yyyy para yyyy-mm-dd
converterDatetime(String input) {
  input = input.replaceAllMapped(RegExp(r"(\d{2})/(\d{2})/(\d{4})"), (match) {
    return "${match[3]}-${match[2]}-${match[1]}";
  });
  return input;
}

void main() {
  List<dynamic> arquivos = pathClientes(); //importa uma função do exe03.dart
  File clientes = arquivos[0]; //que retorna o path em formato de File
  File recebimentos = arquivos[1];

  print("Digite a data inicial no formato dd/mm/yyyy: ");
  String input = stdin.readLineSync()!;
  input = converterDatetime(input);
  DateTime dataInicioInput = DateTime.parse(input);
  print(dataInicioInput);

  print("Digite a data final no formato dd/mm/yyyy: ");
  input = stdin.readLineSync()!;
  input = converterDatetime(input);
  DateTime dataFinalInput = DateTime.parse(input);
  print(dataFinalInput);

  //preciso converter o recebimento inicial em uma matriz, uma List de List
  List<dynamic> recebimentoInicial2 = [];
  List<dynamic> recebimentoInicial =
      recebimentos.readAsStringSync().split(" | ");
  recebimentoInicial.forEach((element) {
    recebimentoInicial2.add(converterDatetime(element));
  });
  print(recebimentoInicial2);

  List<dynamic> clienteInicial = clientes.readAsStringSync().split(" | ");
  print(clienteInicial);

  //0  1  2  3
  //4  5  6  7
  //8  9  10 11
  //12 13 14 15

  for (int i = 5; i < recebimentoInicial2.length; i++) {
    DateTime dataInicialTemporaria;
    DateTime dataFinalTemporaria;
    DateTime dataAtual = DateTime.now();
    int diferencaDeDatas;
    String codCliTemporario;
    var regex1 = RegExp(r"\d{4}-\d{2}-\d{2}");
    if (regex1.hasMatch(recebimentoInicial2[i]) &&
        !regex1.hasMatch(recebimentoInicial[i - 1])) {
      dataInicialTemporaria = DateTime.parse(recebimentoInicial2[i]);
      if (regex1.hasMatch(recebimentoInicial2[i + 1]) &&
          !regex1.hasMatch(recebimentoInicial[i + 2])) {
        dataFinalTemporaria = DateTime.parse(recebimentoInicial2[i + 1]);
        codCliTemporario = recebimentoInicial2[i + 2];
        if ((dataInicialTemporaria.isAfter(dataInicioInput)) &&
            (dataFinalTemporaria.isBefore(dataFinalInput))) {
          Duration atraso = dataAtual.difference(dataFinalTemporaria);
          diferencaDeDatas = atraso.inDays;
          print(diferencaDeDatas);
          for (var j = 0; j < clienteInicial.length; j++) {
            print("=>"+clienteInicial[j]);
            print("=>"+codCliTemporario);
            if (clienteInicial[j].toString().contains(codCliTemporario)) {
              print(
                  "O cliente de número $codCliTemporario está  $diferencaDeDatas atrasado seu nome é ${clienteInicial[j + 1]}");
              break;
            }
          }
        } else {
          print("Fora da data");
        }
      }
    }
  }
}
