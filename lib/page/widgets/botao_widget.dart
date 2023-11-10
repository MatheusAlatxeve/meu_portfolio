import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BotaoWidget extends StatelessWidget {
  final String texto;
  final String url;
  final IconData icone;

  const BotaoWidget({super.key, required this.texto, required this.url, required this.icone});

  void _abrirUrl() async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Não foi possível abrir a URL: $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _abrirUrl,
      child: Container(
        color: const Color.fromRGBO(0, 48, 73, 1),
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(icone, color: const Color.fromRGBO(234, 226, 183, 1)),
            const SizedBox(width: 8),
            Text(
              texto,
              style: const TextStyle(
                  color: Color.fromRGBO(234, 226, 183, 1), fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
