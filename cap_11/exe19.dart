//Faça um programa para aumentar os preços em 10,00 mas apenas daqueles que já custam mais de R$ 100,00.

import 'dart:io';

void main(){
  File produtos = File('D:\\flutter-exercises\\cap_11\\produtos.dat');
  List<dynamic> produtosList = produtos.readAsLinesSync();

  for(dynamic i in produtosList){
    int? codigo = int.tryParse(i.split(", ")[0]);
    String descricao = i.split(", ")[1];
    double? preco = double.tryParse(i.split(", ")[2]);
    if(preco is double && preco > 100){
      preco = preco + 10;
      print("O produto de código $codigo, $descricao, tem preço ${preco.toStringAsFixed(2)}");
    }
  }


}