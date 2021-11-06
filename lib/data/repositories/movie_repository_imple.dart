import 'package:dartz/dartz.dart';
import 'package:moviesinfo/data/data_sources/movie_remote_data_source.dart';
import 'package:moviesinfo/data/models/movie_model.dart';
import 'package:moviesinfo/domain/entities/app_error.dart';
import 'package:moviesinfo/domain/entities/movie_entity.dart';
import 'package:moviesinfo/domain/repositories/movie_repositories.dart';

class MovieRepositoryImpl extends MovieRepository {
  late final MovieRemoteDataSource remoteDataSource;
  MovieRepositoryImpl(this.remoteDataSource);
  @override
  Future<Either<AppError, List<MovieModel>>> getTrending() async {
    try {
      final movies = await remoteDataSource.getTrending();
      return Right(movies);
    } on Exception {
      return Left(AppError('Something went wrong!'));
    }
  }

  @override
  Future<Either<AppError, List<MovieEntity>>> getCommingSoon() async {
    try {
      final movies = await remoteDataSource.getCommingSoon();
      return Right(movies);
    } on Exception {
      return Left(AppError('Something went wrong!'));
    }
  }

  @override
  Future<Either<AppError, List<MovieEntity>>> getPlayingNow() async {
    try {
      final movies = await remoteDataSource.getPlayingNow();
      return Right(movies);
    } on Exception {
      return Left(AppError('Something went wrong!'));
    }
  }

  @override
  Future<Either<AppError, List<MovieEntity>>> getPopular() async {
    try {
      final movies = await remoteDataSource.getPopular();
      return Right(movies);
    } on Exception {
      return Left(AppError('Something went wrong!'));
    }
  }
}
