
import 'package:flutter/material.dart';
import 'package:listas/entidades/pessoa.dart';
import 'package:listas/repository/pessoarepository.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  static final listaPessoas = PessoaRepository.listaPessoas;

  @override
  Widget build(BuildContext context) {
    verPerfil(Pessoa pessoa) {
      Navigator.push(context, route);
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            leading: const Icon(
              Icons.menu,
              size: 30,
            ),
            title: const Center(
              child: Text("Meu primeiro app"),
            ),
          ),
          body: ListView.builder(
              itemBuilder: (BuildContext context, int i) {
                return Card(
                  child: ListTile(
                    tileColor: Colors.lightBlueAccent,
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(listaPessoas[i].foto),
                    ),
                    title: Text(listaPessoas[i].nome),
                    trailing: Text(listaPessoas[i].idade.toString()),
                    onTap: verPerfil,
                  ),
                );
              },
              itemCount: listaPessoas.length)),
    );
  }
}
