//Elabore uma sub-rotina que receba duas cadeias de caracteres como parâmetros e retorne 0 se elas forem iguais. Caso contrário, deverá
//retornar o índice do primeiro caractere não coincidente
import 'dart:io';

dynamic comparador(String a, String b) {
  if (a == b) {
    return 0;
  } else {
    int menorPalavra;

    if (a.length < b.length) {
      menorPalavra = a.length;
      print(a);
    } else {
      menorPalavra = b.length;
      print(b);
    }
    for (int i = 0; i < menorPalavra; i++) {
      if (a[i] != b[i]) {
        return i+1;
      }  
    }
    return menorPalavra+1;
  }
}

void main() {
  print("Digite a primeira palavra");
  String a = stdin.readLineSync() ?? '';
  print("Digite a segunda palavra");
  String b = stdin.readLineSync() ?? '';
  print(comparador(a, b));
}
