//Faça um programa para consultar todos os produtos cujos nomes comecem com a letra M e G

import 'dart:io';

void main(){
  File arquivo = File('D:\\flutter-exercises\\cap_11\\produtos.dat');
  List<dynamic> produtosList = arquivo.readAsLinesSync();

  for(dynamic i in produtosList){
    int? codigo = int.tryParse(i.split(", ")[0]);
    String descricao = i.split(", ")[1];
    double? preco = double.tryParse(i.split(", ")[2]);
   
    if(descricao.startsWith("m") || descricao.startsWith("g")){
      print("Começando com M ou G");
      print("O produto de código $codigo, $descricao, tem preço $preco");
    }
  }
}