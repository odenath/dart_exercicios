// Faça um programa que receba o nome e a nota de oito alunos e mostre o relatório a seguir:

// Digite o nome do 1º aluno
// Carlos
// Digite a nota do Carlos
// 8
// .......................
// Relatório de notas 
// Aluno Nota
// Carlos 8.0
// Pedro  5.0
// Média da classe = ??

import 'dart:io';

void main(){
  List<String> alunos = [];
  List<double> notas = [];

  for(int i = 0; i < 8; i++){
    print("Digite o nome do ${i+1}º aluno");
    alunos.add(stdin.readLineSync() ?? '');
    print("Digite a nota do ${i+1}º aluno");
    notas.add(double.parse(stdin.readLineSync() ?? '0'));
  }
  double media = notas.reduce((a,b) => a+b) / notas.length;
  print("Relatório de notas");
  print("Aluno Nota");

  for(int i = 0; i < 8; i++){
    print("${alunos[i]} ${notas[i]}");
  }
  print("Média da classe = $media");
}