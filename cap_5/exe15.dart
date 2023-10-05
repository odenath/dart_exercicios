//Uma empresa fez uma pesquisa de mercado para saber se as pessoas gostaram ou não de um
////novo produto lançado no mercado. Para isso, forneceu o sexo do entrevistado e sua
/// //resposta(S-sim ou N-não). Sabe-se que foram entrevistadas 10 pessoas.
/// Faça um programa que calcule e mostre:
//o número de pessoas que responderam sim
//o número de pessoas que responderam não
//o número de mulheres que responderam sim
//a percentagem de homens que responderam não, entre todos os homens analisados.

import 'dart:io';

void main() {
  String opiniao;
  String sexo;
  int contadorS = 0;
  int contadorN = 0;
  int contadorFS = 0;
  for (int i = 0; i < 10; i++) {
    print("Digite a sua opinião, sim ou não");
    opiniao = stdin.readLineSync()!;
    print("Digite o seu sexo Masculino ou Feminino");
    sexo = stdin.readLineSync()!;
    if (opiniao.toUpperCase().substring(0, 1) == "S") {
      contadorS++;
    }
    if (opiniao.toUpperCase().substring(0, 1) == "N") {
      contadorN++;
    }
    if (opiniao.toUpperCase().substring(0, 1) == "S" &&
        sexo.toUpperCase().substring(0, 1) == "F") {
      contadorFS++;
    }
    if (opiniao.toUpperCase().substring(0, 1) == "N" &&
        sexo.toUpperCase().substring(0, 1) == "M") {
      contadorFS++;
    }
  }
  print("O número de pessoas que responderam sim é $contadorS");
  print("O número de pessoas que responde não é de $contadorN");
  print("O contador de Mulher e sim é de $contadorFS");
  print(
      "A percentagem de homens que responderam não é de ${(contadorFS / 10) * 100}");
}
