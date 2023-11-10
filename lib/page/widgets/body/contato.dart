import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:entrega_portfolio/page/widgets/card_contato.dart';
import 'package:entrega_portfolio/breakpoints.dart';

class Contato extends StatelessWidget {
  const Contato({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;

        return Column(
          children: [
            Text(
              'Contato',
              style: TextStyle(
                color: const Color.fromRGBO(234, 226, 183, 1),
                fontSize: screenWidth < tabletBreakpoint ? 18 : 20,
              ),
            ),
            SizedBox(height: screenWidth < tabletBreakpoint ? 20 : 50),
            CardContato(
              icon: FontAwesomeIcons.envelope,
              text: 'email: matheusalatxeve@gmail.com',
              fontSize: screenWidth < tabletBreakpoint ? 16 : 18,
            ),
            SizedBox(height: screenWidth < tabletBreakpoint ? 20 : 50),
            CardContato(
              icon: FontAwesomeIcons.whatsapp,
              text: 'Telefone: (55) 98906-0335',
              fontSize: screenWidth < tabletBreakpoint ? 20 : 24,
            ),
          ],
        );
      },
    );
  }
}
