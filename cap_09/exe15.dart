//Faça um programa que receba uma frase e, cada vez que aparecer nela um algarismo entre 0 e 9, substitua-o, escrevendo-o por extenso
//Ex:
//Frase: Eu estou na poltrona 5
//Saída: Eu estou na poltrona cinco;

import 'dart:io';

void extenso(String frase) {
  List<String> palavras = frase.split(' ');
  Map<String, String> mapinha = {
    '0': 'zero',
    '1': 'um',
    '2': 'dois',
    '3': 'três',
    '4': 'quatro',
    '5': 'cinco',
    '6': 'seis',
    '7': 'sete',
    '8': 'oito',
    '9': 'nove'
  };

  for (int i = 0; i < palavras.length; i++) {
    if (mapinha.containsKey(palavras[i])) {
      palavras[i] = mapinha[palavras[i]].toString();
    }
  }

  String fraseConvertida = palavras.join(' ');
  print(fraseConvertida);
}

void main() {
  print("Digite uma frase com números:");
  String frase = stdin.readLineSync()!;
  extenso(frase);
}





// import 'dart:io';

// dynamic extenso(String frase) {
//   List<String> palavras = frase.split(' ');
//   Map<int, String> mapinha = {
//     0: 'zero',
//     1: 'um',
//     2: 'dois',
//     3: 'três',
//     4: 'quatro',
//     5: 'cinco',
//     6: 'seis',
//     7: 'sete',
//     8: 'oito',
//     9: 'nove'
//   };
//   for (int i = 0; i < palavras.length; i++) {
//     if (mapinha.containsKey(int.parse(palavras[i]))) {
//       palavras[i] = mapinha[palavras[i]].toString();
//     }
//   }
//   String fraseConvertida = palavras.join(' ');
//   return fraseConvertida;
// }

// void main() {
//   print("Digite uma frase com números:");
//   String frase = stdin.readLineSync()!;
//   print(extenso(frase));
// }
