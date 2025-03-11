import '../model/movie.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

class MovieService {
  Future<List<Movie>> fetchMovies(String keyword) async {
    final url = "https://www.omdbapi.com/?s=$keyword&apikey=YourAPIKey";
    final response = await http.get(Uri.parse(url));

    print("Status code: ${response.statusCode}");
    print("Response body: ${response.body}");

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      final Iterable json = body["Search"];
      return json.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception("Unable to perform request!");
    }
  }
}
