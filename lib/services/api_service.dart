import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/game_model.dart';

class ApiService {
  static const String apiUrl = 'https://www.freetogame.com/api/games';

  Future<List<Game>> fetchGames() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((game) => Game.fromJson(game)).toList();
    } else {
      throw Exception('Gagal memuat data dari API');
    }
  }
}