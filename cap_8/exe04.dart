//Faça uma sub-rotina que receba como parâmetro o raio de uma esfera, calcule e mostre no programa principal o seu valume v = 4/3 *R³;
import 'dart:io';
double volumeEsfera(double raio) {
  return (4/3) * 3.14 * (raio * raio * raio);
}

void main() {
  double raio = double.parse(stdin.readLineSync() ?? '0');
  print(volumeEsfera(raio));
}