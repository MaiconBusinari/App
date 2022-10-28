import 'package:flutter/cupertino.dart';

//Funciona com set para códigos de programação e não tela
class AppController extends ChangeNotifier {
  //Utilizada quando quero apenas dar inicio a uma classe
  static AppController instance = AppController();

  bool isDartTheme = false;
  changeThema(){
    isDartTheme = !isDartTheme;
    notifyListeners();
  }
}