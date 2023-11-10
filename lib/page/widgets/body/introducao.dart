import 'package:flutter/material.dart';
import 'package:entrega_portfolio/breakpoints.dart';

class Introducao extends StatelessWidget {
  const Introducao({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < mobileBreakpoint;

    TextStyle textStyle;
    if (isMobile) {
      textStyle = const TextStyle(
        color: Color.fromRGBO(234, 226, 183, 1),
        fontSize: 16,
      );
    } else {
      textStyle = const TextStyle(
        color: Color.fromRGBO(234, 226, 183, 1),
        fontSize: 20,
      );
    }

    return isMobile
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipOval(
                child: Image.network(
                  'https://media.licdn.com/dms/image/C4D03AQGd6tH4x9MePQ/profile-displayphoto-shrink_200_200/0/1591562052501?e=1703721600&v=beta&t=_fhQYrbTlwi-C__XKktlX89I5MBmCSng_VSLxl2qYc0',
                  height: width >= tabletBreakpoint ? 200 : 150,
                  width: width >= tabletBreakpoint ? 200 : 150,
                ),
              ),
              const SizedBox(height: 16),
              RichText(
                text: TextSpan(
                  style: textStyle,
                  children: const <TextSpan>[
                    TextSpan(text: 'Olá,\n'),
                    TextSpan(text: 'sou '),
                    TextSpan(
                      text: 'Matheus\n',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: 'um estudante de ciência da computação',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RichText(
                text: TextSpan(
                  style: textStyle,
                  children: const <TextSpan>[
                    TextSpan(text: 'Olá,\n'),
                    TextSpan(text: 'sou '),
                    TextSpan(
                      text: 'Matheus\n',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: 'um estudante de ciência da computação',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              ClipOval(
                child: Image.network(
                  'https://media.licdn.com/dms/image/C4D03AQGd6tH4x9MePQ/profile-displayphoto-shrink_200_200/0/1591562052501?e=1703721600&v=beta&t=_fhQYrbTlwi-C__XKktlX89I5MBmCSng_VSLxl2qYc0',
                  height: 200,
                  width: 200,
                ),
              ),
            ],
          );
  }
}
