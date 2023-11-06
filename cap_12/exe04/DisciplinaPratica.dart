
import 'Disciplina.dart';

class DisciplinaPratica extends Disciplina {
  int cargaHorariaPratica;

  DisciplinaPratica(String codigo, String nome, int cargaHorariaGeral,
      this.cargaHorariaPratica)
      : super(codigo, nome, cargaHorariaGeral);

  @override
  String toString() {
    return 'DisciplinaPratica{codigo: $codigo, nome: $nome, '
        'cargaHorariaGeral: $cargaHorariaGeral, '
        'cargaHorariaPratica: $cargaHorariaPratica}';
  }
}