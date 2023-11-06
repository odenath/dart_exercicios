//Faça um programa que receba a idade de um nadador e mostre sua categoria, //usando as regrs a seguir, deverá mostrar mensagem 
//Infantil 5-7
//Juvenil  8-10
//Adulto   11-15
//Senior Acima de 30 

import 'dart:io';

void main(){
print("Digite a idade do nadador:");
int idade = int.parse(stdin.readLineSync() ?? '0');
String categoria;


  switch (idade){
    case 5:
    case 6:
    case 7:
      categoria = "Infantil";
      break;
    case 8:
    case 9:
    case 10:
      categoria = "Juvenil";
      break;
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
      categoria = "Adulto";
    default:
      if (idade >= 30) {
        categoria = "Senior";
      } else {
        categoria = "Não encontrada";
      }
  }
  
  print("Categoria do nadador: $categoria");

}


  
     
   




