import 'package:flutter/material.dart';
import 'package:learning_flutter/repositories/nivel_repository.dart';

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
  String nivelExp = "";

  var niveis = [];

  @override
  void initState() {
    niveis = NivelRepository().retornaNiveis();
    super.initState();
  }

  Widget returnText(String texto) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Text(
        texto,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
      ),
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
            TextField(
              controller: nomeController,
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
            ),
            returnText("Nível de Experiência"),
            Column(
                children: niveis
                    .map((nivel) => RadioListTile(
                        selected: nivelExp == nivel,
                        title: Text(nivel.toString()),
                        value: nivel.toString(),
                        groupValue: nivelExp,
                        onChanged: (value) {
                          setState(() {
                            nivelExp = value.toString();
                          });
                          print(nivelExp);
                        }))
                    .toList()),
            TextButton(
              onPressed: () {
                print(nomeController.text);
                print(dataNascimento);
              },
              child: const Text("Salvar"),
            )
          ],
        ),
      ),
    );
  }
}
