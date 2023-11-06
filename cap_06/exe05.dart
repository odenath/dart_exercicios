// Uma escola deseja saber se existem alunos cursando, simultaneamente, as disciplinas de Lógica
// e Linguagem de Programação. Coloque os números das matrículas dos alunos que cursam Lógica em
// um vetor, no máximo 15 alunos. Coloque os números das matrículas dos alunos que cursam Linguagem
// de Programação em outro vetor, no máximo 10 alunos, mostre o número de matrículas que aparecem nos dois vetores

import 'dart:io';

void main() {
  List<int> logica = List.filled(15, 0);
  List<int> linguagem = List.filled(10, 0);
  List<int> matriculas = [];

  for (int i = 0; i < 15; i++) {
    print('Digite a matricula do aluno de logica: ');
    logica[i] = int.parse(stdin.readLineSync() ?? '0');
  }
  for (int i = 0; i < 10; i++) {
    print('Digite a matricula do aluno de linguagem: ');
    linguagem[i] = int.parse(stdin.readLineSync() ?? '0');
  }
  matriculas =
      logica.where((matricula) => linguagem.contains(matricula)).toList();
  print('Matriculas que aparecem nos dois vetores: $matriculas');
}
