//Faça um programa que receba uma data no formato DD/MM/AAAA e a mostre o mês por extenso:
//  DD/mês por extenso/AAAA
import 'dart:io';

dynamic conversor(data){
  List<dynamic> lista = data.split('/');
  Map<String, String> meses = {
    "01": "Janeiro",
    "02": "Fevereiro",
    "03": "Março",
    "04": "Abril",
    "05": "Maio",
    "06": "Junho",
    "07": "Julho",
    "08": "Agosto",
    "09": "Setembro",
    "10": "Outubro",
    "11": "Novembro",
    "12": "Dezembro"
  };
  String mes = meses[lista[1]]!;
  String resultado = "${lista[0]}/$mes/${lista[2]}";
  return resultado;
}


void main(){
  print("Digite uma data no formato DD/MM/AAAA");
  String data = stdin.readLineSync()!;
  print(conversor(data));


}