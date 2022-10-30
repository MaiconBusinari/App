import 'package:app_maromba/repositories/dieta_repositories.dart';
import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';

import '../models/dieta.dart';

part 'dieta_store.g.dart';

class DietaStore = _DietaStore with _$DietaStore;

abstract class _DietaStore with Store {
  _DietaStore(){
    carregandoDieta();
  }
  DietaRepository repository = DietaRepository();

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
    final futureList = repository.listDeComida();
    obsFuture = ObservableFuture(futureList);
    final comidas = await futureList;
    listDeComida.addAll(comidas);
  }
  @action
  Future<void> salvarDieta(String comida) async {
    final dieta = await repository.salvarDieta(Dieta(comida));
    if(dieta != null){
      listDeComida.add(dieta);
    }
  }

  @action
  Future<void> excluirDieta(Dieta dieta) async{
    final dietaExcluida = await repository.excluirDieta(dieta);
    if(dietaExcluida){
      listDeComida.removeWhere((element) => element == dieta);
    }
  }
}
