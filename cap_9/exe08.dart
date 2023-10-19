//Faça um programa que receba uma frase e um caractere e verifique se o caractere digitado é encontrado na frase ou não é,
//se for encontrado, quantas vezes isso acontece;

void contem(String frase, String caractere) {
  List lista1 = frase.split('');
  int contador = 0;
  for (String item in lista1) {
    if (item.toLowerCase() == caractere.toLowerCase()) {
      contador++;
    }
  }
  print("A frase: '$frase',possui $contador '$caractere'");
}

void main() {
  String frase = "O pica-pau é legal";
  String caractere = "a";
  contem(frase, caractere);
}
