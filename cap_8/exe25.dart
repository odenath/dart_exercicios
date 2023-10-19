//Crie um programa que receba o nome** de 30 alunos de uma sala, armazenando-os em um vetor, juntamente com as notas obtidas ao longo
//do semestre(foram realizadas 4 avaliações). Elabore sub-rotinas para:
//matriz 3x4 (3 alunos e 4 notas)(teste)
//determinar e mostrar a média aritmética de todos os alunos;
//indicar os nomes dos alunos que deverão fazer recuperação, ou seja, aqueles com média inferior a 6
//obs: Todas as mensagens deverão ser mopstradas no programa principal
//foi feito em escala menor, para facilitar a visualização, mas podem ser feitas em maior escala sem problemas

import 'dart:math';

List<int> mediaAritmetica(List<List<int>> alunos) {
  List<int> medias = List.filled(3, 0);
  for (int i = 0; i < alunos.length; i++) {
    for (int j = 0; j < alunos[i].length; j++) {
      medias[i] += alunos[i][j];
    }
  }
  for (int i = 0; i < medias.length; i++) {
    medias[i] = medias[i] ~/ 4;
  }
  return medias;
}

void recuperacao(List<int> medias, List<String> nomes) {
  for (int i = 0; i < medias.length; i++) {
    if (medias[i] < 6) {
      print('${nomes[i]} está de recuperação');
    }
  }
}

void main() {
  List<List<int>> alunos = List.generate(
      3, (index) => List.generate(4, (index) => Random().nextInt(10)));
  List<String> nomes = ['João', 'Maria', 'José'];

  for (List<int> linha in alunos) {
    print(linha);
  }
  List<int> media = mediaAritmetica(alunos);
  print(media);
  recuperacao(media, nomes);
}
