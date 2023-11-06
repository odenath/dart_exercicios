// Faça um programa que apresente o menu de opções a seguir, que permita ao usuário
//escolher a opção desejada, receba os dados necessários para executar a operação e //mostre o resultado. Verifique a possibilidade de opção inválida e não se preocupe com
//as restrições de salário inválido.
//menu de opções
//1-novo salário
//Férias
//décimo terceiro
//4 sair
//digite a opção desejada.
//Na opção 1: receber o salário de um funcionário, calcular e mostrar o novo salário.
//usando as regras a seguir
//salários até 210 15%
// de 210 a 600    10%
//acima de 600     5%
//na opção 2: receber o salário de um funcionário, calcular e mostrar o valor de suas
// //férias. Sabe-se que as férias equivalem ao seu salário acrescido de 1/3
//na opção 3: receber o salário de um funcionário e o número de meses de trabalho na
//empresa, no máximo 12, calcular e mostrar o valor do décimo terceiro. Sabe-se que o 
////décimo terceiro equivale ao seu salário multiplicado pelo número de meses de //trabalho, dividido por 12
//Na opção 4 sair do programa;

import 'dart:io';

void main() {
  int opcao;
  do {
    print(
        "Digite a opção desejada de 1-salario-ajuste 2-salário/férias 3-salário/13º");
    opcao = int.parse(stdin.readLineSync() ?? '0');
    switch (opcao) {
      case 1:
        print("Digite o seu salário e eu ajustarei:");
        int salario = int.parse(stdin.readLineSync() ?? '0');
        if (salario < 210) {
          print("O seu salário é de ${(salario * 1.15).roundToDouble()}");
        }
        break;
      case 2:
        print("Digite o seu salário e receba férias:");
        int salario = int.parse(stdin.readLineSync() ?? '0');
        print("O valor das suas férias é de ${salario * 1.33}");
      case 3:
        print("Digite a quantidade de salários max 12");
        int qtdMeses = int.parse(stdin.readLineSync() ?? '0');
        if (qtdMeses < 12 && qtdMeses > 0) {
          List<int> salarios = [];
          for (int i = 0; i < qtdMeses; i++) {
            print(
                "Digite o salário do mês ${i + 1} de ${qtdMeses} meses de trabalho");

            salarios.add(int.parse(stdin.readLineSync() ?? '0'));
          }
          print(
              "O valor do seu 13º é de ${((salarios.reduce((a, b) => a + b) * qtdMeses) / 12).round().toStringAsFixed(2)}");
        }
        break;
      case 4:
        break;
    }
  } while (opcao != 4);
}
