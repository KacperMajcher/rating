import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rating/features/remote_data_sources/podcaster_remote_data_source.dart';
import 'package:rating/model/podcaster_model.dart';
import 'package:rating/repositories/podcaster_repository.dart';

class MockPodcastersDataSource extends Mock
    implements PodcastersRemoteRetrofitDataSource {}

void main() {
  late PodcasterRepository sut;
  late MockPodcastersDataSource dataSource;

  final expectedPodcasters = [
    PodcasterModel(1, 'name1', 'bio', [TopPodcastsModel('Podcast 1', 999, 1)]),
    PodcasterModel(2, 'name2', 'bio', [TopPodcastsModel('Podcast 2', 888, 2)]),
    PodcasterModel(3, 'name3', 'bio', [TopPodcastsModel('Podcast 3', 777, 3)]),
    PodcasterModel(4, 'name4', 'bio', [TopPodcastsModel('Podcast 4', 555, 1)]),
  ];

  group('getPodcasterModel', () {
    setUp(() {
      dataSource = MockPodcastersDataSource();
      sut = PodcasterRepository(remoteDataSource: dataSource);
    });
    test('should call remoteDataSource.getPodcasterData() method', () async {
      //1
      when(() => dataSource.getPodcasterData()).thenAnswer((_) async => []);
      //2
      await sut.getPodcasterModel();
      //3
      verify(() => dataSource.getPodcasterData()).called(1);
    });

    test('should return artists list', () async {
      //1
      when(() => dataSource.getPodcasterData())
          .thenAnswer((_) async => expectedPodcasters);
      //2
      final results = await sut.getPodcasterModel();
      //3
      expect(results, expectedPodcasters);
    });
  });
}
