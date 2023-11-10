import 'package:flutter/material.dart';
import 'package:entrega_portfolio/breakpoints.dart';
import 'package:text_divider/text_divider.dart';

class SobreMim extends StatelessWidget {
  const SobreMim({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    TextStyle titleStyle;
    TextStyle contentStyle;
    double dividerThickness;

    if (width < mobileBreakpoint) {
      titleStyle = const TextStyle(
        color: Color.fromRGBO(234, 226, 183, 1),
        fontSize: 18,
      );

      contentStyle = const TextStyle(
        color: Color.fromRGBO(234, 226, 183, 1),
        fontSize: 16,
      );

      dividerThickness = 3;
    } else {
      titleStyle = const TextStyle(
        color: Color.fromRGBO(234, 226, 183, 1),
        fontSize: 20,
      );

      contentStyle = const TextStyle(
        color: Color.fromRGBO(234, 226, 183, 1),
        fontSize: 20,
      );

      dividerThickness = 5;
    }

    return Column(
      children: [
        TextDivider(
          text: Text('Sobre Mim', style: titleStyle),
          color: const Color.fromRGBO(241, 40, 40, 1),
          thickness: dividerThickness,
        ),
        const SizedBox(height: 20),
        Text(
          'Olá! Sou Matheus Alatxeve Pereira, um estudante de Ciência da Computação de 21 anos, apaixonado por tecnologia. Moro em São Paulo e estou constantemente explorando o mundo da programação. Fora dos estudos, você me encontrará imerso em música, videogames e jogando futebol com amigos. Dê uma olhada nos meus projetos no portfólio e sinta-se à vontade para entrar em contato comigo se tiver alguma pergunta, proposta ou apenas para bater um papo sobre tecnologia, música, games ou futebol.',
          style: contentStyle,
        ),
        const SizedBox(height: 20),
        Divider(
          color: const Color.fromRGBO(247, 127, 0, 1),
          thickness: dividerThickness,
        ),
      ],
    );
  }
}
