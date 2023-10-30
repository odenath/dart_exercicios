//Faça um programa que mostre todos os recebimentos de um cliente;

import 'dart:io';

import 'exe03.dart';

void main() {
  File clientes = pathClientes()[0];
  File recebimentos = pathClientes()[1];

  print("Digite o código do cliente: ");
  String input = stdin.readLineSync()!;

  List<dynamic> clienteInicial = clientes.readAsLinesSync();
  List<dynamic> recebimentoInicial = recebimentos.readAsLinesSync();

  int index = -1; // Inicialize com -1 para indicar que o cliente não foi encontrado
for (int i = 0; i < clienteInicial.length; i++) {
  if (clienteInicial[i].contains(input)) {
    index = i; // Se encontrado, atualize o índice
    break; // Saia do loop, pois já encontrou o cliente
  }
}

if (index != -1) {
  print("Cliente: ${clienteInicial[index]}");
  print("Recebimentos: ");
  for (int i = 0; i < recebimentoInicial.length; i++) {
    if (recebimentoInicial[i].contains(input)) {
      print(recebimentoInicial[i]);
    }
  }
} else {
  print("Cliente não encontrado");
}


}
