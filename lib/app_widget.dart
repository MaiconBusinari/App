import 'package:academia/app_controller.dart';
import 'package:academia/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

//----------------------------- CLASSES  StatelessWidget -----------------------------------
//Stateless Widget -> Estatico, não permite animação/alteração
class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Responsavel por renderizar toda a aplicação caso seja chamado
    return AnimatedBuilder(
      //Fica monitorando a classe "AppController" caso seja alterada realizad uma chamada a "AnimatedBuilder"
      animation: AppController.instance,
      builder: (context, child) {
        return
            //MaterialApp -> Ja vem com alguamas "configurações"
            MaterialApp(
          //Criando tema já especificado
          //theme: ThemeData.light(),
          //Criando tema do Material de forma generica para criar especifações dentro
          theme: ThemeData(
            //Especificando paleteas de coreles que o MaterialApp irá usar
            primaryColor: Colors.red,
            //Dizendo se irá utilizar modo noturno ou não
            brightness: 
            AppController.instance.isDartTheme 
            //True
            ? Brightness.dark 
            //False
            : Brightness.light,
          ),
          home: loginPage(),
        );
      },
    );
  }
}