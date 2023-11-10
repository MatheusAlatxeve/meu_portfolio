import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:entrega_portfolio/page/widgets/botao_widget.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: const Color.fromRGBO(0, 48, 73, 1),
        toolbarHeight: 72,
        title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                      color: Color.fromRGBO(234, 226, 183, 1), fontSize: 20),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Matheus',
                    ),
                    TextSpan(
                      text: 'A',
                      style: TextStyle(
                          color: Color.fromRGBO(247, 127, 0, 1), fontSize: 20),
                    ),
                    TextSpan(
                      text: 'P',
                      style: TextStyle(
                          color: Color.fromRGBO(241, 40, 40, 1), fontSize: 20),
                    ),
                  ],
                ),
              ),
              const Row(
                children: [
                  BotaoWidget(
                    texto: 'Github',
                    url: 'https://github.com/MatheusAlatxeve',
                    icone: FontAwesomeIcons.github,
                  ),
                  SizedBox(width: 8),
                  BotaoWidget(
                    texto: 'LinkedIn',
                    url: 'https://www.linkedin.com/in/matheus-alatxeve/',
                    icone: FontAwesomeIcons.linkedin,
                    
                  ),
                ],
              ),
            ]));
  }
}