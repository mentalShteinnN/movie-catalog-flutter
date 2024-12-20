import 'package:core/utils/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:ditonton/src/feature/movie/lib/domain/entities/movie.dart';
import 'package:ditonton/src/feature/movie/lib/domain/repositories/movie_repository.dart';

class SearchMovies {
  final MovieRepository repository;

  SearchMovies(this.repository);

  Future<Either<Failure, List<Movie>>> execute(String query) {
    return repository.searchMovies(query);
  }
}
