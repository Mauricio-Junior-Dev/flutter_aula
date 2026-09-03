import 'package:flutter/material.dart';

class Calculadora extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora',
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Calculadora', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.black,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 400,
              height: 120,
              color: Colors.white,
              margin: EdgeInsets.all(15),
              child: Center(
                child: Text(
                  'Visor',
                  style: TextStyle(fontSize: 50),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 500,
              color: Colors.black,
              margin: EdgeInsets.all(10),
              child: GridView.count(
                crossAxisCount: 4,
                children: List.generate(botoes.length, (index) {
                  String botao = botoes[index];

                  Color corDoBotao =
                      Colors.grey[850]!; // Um cinza escuro para os números
                  if (botao == 'C' || botao == 'DEL' || botao == '%') {
                    corDoBotao = Colors.grey[
                        400]!; // Cor para limpar/deletar (ex: cinza claro)
                  } else if (['/', '*', '-', '+', '='].contains(botao)) {
                    corDoBotao = Colors
                        .orange; // Cor para os operadores matemáticos e igual
                  }

                  return Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // Ação executada ao pressionar o botão
                        print('Botão pressionado!');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: corDoBotao, // Cor de fundo
                        foregroundColor: Colors.white, // Cor do texto/ícone
                      ),
                      child: Text(
                        style: TextStyle(fontSize: 25),
                        botao,
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<String> botoes = [
  "C",
  "DEL",
  "%",
  "/",
  "7",
  "8",
  "9",
  "*",
  "4",
  "5",
  "6",
  "+",
  "1",
  "2",
  "3",
  "-",
  "0",
  ".",
  ",",
  "=",
];
