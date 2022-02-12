import 'package:flutter/material.dart';

class ImplictPage extends StatefulWidget {
  const ImplictPage({Key? key}) : super(key: key);

  @override
  _ImplictPageState createState() => _ImplictPageState();
}

class _ImplictPageState extends State<ImplictPage> {
  var isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation'),
      ),
      body: Center(
          child: GestureDetector(
        onTap: () {
          // print('ok');
          setState(() {
            isSelected = !isSelected;
          });
        },
        child: AnimatedContainer(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
            color: Colors.red,
          ),
          duration: const Duration(seconds: 1),
          height: 80,
          width: 300,
          // alignment: Alignment.centerRight,
          child: AnimatedAlign(
            duration: const Duration(seconds: 1),
            alignment:
                isSelected ? Alignment.centerRight : Alignment.centerLeft,
            child: AnimatedContainer(
              duration: const Duration(seconds: 1),
              margin: const EdgeInsets.all(4),
              width: 180,
              decoration: BoxDecoration(
                color: isSelected ? Colors.blue : Colors.green,
                borderRadius: BorderRadius.circular(80),
              ),
            ),
          ),
        ),
      )),
    );
  }
}
