import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rating/app/core/enums.dart';
import 'package:rating/features/home/cubit/home_cubit.dart';
import 'package:rating/model/deadline_model.dart';
import 'package:rating/repositories/deadline_repository.dart';

class MockDeadlineRepository extends Mock implements DeadlineRepository {}

void main() {
  late HomeCubit sut;
  late MockDeadlineRepository deadlineRepository;

  setUp(() {
    deadlineRepository = MockDeadlineRepository();
    sut = HomeCubit(deadlineRepository: deadlineRepository);
  });

  final testItems = [
    DeadlineItem(id: '1', task: 'Task 1', deadline: DateTime(2023)),
    DeadlineItem(id: '2', task: 'Task 2', deadline: DateTime(2023)),
    DeadlineItem(id: '3', task: 'Task 3', deadline: DateTime(2023)),
  ];

  final testError = Exception('error');
  const testErrorMessage = 'Exception: error';

  group('getDeadlineItems()', () {
    blocTest<HomeCubit, HomeState>(
        'emits Status.loading, then Status.success with deadline items',
        build: () {
          when(() => deadlineRepository.getDeadline())
              .thenAnswer((_) => Stream.value(testItems));
          return sut;
        },
        act: (cubit) {
          cubit.getDeadlineItems();
        },
        expect: () => [
              HomeState(status: Status.loading),
              HomeState(status: Status.success, deadlineItem: testItems),
            ],
        verify: (_) {
          verify(() => deadlineRepository.getDeadline()).called(1);
        });
    blocTest<HomeCubit, HomeState>(
      'emits Status.loading, then Status.error on error',
      build: () {
        when(() => deadlineRepository.getDeadline())
            .thenAnswer((_) => Stream.error(testError));
        return sut;
      },
      act: (cubit) {
        cubit.getDeadlineItems();
      },
      expect: () => [
        HomeState(status: Status.loading),
        HomeState(
          status: Status.error,
          errorMessage: testErrorMessage,
        ),
      ],
    );
  });
  group('remove', () {
    setUp(() {
      when(() => deadlineRepository.remove('x')).thenAnswer((_) async => []);
    });

    blocTest<HomeCubit, HomeState>(
      'should remove deadline from the list',
      build: () => sut,
      act: (cubit) => cubit.remove(documentID: 'x'),
      expect: () => [
        HomeState(
          deadlineItem: [],
          status: Status.success,
          errorMessage: null,
        ),
      ],
    );

    blocTest<HomeCubit, HomeState>(
      'emits Status.error on error during remove',
      build: () => sut,
      act: (cubit) {
        when(() => deadlineRepository.remove('x')).thenAnswer((_) async {
          throw testError;
        });
        cubit.remove(documentID: 'x');
      },
      expect: () => [
        HomeState(
          status: Status.error,
          errorMessage: testErrorMessage,
        ),
      ],
      verify: (_) {
        verify(() => deadlineRepository.remove('x')).called(1);
      },
    );
  });

  group('toggleCheckBox()', () {
    final testDeadlineItem =
        DeadlineItem(id: '1', task: 'Task 1', deadline: DateTime(2023));
    blocTest<HomeCubit, HomeState>(
      'should call setAsDone(), then emit Status.success',
      build: () {
        when(() => deadlineRepository.setAsDone('1')).thenAnswer((_) async {});
        return sut;
      },
      act: (cubit) {
        when(() => deadlineRepository.setAsDone('x')).thenAnswer((_) async {
          throw testError;
        });
        cubit.toggleCheckBox(deadlineItem: testDeadlineItem);
      },
      verify: (_) {
        verify(() => deadlineRepository.setAsDone('1')).called(1);
      },
    );
    blocTest<HomeCubit, HomeState>(
      'should emit Status.error when setAsDone throws an error',
      build: () => sut,
      act: (cubit) async {
        when(() => deadlineRepository.setAsDone('1')).thenThrow(testError);
        await cubit.toggleCheckBox(deadlineItem: testDeadlineItem);
      },
      expect: () => [
        HomeState(
          status: Status.error,
          errorMessage: testErrorMessage,
        ),
      ],
      verify: (_) {
        verify(() => deadlineRepository.setAsDone(testDeadlineItem.id))
            .called(1);
      },
    );
  });

  group('filterItems()', () {
    blocTest<HomeCubit, HomeState>(
      'emits Status.success and test items when no keyword is entered',
      build: () {
        when(() => deadlineRepository.filterItems())
            .thenAnswer((_) async => testItems);
        return sut;
      },
      act: (cubit) async {
        await cubit.filterItems('');
      },
      expect: () => [
        HomeState(
          status: Status.success,
          deadlineItem: testItems,
        ),
      ],
    );

    blocTest<HomeCubit, HomeState>(
      'emits Status.success and filtered items when a keyword is entered',
      build: () {
        when(() => deadlineRepository.filterItems())
            .thenAnswer((_) async => testItems);
        return sut;
      },
      act: (cubit) => cubit.filterItems('Task 1'),
      expect: () => [
        HomeState(status: Status.success, deadlineItem: [testItems[0]]),
      ],
    );

    blocTest<HomeCubit, HomeState>(
      'emits Status.success and empty list when no items match the keyword',
      build: () {
        when(() => deadlineRepository.filterItems())
            .thenAnswer((_) async => testItems);
        return sut;
      },
      act: (cubit) => cubit.filterItems('Task not found'),
      expect: () => [
        HomeState(status: Status.success, deadlineItem: []),
      ],
    );
  });
}
