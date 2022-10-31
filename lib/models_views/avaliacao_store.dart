// ignore_for_file: library_private_types_in_public_api

import 'package:app_maromba/models/avaliacao.dart';
import 'package:app_maromba/repositories/avaliacao_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';

part 'avaliacao_store.g.dart';

class AvaliacaoStore =_AvaliacaoStore with _$AvaliacaoStore;

abstract class _AvaliacaoStore with Store{

  _AvaliacaoStore(){
  carregandoAvaliacoes();
}
  AvaliacaoRepository repositoryAvaliacao = AvaliacaoRepository();

  @observable
  ObservableList<Avaliacao> listDeAvalicao = ObservableList();

  @observable
  ObservableFuture<List<Avaliacao>> obsFuture = ObservableFuture.value([]);

  @compute
  bool get isCarregando{
    return obsFuture.status == FutureStatus.pending;
  }

  @action
  Future<void> adicionarAvaliacao(Avaliacao avalicao) async {
    await repositoryAvaliacao.adicionarAvaliacao(avalicao);
  }

  @action
  Future<void> carregandoAvaliacoes()async{
    final futureList = repositoryAvaliacao.listDeAvalicao();
    obsFuture = ObservableFuture(futureList);
    final avaliacoes = await futureList;
    listDeAvalicao.addAll(avaliacoes);
  }
  @action
  Future<void> excluirAvaliacao(Avaliacao avaliacao) async{
    final dietaExcluida = await repositoryAvaliacao.excluirAvaliacao(avaliacao);
    if(dietaExcluida){
      listDeAvalicao.removeWhere((element) => element == avaliacao);
    }
  }
}