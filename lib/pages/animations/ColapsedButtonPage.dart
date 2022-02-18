import 'dart:ffi';

import 'package:flutter/material.dart';

class ColapsedButtonPage extends StatefulWidget {
  const ColapsedButtonPage({Key? key}) : super(key: key);

  @override
  _ColapsedButtonPageState createState() => _ColapsedButtonPageState();
}

class _ColapsedButtonPageState extends State<ColapsedButtonPage> {
  List<Map> custombuttons = [];

  @override
  void initState() {
    super.initState();

    custombuttons.add({
      'openBox': false,
      'title': 'Titulo 1',
      'text': 'Texto 1',
    });

    custombuttons.add({
      'openBox': false,
      'title': 'Titulo 2',
      'text': 'Texto 2',
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Botão Colapsado')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: custombuttons.length,
            itemBuilder: (BuildContext context, index) {
              return ColapsedBox(
                openBox: false,
                title: custombuttons[index]['title'],
                text: custombuttons[index]['text'],
              );
            },
          ),
        ),
      ),
    );
  }
}

class ColapsedBox extends StatefulWidget {
  ColapsedBox(
      {Key? key,
      required this.openBox,
      required this.title,
      required this.text})
      : super(key: key);

  bool openBox;
  String title;
  String text;

  @override
  State<ColapsedBox> createState() => _ColapsedBoxState();
}

class _ColapsedBoxState extends State<ColapsedBox> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                widget.openBox = !widget.openBox;
                setState(() {});
              },
              child: Text(widget.title),
            ),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 280),
            margin: const EdgeInsets.only(top: 4),
            padding: const EdgeInsets.all(6),
            width: double.infinity,
            height: widget.openBox ? 80 : 0,
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(widget.text),
          )
        ],
      ),
    );
  }
}
