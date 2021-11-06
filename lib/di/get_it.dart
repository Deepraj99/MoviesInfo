import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:moviesinfo/data/core/api_client.dart';
import 'package:moviesinfo/data/data_sources/movie_remote_data_source.dart';
import 'package:moviesinfo/data/repositories/movie_repository_imple.dart';
import 'package:moviesinfo/domain/repositories/movie_repositories.dart';
import 'package:moviesinfo/domain/usecases/get_coming_soon.dart';
import 'package:moviesinfo/domain/usecases/get_playing_now.dart';
import 'package:moviesinfo/domain/usecases/get_popular.dart';
import 'package:moviesinfo/domain/usecases/get_trending.dart';

final getItInstance = GetIt.I;
Future init() async {
  getItInstance.registerLazySingleton<Client>(() => Client());
  getItInstance
      .registerLazySingleton<ApiClient>(() => ApiClient(getItInstance()));
  getItInstance.registerLazySingleton<MovieRemoteDataSource>(
      () => MovieRemoteDataSourceImpl(getItInstance()));

  getItInstance
      .registerLazySingleton<GetTrending>(() => GetTrending(getItInstance()));
  getItInstance
      .registerLazySingleton<GetPopular>(() => GetPopular(getItInstance()));
  getItInstance.registerLazySingleton<GetPlayingNow>(
      () => GetPlayingNow(getItInstance()));
  getItInstance.registerLazySingleton<GetComingSoon>(
      () => GetComingSoon(getItInstance()));

  getItInstance.registerLazySingleton<MovieRepository>(
      () => MovieRepositoryImpl(getItInstance()));
}
