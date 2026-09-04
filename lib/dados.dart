import 'package:flutter/material.dart';

class Dados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var numeroDadoEsquerdo = 2;

    
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
                    print('Botão 1 pressionado');
                  },
                  child:
                      Image.asset('assets/dados/dado$numeroDadoEsquerdo.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    // Ação quando o botão for pressionado
                    print('Botão 2 pressionado');
                  },
                  child: Image.asset('assets/dados/dado2.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
