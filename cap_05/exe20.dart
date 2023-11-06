//Faça um programa que apresente o menu de opções a seguir
//menu de opções:
//média aritmética
//media ponderada
//sair
//digite a opção desejada
//Op 1 : receber 2 notas e calcular e mostrar a média aritmética.
//Op 2 : receber 3 notas e seus respectivos pesos, calcular e mostrar a média poderada
//Op 3 : sair do programa.
//
//Verifique a possibilidade de opção inválida. Neste caso, o programa deverá mostrar 
//uma mensagem

import 'dart:io';

void main(){
  int opcao;
  double nota1, nota2, nota3, mediaAritmetica, mediaPonderada, peso1, peso2, peso3;
  bool sair = false;

  while(!sair){
    print("Menu de opções");
    print("1 - Média aritmética");
    print("2 - Média ponderada");
    print("3 - Sair");
    print("Digite a opção desejada");
    opcao = int.parse(stdin.readLineSync() ?? '0');

    switch(opcao){
      case 1:
        print("Digite a primeira nota");
        nota1 = double.parse(stdin.readLineSync() ?? '0');
        print("Digite a segunda nota");
        nota2 = double.parse(stdin.readLineSync() ?? '0');
        mediaAritmetica = (nota1 + nota2) / 2;
        print("A média aritmética é $mediaAritmetica");
        break;
      case 2:
        print("Digite a primeira nota");
        nota1 = double.parse(stdin.readLineSync() ?? '0');
        print("Digite a segunda nota");
        nota2 = double.parse(stdin.readLineSync() ?? '0');
        print("Digite a terceira nota");
        nota3 = double.parse(stdin.readLineSync() ?? '0');
        print("Digite o peso da primeira nota");
        peso1 = double.parse(stdin.readLineSync() ?? '0');
        print("Digite o peso da segunda nota");
        peso2 = double.parse(stdin.readLineSync() ?? '0');
        print("Digite o peso da terceira nota");
        peso3 = double.parse(stdin.readLineSync() ?? '0');
        mediaPonderada = (nota1 * peso1 + nota2 * peso2 + nota3 * peso3) / (peso1 + peso2 + peso3);
        print("A média ponderada é $mediaPonderada");
        break;
      case 3:
        sair = true;
        break;
      default:
        print("Opção inválida");
    }
  }
}