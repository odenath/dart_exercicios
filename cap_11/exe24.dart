//Faça um programa para excluir todos os produtos com preço superior a 200

import 'dart:io';


void main(){
  File arquivo = File('D:\\flutter-exercises\\cap_11\\produtos.dat');
  List<String> produtos = arquivo.readAsLinesSync();

  for (int i = 1; i < produtos.length; i++) {
    String produto = produtos[i];
    List<String> dados = produto.split(',');
    if (double.parse(dados[2]) > 200) {
      produtos.removeAt(i);
    }
  }

  arquivo.writeAsStringSync(produtos.join('\n'));
}