import 'package:listas/entidades/pessoa.dart';

class PessoaRepository {
  static List<Pessoa> listaPessoas = [
    Pessoa(
      foto: 'images/foto1.jpg',
      nome: 'João',
      idade: 20,
    ),
    Pessoa(
      foto: 'images/foto2.jpg',
      nome: 'José',
      idade: 30,
    ),
    Pessoa(
      foto: 'images/foto3.jpg',
      nome: 'Maria',
      idade: 22,
    ),
  ];
}
