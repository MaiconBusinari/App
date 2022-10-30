import 'package:app_maromba/repositories/dieta_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import '../models/dieta.dart';

part 'dieta_store.g.dart';

class DietaStore = _DietaStore with _$DietaStore;

abstract class _DietaStore with Store {

  _DietaStore(){
    carregandoDieta();
  }

  DietaRepository repositoryDieta = DietaRepository();

  @observable
  ObservableList<Dieta> listDeComida = ObservableList();

  @observable
  ObservableFuture<List<Dieta>> obsFuture = ObservableFuture.value([]);

  @compute
  bool get isCarregando{
    return obsFuture.status == FutureStatus.pending;
  }

  @action
  Future<void> carregandoDieta()async{
    final futureList = repositoryDieta.listDeComida();
    obsFuture = ObservableFuture(futureList);
    final comidas = await futureList;
    listDeComida.addAll(comidas);
    }
  @action
  Future<void> salvarDieta(String comida) async {
    final dieta = await repositoryDieta.salvarDieta(Dieta(comida));
    if(dieta != null){
      listDeComida.add(dieta);
    }
  }

  @action
  Future<void> excluirDieta(Dieta dieta) async{
    final dietaExcluida = await repositoryDieta.excluirDieta(dieta);
    if(dietaExcluida){
      listDeComida.removeWhere((element) => element == dieta);
    }
  }
}