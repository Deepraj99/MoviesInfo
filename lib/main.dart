import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:moviesinfo/data/data_sources/movie_remote_data_source.dart';

void main() {
  Client apiClient = Client();
  MovieRemoteDataSource dataSource = MovieRemoteDataSourceImpl(apiClient);
  dataSource.getTrending();
  // dataSource.getPopular();
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
