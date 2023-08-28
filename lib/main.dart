import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var number = 0;

  int _randomNumber() {
    var number = Random();
    return number.nextInt(1000);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Estou louco")),
      body: Center(child: Text(number.toString())),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.cloud_circle),
        onPressed: () {
          setState(() {
            number = _randomNumber();
          });
        },
      ),
    );
  }
}
