import 'package:flutter/material.dart';
import 'package:flutter_playground/pages/Animations_page.dart';
import 'package:flutter_playground/pages/Home_page.dart';
import 'package:flutter_playground/pages/MockupReadPage.dart';
import 'package:flutter_playground/pages/SplashPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Playground',
      theme: ThemeData(),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(),
        '/home': (context) => const HomePage(),
        '/animations': (context) => const AnimationsPage(),
        '/mockupRead': (context) => const MockupReadPage(),
      },
    );
  }
}
