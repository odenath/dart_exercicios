//Faça um programa que receba uma frase e mostre cada palavra dela em uma lista separada.
//Exemplo:
//Frase: Computadores são máquinas potentes.
//Saída: Computadores
//       são  
//       máquinas
//       potentes.

String fraseSeparada(String frase) {
  List<String> palavras = frase.split(' ');
  String fraseSeparada = '';
  for (String palavra in palavras) {
    fraseSeparada += '$palavra\n';
  }
  return fraseSeparada;
}
void main(){
  String frase = 'Computadores são máquinas potentes.';
  print(fraseSeparada(frase));
}