import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromRGBO(0, 48, 73, 1),
      title: RichText(
        text: const TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: 'Matheus',
              style: TextStyle(
                color: Color.fromRGBO(234, 226, 183, 1),
                fontSize: 24,
              ),
            ),
            TextSpan(
              text: 'A',
              style: TextStyle(
                color: Color.fromRGBO(214, 40, 40, 1),
                fontSize: 24,
              ),
            ),
            TextSpan(
              text: 'P',
              style: TextStyle(
                color: Color.fromRGBO(247, 127, 0, 1),
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
      centerTitle: true,
    );
  }
}
