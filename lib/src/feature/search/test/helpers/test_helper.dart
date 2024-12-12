import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:ditonton/src/feature/movie/lib/domain/repositories/movie_repository.dart';
import 'package:ditonton/src/feature/tv/lib/domain/repositories/tv_repository.dart';

@GenerateMocks([
  MovieRepository,
  TvRepository,
], customMocks: [
  MockSpec<http.Client>(as: #MockHttpClient)
])
void main() {}
