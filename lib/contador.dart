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
  int counter = 0;
  final fraseController = TextEditingController();

  void incrementar() {
    setState(() {
      counter++;
    });
    print(counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador'),
      ),
      body: Column(
        children: [
          TextField(
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: 'Digite algo'),
            controller: fraseController,
          ),
          Text(
            counter.toString(),
            style: const TextStyle(fontSize: 40),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                counter++;
                print(counter);
              });
            },
            child: const Icon(Icons.plus_one),
          ),
          Text(
            fraseController.text,
            style: const TextStyle(fontSize: 40),
          ),
          ElevatedButton(onPressed: () {
            showDialog(context: context, builder: (BuildContext context) {
              return AlertDialog(title: const Text('Alerta'), content: Text(fraseController.text),);
            });
          }, child: const Text('Ver texto'))
        ],
      ),
    );
  }
}
