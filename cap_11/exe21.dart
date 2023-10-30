//Faça um programa para excluir produtos criados no exercício 15

import 'dart:io';

void main() {
  File produtos = File('D:\\flutter-exercises\\cap_11\\produtos.dat');
  List<dynamic> produtosList = produtos.readAsLinesSync();

  print(produtosList);
  print(
      "Digite o indice que vc quer excluir que vai de 0 até ${produtosList.length} ");
  int indice = int.parse(stdin.readLineSync() ?? '0');
  produtosList.removeAt(indice - 1);
  print(produtosList);
  produtos.writeAsStringSync(produtosList.join('\n'));
}
