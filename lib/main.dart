import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:moviesinfo/data/core/api_client.dart';
import 'package:moviesinfo/data/data_sources/movie_remote_data_source.dart';
import 'package:moviesinfo/data/repositories/movie_repository_imple.dart';
import 'package:moviesinfo/domain/entities/app_error.dart';
import 'package:moviesinfo/domain/entities/movie_entity.dart';
import 'package:moviesinfo/domain/entities/no_params.dart';
import 'package:moviesinfo/domain/repositories/movie_repositories.dart';
import 'package:moviesinfo/domain/usecases/get_trending.dart';

Future<void> main() async {
  ApiClient apiClient = ApiClient(Client());
  MovieRemoteDataSource dataSource = MovieRemoteDataSourceImpl(apiClient);
  MovieRepository movieRepository = MovieRepositoryImpl(dataSource);
  // movieRepository.getTrending();
  GetTrending getTrending = GetTrending(movieRepository);
  final Either<AppError, List<MovieEntity>> eitherResponse =
      await getTrending(NoParams());
  eitherResponse.fold((l) {
    print('error');
    print(l);
  }, (r) {
    print('list of movies');
    print(r);
  });
  // dataSource.getTrending();
  // dataSource.getPopular();
  // dataSource.getPlayingNow();
  // dataSource.getCommingSoon();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MoviesInfo',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
