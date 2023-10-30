//Faça um programa para criar um arquivo chamado PRODUTOS.DAT,
//em que cada registro será composto pelos seguintes campos: codigo, descricao e preco

import 'dart:io';

void main() {
  File produtos = File('D:\\flutter-exercises\\cap_11\\produtos.dat');
  if (!produtos.existsSync()) {
    produtos.createSync();
  }
  print("Arquivo criado com sucesso!");
  produtos.writeAsStringSync("codigo, descricao, preco\n",
      mode: FileMode.append);
  print(produtos.readAsStringSync());
  print("Arquivo atualizado com sucesso!");
}
