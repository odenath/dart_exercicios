// Faça um programa que receba
// as notas de 15 alunos em 5 provas diferentes e armazene-as em uma matriz 15x5;
// os nomes dos 15 alunos e armazene-os em um vetor de 15 posições.
// O programa deverá calcular e mostrar.
// -Para cada aluno, o nome, a média aritmética das cinco provas e situação(aprovado, reprovado ou exame)
// -média da classe

import 'dart:io';

void main() {
  List<List<int>> notas = List.generate(15, (_) => List.generate(5, (_) => 0));
  List<double> media = List.filled(15, 0);
  List<String> alunos = [];
  print(notas);
  for (int i = 0; i < 15; i++) {
    print("Digite o nome do aluno ${i + 1}");
    alunos.add(stdin.readLineSync() ?? '!');
    for (int j = 0; j < 5; j++) {
      print("Digite a nota ${j + 1} do aluno ${i + 1}");
      notas[i][j] = int.parse(stdin.readLineSync() ?? '0');
    }
  }
  for (int i = 0; i < 15; i++) {
    for (int j = 0; j < 5; j++) {
      media[i] += notas[i][j];
    }
    media[i] = media[i] / 5;
    print(alunos[i]);
    print(media[i]);
    if (media[i] < 4) {
      print("reprovado");
    }
    if (media[i] > 4 && media[i] < 7) {
      print("Exame");
    }
    if (media[i] > 7) {
      print("Aprovado");
    }
  }
}


  // alunos.forEach((element) {
  //   print(element);
  // });