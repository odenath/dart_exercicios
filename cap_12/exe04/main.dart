// Crie uma aplicação para a secretaria  de uma escola, em que sejam cortaroladas as informações sobre Alunos,
// Disciplinas e Matriculas.
// Antes de a escola começar a funcionar, todas as disciplinas foram cadastradas.
// Quando o aluno chega a escola, deve ser feito um cadastro dos seus dados pessoais.
// Só depois, ele é anualmente, matriculado em disciplinas.
// Os atributos das classes sâo:
// Aluno :(código, nome)
// Disciplina (código, nome, carga horária geral)
// DisciplinaPratica (carga horária prática)
// Matricula (ano_letivo, serie, aluno, disciplina, nora 1Bim, nota2Bim, nota3Bim, nota4Bim)
// O atributo aluno na classe Matricula deve ser uma referência para a classe Aluno.
// O atributo disciplina na classe Matricula deve ser uma referência para a classe Disciplina.
// A DisciplinaPratica deve possuir todas as características da classe Disciplina, mais as suas especificida-des (herança).
// Essa aplicação deve fornecer meios para:
//
// a) Cadastrar as disciplinas oferecidas na escola (praticas ou não).
// b) Cadastrar alunos.
// c) Matricular aluno em uma disciplina qualquer.
// d) Lançar noras de um aluno.
// e) Mostrar Boletins do aluno.
//
// Você deverá possuir um conjunto de alunos, de disciplinas e de matriculas. Como sugestão, trabalhe com,
// no máximo, dez alunos, cinco disciplinas e trinta matriculas (controle o preenchimento máximo).
//
// Para a opção 1:
// Cadastre uma disciplina por vez (prática ou não). O código deverá ser único.
// Deverá existir um único vetor de disciplinas para referenciar tanto disciplinas sem prática quanto dis-ciplinas práticas.
// O usuário, durante a execução, decidirá se deseja cadastrar uma disciplina prática ou não.
//
// Para a opção 2:
// Cadastre um aluno por vez. O código deverá ser único.
//
// Para a opção 3:
// Matricule um aluno em uma disciplina (prática ou não) por vez.
// Aluno e Matricula já devem ter sido cadastrados.
// Não matricule um aluno mais que uma vez, na mesma disciplina, no mesmo ano.
// No momento da matricula, o valor das notas deverá ser zero.
//
// Para a opção 4:
// O usuário deverá informar o código do aluno, o código da disciplina, o ano e o bimestre.
// Se houver alguma matrícula com essas caracteristicas, solicitar a digitação da nota correspondente, alterando o objeto.
// Caso contrário, mostrara mensagem Matricula Inválida.
//
// Para a opção 5: O usuário deverá informar o código do aluno e o ano. A aplicação deverá procurar os dados correspondentes e mostrar um relatório, conforme abaixo.
// Caso os dados informados não correspondam a uma matricula, mostrar a mensagem Matricula Inválida.
// Código: 1234 Nome Joãozinho
// Ano: 20 1
// Disciplina ||  CH || CH prática || 1º bimestre || 2º bimestre || 3º bimestre || 4º bimestre || Média
// Inglês     || 100 ||    40      ||             ||      5,0    ||     7,0     ||      10,0   ||   7,5
// Português  || 140 ||            ||      8,0    ||      8,0    ||     9,0     ||       7,0   ||   8,0
// Matemática || 160 ||    40      ||      3,0    ||      7,0    ||     9,0     ||       6,0   ||   6,33
// Geografia  ||  80 ||            ||      8,5    ||      9,5    ||     6,0     ||       7,0   ||   7,75
//
// Disciplinas práticas têm calculo de média ponderada, em que as notas do 2º e 4º bimestres possuem peso 2 e as demais, peso 1.
// Para as outras disciplinas, a média é aritmética.

//ordem de importação 1ª bibliotecas do dart, 2ª bibliotecas de terceiros, 3ª bibliotecas do projeto

import 'dart:io';

import 'Matricula.dart';
import 'DisciplinaPratica.dart';
import 'Aluno.dart';

dynamic cadastrarDisciplinas() {
  print("Digite o código da disciplina");
  String codigo = stdin.readLineSync()!;
  print("Digite o nome da disciplina");
  String nome = stdin.readLineSync()!;
  print("Digite a carga horária geral da disciplina");
  int cargaHorariaGeral = int.parse(stdin.readLineSync()!);
  print("A disciplina é prática? (S/N)");
  String ehPratica = stdin.readLineSync()!;
  if (ehPratica == "S") {
    print("Digite a carga horária prática da disciplina");
    int cargaHorariaPratica = int.parse(stdin.readLineSync()!);
    DisciplinaPratica disciplinaPratica =
        DisciplinaPratica(codigo, nome, cargaHorariaGeral, cargaHorariaPratica);
    return disciplinaPratica;
  } else {
    int cargaHorariaPratica = 0;
    DisciplinaPratica disciplinaPratica =
        DisciplinaPratica(codigo, nome, cargaHorariaGeral, cargaHorariaPratica);
    return disciplinaPratica;
  }
}

