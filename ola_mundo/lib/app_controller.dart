import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {
  static AppController instance = AppController();

  bool isLightTheme = false;
  changeTheme() {
    isLightTheme = !isLightTheme;
    notifyListeners(); //notifica os ouvintes que houve uma mudança de estado, para que eles possam atualizar a interface do usuário ou realizar outras ações necessárias.
  }
}
