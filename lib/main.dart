import 'package:flutter/material.dart';

import 'Screens/LoginAndRegister/LoginForm.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

void main() async {
  

  //CONEXAO COM BANCO BACK4APP
  WidgetsFlutterBinding.ensureInitialized();
  final keyApplicationId = '4CSi5dTGn8Pgs0Zg3rroM80Xr0tH8ewdsVx2yk88';
  final keyClientKey = 'apYmyNbCLmqoLSUuAVgzz6IqVxrZf7yCfAeD7tk2';
  final keyParseServerUrl = 'https://parseapi.back4app.com';

  await Parse().initialize(keyApplicationId, keyParseServerUrl, clientKey: keyClientKey, autoSendSessionId: true);
  
  //TESTE INCIAL PARA TESTAR CONEXAO
  // var firstObject = ParseObject('FirstClass')
  //   ..set(
  //       'message', 'Hey ! First message from Flutter. Parse is now connected');
  // await firstObject.save();
  
  // print('done');
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //DEFININDO CONFIGURACOES INCIAIS DO ANGULAR
      localizationsDelegates: [
        GlobalWidgetsLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('pt', 'BR'),
        Locale('en', 'US'),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      //INFORMANDO QUAL SERA A PAGINA INICIAL
      home: const LoginForm(),
    );
  }
}
