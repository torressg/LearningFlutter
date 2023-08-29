import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey[400],
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.amber[600],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                color: Colors.amber[800],
                alignment: Alignment.center,
                height: 50,
                child: const Text("Informe seu e-mail"),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                color: Colors.amber[800],
                alignment: Alignment.center,
                height: 50,
                child: const Text("Informe sua senha"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
