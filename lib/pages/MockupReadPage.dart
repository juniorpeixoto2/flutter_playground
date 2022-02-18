import 'package:flutter/material.dart';
import 'package:flutter_playground/widgets/CustomAppBar.dart';

class MockupReadPage extends StatefulWidget {
  const MockupReadPage({Key? key}) : super(key: key);

  @override
  _MockupReadPageState createState() => _MockupReadPageState();
}

class _MockupReadPageState extends State<MockupReadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 31, 43, 51),
        centerTitle: false,
        title: const CustomAppBar(),
      ),
      backgroundColor: const Color.fromARGB(255, 31, 43, 51),
    );
  }
}
