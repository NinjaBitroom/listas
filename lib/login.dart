import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyAppCounter(),
  ));
}

class MyAppCounter extends StatefulWidget {
  const MyAppCounter({super.key});

  @override
  State<MyAppCounter> createState() => _MyAppCounterState();
}

class _MyAppCounterState extends State<MyAppCounter> {
  final loginController = TextEditingController();
  final passwordController = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Meu formulário'),
        ),
        body: Form(
          key: _formkey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextFormField(
                  controller: loginController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Login',
                  ),
                  validator: (value) {
                    if (value == null || value.length < 4 || value.isEmpty) {
                      return 'Nome muito pequeno';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 12,
                ),
                TextFormField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Senha',
                  ),
                  validator: (value) {
                    if (value == null || value.length < 6 || value.isEmpty) {
                      return 'Sua senha deve conter pelo menos 6 caracteres';
                    }
                    return null;
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              content: Text(
                                  'Tudo preenchido!\nLogin: ${loginController.text}\nSenha: ${passwordController.text}'),
                            );
                          });
                    }
                  },
                  child: const Text('Entrar'),
                )
              ],
            ),
          ),
        ));
  }
}
