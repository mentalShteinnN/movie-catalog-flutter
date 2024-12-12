import 'package:flutter_test/flutter_test.dart';
import 'package:ditonton/src/feature/tv/lib/data/models/tv_season_episode_model.dart';
import 'package:ditonton/src/feature/tv/lib/domain/entities/tv_season_episode.dart';

void main() {
  const tTvEpisodeModel = TvSeasonEpisodeModel(
    airDate: '2022-01-01',
    episodeNumber: 1,
    id: 1,
    name: 'Name',
    overview: 'Overview',
    seasonNumber: 1,
    stillPath: '/path.jpg',
    voteAverage: 1.0,
    voteCount: 1,
  );

  const tTvEpisode = TvSeasonEpisode(
    airDate: '2022-01-01',
    episodeNumber: 1,
    id: 1,
    name: 'Name',
    overview: 'Overview',
    seasonNumber: 1,
    stillPath: '/path.jpg',
    voteAverage: 1.0,
    voteCount: 1,
  );

  group('to entity', () {
    test(
      'should be a subclass of tv episode entity',
      () async {
        // act
        final result = tTvEpisodeModel.toEntity();

        // assert
        expect(result, equals(tTvEpisode));
      },
    );
  });
}
