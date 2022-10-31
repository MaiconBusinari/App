// ignore_for_file: library_private_types_in_public_api

import 'package:mobx/mobx.dart';

part 'cadastro.g.dart';

class Cadastro = _Cadastro with _$Cadastro;

abstract class _Cadastro with Store {

_Cadastro(this.nome,this.cpf,this.altura,this.peso,this.idade,this.senha);

  String id = '';
  String nome;
  String cpf;
  double altura;
  double peso;
  int idade;
  String senha;

}