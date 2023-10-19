//Foi realizada uma pesquisa entre 15 habitantes de uma região. Foram coletados estes dados da cada habitante: idade, sexo, salário e
//número de filhos.
//Faça uma sub-rotina que leia esses dados armazenando-os em vetores. Depois, crie sub-rotinas que recebam esses vetores como parâmetros
// e retornem a média de salário entre os habitantes, a menor e a maior idade do grupo e a quantidade de mulheres com 3 filhos que
//recebem até 500(utilize uma sub-rotina para cada cálculo).
import 'dart:io';

dynamic mediaSalario(List<int> salario) {
  dynamic media = 0;
  for (int i = 0; i < salario.length; i++) {
    media += salario[i];
  }
  media = (media / salario.length).round();
  return media;
}

dynamic menorMaiorIdade(List<int> salario) {
  dynamic menor = salario.reduce((a, b) => a < b ? a : b);
  dynamic maior = salario.reduce((a, b) => a > b ? a : b);
  return [menor, maior];
}

int qtdMulheres3Filhos500(
    List<int> salario, List<String> sexo, List<int> qtdFilhos) {
  int qtd = 0;
  for (int i = 0; i < salario.length; i++) {
    if (sexo[i].toUpperCase().startsWith("F") &&
        qtdFilhos[i] == 3 &&
        salario[i] < 500) {
      qtd++;
    }
  }
  return qtd;
}

void main() {
  List<int> age = [];
  List<String> sex = [];
  List<int> salary = [];
  List<int> qtdFilhos = [];
  int habitantes = 15;

  print("Digite a idade do habitante:");
  for (int i = 0; i < habitantes; i++) {
    age.add(int.parse(stdin.readLineSync() ?? '0'));
  }
  print("Digite o sexo do habitante: Masculino ou Feminino ");
  for (int i = 0; i < habitantes; i++) {
    sex.add(stdin.readLineSync() ?? '');
  }
  print("Digite o salário do habitante:");
  for (int i = 0; i < habitantes; i++) {
    salary.add(int.parse(stdin.readLineSync() ?? '0'));
  }
  print("Digite a quantidade de filhos do habitante:");
  for (int i = 0; i < habitantes; i++) {
    qtdFilhos.add(int.parse(stdin.readLineSync() ?? '0'));
  }
  print("A média de salário entre os habitantes é: ${mediaSalario(salary)}");
  print("A menor e a maior idade do grupo é: ${menorMaiorIdade(age)}");
  print(
      "A qtd de mulheres que tem 3 filhos e recebem até 500 é de: ${qtdMulheres3Filhos500(salary, sex, qtdFilhos)}");
}
