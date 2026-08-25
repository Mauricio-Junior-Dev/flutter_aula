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
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      size: 25,
                      color: Colors.lightBlue,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '+55 11 99999-9999',
                      style: TextStyle(
                        fontFamily: 'Source',
                        fontSize: 20,
                        color: Colors.lightBlue,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(
                      Icons.mail,
                      size: 25,
                      color: Colors.lightBlue,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '+email@email.com',
                      style: TextStyle(
                        fontFamily: 'Source',
                        fontSize: 20,
                        color: Colors.lightBlue,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
