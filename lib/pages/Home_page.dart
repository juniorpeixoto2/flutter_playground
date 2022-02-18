import 'package:flutter/material.dart';
import 'package:flutter_playground/widgets/CustomAppBar.dart';
import 'package:flutter_playground/widgets/custom_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 31, 43, 51),
        centerTitle: false,
        title: const CustomAppBar(),
      ),
      backgroundColor: const Color.fromARGB(255, 31, 43, 51),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              CustomCard(
                title: 'Animações',
                numberExercises: 2,
                icon: FontAwesomeIcons.running,
                content:
                    "Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos",
                tap: () => Navigator.of(context).pushNamed('/animations'),
              ),
              const SizedBox(height: 20),
              CustomCard(
                title: 'Leitura de Mockup',
                numberExercises: 4,
                icon: FontAwesomeIcons.glasses,
                content:
                    'Aplicação da técnica de leitura de mockup, contendo 2 exercícios',
                tap: () => Navigator.of(context).pushNamed('/mockupRead'),
              ),
              // SizedBox(height: 20),
              // CustomCard(),
              // SizedBox(height: 20),
              // CustomCard(),
            ],
          ),
        ),
      ),
    );
  }
}
