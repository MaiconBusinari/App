// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:app_maromba/Screens/LoginAndRegister/LoginForm.dart';
import 'package:app_maromba/models_views/cadastro_store.dart';
import 'package:flutter/material.dart';

import '../models/cadastro.dart';

class CadastroPage extends StatefulWidget {

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  @override
  
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController cpfController = TextEditingController();
  final TextEditingController alturaController = TextEditingController();
  final TextEditingController pesoController = TextEditingController();
  final TextEditingController idadeController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();
  
  CadastroStore cadastroStore = CadastroStore();

  Widget build(BuildContext context) {
    return Scaffold(
      //BARRA DE NAVEGACAO CADASTRO
      appBar: AppBar(title: Text('Cadastro'),
      ),
      //CORPO CADASTRO
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //TITULO DA TELA DE CADASTRO
              children: [
                SizedBox(height: 10.0),
                Text('Informe os dados', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.purpleAccent,
                    fontSize: 25.0),
                ),
                //CONATINER FORMULARIO CADASTRO -> NOME
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  margin: EdgeInsets.only(top: 20.0),
                  child: TextFormField(
                    controller: nomeController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      hintText: 'Nome Completo',
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                //CONATINER FORMULARIO CADASTRO -> CPF
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  margin: EdgeInsets.only(top: 10.0),
                  child: TextFormField(
                    controller: cpfController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      hintText: 'Cpf',
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                //CONATINER FORMULARIO CADASTRO -> ALTURA
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  margin: EdgeInsets.only(top: 10.0),
                  child: TextFormField(
                    controller: alturaController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      hintText: 'Altura',
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                //CONATINER FORMULARIO CADASTRO -> PESO
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  margin: EdgeInsets.only(top: 10.0),
                  child: TextFormField(
                    controller: pesoController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      hintText: 'Peso',
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                //CONATINER FORMULARIO CADASTRO -> IDADE
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  margin: EdgeInsets.only(top: 10.0),
                  child: TextFormField(
                    controller: idadeController,
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      hintText: 'Idade',
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                //CONATINER FORMULARIO CADASTRO -> SENHA
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  margin: EdgeInsets.only(top: 10.0),
                  child: TextFormField(
                    controller: senhaController,
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      hintText: 'Senha',
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                //BOTAO CADASTAR
                Container(
                  margin: EdgeInsets.all(30.0),
                  width: double.infinity,
                  child: TextButton(
                    child: Text(
                      'Cadastrar',
                      style: TextStyle(color: Colors.black),
                    ),
                    //NAO REALIZA NADA QUANDO O BOTAO É CLICADO
                    onPressed: (){ 
                      Cadastro usuario = Cadastro(
                        nomeController.text,
                        cpfController.text,
                        double.parse(alturaController.text),
                        double.parse(pesoController.text),
                        int.parse(idadeController.text),
                        senhaController.text
                        );
                      cadastroStore.cadastrarUsuario(usuario);
                    }
                  ),
                  decoration: BoxDecoration(
                      color: Colors.purple[200],
                      borderRadius: BorderRadius.circular(30.0)

                  ),
                ),
                //CONTAINER COM BOTAO PARA VOLTAR A TELA DE LOGIN
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Já tem uma conta?'),
                      TextButton(
                        //TROCADA  FlatButton -> TextButton
                        // textColor: Colors.purple,
                        child: Text('Fazer login!', style: TextStyle(color: Colors.purple),),
                        onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => LoginForm()));
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
