import 'package:flutter/material.dart';
import 'package:listas/pages/profile.dart';
import 'package:listas/repository/pessoarepository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MainState();
}

class _MainState extends State<MyApp> {
  static final listaPessoas = PessoaRepository.listaPessoas;

  @override
  Widget build(BuildContext context) {
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
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => ProfileInfo(
                        pessoa: listaPessoas[i],
                      ),
                    ),
                  );
                },
              ),
            );
          },
          itemCount: listaPessoas.length,
        ),
      ),
    );
  }
}
