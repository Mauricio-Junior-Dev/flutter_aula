import 'dart:math';
import 'package:ola_mundo/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset(
                  'assets/images/anubis.png',
                  width: 200,
                  height: 200,
                ),
              ),

              Container(
                height: 20.0, // Espaço entre a imagem e os campos de texto
              ),

              TextField(
                onChanged: (text) {
                  email = text;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 20.0), // Espaço entre os campos de texto
              TextField(
                onChanged: (text) {
                  password = text;
                },
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(
                  height: 20.0), // Espaço entre os campos de texto e o botão
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 48)),
                onPressed: () {
                  if (email == 'admin@admin.com' && password == 'admin') {
                    Navigator.of(context).pushReplacementNamed('/home');
                  } else {
                    print('Login falhou');
                  }
                },
                child: const Text('Entrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            'assets/images/background.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          color: Colors.black.withOpacity(0.3), // Cor de sobreposição
        ),
        _body(),
      ],
    ));
  }
}
