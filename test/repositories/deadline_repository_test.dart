import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rating/features/remote_data_sources/deadline_remote_data_source.dart';
import 'package:rating/model/deadline_model.dart';
import 'package:rating/repositories/deadline_repository.dart';

class MockDeadlineDataSource extends Mock implements DeadlineRemoteDataSource {}

void main() {
  group('DeadlineRepository', () {
    late DeadlineRepository sut;
    late MockDeadlineDataSource dataSource;

    setUp(() {
      dataSource = MockDeadlineDataSource();
      sut = DeadlineRepository(remoteDataSource: dataSource);
    });
    group('getDeadlineData()', () {
      test('getDeadline returns a stream of DeadlineItems', () async {
        final testDeadlines = [
          DeadlineItem(id: '1', task: 'Task 1', deadline: DateTime(2023)),
          DeadlineItem(id: '2', task: 'Task 2', deadline: DateTime(2023)),
          DeadlineItem(id: '3', task: 'Task 3', deadline: DateTime(2023)),
          DeadlineItem(id: '4', task: 'Task 4', deadline: DateTime(2023)),
          DeadlineItem(id: '5', task: 'Task 5', deadline: DateTime(2023)),
        ];
        when(() => dataSource.getDeadlineData()).thenAnswer((_) {
          return Stream.value(
              testDeadlines.map((item) => item.toJson()).toList());
        });

        final result = sut.getDeadline();

        expect(result, emits(testDeadlines));
      });
    });
    group('add', () {
      test('should call addDeadline once with provided parameters', () {
        when(() => dataSource.addDeadline('Task 1', false, DateTime(2023)))
            .thenAnswer((_) async {});

        sut.add('Task 1', false, DateTime(2023));

        verify(() => dataSource.addDeadline('Task 1', false, DateTime(2023)))
            .called(1);
      });

      test('should throw exception if addDeadline on remote data source throws',
          () async {
        when(() => dataSource.addDeadline('Task 1', false, DateTime(2023)))
            .thenThrow(Exception());

        expect(() => sut.add('Task 1', false, DateTime(2023)), throwsException);
      });
    });
    group('setAsDone', () {
      test(
        'should call setAsDonewith() with ID once',
        () {
          when(() => dataSource.setAsDone('x')).thenAnswer((_) async {});

          sut.setAsDone('x');

          verify(() => dataSource.setAsDone('x')).called(1);
        },
      );
    });
    group('filterItems()', () {
      test('filterItems returns a list of DeadlineItems', () async {
        final testItems = [
          {'id': '1', 'task': 'Task 1', 'deadline': DateTime(2023)},
          {'id': '2', 'task': 'Task 2', 'deadline': DateTime(2023)},
        ];

        when(() => dataSource.filterItems()).thenAnswer((_) async {
          return testItems;
        });

        final result = await sut.filterItems();

        final expectedItems =
            testItems.map((item) => DeadlineItem.fromJson(item)).toList();
        expect(result, expectedItems);
      });
      group('remove', () {
        test(
          'should call delete () with ID once',
          () {
            when(() => dataSource.delete(id: 'x')).thenAnswer((_) async {});

            sut.remove('x');

            verify(() => dataSource.delete(id: 'x')).called(1);
          },
        );
      });
    });
  });
}
