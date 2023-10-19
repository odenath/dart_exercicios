//Crie uma sub-rotina que receba como parâmetro a altura(alt) e o sexo de uma pessoa e retorne o seu peso ideal. Para homens, deverá
//calcular o peso ideal usando a fórmula: peso ideal= 72.7 * alt -58 para mulheres peso ideal = 62.1*alt-44.7;
import 'dart:io';

double mulherPeso(int num) {
  return (62.1 * num) - 44.7;
}
double homemPeso(int num) {
  return (72.7 * num) - 58;
}

void main() {
  int altura;
  print("Digite a sua altura ");
  altura = int.parse(stdin.readLineSync() ?? '0');
  print("Digite o seu sexo, masculino ou feminino");
  String sexo = stdin.readLineSync() ?? '';
  if (sexo.startsWith('M') || sexo.startsWith('m')) {
    print(homemPeso(altura));
  } else if (sexo.startsWith('F') || sexo.startsWith('f')) {
    print(mulherPeso(altura));
  } else {
    print("Digite um sexo válido");
  }
}
