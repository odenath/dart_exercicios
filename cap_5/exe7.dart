//Faça um programa que receba a idade, a altura e o peso de 25 pessoas, calcule e //mostre:
// a quantidade de pessoas com idade superior a 50 anos;
// a média das alturas das pessoas com idade entre 10 e 20 anos;
// a percentagem de pessoas com peso inferior a 40 kg entre todas as pessoas analizadas

import 'dart:io';


void main() {
  double idade;
  int idadeSuperior50 = 0;
  double altura;
  double somaAltura10a20 = 0; // Variável para somar as alturas das pessoas com idade entre 10 e 20 anos.
  double peso;
  int totalPessoas = 3;

  for (int i = 0; i < 3; i++) {
    print("Digite a idade da ${i + 1}ª pessoa");
    idade = double.parse(stdin.readLineSync() ?? '0');
    print("Digite a altura da ${i + 1}ª pessoa");
    altura = double.parse(stdin.readLineSync() ?? '0');
    print("Digite o peso da ${i + 1}ª pessoa");
    peso = double.parse(stdin.readLineSync() ?? '0');

    if (idade > 50) {
      idadeSuperior50++;
    }

    if (idade >= 10 && idade <= 20) {
      somaAltura10a20 += altura; // Adiciona a altura à soma das alturas das pessoas com idade entre 10 e 20 anos.
    }
    if(peso < 40) {
      print("A pessoa ${i + 1}ª pessoa tem peso inferior a 40kg");
    }
  }

  // Calcula a média de altura das pessoas com idade entre 10 e 20 anos.
  double mediaAltura10a20 = somaAltura10a20 / totalPessoas;

  // Calcula a porcentagem de pessoas com idade superior a 50 anos.
  double percentagemPesoAbaixo = (idadeSuperior50 / totalPessoas) * 100;

  print("Número de pessoas com idade superior a 50 anos: $idadeSuperior50");
  print("Média de altura das pessoas com idade entre 10 e 20 anos: $mediaAltura10a20");
  print("Porcentagem de pessoas com idade superior a 50 anos: $percentagemPesoAbaixo%");

}