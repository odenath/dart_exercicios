// WS O departamento de pessoal de uma empresa deseja automatizar o cadastro dos funcionários.
// Para isso, repas-sou os seguintes requisitos à equipe de analistas contratada:
// É necessário o cadastramento dos funcionários e seus respectivos dependentes.
// Suas características são: Funcionário: numeroFuncionario, nomeFuncionario, cargo, salário.
// Dependente: funcionario (referência para um objeto da classe Funcionario), nomeDependente.
// Existem diversos funcionários com quantidade diferenciada de dependentes.
// Sua aplicação deverá mostrar as seguintes opções ao usuário:
// 1) Cadastrar funcionário Cada vez que essa operação for realizada, você deverá criar um novo objeto Funcionário,
// preencher seus dados e inseri-lo no conjunto de funcionários da empresa.
// O código do funcionário deve ser único.
// Logo após, deverá realizar o cadastro de dependentes.
// Isso implica na criação de vários objetos da classe Dependente e inseri-los no conjunto de dependentes
// (cada funcionário pode ter zero, um ou mais dependentes.
// O usuário dará essa quantidade).
// Você deverá verificar se há espaço nos vetores para esses cadastramentos.
//
// 2) Mostrar bônus mensal de cada funcionário Os funcionários têm 2% de aumento em seu salário para cada dependente.
// Por isso, mostre o nome de cada funcionário, seguido da quantidade de dependentes que possui e do bônus a quem tem direito.
// 3) Excluir funcionário Você deverá excluir da lista um funcionário cujo código será informado pelo usuário.
// Todos os dependentes desse funcionário também deverão ser excluídos.
// Caso o funcionário informado não esteja cadastrado, mostre uma mensagem de erro "Funcionário Inexistente".
// 4) Alterar salário de um funcionário Em cada posição do conjunto de funcionários, existe um objeto Funcionario.
// Considerando que os objetos funcionários possuam o método setSalario, você deverá procurar um funcionário
// (cujo código é informado pelo usuário) e alterar o seu salário.
// O valor do novo salário também deverá ser informado pelo usuário.
// Caso o funcionário informado não esteja cadastrado, mostre uma mensagem de erro "Funcionário Inexistente".
// OBSERVAÇÕES: ■ todos os atributos das classes devem ser private;
// ■ cada atributo deve ter um método getter e um setter;

import 'dart:io';

import 'Funcionario.dart';
import 'Dependente.dart';

dynamic cadastrarFuncionario(List<Funcionario> funcionarios) {
  print("Digite o número do funcionário: ");
  int numeroFuncionario = int.parse(stdin.readLineSync() ?? "0");
  print("Digite o nome do funcionário: ");
  String nomeFuncionario = stdin.readLineSync() ?? "";
  print("Digite o cargo do funcionário: ");
  String cargo = stdin.readLineSync() ?? "";
  print("Digite o salário do funcionário: ");
  double salario = double.parse(stdin.readLineSync() ?? "0");
  Funcionario novoFuncionario =
      Funcionario(numeroFuncionario, nomeFuncionario, cargo, salario);
  funcionarios.add(novoFuncionario);
  funcionarios.forEach((element) {
    print("Func num ${element.numeroFuncionario}"
    "Nome ${element.nomeFuncionario}"
    "Salario ${element.salario}"
    "Cargo ${element.cargo}");
  });
}

dynamic cadastrarDependente(
    List<Funcionario> funcionarios, List<Dependente> dependentes) {
  print("Digite o número do funcionário: ");
  int numeroFuncionario = int.parse(stdin.readLineSync() ?? "0");
  Funcionario funca = funcionarios
      .firstWhere((element) => element.numeroFuncionario == numeroFuncionario);
  print("Digite o nome do dependente: ");
  String nomeDependente = stdin.readLineSync() ?? "";
  Dependente novoDependente = Dependente(funca, nomeDependente);
  dependentes.add(novoDependente);
  dependentes.forEach((element) {
    print("Funcionario ${element.funcionario.nomeFuncionario} "
      "Dependente ${element.nomeDependente}"
   );
  });
}

dynamic mostrarBonus(
    List<Funcionario> funcionarios, List<Dependente> dependentes) {
  print("Digite o número do funcionário: ");
  int numeroFuncionario = int.parse(stdin.readLineSync() ?? "0");
  Funcionario funca = funcionarios
      .firstWhere((element) => element.numeroFuncionario == numeroFuncionario);

  int qtdDependentes = dependentes
      .where((element) => element.funcionario == funca)
      .toList()
      .length;

  double bonus(int qtdDependentes) {
    double valorValorInicial = funca.salario;
    double valorFinal =
        valorValorInicial + (valorValorInicial * (qtdDependentes * 0.02));
    return valorFinal;
  }

  print(
      "O funcionário ${funca.nomeFuncionario}  tem direito a um bônus de ${bonus(qtdDependentes)} reais.");
}

dynamic excluirFuncionario(
    List<Funcionario> funcionario, List<Dependente> dependente) {
  print("Digite o número do funcionário: ");
  int numeroFuncionario = int.parse(stdin.readLineSync() ?? "0");
  Funcionario funca = funcionario
      .firstWhere((element) => element.numeroFuncionario == numeroFuncionario);
  funcionario.remove(funca);
  dependente.removeWhere((element) => element.funcionario == funca);
}

dynamic alterarSalario(List<Funcionario> funcionarios) {
  print("Digite o número do funcionário: ");
  int numeroFuncionario = int.parse(stdin.readLineSync() ?? "0");
  Funcionario funca = funcionarios
      .firstWhere((element) => element.numeroFuncionario == numeroFuncionario);
  print("Digite o novo salário do funcionário: ");
  double novoSalario = double.parse(stdin.readLineSync() ?? "0");
  funca.salario = novoSalario;
  print(funcionarios.indexOf(funca));
  int index = funcionarios.indexOf(funca);
  funcionarios[index] = funca;
}

void main() {
  print(
      "Bem vindo, esse programa foi feito em um domingo de noite, com muito amor! <3");

  List<Funcionario> funcionarios = [];
  List<Dependente> dependentes = [];
  bool sair = false;

  while (sair == false) {
    print("Escolha uma opção: ");
    print("1 - Cadastrar funcionário");
    print("2 - Cadastrar dependente");
    print("3 - Mostrar bônus mensal de cada funcionário");
    print("4 - Excluir funcionário");
    print("5 - Alterar salário de um funcionário");
    print("6 - Sair");
    int opcao = int.parse(stdin.readLineSync() ?? "0");
    switch (opcao) {
      case 1:
        cadastrarFuncionario(funcionarios);
        break;
      case 2:
        cadastrarDependente(funcionarios, dependentes);
      case 3:
        mostrarBonus(funcionarios, dependentes);
        break;
      case 4:
        excluirFuncionario(funcionarios, dependentes);
        break;
      case 5:
        alterarSalario(funcionarios);
        break;
      case 6:
        sair = true;
        break;
    }
  }
}
