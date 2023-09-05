import 'package:flutter/material.dart';
import 'package:learning_flutter/pages/dados_cadastrais.dart';
import 'package:learning_flutter/shared/widgets/custom_drawer.dart';

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
        drawer: const CustomDrawer(),
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
            items: const [
              BottomNavigationBarItem(label: "Ambar", icon: Icon(Icons.home)),
              BottomNavigationBarItem(label: "Blue", icon: Icon(Icons.home)),
            ]),
      ),
    );
  }
}
