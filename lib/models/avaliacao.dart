// ignore_for_file: unused_import, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'avaliacao.g.dart';

class Avaliacao = _Avaliacao with _$Avaliacao;

abstract class _Avaliacao with Store{

  _Avaliacao(this.data, this.peso);

  String id = '';
  String data;
  String peso;


}


