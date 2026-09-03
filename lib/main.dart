import 'package:aula80/calculadora.dart';
import 'package:aula80/dados.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Dados());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.red,
                backgroundImage: NetworkImage(
                    'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper-thumbnail.png'),
              ),
              Text(
                'Mauricio',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico'),
              ),
              Text(
                'DESENVOLVEDOR WEB',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontFamily: 'Source',
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'FULLSTACK',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontFamily: 'Source',
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
                width: 250,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    size: 25,
                    color: Colors.lightBlue,
                  ),
                  title: Text(
                    '+55 11 99999-9999',
                    style: TextStyle(
                      fontFamily: 'Source',
                      fontSize: 20,
                      color: Colors.lightBlue,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 25,
                    color: Colors.lightBlue,
                  ),
                  title: Text(
                    'email@email.com',
                    style: TextStyle(
                      fontFamily: 'Source',
                      fontSize: 20,
                      color: Colors.lightBlue,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
