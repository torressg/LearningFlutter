import 'package:flutter/material.dart';
import 'package:learning_flutter/service/quantity_clicks.dart';
import 'package:learning_flutter/service/random_number_gerator.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var number = 0;
  var qtyClicks = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Estou louco",
        style: GoogleFonts.pacifico(),
      )),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Ações do usuário:",
                style: GoogleFonts.aBeeZee(
                  fontSize: 18,
                )),
            Text("Foi clicado $qtyClicks vezes",
                style: GoogleFonts.aBeeZee(
                  fontSize: 18,
                )),
            Text("O número aleatório gerado é: $number",
                style: GoogleFonts.aBeeZee(
                  fontSize: 18,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("10",
                    style: GoogleFonts.aBeeZee(
                      fontSize: 18,
                    )),
                Text("20",
                    style: GoogleFonts.aBeeZee(
                      fontSize: 18,
                    )),
                Text("30",
                    style: GoogleFonts.aBeeZee(
                      fontSize: 18,
                    )),
              ],
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    child: const Text("Teste"),
                    onPressed: () {
                      setState(() {
                        qtyClicks = quantityClicks.countClicks();
                        number = RandomNumberGerator.generateRandomNumber(200);
                      });
                    }),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.cloud_circle),
        onPressed: () {
          setState(() {
            qtyClicks = quantityClicks.countClicks();
            number = RandomNumberGerator.generateRandomNumber(200);
          });
        },
      ),
    );
  }
}
