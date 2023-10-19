//A prefeitura de uma cidade fez uma pesquisa entre seus habitantes,
//coletando dados sobre o salário e o número de filhos.
// Faça uma sub-rotina que leia esses dados para um número não determinado de pessoas
// e retorne a média de salário da população,
//a média do número de filhos,
//o maior salário e o
//percentual de pessoas com salário inferior a 380,00
import 'dart:io';

int mediaSalario(List<int> salario) {
  int soma = 0;
  for (int i = 0; i < salario.length; i++) {
    soma += salario[i];
  }
  return soma ~/ salario.length;
}

int mediaFilhos(List<int> filhos) {
  int soma = 0;
  for (int i = 0; i < filhos.length; i++) {
    soma += filhos[i];
  }
  return soma ~/ filhos.length;
}

int maiorSalario(List<int> salario) {
  return salario.reduce((a, b) => a > b ? a : b);
}

int percentualPessoasAbaixo380(List<int> salario) {
  int qtd = 0;
  for (int i = 0; i < salario.length; i++) {
    if (salario[i] < 380) {
      qtd++;
    }
  }
  return (qtd ~/ salario.length) * 100;
}

void main() {
  List<int> salario = [];
  List<int> filhos = [];
  print("Digite a quantidade de pessoas");
  int qtdPessoas = int.parse(stdin.readLineSync() ?? '0');
  for (int i = 0; i < qtdPessoas; i++) {
    print("Digite o salário da pessoa ${i + 1}");
    salario.add(int.parse(stdin.readLineSync() ?? '0'));
  }
  for (int i = 0; i < qtdPessoas; i++) {
    print("Digite a quantidade de filhos da pessoa ${i + 1}");
    filhos.add(int.parse(stdin.readLineSync() ?? '0'));
  }
  print(mediaSalario(salario));
  print(mediaFilhos(filhos));
  print(percentualPessoasAbaixo380(salario));
}
