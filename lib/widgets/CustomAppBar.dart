import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
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
        const FaIcon(FontAwesomeIcons.solidMoon)
      ],
    );
  }
}
