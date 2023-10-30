//Faça um programa para aumentar todos os preços em 15%

import 'dart:io';

void main() {
  File produtos = File('D:\\flutter-exercises\\cap_11\\produtos.dat');
  List<dynamic> produtosList = produtos.readAsLinesSync();

  for (String i in produtosList) {
    int? codigo = int.tryParse(i.split(", ")[0]);
    String descricao = i.split(", ")[1];
    double? preco = double.tryParse(i.split(", ")[2]);
    if (preco is double) {
      preco = preco * 1.15;
      print("O produto de código $codigo, $descricao, tem preço ${preco.toStringAsFixed(2)}}");
    }
  }
}
