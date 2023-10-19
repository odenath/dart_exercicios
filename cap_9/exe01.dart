//Faça um programa para criptografar uma frase dada pelo usuário. Na criptografia, a frase deverá ser invertida e as consoantes deverão
//ser trocadas por #
//Ex:
// EU ESTOU NA ESCOLA
// A#O##E A# OU##E UE

String fraseinvertidaCriptografada(String frase) {
  //String frase = frase.split('').reversed.join();
  String fraseinvertida = '';
  for (int i = frase.length - 1; i >= 0; i--) {
    if (frase[i] != 'A' &&
        frase[i] != 'E' &&
        frase[i] != 'I' &&
        frase[i] != 'O' &&
        frase[i] != 'U') {
      fraseinvertida += '#';
    } else{
    fraseinvertida += frase[i];
  }
  }
  return fraseinvertida;
}


void main() {
  String frase = 'EU ESTOU NA ESCOLA';
  print(fraseinvertidaCriptografada(frase));

}
