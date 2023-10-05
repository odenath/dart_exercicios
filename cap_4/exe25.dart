//uma empresa decidiu dar uma gratificação de natal a seus funcionários,
//baseado no número de horas extras que o funcionário faltou ao trabalho.
//O valor do prêmio é obtido pela consulta à tabela que se segue, na qual:
//	H= número de horas extras -(2/3(número de horas-falta))

import 'dart:io';

void main() {
  int horasExtras;
  int minutosExtras;
  int horasFaltas;
  int minutosFaltas;
  // DateTime horarioInicial = DateTime(2023,12,10);
  // DateTime horarioFinal = DateTime.now().add(Duration(hours: 10));
  // Duration intervalo = horarioFinal.difference(horarioInicial);
  // print(horarioInicial);

  print("Digite o número de horas extras: ");
  horasExtras = int.parse(stdin.readLineSync()!);
  print("Digite o número de minutos extras: ");
  minutosExtras = int.parse(stdin.readLineSync()!);
  print("Digite o número de horas de falta: ");
  horasFaltas = int.parse(stdin.readLineSync()!);
  print("Digite o número de minutos de falta: ");
  minutosFaltas = int.parse(stdin.readLineSync()!);

  horasExtras = (horasExtras * 60) + minutosExtras;
  horasFaltas = (horasFaltas * 60) + minutosFaltas;

  double horas = horasExtras - (2 / 3 * (horasFaltas));

  if (horas <= 600) {
    print("O valor do prêmio é de R\$ 100,00");
  } else if (horas > 600 && horas <= 1200) {
    print("O valor do prêmio é de R\$ 200,00");
  } else if (horas > 1200 && horas <= 1800) {
    print("O valor do prêmio é de R\$ 300,00");
  } else if (horas > 1800 && horas <= 2400) {
    print("O valor do prêmio é de R\$ 400,00");
  } else if (horas > 2400) {
    print("O valor do prêmio é de R\$ 500,00");
  }
}
