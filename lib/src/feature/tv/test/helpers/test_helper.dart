import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:ditonton/src/feature/tv/lib/data/datasources/db/tv_database_helper.dart';
import 'package:ditonton/src/feature/tv/lib/data/datasources/tv_local_data_source.dart';
import 'package:ditonton/src/feature/tv/lib/data/datasources/tv_remote_data_source.dart';
import 'package:ditonton/src/feature/tv/lib/domain/repositories/tv_repository.dart';

@GenerateMocks([
  TvRepository,
  TvRemoteDataSource,
  TvLocalDataSource,
  TvDatabaseHelper,
], customMocks: [
  MockSpec<http.Client>(as: #MockHttpClient)
])
void main() {}
