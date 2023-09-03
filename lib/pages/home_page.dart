import 'package:flutter/material.dart';
import 'package:learning_flutter/pages/dados_cadastrais.dart';
import 'package:learning_flutter/service/quantity_clicks.dart';
import 'package:learning_flutter/service/random_number_gerator.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController controller = PageController(initialPage: 0);
  int posicaoPagina = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Testes")),
        drawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  child: const Text('Dados de cadastro'),
                  onTap: () => {
                    Navigator.pop(context),
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DadosCadPage(
                                texto: "Meus dados",
                                dados: ["Nome", "Data de Nascimento"])))
                  },
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  child: const Text('Termos de uso e privacidade'),
                  onTap: () => {},
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  child: const Text('Configurações'),
                  onTap: () => {},
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
        body: PageView(
          controller: controller,
          onPageChanged: (value) {
            setState(() {
              posicaoPagina = value;
            });
          },
          children: [
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.blue,
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              controller.jumpToPage(value);
            },
            currentIndex: posicaoPagina,
            items: [
              BottomNavigationBarItem(label: "Ambar", icon: Icon(Icons.home)),
              BottomNavigationBarItem(label: "Blue", icon: Icon(Icons.home)),
            ]),
      ),
    );
  }
}
