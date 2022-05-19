import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'pokedext.dart';


class conexapi {
  static final String API_url = "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";
  
  static Future<List<pokedext>> gettodoslosdatos() async {
    var url = API_url ;
    final respuesta = await http.get(Uri.parse(url));

    if (respuesta.statusCode == 200) {
      final respuestaJSON = json.decode(respuesta.body);
      
    }
    return <pokedext>[];
  }
}
