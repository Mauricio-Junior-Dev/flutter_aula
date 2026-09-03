import 'package:flutter/material.dart';

class Dados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dados',
      home: Scaffold(
        body: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [Image.asset('assets/dados/dado1.png'),
                  Image.asset('assets/dados/dado2.png'),])),
      ),
    );
  }
}
