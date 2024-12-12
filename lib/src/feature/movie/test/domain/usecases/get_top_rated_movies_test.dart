import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ditonton/src/feature/movie/lib/domain/entities/movie.dart';
import 'package:ditonton/src/feature/movie/lib/domain/usecases/get_top_rated_movies.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockMovieRepository mockMovieRepository;
  late GetTopRatedMovies usecase;

  setUp(() {
    mockMovieRepository = MockMovieRepository();
    usecase = GetTopRatedMovies(mockMovieRepository);
  });

  final tMovies = <Movie>[];

  test(
    'should get list of movie from repository',
    () async {
      // arrange
      when(mockMovieRepository.getTopRatedMovies())
          .thenAnswer((_) async => Right(tMovies));

      // act
      final result = await usecase.execute();

      // assert
      expect(result, equals(Right(tMovies)));
    },
  );
}
