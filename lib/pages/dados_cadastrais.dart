import 'package:flutter/material.dart';

class DadosCadPage extends StatefulWidget {
  final String texto;
  final List<String> dados;

  const DadosCadPage({super.key, required this.texto, required this.dados});

  @override
  State<DadosCadPage> createState() => _DadosCadPageState();
}

class _DadosCadPageState extends State<DadosCadPage> {
  TextEditingController nomeController = TextEditingController(text: "");
  TextEditingController dataNascController = TextEditingController(text: "");
  DateTime? dataNascimento;

  Text returnText(String texto) {
    return Text(
      texto,
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.texto),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            returnText("Nome"),
            const TextField(),
            const SizedBox(
              height: 12,
            ),
            returnText("Data de Nascimento"),
            TextField(
              controller: dataNascController,
              readOnly: true,
              onTap: () async {
                var data = await showDatePicker(
                    context: context,
                    initialDate: DateTime(2000, 1, 1),
                    firstDate: DateTime(1900, 1, 1),
                    lastDate: DateTime(2023, 10, 23));
                if (data != null) {
                  setState(() {
                    dataNascimento = data;
                    dataNascController.text = dataNascimento.toString();
                  });
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
