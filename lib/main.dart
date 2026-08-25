import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        body: SafeArea(
          child: Column(
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
              Column(
                children: [
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
