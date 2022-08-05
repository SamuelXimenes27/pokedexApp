import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:pokedex/app/modules/components/api/poke_model.dart';
import 'package:pokedex/app/modules/components/api/pokeapi.dart';

class ApiService {
  Future<List<PokeModel>?> getPokemons() async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.pokemonsEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        // List<PokeModel> _model = pokeApiFromJson(response.body);
        // return _model;
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
