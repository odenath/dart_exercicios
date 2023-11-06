import 'Funcionario.dart';
class Dependente{
  Funcionario _funcionario;
  String _nomeDependente;

  Dependente(this._funcionario, this._nomeDependente);

  Funcionario get funcionario => _funcionario;
  set funcionario(Funcionario value) => _funcionario = value;

  String get nomeDependente => _nomeDependente;
  set nomeDependente(String value) => _nomeDependente = value;
}