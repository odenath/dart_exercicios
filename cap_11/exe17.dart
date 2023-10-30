//Faça um programa para consultar a descrição de todos os produtos que possuem preço superior a 500,00

import 'dart:io';
void main(){
  File produtos = File('D:\\flutter-exercises\\cap_11\\produtos.dat');
  List<dynamic> produtosList = produtos.readAsLinesSync();

  for (String i in produtosList) {
    int? codigo = int.tryParse(i.split(", ")[0]);
    String descricao = i.split(", ")[1];
    double? preco = double.tryParse(i.split(", ")[2]);
    if(preco is double && preco > 500){
      print("O produto de código $codigo, $descricao, tem preço $preco");
    }
  }
}