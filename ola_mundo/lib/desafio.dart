import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';
import 'package:ola_mundo/home_page.dart';

class DesafioPage extends StatefulWidget {
  @override
  State<DesafioPage> createState() {
    return DesafioPageState();
  }
}

class DesafioPageState extends State<DesafioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/backgroundDesafio.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 200.0),
              child: Image(
                image: AssetImage(
                  'assets/images/desafioLogo.png',
                ),
                width: 150,
              ),
            ),
            const SizedBox(height: 80),
            Column(
              children: [
                Text('Locaiton Changer',
                    style:
                        TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
                const SizedBox(height: 20),
                Text(
                  'Plugin app for Tinder',
                  style: TextStyle(fontSize: 17),
                ),
              ],
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/home');
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, minimumSize: Size(200, 50)),
              child: Text(
                'Login with Facebook',
                style: TextStyle(color: Colors.deepOrange[300], fontSize: 17),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}


//Child (Filho unico Usado por Widgets que servem de Container, como por exemplo o Center, Column, Row, etc.)

//Children (Filhos Usado por Widgets que podem ter mais de um filho, como por exemplo o Column, Row, Stack, ListView, etc.)