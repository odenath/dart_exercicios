//Faça um programa que receba uma frase e mostre quantas letras, quantos números e quantos espaços existem nela.


dynamic qtdLetras(String frase) {
  String letras = frase.replaceAll(RegExp(r'[^a-zA-ZÀ-ú]'), '');
  print(letras);
  print("Quantidade de letras: ${letras.length}");
}

dynamic qtdNumeros(String frase) {
  String numeros = frase.replaceAll(RegExp(r'[^0-9]'), '');
  print(numeros);
  print("A quantidade de números é de ${numeros.length}");
}

dynamic qtdEspacos(String frase) {
  String espacos = frase.replaceAll(RegExp(r'[^\s]'), '');
  print(espacos);
  print("A quantidade de espaços é ${espacos.length}");
}

void main() {
  String frase = "A vida é bela 3.0";
  print(frase);
  qtdLetras(frase);
  qtdNumeros(frase);
  qtdEspacos(frase);
}
