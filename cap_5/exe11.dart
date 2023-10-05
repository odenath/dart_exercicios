//Faça um programa que receba o valor de um carro e mostre uma tabela com os seguintes
//dados: preço final, quantidade de parcelas e valor da parcela.Considere o seguinte
//o preço final da compra a vista tem desconto de 20%
//a quantidade de parcelas pode ser de 6,12,24,30,36,42,48,54,60
//os percentuais de acréscimo encontram-se na tabela a seguir
//6 3%
//12 6%
//18 9%
//24 12%
//30 15%
//36 18%
//42 21%
//48 24%
//54 27%
//60 30%
import 'dart:io';

void main() {
  double preco = double.parse(stdin.readLineSync() ?? '0');
  print("Escolha a quantidade de parcelas: 1,6,12,24,30,36,42,48,54,60 ");
  int parcelas = int.parse(stdin.readLineSync() ?? '0');
  switch (parcelas){
    case 1:
      print("O valor final é de ${preco*0.8}");
      break;
    case 6:
      print("O valor final é de ${preco*1.03}");
      break;
    case 12:
      print("O valor final é de ${preco*1.06}");
      break;
    case 18:
      print("O valor final é de ${preco*1.09}");
      break;
    case 24:
      print("O valor final é de ${preco*1.12}");
      break;
    case 30:
      print("O valor final é de ${preco*1.12}");
      break;
    case 36:
      print("O valor final é de ${preco*1.15}");
      break;
    case 42:
      print("O valor final é de ${preco*1.18}");
      break;
    
  }
}
