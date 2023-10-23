import 'package:listas/entidades/pessoa.dart';

class PessoaRepository {
  static List<Pessoa> listaPessoas = [
    Pessoa(
      foto: 'images/foto1.webp',
      nome: 'João',
      idade: 20,
    ),
    Pessoa(
      foto: 'images/foto2.webp',
      nome: 'José',
      idade: 30,
    ),
    Pessoa(
      foto: 'images/foto3.jfif',
      nome: 'Maria',
      idade: 22,
    ),
  ];
}
