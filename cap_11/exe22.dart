//Faça um programa para consultar os produtos com preços inferiores a 15.00

import 'dart:io';

void main(){
  File arquivo = File('D:\\flutter-exercises\\cap_11\\produtos.dat');
  List<String> produtos = arquivo.readAsLinesSync();

for (int i = 1; i < produtos.length; i++) {
  String produto = produtos[i];
  List<String> dados = produto.split(',');
  if (double.parse(dados[2]) < 15.00) {
    print(produto);
  }
}

}