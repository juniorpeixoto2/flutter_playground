import 'package:flutter/material.dart';

class ColapsedButtonPage extends StatefulWidget {
  const ColapsedButtonPage({Key? key}) : super(key: key);

  @override
  _ColapsedButtonPageState createState() => _ColapsedButtonPageState();
}

class _ColapsedButtonPageState extends State<ColapsedButtonPage> {
  bool openBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Botão Colapsado')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              colapsedBox('Titulo 1', 'texto 1'),
              colapsedBox('Titulo 2', 'texto 2'),
            ],
          ),
        ),
      ),
    );
  }

  Widget colapsedBox(var title, var text) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                openBox = !openBox;
                setState(() {});
              },
              child: Text(title),
            ),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 280),
            margin: const EdgeInsets.only(top: 4),
            padding: const EdgeInsets.all(6),
            width: double.infinity,
            height: openBox ? 80 : 0,
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text('Teste de texto'),
          )
        ],
      ),
    );
  }
}
