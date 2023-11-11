import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rating/app/core/enums.dart';
import 'package:rating/features/podcasters/cubit/podcasters_cubit.dart';
import 'package:rating/model/podcaster_model.dart';
import 'package:rating/repositories/podcaster_repository.dart';

class MockPodcasterRepository extends Mock implements PodcasterRepository {}

void main() {
  late PodcastersCubit sut;
  late MockPodcasterRepository repository;

  setUp(() {
    repository = MockPodcasterRepository();
    sut = PodcastersCubit(podcasterRepository: repository);
  });

  group('getPodcasterModels', () {
    group('start', () {
      blocTest<PodcastersCubit, PodcastersState>(
          'should call getPodcasterModel() method once',
          build: () => sut,
          act: (cubit) => cubit.getPodcasterModels(),
          verify: (_) {
            verify(() => repository.getPodcasterModel()).called(1);
          });
    });
    group('success', () {
      setUp(() {
        when(() => repository.getPodcasterModel()).thenAnswer(
          (_) async => [
            PodcasterModel(1, 'Sarah Brown', 'bio', [
              TopPodcastsModel('Podcast 1', 10000, 1),
            ]),
            PodcasterModel(2, 'Christopher Wilson', 'bio', [
              TopPodcastsModel('Podcast 2', 200000, 2),
            ]),
          ],
        );
      });

      blocTest<PodcastersCubit, PodcastersState>(
          'emits Status.loading then Status.success with results',
          build: () => sut,
          act: (cubit) => cubit.getPodcasterModels(),
          expect: () => [
                PodcastersState(
                  status: Status.loading,
                  podcasterModel: [],
                ),
                PodcastersState(
                  status: Status.success,
                  podcasterModel: [
                    PodcasterModel(1, 'Sarah Brown', 'bio', [
                      TopPodcastsModel('Podcast 1', 10000, 1),
                    ]),
                    PodcasterModel(2, 'Christopher Wilson', 'bio', [
                      TopPodcastsModel('Podcast 2', 200000, 2),
                    ]),
                  ],
                ),
              ]);
    });
    group('failure', () {
      setUp(() {
        when(() => repository.getPodcasterModel()).thenThrow(Exception('error'));
      });

      blocTest<PodcastersCubit, PodcastersState>(
          'emits Status.loading then Status.error with error message',
          build: () => sut,
          act: (cubit) => cubit.getPodcasterModels(),
          expect: () => [
                PodcastersState(
                  status: Status.loading,
                  podcasterModel: [],
                ),
                PodcastersState(
                    status: Status.error, errorMessage: 'Exception: error')
              ]);
    });
  });
}