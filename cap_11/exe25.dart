//Faça um programa para conceder um percentual de desconto, informado pelo usuário, aos produtos cujo preço informado pelo usuário
//entre 2 valores digitados pelo usuário

import 'dart:io';

void main(){
  File arquivo = File('D:\\flutter-exercises\\cap_11\\produtos.dat');
  List<String> produtos = arquivo.readAsLinesSync();

  print('Digite o valor mínimo: ');
  double minimo = double.parse(stdin.readLineSync()??'0');

  print('Digite o valor máximo: ');
  double maximo = double.parse(stdin.readLineSync()??'0');

  print('Digite o percentual de desconto: ');
  double desconto = double.parse(stdin.readLineSync()??'0');

  for (int i = 1; i < produtos.length; i++) {
    String produto = produtos[i];
    List<String> dados = produto.split(',');
    if (double.parse(dados[2]) >= minimo && double.parse(dados[2]) <= maximo) {
      double valor = double.parse(dados[2]);
      valor = valor - (valor * (desconto/100));
      dados[2] = valor.toString();
      produtos[i] = dados.join(',');
    }
  }

  arquivo.writeAsStringSync(produtos.join('\n'));






}