// ignore_for_file: body_might_complete_normally_nullable

import 'package:app_maromba/models/avaliacao.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class AvaliacaoRepository {
  Future<Avaliacao?> adicionarAvaliacao(Avaliacao avaliacao) async {
    final parser = ParseObject('Avaliacao')
      ..set('data', avaliacao.data)
      ..set('peso', avaliacao.peso);

    if (avaliacao.id.isNotEmpty) {
      parser.objectId = avaliacao.id;
    }
    final ParseResponse response = await parser.save();
    if (response.success && response.result != null) {
      final object = response.result as ParseObject;
      avaliacao.id = object.objectId!;
      return avaliacao;
    }
  }

  Future<List<Avaliacao>> listDeAvalicao() async {
    QueryBuilder<ParseObject> queryTudo =
        QueryBuilder<ParseObject>(ParseObject('Avaliacao'));
    final ParseResponse apiResponse = await queryTudo.query();

    List<Avaliacao> avaliacoes = [];

    if (apiResponse.success && apiResponse.results != null) {
      final objects = apiResponse.results as List<ParseObject>;
      for (ParseObject object in objects) {
        final id = object.objectId;
        final data = object.get<String>('data')!;
        final peso = object.get<String>('peso')!;
        Avaliacao avaliacao = Avaliacao(data, peso);
        avaliacao.id = id!;
        avaliacoes.add(avaliacao);
      }
      return avaliacoes;
    } else {
      return [];
    }
  }

  Future<bool> excluirAvaliacao(Avaliacao avaliacao) async {
    var parse = ParseObject('Dieta')..objectId = avaliacao.id;
    final ParseResponse response = await parse.delete();
    if (response.success) {
      return true;
    }
    return false;
  }
}
