import 'package:flutter/material.dart';

class Dados extends StatefulWidget {
  @override
  _DadosState createState() => _DadosState();
}

class _DadosState extends State<Dados> {
  var numeroDadoEsquerdo = 1;
  var numeroDadoDireito = 2;

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
                    numeroDadoEsquerdo += 1;
                    if (numeroDadoEsquerdo > 6) {
                      numeroDadoEsquerdo = 1;

                    }else if (numeroDadoEsquerdo < 1) {
                      numeroDadoEsquerdo = 6;
                    }
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
                      numeroDadoDireito = (numeroDadoDireito % 6) + 1;
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
