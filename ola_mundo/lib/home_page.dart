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
        appBar: AppBar(
          title: Text('Home Page', style: TextStyle(fontSize: 32)),
          actions: [
            CustomSwitch(),
          ],
        ),
        body: Column(children: [
          Text('Contador: $counter', style: TextStyle(fontSize: 32)),
        ]),
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
