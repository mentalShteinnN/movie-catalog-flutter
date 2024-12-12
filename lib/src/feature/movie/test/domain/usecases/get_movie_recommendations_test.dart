import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ditonton/src/feature/movie/lib/domain/entities/movie.dart';
import 'package:ditonton/src/feature/movie/lib/domain/usecases/get_movie_recommendations.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockMovieRepository mockMovieRepository;
  late GetMovieRecommendations usecase;

  setUp(() {
    mockMovieRepository = MockMovieRepository();
    usecase = GetMovieRecommendations(mockMovieRepository);
  });

  const tId = 1;
  final tMovies = <Movie>[];

  test(
    'should get list of movie recommendations from the repository',
    () async {
      // arrange
      when(mockMovieRepository.getMovieRecommendations(tId))
          .thenAnswer((_) async => Right(tMovies));

      // act
      final result = await usecase.execute(tId);

      // assert
      expect(result, equals(Right(tMovies)));
    },
  );
}
