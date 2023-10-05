// Faça um programa que preencha um vetor com os nomes de sete alunos e carregue outro vetor com
// a média final desses alunos. Calcule e mostre:
// -o nome do aluno com a maior média(desconsiderar empates)
// -para cada aluno não aprovado, isto é, com média menor do que 7, mostrar quanto esse aluno
// precisa tirar na prova de exame final para ser aprovado. Considerar que a média para aprovação
// no exame é 5

import 'dart:io';

void main() {
  List<String> alunosNomes = [];
  List<double> media = [];
  List<int> indice = [];
  List<double> notaPassar = [];

  for (int i = 0; i < 10; i++) {
    print("Digite o nome do aluno ${i + 1}");
    alunosNomes.add(stdin.readLineSync() ?? '');
    print("Digite a média do aluno ${i + 1}");
    media.add(double.parse(stdin.readLineSync() ?? '0'));
  }
  for (int i = 0; i < 10; i++) {
    if (media[i] < 7) {
      indice.add(i);
    }
  }
  print(media);
  print(indice);
  for (int i = 0; i < indice.length; i++) {
    notaPassar.add(((14 - media[indice[i]]))); 
   
  }
  for(int i = 0; i< indice.length; i++){
    print(" O aluno: ${alunosNomes[indice[i]]}");
    print("Ficou com média de:  ${media[indice[i]]}");
    print("Precisa de:  ${notaPassar[i]}");
  }
}
