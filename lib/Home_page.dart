import 'package:flutter/material.dart';
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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset('images/logo.png'),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Align(
                      child: Text(
                        'Atividades',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Text(
                      'Flutterando Masterclass',
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
              ],
            ),
            const FaIcon(FontAwesomeIcons.moon)
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 31, 43, 51),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 20),

            //Inicio Card
            Container(
              decoration: BoxDecoration(
                color: const Color(0xff172026),
                borderRadius: BorderRadius.circular(18),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 85, 82, 82),
                    offset: Offset(2, 2),
                    blurRadius: 2,
                    spreadRadius: 2,
                  )
                ],
              ),
              padding: const EdgeInsets.all(15),
              width: double.infinity,
              height: 220,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 43,
                            height: 43,
                            // padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: const Color(0xff055AA3),
                            ),

                            child: const Center(
                              child: FaIcon(
                                FontAwesomeIcons.running,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(width: 15),
                          const Text(
                            'Animações',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            'Exercícios:',
                            style: TextStyle(color: Color(0xff51565A)),
                          ),
                          SizedBox(width: 15),
                          Text(
                            '4',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Expanded(
                        child: Text(
                          'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos',
                          style: TextStyle(
                            color: Color.fromARGB(255, 119, 123, 126),
                            fontSize: 14,
                          ),
                          maxLines: 20,
                          overflow: TextOverflow.ellipsis,
                          // textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          FaIcon(
                            FontAwesomeIcons.github,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Acessar código fonte',
                            style: TextStyle(
                              color: Color(0xffEDF4F8),
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Ver Mais',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //Fim Card
          ],
        ),
      ),
    );
  }
}
