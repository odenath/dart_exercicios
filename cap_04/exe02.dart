import 'dart:io';

void main() {
  List<double> notas = [];
  double media = 0;
  for (int i = 0; i < 4; i++) {
    print("Digite a nota ${i + 1}");
    double nota = double.parse(stdin.readLineSync() ?? '0');
    notas.add(nota);
  }
  print(notas);
  for (int i = 0; i < 4; i++) {
    media = notas[i];
  }
  double soma = 0;
  for (double nota in notas) {
    soma += nota;
    media = soma / notas.length;
  }
  if (media >= 0 && media <= 4) {
    print("Reprovado");
  } else if (media > 4 && media < 7) {
    print("Recuperação");
  } else {
    print("Aprovado");
  }
}
