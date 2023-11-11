import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rating/app/core/enums.dart';
import 'package:rating/features/home/add/cubit/add_cubit.dart';
import 'package:rating/repositories/deadline_repository.dart';

class MockDeadlineRepository extends Mock implements DeadlineRepository {}

void main() {
  group('AddCubit', () {
    late AddCubit sut;
    late MockDeadlineRepository repository;

    setUp(() {
      repository = MockDeadlineRepository();
      sut = AddCubit(deadlineRepository: repository);
    });
    group('successful AddState', () {
      setUp(() {
        when(() => repository.add('Title 1', false, DateTime(2023)))
            .thenAnswer((_) async {});
      });

      blocTest<AddCubit, AddState>(
        'should return Status success after successful add',
        build: () => sut,
        act: (cubit) => cubit.add(
          'Title 1',
          false,
          DateTime(2023),
        ),
        expect: () => [
          AddState(
            status: Status.success,
            errorMessage: null,
          ),
        ],
      );
    });

    group('unsuccessful AddState', () {
      setUp(() {
        when(() => repository.add('Title 1', false, DateTime(2023)))
            .thenThrow(Exception('test-exception-error'));
      });

      blocTest<AddCubit, AddState>(
        'should return Status error exception after fail',
        build: () => sut,
        act: (cubit) => cubit.add(
          'Title 1',
          false,
          DateTime(2023),
        ),
        expect: () => [
          AddState(
            status: Status.error,
            errorMessage: 'Exception: test-exception-error',
          ),
        ],
      );
    });
  });
}
