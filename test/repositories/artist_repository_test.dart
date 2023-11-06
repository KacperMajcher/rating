import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rating/features/remote_data_sources/artist_remote_data_source.dart';
import 'package:rating/model/artist_model.dart';
import 'package:rating/repositories/artist_repository.dart';

class MockArtistsDataSource extends Mock
    implements ArtistsRemoteRetrofitDataSource {}

void main() {
  late ArtistRepository sut;
  late MockArtistsDataSource dataSource;
 
  final expectedArtists = [
    ArtistModel(1, 'name1', 'bio', [
      TopSongsModel('Song 1', 999),
    ]),
    ArtistModel(2, 'name2', 'bio', [
      TopSongsModel('Song 2', 888),
    ]),
    ArtistModel(3, 'name3', 'bio', [
      TopSongsModel('Song 3', 777),
    ]),
    ArtistModel(4, 'name4', 'bio', [
      TopSongsModel('Song 4', 555),
    ]),
  ];

  group('getArtistModel', () {
    setUp(() {
      dataSource = MockArtistsDataSource();
      sut = ArtistRepository(remoteDataSource: dataSource);
    });
    test('should call remoteDataSource.getArtistData() method', () async {
      //1
      when(() => dataSource.getArtistData()).thenAnswer((_) async => []);
      //2
      await sut.getArtistModel();
      //3
      verify(() => dataSource.getArtistData()).called(1);
    });

    test('should return artists list', () async {
      //1
      when(() => dataSource.getArtistData()).thenAnswer((_) async => expectedArtists);
      //2
      final results = await sut.getArtistModel();
      //3
      expect(results, expectedArtists);
    });
  });
}