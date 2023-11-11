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
  });
}
