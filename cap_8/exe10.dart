//Elabore uma sub-rotina qye receba como parâmetro um valor N(inteiro ou maior que 1) e determine o valor da sequência S, descrita a
//seguir: S = 1 + 1/2 + 1/3 ...
import 'dart:io';


double somaDiferenciada(int numero, int sequencia) {
  double soma = 0;
  for (int i = 1; i <= sequencia; i++) {
    soma += (numero / i);
  }
  return soma;
}

void main(){
  print("Digite um número inteiro e eu vou retornar uma soma diferenciada");
  int number = int.parse(stdin.readLineSync() ?? '0');
  print("Digite a quantidade da sequência:");
  int sequence = int.parse(stdin.readLineSync() ?? '0');
  print(somaDiferenciada(number, sequence));




}
