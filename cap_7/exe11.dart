// elabore um programa que: receba a idade de 8 alunos e armazene-as em um vetor;//add nome p/ facilitar
//  armazene o código de 5 disciplinas em outro vetor;
// armazene em uma matriz a quantidade de provas que cada aluno fez em cada disciplina.
// O programa deverá calcular e mostrar:
// - a qtd de alunos com idade entre 18 e 25 anos que fizeram mais de duas provas em uma determinada disciplina,
// cujo código é digitado pelo usuário. O usuário poderá digitar um código não cadastrado; neste caso, o programa deverá mostrar mensagem
// erro
// -uma listagem contendo o código(coloquei o nome) dos alunos que fizeram menos de três provas em determinada disciplina,
// seguido do código da disciplina
// -a média de idade dos alunos que não fizeram nenhuma prova em alguma disciplica. Cuidado para não contar duas vezes o mesmo aluno
//criar uma matriz 8x5 onde 8 são os alunos(linha) e 5 as disciplinas(coluna)

import 'dart:io';

void main() {
  List<String> nome = [];
  List<int> idade = [];
  List<int?> codigoDisciplina = [1, 2, 3, 4, 5];
  List<List<int?>> qtdProvas = [[]];
  int qtd18E25 = 0;

  for (int i = 0; i < 8; i++) {
    print("Digite o nome do ${i + 1}º aluno: ");
    nome.add(stdin.readLineSync() ?? '0');
    print("Digite a idade do ${i + 1}º aluno: ");
    idade.add(int.parse(stdin.readLineSync() ?? '0'));
  }

  for (int i = 0; i < 8; i++) {
    for (int j = 0; j < 5; j++) {
      print(
          "Digite a quantidade de provas que o ${i + 1}º aluno fez na ${j + 1}º disciplina: ");
      qtdProvas[i][j] = int.tryParse(stdin.readLineSync() ?? '0');
    }
  }
  for (int i = 0; i < 8; i++) {
    int contador = 0;
    for (int j = 0; j < 5; j++) {
      if (idade[i] >= 18 && idade[i] <= 25) {
        contador++;
      }
    }
    if (contador > 2) {
      qtd18E25++;
    }
    contador = 0;
  }
  print(codigoDisciplina);
  print(qtd18E25);
}


// arrumar depois