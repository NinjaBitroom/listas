import 'package:flutter/material.dart';
import 'package:listas/entidades/pessoa.dart';
import 'package:listas/pages/profile.dart';
import 'package:listas/repository/pessoarepository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Main(),
    );
  }
}

class Main extends StatelessWidget {
  static final listaPessoas = PessoaRepository.listaPessoas;

  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const ProfileInfo()),
                    );
                  },
                ),
              );
            },
            itemCount: listaPessoas.length));
  }
}
