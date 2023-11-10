import 'package:flutter/material.dart';

class CardContato extends StatelessWidget {
  final IconData icon;
  final String text;
  final double fontSize;

  const CardContato({super.key, 
    required this.icon,
    required this.text,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(16),
        color: const Color.fromRGBO(234, 226, 183, 1),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              icon,
              size: 40,
              color: const Color.fromRGBO(0, 48, 73, 1),
            ),
            const SizedBox(width: 16),
            Text(
              text,
              style: TextStyle(
                color: const Color.fromRGBO(0, 48, 73, 1),
                fontSize: fontSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
