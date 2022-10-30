import 'package:mobx/mobx.dart';

part 'dieta.g.dart';

class Dieta = _Dieta with _$Dieta;

abstract class _Dieta with Store {

_Dieta(this.comida);

  String id = '';
  String comida = '';
}