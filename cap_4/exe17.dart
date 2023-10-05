//Faça um programa que verifique a validade de uma senha fornecida pelo usuário
//A senha é 4531;
//O programa deve mostrar uma mensagem de permissão de acesso ou não.


import 'dart:io';

void main(){
  for(int i = 0; i < 3; i++){
    print("Digite a senha");
    int senha = int.parse(stdin.readLineSync()!);
    if(senha == 4531){
      print("Acesso permitido");
      break;
    }else{
      print("Acesso negado, tentativas restantes ${2-i}");
    }
  }
}