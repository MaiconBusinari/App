import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import '../models/dieta.dart';

class DietaRepository {
  Future<Dieta?> salvarDieta(Dieta dieta) async {
    final parser = ParseObject('Dieta')..set('comida', dieta.comida);

    if (dieta.id.isNotEmpty) {
      parser.objectId = dieta.id;
    }
    final ParseResponse response = await parser.save();
    if (response.success && response.result != null) {
      final object = response.result as ParseObject;
      dieta.id = object.objectId!;
      return dieta;
    }
    return null;
  }

  Future<List<Dieta>> listDeComida() async {
    QueryBuilder<ParseObject> queryTudo = 
    QueryBuilder<ParseObject>(ParseObject('Dieta'));
    final ParseResponse apiResponse = await queryTudo.query();

    List<Dieta> comidas = [];

    if(apiResponse.success && apiResponse.results != null){
      final objects = apiResponse.results as List<ParseObject>;
      for (ParseObject object in objects){
        final id = object.objectId;
        final comida = object.get<String>('comida')!;
        Dieta dieta = Dieta(comida);
        dieta.id = id!;
        comidas.add(dieta);
      }
      return comidas;
    }
    else{
      return[];
    }

  }

  Future<bool> excluirDieta(Dieta dieta) async {
    var parse = ParseObject('Dieta')..objectId = dieta.id;
    final ParseResponse response = await parse.delete();
    if (response.success){
      return true;
    }
    return false;
  }
}