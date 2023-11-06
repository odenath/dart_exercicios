import 'Aluno.dart';
import 'DisciplinaPratica.dart';

class Matricula {
  int ano_letivo;
  String serie;
  Aluno aluno;
  DisciplinaPratica disciplinaPratica;
  late int nota1;
  late int nota2;
  late int nota3;
  late int nota4;

  Matricula(this.ano_letivo, this.serie, this.aluno, this.disciplinaPratica);

//    Matricula (ano_letivo, serie, aluno, disciplina, nora 1Bim, nota2Bim, nota3Bim, nota4Bim)
// if(disciplina é prática 2 e 4 bim peso 2 demais peso 1. para outras média aritmética

  int calcularMedia() {
    if (disciplinaPratica.cargaHorariaPratica > 0) {
      return (nota1 + nota2 * 2 + nota3 + nota4 * 2) ~/ 6;
    } else {
      return (nota1 + nota2 + nota3 + nota4) ~/ 4;
    }
  }

  @override
  String toString() {
    return 'Matricula{ano_letivo: $ano_letivo, serie: $serie, aluno: $aluno, '
        'disciplina: $disciplinaPratica,'
        'nota1: $nota1, nota2: $nota2, nota3: $nota3, nota4: $nota4}';
  }
}
