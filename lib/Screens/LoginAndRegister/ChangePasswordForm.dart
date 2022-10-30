import 'package:app_maromba/Screens/LoginAndRegister/LoginForm.dart';
import 'package:flutter/material.dart';

class ChangePasswordForm extends StatefulWidget {
  @override
  State<ChangePasswordForm> createState() => _ChangePasswordFormState();
}

class _ChangePasswordFormState extends State<ChangePasswordForm> {
  //MENSAGEM DE CONFIRMACAO QUANDO BOTAO DEFINIR FOR CLICADO
  void showAlert() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            //TITULO DA CAIXA DE ALERTA
            title: Text(
              "Confirmação:",
              style: TextStyle(
                color: Colors.purple,
              ),
            ),
            //TEXTO DA CAIXA DE ALERTA
            content: Text(
              'Tem certeza que quer usar a senha selecionada?',
              style: TextStyle(
                color: Colors.purple,
              ),
            ),
            //ACOES POSSIVEIS DENTRO DO ALERTA
            actions: [

              //ACAO AO CONFIRMA ALTERACAO DE SENHA
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Sim',
                  style: TextStyle(
                    color: Colors.purple,
                  ),
                ),
              ),
              //ACAO AO NAO CONFIRMA ALTERACAO DE SENHA
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Não',
                  style: TextStyle(
                    color: Colors.purple,
                  ),
                ),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //BARRA DE NAVEGACAO DE ALTERAR SENHA
      appBar: AppBar(
        title: Text('Alterar Senha'),
      ),
      //CORPO ALTERAR SENHA
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Center(
            //TITULO DA TELA DE ALTERAR SENHA
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10.0),
                Text(
                  'Digite as informações de Login:',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.purpleAccent,
                      fontSize: 25.0),
                ),
                //CONTEINER PARA FORMULARIO ALTERAR SENHA -> EMAIL
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
                      hintText: 'Nome de usuário ou email',
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                //CONTEINER PARA FORMULARIO ALTERAR SENHA -> SENHA ATUAL 
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  margin: EdgeInsets.only(top: 10.0),
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
                      hintText: 'Senha Atual',
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                //CONTEINER PARA FORMULARIO ALTERAR SENHA -> NOVA SENHA
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  margin: EdgeInsets.only(top: 10.0),
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
                      hintText: 'Nova Senha',
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                //CONTEINER COM BOTAO QUE ABRE TELA DO ALERTA
                Container(
                  margin: EdgeInsets.all(30.0),
                  width: double.infinity,
                  child: TextButton(
                    child: Text(
                      'Definir',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                    onPressed: showAlert,
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
