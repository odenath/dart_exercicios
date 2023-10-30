//Faça um programa paara consultar os produtos com nomes iniciados com a letra digitada pelo usuário 
//e com preço de 2 valores digitados pelo usuário


import 'dart:io';

void main(){
  File arquivo = File('D:\\flutter-exercises\\cap_11\\produtos.dat');
  List<String> produtos = arquivo.readAsLinesSync();

  print('Digite a letra inicial do produto: ');
  String letra = stdin.readLineSync()!;

  print('Digite o valor mínimo: ');
  double minimo = double.parse(stdin.readLineSync()??'0');

  print('Digite o valor máximo: ');
  double maximo = double.parse(stdin.readLineSync()??'0');

  for (int i = 1; i < produtos.length; i++) {
    String produto = produtos[i];
    List<String> dados = produto.split(',');
    if (dados[1].startsWith(" $letra") && double.parse(dados[2]) >= minimo && double.parse(dados[2]) <= maximo) {
      print(produto);
    }
  }






}