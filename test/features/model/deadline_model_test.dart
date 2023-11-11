import 'package:flutter_test/flutter_test.dart';
import 'package:rating/model/deadline_model.dart';

void main() {
  final testItem = DeadlineItem(
    id: '1',
    task: 'Task 1',
    deadline: DateTime(2023, 12, 31),
    
  );
  group('DeadlineItem', () {
    test('Constructor creates DeadlineItem with correct data', () {
      const id = '1';
      const task = 'Task 1';
      final deadline = DateTime(2023, 12, 31);
      const isDone = false;

      final item =
          DeadlineItem(id: id, task: task, deadline: deadline, isDone: isDone);

      expect(
          item,
          DeadlineItem(
              id: '1',
              task: 'Task 1',
              deadline: DateTime(2023, 12, 31),
              isDone: false));
    });

    group('DeadlineItem serialization', () {
      test('serialized data should match expectations', () {
        final deadline = DateTime(2023, 12, 31);
        final item = DeadlineItem(id: '1', task: 'Task 1', deadline: deadline);

        final json = item.toJson();

        expect(json, {
          'id': '1',
          'task': 'Task 1',
          'deadline': deadline,
          'is_done': false,
        });
      });
    });
    group('Default values are set correctly', () {
      test('should return isDone = false', () {
        expect(testItem.isDone, false);
      });
    });
    group('daysLeft()', () {
      test('daysLeft returns correct number of days', () {
        final deadline = DateTime.now().add(const Duration(days: 5));
        final item =
            DeadlineItem(id: '1', task: 'Test Task', deadline: deadline);

        final daysLeft = item.daysLeft();

        expect(daysLeft, ('5'));
      });
    });
    group('deadlineDateFormatted()', () {
      test('deadlineDateFormatted returns correctly formatted date', () {
        final deadline = DateTime(2023, 12, 31);
        final item = DeadlineItem(id: '1', task: 'Task 1', deadline: deadline);

        final formattedDate = item.deadlineDateFormatted();

        expect(formattedDate, ('Sun, Dec 31, 2023'));
      });
    });
  });
  group('TimeStampSerializer', () {
    const timeStampSerializer = TimeStampSerializer();

    test('serialization/deserialization with TimeStampSerializer', () {
      final jsonMap = testItem.toJson();
      final deserializedItem = DeadlineItem.fromJson(jsonMap);

      expect(deserializedItem, testItem);
    });

    test('fromJson should convert timestamp to DateTime', () {
      final timestamp = DateTime.now();
      final convertedDate = timeStampSerializer.fromJson(timestamp);

      expect(convertedDate, timestamp);
    });

    test('fromJson should convert DateTime to timestamp', () {
      final dateTime = DateTime.now();
      final convertedTimestamp = timeStampSerializer.toJson(dateTime);

      expect(convertedTimestamp, dateTime);
    });
  });
}
