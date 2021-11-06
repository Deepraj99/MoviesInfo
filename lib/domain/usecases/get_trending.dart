import 'package:dartz/dartz.dart';
import 'package:moviesinfo/domain/entities/app_error.dart';
import 'package:moviesinfo/domain/entities/movie_entity.dart';
import 'package:moviesinfo/domain/entities/no_params.dart';
import 'package:moviesinfo/domain/repositories/movie_repositories.dart';
import 'package:moviesinfo/domain/usecases/usecase.dart';

class GetTrending extends UseCase<List<MovieEntity>, NoParams> {
  final MovieRepository repository;
  GetTrending(this.repository);

  @override
  Future<Either<AppError, List<MovieEntity>>> call(NoParams noParams) async {
    return await repository.getTrending();
  }
}
