// Faça um programa que receba o preço de um produto e seu código de origem e 
////mostre a sua procedência. A procedência obedece à tabela a seguir:
//1 sul
//2 norte
//3 leste
//4 oeste
//5 ou 6 nordeste
//7 8 9 sudeste
//10 a 20 centro-oeste
//21 a 30 nordeste

import 'dart:io';

void main(){
  int numero = int.parse(stdin.readLineSync()??'0'); 
  String nome ; 
  switch (numero){
    case 1:
      nome = "SUL";
      break;
    case 2:
      nome = "NORTE";
      break;
    case 3:
      nome = "LESTE";
      break;
    case 4:
      nome = "OESTE";
      break;
    case 5:
    case 6:
      nome = "NORDESTE";
      break;
    case 7:
    case 8:
    case 9:
      nome = "SUDESTE";
      break;
    default:
      if (numero >= 10 && numero <= 20){
        nome = "CENTRO-OESTE";
      } else if (numero >= 21 && numero <= 30){
        nome = "NORDESTE";
      } else {
        nome = "NÃO ENCONTRADO";
      }

  }
  print("O nome é $nome");

}