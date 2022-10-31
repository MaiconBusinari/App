// ignore_for_file: unused_import

import 'package:mobx/mobx.dart';

import 'package:app_maromba/models/cadastro.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class CadastroRespository{
  Future<Cadastro?> cadastrarUsuario(Cadastro cadastro) async {
    final parser = ParseObject('Cadastro')
    ..set('nome', cadastro.nome)
    ..set('cpf', cadastro.cpf)
    ..set('altura', cadastro.altura)
    ..set('peso', cadastro.peso)
    ..set('idade', cadastro.idade)
    ..set('senha', cadastro.senha);


    if (cadastro.id.isNotEmpty) {
      parser.objectId = cadastro.id;
    }
    final ParseResponse response = await parser.save();
    if (response.success && response.result != null) {
      final object = response.result as ParseObject;
      cadastro.id = object.objectId!;
      return cadastro;
    }
    return null;
  }
}