import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:ditonton/src/feature/movie/lib/data/datasources/db/movie_database_helper.dart';
import 'package:ditonton/src/feature/movie/lib/data/datasources/movie_local_data_source.dart';
import 'package:ditonton/src/feature/movie/lib/data/datasources/movie_remote_data_source.dart';
import 'package:ditonton/src/feature/movie/lib/domain/repositories/movie_repository.dart';

@GenerateMocks([
  MovieRepository,
  MovieRemoteDataSource,
  MovieLocalDataSource,
  MovieDatabaseHelper,
], customMocks: [
  MockSpec<http.Client>(as: #MockHttpClient)
])
void main() {}
