//Faça um programa para incluir produtos no arquivo criado no Exercício 15, lembrando que não podem existir dois produtos com o mesmo código

import 'dart:io';

void inserindo(File produtos) {
  print("Digite o código: ");
  int codigo = int.parse(stdin.readLineSync() ?? '0');
  if (produtos.readAsStringSync().contains(codigo.toString())) {
    print("Código já existe");
    return;
  }
  print("Digite a descrição: ");
  String descricao = stdin.readLineSync() ?? '';
  print("Digite o preço: ");
  double preco = double.parse(stdin.readLineSync() ?? '0');
  produtos.writeAsStringSync('$codigo, $descricao, $preco\n',
      mode: FileMode.append);
  print("Obrigado!");
}

void main() {
  File produtos = File('D:\\flutter-exercises\\cap_11\\produtos.dat');
  if (!produtos.existsSync()) {
    produtos.createSync();
  }
  print(produtos.readAsStringSync());
  print("Digite os valores do produto, mas n pode ter código repetido:");
  inserindo(produtos);
}
