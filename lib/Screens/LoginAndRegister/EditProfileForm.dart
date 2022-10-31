// ignore_for_file: use_key_in_widget_constructors, unused_import, file_names

import 'package:app_maromba/Screens/LoginAndRegister/LoginForm.dart';
import 'package:flutter/material.dart';

class EditProfileForm extends StatefulWidget {
  @override
  State<EditProfileForm> createState() => _EditProfileFormState();
}

class _EditProfileFormState extends State<EditProfileForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //BARRA DE NAVEGACAO DE EDITAR PERFIL
      appBar: AppBar(
        title: Text('Editar Perfil'),
      ),
      //CORPO EDITAR PERFIL
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Center(
            //TITULO TELA EDITAR PERFIL
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10.0),
                Text(
                  'Insira as novas informações:',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.purpleAccent,
                      fontSize: 25.0),
                ),
                //CONTAINER PARA FORMULARIO EDITAR PERFIL -> NOME
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  margin: EdgeInsets.only(top: 20.0),
                  child: TextFormField(
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
                //CONTAINER PARA FORMULARIO EDITAR PERFIL -> IDADE
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  margin: EdgeInsets.only(top: 10.0),
                  child: TextFormField(
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
                //CONTAINER PARA FORMULARIO EDITAR PERFIL -> ALTURA
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  margin: EdgeInsets.only(top: 10.0),
                  child: TextFormField(
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
                      hintText: 'Altura (cm)',
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                //CONTAINER PARA FORMULARIO EDITAR PERFIL -> PESO
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  margin: EdgeInsets.only(top: 10.0),
                  child: TextFormField(
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
                      hintText: 'Peso (kg)',
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                //CONTAINER PARA FORMULARIO EDITAR PERFIL -> META
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  margin: EdgeInsets.only(top: 10.0),
                  child: TextFormField(
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
                      hintText: 'Meta de Peso (kg)',
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                //CONTAINER COM BOTAO DE SALVAR 
                Container(
                  margin: EdgeInsets.all(30.0),
                  width: double.infinity,
                  child: TextButton(
                    child: Text(
                      'Salvar',
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {},
                  ),
                  decoration: BoxDecoration(
                      color: Colors.purple[200],
                      borderRadius: BorderRadius.circular(30.0)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
