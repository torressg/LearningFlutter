import 'package:flutter/material.dart';
import 'package:learning_flutter/pages/dados_cadastrais.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blue[300]),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blue[600],
                child: Image.network(
                    "https://static.wikia.nocookie.net/powerpuff/images/d/df/Macaco_louco.png/revision/latest?cb=20120217214954&path-prefix=pt-br"),
              ),
              accountName: Text("Macaco Loouco"),
              accountEmail: Text("email@email.com")),
          InkWell(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              width: double.infinity,
              child: Row(
                children: [
                  const Icon(Icons.person),
                  SizedBox(width: 5),
                  const Text('Dados de cadastro'),
                ],
              ),
            ),
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
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              width: double.infinity,
              child: Row(
                children: [
                  Icon(Icons.book),
                  SizedBox(width: 10),
                  const Text('Termos de uso e privacidade'),
                ],
              ),
            ),
            onTap: () => {},
          ),
          const Divider(),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              width: double.infinity,
              child: Row(
                children: [
                  Icon(Icons.directions_car_filled_sharp),
                  SizedBox(
                    width: 10,
                  ),
                  const Text('Configurações'),
                ],
              ),
            ),
            onTap: () => {},
          ),
          const Divider(),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
