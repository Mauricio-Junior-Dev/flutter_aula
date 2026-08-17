import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset('assets/images/anubis.png'),
                ),
                accountName: Text('Anubis'),
                accountEmail: Text('anubis@example.com'),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home', style: TextStyle(fontSize: 20)),
                subtitle: Text('Subtitulo'),
                onTap: () {
                  print('Home Page');
                },
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Logout', style: TextStyle(fontSize: 20)),
                subtitle: Text('Saída'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
              ),
              ListTile(
                leading: Icon(Icons.money),
                title: Text('Desafio', style: TextStyle(fontSize: 20)),
                subtitle: Text('page'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/desafio');
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Home', style: TextStyle(fontSize: 20)),
          actions: [
            CustomSwitch(),
          ],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: ListView(
              // List View para permitir rolagem quando houver muitos elementos que ultrapassam a tela
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Contador: $counter', style: TextStyle(fontSize: 32)),
                Container(height: 20),
                CustomSwitch(),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.red,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.green,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.blue,
                      )
                    ])
              ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter++;
            });
          },
          child: Icon(Icons.add),
        ));
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isLightTheme,
        onChanged: (value) {
          AppController.instance.changeTheme();
        });
  }
}
