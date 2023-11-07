import 'package:flutter/material.dart';
import 'package:listas/entidades/pessoa.dart';

class ProfileInfo extends StatefulWidget {
  final Pessoa pessoa;

  const ProfileInfo({
    super.key,
    required this.pessoa,
  });

  @override
  State<ProfileInfo> createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  bool _stateSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Informações de perfil"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(widget.pessoa.foto),
                radius: 100,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                widget.pessoa.nome,
                style: const TextStyle(fontSize: 40),
              ),
              Text(
                widget.pessoa.idade.toString(),
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
              Card(
                child: ListTile(
                  tileColor: Colors.black12,
                  leading: const Icon(Icons.notifications),
                  title: const Text("Notificações"),
                  trailing: Switch(
                      value: _stateSwitch,
                      onChanged: (newValue) {
                        setState(() {
                          _stateSwitch = newValue;
                        });
                      }),
                ),
              ),
              const Card(
                child: ListTile(
                  tileColor: Colors.black12,
                  leading: Icon(Icons.logout),
                  title: Text("Logout"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
