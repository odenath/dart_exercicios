//Faça um programa que receba a idade de uma pessoa e mostre a mensagem de maioridade ou não;

import 'dart:io';

void main() {
  DateTime dataAtual = DateTime.now();

  print("Digite a sua data de nascimento, apenas o ano");
  int anoNascimento = int.parse(stdin.readLineSync() ?? '0');
  int anoAtual = dataAtual.year;
  int idade = anoAtual - anoNascimento;
  
  if (idade >= 18) {
    print("Você é maior de idade.");
  } else {
    print("Você não é maior de idade.");
  }
}




  
  

