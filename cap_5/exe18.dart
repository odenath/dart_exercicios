// Foi feita uma pesquisa entre os habitantes de uma região. Foram coletados os dados de
// idade, sexo(M/F) e salário. Faça um programa que calcule e mostre:
// a média dos salários do grupo ok
// a maior e a menor idade do grupo ok
// a quantidade de mulheres com salário até 200,00 ok
// a idade e o sexo da pessoa que possui o menor salário.
// Finalize a entrada de dados ao ser digitada uma idade negativa.
// Complexidade maior do que parece, levei cerca de 1 hora para resolver

import 'dart:io';

void main() {
  List<int> idade = [];
  List<String> sexo = [];
  List<int> salario = [];
  int contador = 0;
  int mediaSalario = 0;
  int menorIdade = 0;
  int maiorSalario = 0;
  int mulherSalarioMenos200 = 0;
  int menorSalario = 0;
  String sexoDoPobre = '';

  do {
    print("Digite a sua idade");
    idade.add(int.parse(stdin.readLineSync() ?? '0'));
    if (idade[contador] < 0) {
      break;
    }
    print("Digite o seu sexo");
    sexo.add(stdin.readLineSync() ?? '');
    print("Digite o seu salário");
    salario.add(int.parse(stdin.readLineSync() ?? '0'));
    contador++;
    if (contador == 1) {
      menorIdade = idade[contador - 1];
      maiorSalario = salario[contador - 1];
      menorSalario = salario[contador - 1];
    } else {
      if (menorIdade > idade[contador - 1]) {
        menorIdade = idade[contador - 1];
      }
      if (maiorSalario < salario[contador - 1]) {
        maiorSalario = salario[contador - 1];
      }
      if (menorSalario > salario[contador - 1]) {
        menorSalario = salario[contador - 1];
        sexoDoPobre = sexo[contador - 1];
      }
    }
    if (sexo[contador - 1].toUpperCase().substring(0, 1) == "F" &&
        salario[contador - 1] <= 200) {
      mulherSalarioMenos200++;
    }
  } while (idade[contador - 1] > 0);

  for (int i = 0; i < salario.length; i++) {
    mediaSalario += salario[i];
  }
  print("A média dos salários é ${(mediaSalario / contador).toStringAsFixed(2)}");
  print("A menor idade é $menorIdade");
  print("A maior idade é $maiorSalario");
  print("A qtd de mulheres com salário até 200 é $mulherSalarioMenos200");
  print(
      "O menor salário é de $menorSalario e o sexo ${sexoDoPobre.toUpperCase().substring(0, 1)}");
}
