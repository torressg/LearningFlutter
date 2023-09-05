import 'package:flutter/material.dart';
import 'package:learning_flutter/pages/dados_cadastrais.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}
