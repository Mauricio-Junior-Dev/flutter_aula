import 'package:flutter/material.dart';
import 'dart:math';

class Dados extends StatefulWidget {
  @override
  _DadosState createState() => _DadosState();
}

class _DadosState extends State<Dados> {
  var numeroDadoEsquerdo = 1;
  var numeroDadoDireito = 2;

  void gerarNumeroAleatorio() {
    numeroDadoEsquerdo =
        Random().nextInt(6) + 1; // Gera um número aleatório entre 1 e 6
    numeroDadoDireito =
        Random().nextInt(6) + 1; // Gera um número aleatório entre 1 e 6
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dados',
      home: Scaffold(
        backgroundColor: Colors.teal.shade700,
        appBar: AppBar(
          title: Center(
            child: Text('Dados'),
          ),
          backgroundColor: Colors.teal.shade900,
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    // Ação quando o botão for pressionado
                    setState(() {
                      gerarNumeroAleatorio();
                    });
                  },
                  child:
                      Image.asset('assets/dados/dado$numeroDadoEsquerdo.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    // Ação quando o botão for pressionado
                    setState(() {
                      gerarNumeroAleatorio();
                    });
                  },
                  child: Image.asset('assets/dados/dado$numeroDadoDireito.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
