// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avaliacao_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AvaliacaoStore on _AvaliacaoStore, Store {
  late final _$listaDeAvalicaoAtom =
      Atom(name: '_AvaliacaoStore.listaDeAvalicao', context: context);

  @override
  ObservableList<Avaliacao> get listDeAvalicao {
    _$listaDeAvalicaoAtom.reportRead();
    return super.listDeAvalicao;
  }

  @override
  set listDeAvalicao(ObservableList<Avaliacao> value) {
    _$listaDeAvalicaoAtom.reportWrite(value, super.listDeAvalicao, () {
      super.listDeAvalicao = value;
    });
  }

  late final _$obsFuturaAtom =
      Atom(name: '_AvaliacaoStore.obsFutura', context: context);

  @override
  ObservableFuture<List<Avaliacao>> get obsFuture {
    _$obsFuturaAtom.reportRead();
    return super.obsFuture;
  }

  @override
  set obsFuture(ObservableFuture<List<Avaliacao>> value) {
    _$obsFuturaAtom.reportWrite(value, super.obsFuture, () {
      super.obsFuture = value;
    });
  }

  late final _$adicionarAvaliacaoAsyncAction =
      AsyncAction('_AvaliacaoStore.adicionarAvaliacao', context: context);

  @override
  Future<void> adicionarAvaliacao(Avaliacao avalicao) {
    return _$adicionarAvaliacaoAsyncAction
        .run(() => super.adicionarAvaliacao(avalicao));
  }

  late final _$carregandoAvaliacoesAsyncAction =
      AsyncAction('_AvaliacaoStore.carregandoAvaliacoes', context: context);

  @override
  Future<void> carregandoAvaliacoes() {
    return _$carregandoAvaliacoesAsyncAction
        .run(() => super.carregandoAvaliacoes());
  }

  @override
  String toString() {
    return '''
listaDeAvalicao: ${listDeAvalicao},
obsFutura: ${obsFuture}
    ''';
  }
}
