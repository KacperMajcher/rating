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
  group('toggleCheckBox()', () {
    blocTest<HomeCubit, HomeState>(
      'should call setAsDone(), then emit Status.success',
      build: () {
        when(() => deadlineRepository.setAsDone('1')).thenAnswer((_) async {});
        return sut;
      },
      act: (cubit) {
        cubit.toggleCheckBox(
            deadlineItem: DeadlineItem(
                id: '1', task: 'Task 1', deadline: DateTime(2023)));
      },
      verify: (_) {
        verify(() => deadlineRepository.setAsDone('1')).called(1);
      },
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
      expect: () => [],
    );
  });
}
