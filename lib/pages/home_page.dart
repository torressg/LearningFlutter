import 'package:flutter/material.dart';
import 'package:learning_flutter/service/random_number_gerator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Estou louco")),
      body: Center(child: Text(number.toString())),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.cloud_circle),
        onPressed: () {
          setState(() {
            number = RandomNumberGerator.generateRandomNumber(200);
          });
        },
      ),
    );
  }
}
