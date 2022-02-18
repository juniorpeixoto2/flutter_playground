import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomCard extends StatelessWidget {
  String title;
  int numberExercises;
  String content;
  IconData icon;
  VoidCallback tap;

  CustomCard({
    Key? key,
    required this.title,
    required this.numberExercises,
    required this.content,
    required this.icon,
    required this.tap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
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
        height: 190,
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

                      child: Center(
                        child: FaIcon(
                          icon,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'Exercícios:',
                      style: TextStyle(color: Color(0xff51565A)),
                    ),
                    const SizedBox(width: 15),
                    Text(
                      numberExercises.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    content,
                    style: const TextStyle(
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
                GestureDetector(
                  onTap: tap,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 30,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      color: const Color(0xff055AA3),
                    ),
                    child: const Text(
                      'Ver Mais',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
