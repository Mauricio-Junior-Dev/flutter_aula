import 'package:ola_mundo/app_controller.dart';
import 'package:ola_mundo/home_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  //Stateles Não pode ser mudado
  final String title;

  const AppWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.blue,
            brightness: AppController.instance.isLightTheme
                ? Brightness.light
                : Brightness.dark,
          ),
          home: HomePage(),
        );
      },
    );
  }
}
