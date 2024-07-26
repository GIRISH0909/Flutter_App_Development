import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'models.dart';

Future<List<Pokemon>> getPokemons() async {
  var response = await http.get(
    Uri.parse('https://pokeapi.co/api/v2/pokemon?limit=100'),
  );

  if (response.statusCode > 399) {
    print('Failed to get pokemons!');
    print('${response.statusCode} ${response.reasonPhrase}');
    throw Exception('Failed to get pokemons!');
  }

  Map<String, dynamic> result = jsonDecode(response.body);
  print(result["count"]);

  List<Pokemon> pokemons = [];
  for (var item in result['results']) {
    pokemons.add(Pokemon(
      id: item['url'].split('/')[6], // Assuming the ID is in the URL
      name: item['name'],
    ));
  }

  return pokemons;
}
