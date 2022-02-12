import 'package:flutter/material.dart';
import 'package:flutter_playground/animations/ColapsedButtonPage.dart';
import 'package:flutter_playground/animations/ImplicitsPage.dart';

class AnimationsPage extends StatefulWidget {
  const AnimationsPage({Key? key}) : super(key: key);

  @override
  _AnimationsPageState createState() => _AnimationsPageState();
}

class _AnimationsPageState extends State<AnimationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animações Implícitas')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              height: 60,
              child: ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ImplictPage())),
                child: const Text('Implicitas'),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 200,
              height: 60,
              child: ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ColapsedButtonPage())),
                child: const Text('Botão Colapsado'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
