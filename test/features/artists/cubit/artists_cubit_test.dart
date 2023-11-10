import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rating/app/core/enums.dart';
import 'package:rating/features/artists/cubit/artists_cubit.dart';
import 'package:rating/model/artist_model.dart';
import 'package:rating/repositories/artist_repository.dart';

class MockArtistRepository extends Mock implements ArtistRepository {}

void main() {
  late ArtistsCubit sut;
  late MockArtistRepository repository;

  setUp(() {
    repository = MockArtistRepository();
    sut = ArtistsCubit(artistRepository: repository);
  });

  group('getArtistModels', () {
    group('start', () {
      blocTest<ArtistsCubit, ArtistsState>(
          'should call getArtistModel() method once',
          build: () => sut,
          act: (cubit) => cubit.getArtistModels(),
          verify: (_) {
            verify(() => repository.getArtistModel()).called(1);
          });
    });
    group('success', () {
      setUp(() {
        when(() => repository.getArtistModel()).thenAnswer(
          (_) async => [
            ArtistModel(1, 'Ariana Grande', 'bio', [
              TopSongsModel('Song 1', 10000, 1),
            ]),
            ArtistModel(2, 'Justin Bieber', 'bio', [
              TopSongsModel('Song 2', 200000, 2),
            ]),
          ],
        );
      });

      blocTest<ArtistsCubit, ArtistsState>(
          'emits Status.loading then Status.success with results',
          build: () => sut,
          act: (cubit) => cubit.getArtistModels(),
          expect: () => [
                ArtistsState(
                  status: Status.loading,
                  artistModel: [],
                ),
                ArtistsState(
                  status: Status.success,
                  artistModel: [
                    ArtistModel(1, 'Ariana Grande', 'bio', [
                      TopSongsModel('Song 1', 10000, 1),
                    ]),
                    ArtistModel(2, 'Justin Bieber', 'bio', [
                      TopSongsModel('Song 2', 200000, 2),
                    ]),
                  ],
                ),
              ]);
    });
    group('failure', () {
      setUp(() {
        when(() => repository.getArtistModel()).thenThrow(Exception('error'));
      });

      blocTest<ArtistsCubit, ArtistsState>(
          'emits Status.loading then Status.error with error message',
          build: () => sut,
          act: (cubit) => cubit.getArtistModels(),
          expect: () => [
                ArtistsState(
                  status: Status.loading,
                  artistModel: [],
                ),
                ArtistsState(
                    status: Status.error, errorMessage: 'Exception: error')
              ]);
    });
  });
}