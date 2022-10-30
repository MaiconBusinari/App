import 'package:app_maromba/models/cadastro.dart';
import 'package:app_maromba/repositories/cadastro_repository.dart';
import 'package:mobx/mobx.dart';

part 'cadastro_store.g.dart';

class CadastroStore = _CadastroStore with _$CadastroStore;

abstract class _CadastroStore with Store {

  CadastroRespository respositoryCadastro = CadastroRespository();

  @action
  Future<void> cadastrarUsuario(Cadastro usuario) async{
    await respositoryCadastro.cadastrarUsuario(usuario);
  }

}