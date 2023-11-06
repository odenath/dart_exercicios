class Funcionario {
  int _numeroFuncionario;
  String _nomeFuncionario;
  String _cargo;
  double _salario;

  Funcionario(this._numeroFuncionario, this._nomeFuncionario, this._cargo,
      this._salario);

  int get numeroFuncionario => _numeroFuncionario;
  set numeroFuncionario(int value) => _numeroFuncionario = value;

  String get nomeFuncionario => _nomeFuncionario;
  set nomeFuncionario(String value) => _nomeFuncionario = value;

  String get cargo => _cargo;
  set cargo(String value) => _cargo = value;

  double get salario => _salario;
  set salario(double value) => _salario = value;
}
