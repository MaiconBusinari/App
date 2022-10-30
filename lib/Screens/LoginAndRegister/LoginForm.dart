import 'package:app_maromba/Screens/HomePage/HomePage.dart';
import 'package:app_maromba/Screens/LoginAndRegister/SignupForm.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //BARRA DE NAVEGACAO LOGIN
      appBar: AppBar(title: Text('App Maromba'),
      ),
      //CORPO LOGIN
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //TITULO E IMAGEM TELA LOGIN
              children: [
                SizedBox(height: 30.0),
                Text('Login', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                    fontSize: 40.0),
                  ),
                SizedBox(height: 10.0),
                Image.asset("assets/images/logo.png",
                  height: 150.0,
                  width: 170.0,
                ),

                //CONTEINER PARA FORMULARIO LOGIN -> CPF
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  margin: EdgeInsets.only(top: 20.0),
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
                      prefixIcon: Icon(Icons.person),
                      hintText: 'CPF',
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),

                //CONTAINER PARA FORMULARIO LOGIN -> SENHA
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  margin: EdgeInsets.only(top: 20.0),
                  child: TextFormField(
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
                      prefixIcon: Icon(Icons.lock),
                      hintText: 'Senha',
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),

                //CONTAINER COM BOTAO DE LOGAR
                Container(
                  margin: EdgeInsets.all(30.0),

                  width: double.infinity,
                  child: TextButton(
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => HomePage()));
                    },
                  ),
                  decoration: BoxDecoration(
                    color: Colors.purple[200],
                    borderRadius: BorderRadius.circular(30.0)

                  ),
                ),

                //CONTAINER COM BOTAO DE CRIAR CONTA
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Não tem uma conta?'),
                      TextButton(
                        child: Text('Criar conta!', style: TextStyle( color: Colors.purple),),
                        onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => SignupForm()));
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
