//Faça um programa que receba várias idades, calcule e mostre a média das idades digitadas
//Finalize a idade quando igual a zero;


import 'dart:io';

void main(){
  int idade;
  int contador = 0;
  int soma = 0;
  do{
    print("Digite a idade");
    idade = int.parse(stdin.readLineSync() ?? '0');
    if(idade != 0){
      soma += idade;
      contador++;
    }
  }while(idade != 0);
  print("A média das idades é ${soma / contador}"); 
}