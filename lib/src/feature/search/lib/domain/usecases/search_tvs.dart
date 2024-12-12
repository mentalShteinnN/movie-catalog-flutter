import 'package:core/utils/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:ditonton/src/feature/tv/lib/domain/entities/tv.dart';
import 'package:ditonton/src/feature/tv/lib/domain/repositories/tv_repository.dart';

class SearchTvs {
  final TvRepository repository;

  SearchTvs(this.repository);

  Future<Either<Failure, List<Tv>>> execute(String query) {
    return repository.searchTvs(query);
  }
}
