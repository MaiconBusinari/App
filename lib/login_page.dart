// ignore_for_file: prefer_const_constructors

import 'package:academia/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  String email = '';
  String senha = '';
  String resultado = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Da Scroll para qualquer filho
      body: SingleChildScrollView(
      //Funciona igual a Container, acho que apenas para tamanho
        child: SizedBox(
          //Mega as informações do celular(Tamanho tela)
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //Criando caixa de input
              children: [
                TextField(
                  //Capturando value do imput
                  onChanged: (text) {
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  //Estilização de inputs
                  decoration: InputDecoration(
                      labelText: 'Email',
                      //Estilo de borda
                      border: OutlineInputBorder()),
                ),
                SizedBox(height: 10),
                TextField(
                  onChanged: (text) {
                    senha = text;
                  },
                  //Ocultar senha
                  obscureText: true,
                  decoration: InputDecoration(
                  labelText: 'Senha', 
                  border: OutlineInputBorder()),
                ),
                SizedBox(height: 15),
                //Botão
                ElevatedButton(onPressed: () {
                  setState(() {
                    if(email == 'maicon@gmail.com' && senha == "1234"){
                    //Rotas manuais
                  
                    //Navegação Forçada -> Apenas cria a nova pagina por cima da antiga
                    Navigator.of(context).push(
                    //Cria a nova pagina e apaga tudo de antes
                    //Navigator.of(context).pushReplacement()
                      
                      //Rota de destino
                      MaterialPageRoute(builder: (context)=> HomePage())
                      );
                  }else{
                    resultado = 'Senha ou Email incorreto';
                  }
                  });
                }, child: Text('Entrar')),
                Container(
                  child: Text('$resultado'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