dynamic cadastrarAlunos() {
  print("Digite o código do aluno");
  int codigo = int.parse(stdin.readLineSync() ?? '0');
  print("Digite o nome do aluno");
  String nome = stdin.readLineSync()!;
  Aluno aluno = Aluno(codigo, nome);
  return aluno;
}

dynamic matricularAluno(
    List<Aluno> alunos, List<DisciplinaPratica> disciplinas) {
  print("Digite o ano letivo da matrícula ex:2023");
  int ano_letivo = int.parse(stdin.readLineSync() ?? '0');
  print("Digite a série ex 1º");
  String serie = stdin.readLineSync()!;
  print("Digite o código do aluno");
  int codigoAluno = int.parse(stdin.readLineSync() ?? '0');
  Aluno aluno = alunos.firstWhere((element) => element.codigo == codigoAluno);
  print("Digite o código da disciplina");
  String codigoDisciplinaPratica = stdin.readLineSync()!;
  DisciplinaPratica disciplinaPratica = disciplinas
      .firstWhere((element) => element.codigo == codigoDisciplinaPratica);
  Matricula matricula = Matricula(ano_letivo, serie, aluno, disciplinaPratica);
  print(
      "Lembre-se de colocar as notas antes de mostrar o boletim, ou o programa não funcionará corretamente");
  return matricula;
}

dynamic lancarNotas(List<Matricula> matriculas) {
  print("Digite o código do aluno");
  int codigoAluno = int.parse(stdin.readLineSync() ?? '0');
  print("Digite o ano da matrícula");
  int ano = int.parse(stdin.readLineSync() ?? '0');
  print("Digite o código da disciplina");
  String codigoDisciplina = stdin.readLineSync()!;
  for (Matricula mat in matriculas) {
    if (mat.disciplinaPratica.codigo == codigoDisciplina &&
        mat.aluno.codigo == codigoAluno &&
        mat.ano_letivo == ano) {
      print("Digite a nota 1");
      mat.nota1 = int.parse(stdin.readLineSync() ?? '0');
      print("Digite a nota 2");
      mat.nota2 = int.parse(stdin.readLineSync() ?? '0');
      print("Digite a nota 3");
      mat.nota3 = int.parse(stdin.readLineSync() ?? '0');
      print("Digite a nota 4");
      mat.nota4 = int.parse(stdin.readLineSync() ?? '0');
    }
  }
}

void mostrarBoletim(List<Matricula> matriculas) {
  print("Digite o código do aluno");
  int codigoAluno = int.parse(stdin.readLineSync() ?? '0');
  print("Digite o ano da matrícula");
  int ano = int.parse(stdin.readLineSync() ?? '0');

  List<Matricula> matricula = matriculas
      .where((element) =>
          element.aluno.codigo == codigoAluno && element.ano_letivo == ano)
      .toList();
  print(
      "Disciplina ||  CH || CH prática || 1º bimestre || 2º bimestre || 3º bimestre || 4º bimestre || Média");
  for (Matricula mat in matricula) {
    print(
        "${mat.disciplinaPratica.nome} || ${mat.disciplinaPratica.cargaHorariaGeral} || ${mat.disciplinaPratica.cargaHorariaPratica} || ${mat.nota1} || ${mat.nota2} || ${mat.nota3} || ${mat.nota4} || ${mat.calcularMedia()}");
  }
}

void main() {
  print("Olá, seja bem vindo ao sistema de matrículas da escola");
  print(
      "Não se esqueçam que todas as disciplinas devem ser cadastradas antes de matricular os alunos");
  bool continuaMenu = true;
  List<DisciplinaPratica> disciplinas = [];
  List<Aluno> alunos = [];
  List<Matricula> matriculas = [];

  while (continuaMenu) {
    print("Digite a opção desejada");
    print("1 - Cadastrar disciplinas");
    print("2 - Cadastrar alunos");
    print("3 - Matricular aluno em uma disciplina");
    print("4 - Lançar notas de um aluno");
    print("5 - Mostrar boletim do aluno");
    print("6 - Sair");
    int opcao = int.parse(stdin.readLineSync() ?? '0');
    switch (opcao) {
      case 1:
        disciplinas.add(cadastrarDisciplinas());
        disciplinas.forEach((element) {
          print(element.toString());
        });
        break;
      case 2:
        alunos.add(cadastrarAlunos());
        alunos.forEach((element) {
          print(element.toString());
        });
        break;
      case 3:
        matriculas.add(matricularAluno(alunos, disciplinas));
        break;
      case 4:
        lancarNotas(matriculas);
        break;
      case 5:
        mostrarBoletim(matriculas);
        break;
      case 6:
        continuaMenu = false;
        break;
      default:
        print("Opção inválida");
    }
  }
}
