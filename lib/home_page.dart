import 'package:academia/app_controller.dart';
import 'package:flutter/material.dart';

//----------------------------- CLASSES  StatefulWidget -----------------------------------
//Statefull Widget  -> Dinamico, permite animações/alterações

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int cont = 0;
  @override
  Widget build(BuildContext context) {
    //Cria um esqueleto de aplicativo
    return Scaffold(
        //Propriedade do Scaffold para criar uma barra de aplicativos
        appBar: AppBar(
          //Botões que ficam na lateral esquerda da barra
          actions: [
            //Chamando função de mudar thema
            CustomSwitcher()
          ],
        ),
        //Propriedade do Scaffold para criar um corpo para o aplicativo
        body: Container(
          //Criado um container com altura e largura do tamanho da tela
          width: double.infinity,
          height: double.infinity,
          //Coloca o conteúdo um em cima do outro
          child: Column(
            //Alinha o conteúdo bem no meio da coluna(Vertical)
            mainAxisAlignment: MainAxisAlignment.center,
            //Alinha o conteúdo da esquerda -> diretira(Horizontal)
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Academia',
                style: TextStyle(color: Colors.green, fontSize: 25),
              ),
              Text(
                'Contador: $cont',
                style: TextStyle(color: Colors.red, fontSize: 25),
              ),
              //Coloca o conteúdo ao lado do outro
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 230,
                    height: 230,
                    color: Colors.black,
                  ),
                  Container(
                    width: 230,
                    height: 230,
                    color: Colors.red,
                  ),
                ],
              )
            ],
          ),
        ),
        //Botão do MaterialApp
        floatingActionButton: FloatingActionButton(
          //Informando o qual incone o botão terá
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              cont++;
            });
          },
        ));
  }
}

class CustomSwitcher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
        //Criando um botão "liga-desliga"
        Switch(
            value: AppController.instance.isDartTheme,
            onChanged: (value) {
              AppController.instance.changeThema();
            });
  }
}
