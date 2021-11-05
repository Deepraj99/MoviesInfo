import 'dart:convert';
import 'package:http/http.dart';
import 'package:moviesinfo/data/core/api_constants.dart';
import 'package:moviesinfo/data/models/movie_model.dart';
import 'package:moviesinfo/data/models/movies_result_model.dart';

abstract class MovieRemoteDataSource {
  Future<List<MovieModel>> getTrending();
}

class MovieRemoteDataSourceImpl extends MovieRemoteDataSource {
  final Client _client;

  MovieRemoteDataSourceImpl(this._client);

  @override
  Future<List<MovieModel>> getTrending() async {
    final response = await _client.get(
      Uri.parse(
          '${ApiConstants.BASE_URL}trending/movie/day?api_key=${ApiConstants.API_KEY}'),
      headers: {
        'Content-Type': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      final reponseBody = json.decode(response.body);
      final movies = MoviesResultModel.fromJson(reponseBody).movies;
      print(movies);
      return movies;
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
