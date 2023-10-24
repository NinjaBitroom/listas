import 'package:flutter/material.dart';
import 'package:listas/entidades/pessoa.dart';

class ProfileInfo extends StatelessWidget {
  final Pessoa pessoa;

  const ProfileInfo({super.key, required this.pessoa});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Informações de perfil"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              CircleAvatar(
                backgroundImage: AssetImage(pessoa.foto),
                radius: 100,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                pessoa.nome,
                style: const TextStyle(fontSize: 40),
              ),
              Text(
                pessoa.idade.toString(),
                style: const TextStyle(fontSize: 40),
              ),
              const SizedBox(
                height: 30,
              ),
              const Card(
                child: ListTile(
                  tileColor: Colors.black12,
                  leading: Icon(Icons.settings),
                  title: Text("Configurações"),
                ),
              ),
              const Card(
                child: ListTile(
                  tileColor: Colors.black12,
                  leading: Icon(Icons.notifications),
                  title: Text("Notificações"),
                  trailing: Icon(Icons.toggle_on),
                ),
              ),
              const Card(
                child: ListTile(
                  tileColor: Colors.black12,
                  leading: Icon(Icons.logout),
                  title: Text("Logout"),
                ),
              ),
            ]),
          ),
        ));
  }
}
