import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:entrega_portfolio/breakpoints.dart';

class Competencias extends StatelessWidget {
  static final List<Map<IconData, Color>> iconsData = [
    {FontAwesomeIcons.js: const Color.fromRGBO(240, 219, 79, 1)},
    {FontAwesomeIcons.html5: const Color.fromRGBO(227, 76, 38, 1)},
    {FontAwesomeIcons.css3Alt: const Color.fromRGBO(38, 77, 228, 1)},
    {FontAwesomeIcons.react: const Color.fromRGBO(97, 219, 251, 1)},
    {FontAwesomeIcons.nodeJs: const Color.fromRGBO(60, 135, 58, 1)},
    {FontAwesomeIcons.python: const Color.fromRGBO(48, 105, 152, 1)},
    {FontAwesomeIcons.java: const Color.fromRGBO(248, 152, 32, 1)},
  ];

  const Competencias({Key? key}) : super(key: key);

  Widget buildIcon(IconData icon, Color color, double size) {
    return Icon(
      icon,
      color: color,
      size: size,
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < mobileBreakpoint;
    final isTablet = width < tabletBreakpoint;

    final iconSize = isMobile
        ? 50.0
        : isTablet
            ? 70.0
            : 90.0;

    return Column(
      children: [
        const Text(
          'Competências',
          style: TextStyle(
            color: Color.fromRGBO(234, 226, 183, 1),
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 30,),
        Container(
          color: const Color.fromRGBO(234, 226, 183, 1),
          height: isMobile ? 100 : 150,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: iconsData
                .map((data) => buildIcon(
                      data.keys.first,
                      data.values.first,
                      iconSize,
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
