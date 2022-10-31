// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dieta_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DietaStore on _DietaStore, Store {
  late final _$listDeComidaAtom =
      Atom(name: '_DietaStore.listDeComida', context: context);

  @override
  ObservableList<Dieta> get listDeComida {
    _$listDeComidaAtom.reportRead();
    return super.listDeComida;
  }

  @override
  set listDeComida(ObservableList<Dieta> value) {
    _$listDeComidaAtom.reportWrite(value, super.listDeComida, () {
      super.listDeComida = value;
    });
  }

  late final _$obsFutureAtom =
      Atom(name: '_DietaStore.obsFuture', context: context);

  @override
  ObservableFuture<List<Dieta>> get obsFuture {
    _$obsFutureAtom.reportRead();
    return super.obsFuture;
  }

  @override
  set obsFuture(ObservableFuture<List<Dieta>> value) {
    _$obsFutureAtom.reportWrite(value, super.obsFuture, () {
      super.obsFuture = value;
    });
  }

  late final _$carregandoDietaAsyncAction =
      AsyncAction('_DietaStore.carregandoDieta', context: context);

  @override
  Future<void> carregandoDietas() {
    return _$carregandoDietaAsyncAction.run(() => super.carregandoDieta());
  }

  late final _$salvarDietaAsyncAction =
      AsyncAction('_DietaStore.salvarDieta', context: context);

  @override
  Future<void> salvarDieta(String comida) {
    return _$salvarDietaAsyncAction.run(() => super.salvarDieta(comida));
  }

  late final _$excluirDietaAsyncAction =
      AsyncAction('_DietaStore.excluirDieta', context: context);

  @override
  Future<void> excluirDieta(Dieta dieta) {
    return _$excluirDietaAsyncAction.run(() => super.excluirDieta(dieta));
  }

  @override
  String toString() {
    return '''
listDeComida: ${listDeComida},
obsFuture: ${obsFuture}
    ''';
  }
}
