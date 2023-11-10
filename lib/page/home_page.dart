import 'package:flutter/material.dart';
import 'package:entrega_portfolio/breakpoints.dart';
import 'package:entrega_portfolio/page/widgets/app_bar/mobile_appbar.dart';
import 'package:entrega_portfolio/page/widgets/app_bar/web_appbar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:entrega_portfolio/page/widgets/body/contato.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:entrega_portfolio/page/widgets/body/introducao.dart';
import 'package:entrega_portfolio/page/widgets/body/sobre_mim.dart';
import 'package:entrega_portfolio/page/widgets/body/competencias.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: const Color.fromRGBO(0, 48, 73, 1),
        appBar: constraints.maxWidth < mobileBreakpoint
            ? const PreferredSize(
                preferredSize: Size(double.infinity, 56),
                child: MobileAppBar(),
              )
            : const PreferredSize(
                preferredSize: Size(double.infinity, 72),
                child: WebAppBar(),
              ),
        drawer: constraints.maxWidth < mobileBreakpoint
            ? Drawer(
                backgroundColor: const Color.fromRGBO(0, 48, 73, 1),
                child: ListView(
                  children: [
                    ListTile(
                      leading: const Icon(FontAwesomeIcons.github,
                          color: Color.fromRGBO(234, 226, 183, 1)),
                      title: const Text('GitHub',
                          style: TextStyle(
                              color: Color.fromRGBO(234, 226, 183, 1))),
                      onTap: () {
                        launch("https://github.com/MatheusAlatxeve");
                      },
                    ),
                    ListTile(
                      leading: const Icon(FontAwesomeIcons.linkedin,
                          color: Color.fromRGBO(234, 226, 183, 1)),
                      title: const Text('LinkedIn',
                          style: TextStyle(
                              color: Color.fromRGBO(234, 226, 183, 1))),
                      onTap: () {
                        launch("https://www.linkedin.com/in/matheus-alatxeve/");
                      },
                    ),
                  ],
                ),
              )
            : null,
        body: Align(
          alignment: Alignment.topCenter,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1400),
            child: ListView(
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: Introducao(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 200),
                  child: SobreMim(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 200),
                  child: Competencias(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 200),
                  child: Contato(),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
