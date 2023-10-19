//Faça um programa que receba uma frase e faça a criptografia dela,
//utilizando a representação ASCII de cada caractere mais um espaço, e depois proceda a sua descriptografia


import 'dart:io';
String criptografar(String frase) {
  String fraseCriptografada = '';
  for (int i = 0; i < frase.length; i++) {
    int codigoAscii = frase.codeUnitAt(i);
    int codigoCriptografado = codigoAscii + 1;
    fraseCriptografada += String.fromCharCode(codigoCriptografado);
  }
  return fraseCriptografada;
}

String descriptografar(String fraseCriptografada) {
  String fraseDescriptografada = '';
  for (int i = 0; i < fraseCriptografada.length; i++) {
    int codigoAsciiCriptografado = fraseCriptografada.codeUnitAt(i);
    int codigoDescriptografado = codigoAsciiCriptografado - 1;
    fraseDescriptografada += String.fromCharCode(codigoDescriptografado);
  }
  return fraseDescriptografada;
}

void main() {
  print("Digite a frase");
  String frase = stdin.readLineSync()!;
  
  String fraseCriptografada = criptografar(frase);
  print("Frase criptografada: $fraseCriptografada");
  
  String fraseDescriptografada = descriptografar(fraseCriptografada);
  print("Frase descriptografada: $fraseDescriptografada");
}
