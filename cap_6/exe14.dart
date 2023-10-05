// Faça um programa que receba os nomes e duas notas de seis alunos e mostre o relatório a seguir:
// Relatório de notas:

// Aluno    1ªprova  2ªprova média situação
// Carlos	   8	     9      8.5   Aprovado
// Pedro	   4         5       4.5   Reprovado

// média da classe = ?
// percentual de alunos aprovados = ?%
// percentual de alunos de exame = ?%
// percentual de alunos reprovados = ?%

import 'dart:io';

void main(){
  List<String> alunos = [];
  List<double> notas1 = [];
  List<double> notas2 = [];
  List<double> media = [];
  List<String> situacao = [];

  for(int i = 0; i< 6; i++){
    print("Digite o nome do ${i+1}º aluno");
    alunos.add(stdin.readLineSync() ?? '');
    print("Digite a primeira nota do ${i+1}º aluno");
    notas1.add(double.parse(stdin.readLineSync() ?? '0'));
    print("Digite a segunda nota do ${i+1}º aluno");
    notas2.add(double.parse(stdin.readLineSync() ?? '0'));
    media.add((notas1[i] + notas2[i]) / 2);
    if(media[i] >= 7){
      situacao.add("Aprovado");
    }else if(media[i] >= 5 && media[i] < 7){
      situacao.add("Exame");
    }else{
      situacao.add("Reprovado");
    }
  }
  for(int i = 0; i < 6; i++){
    print("Aluno: ${alunos[i]} 1ªprova: ${notas1[i]} 2ªprova: ${notas2[i]} média: ${media[i]} situação: ${situacao[i]}");
  }
}