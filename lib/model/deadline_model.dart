import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'deadline_model.freezed.dart';
part 'deadline_model.g.dart';

class TimeStampSerializer implements JsonConverter<DateTime, dynamic> {
  const TimeStampSerializer();

  @override
  DateTime fromJson(dynamic timestamp) => timestamp as DateTime;

  @override
  toJson(DateTime date) => date;
}

@freezed
class DeadlineItem with _$DeadlineItem {
  DeadlineItem._();
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory DeadlineItem({
    required String id,
    required String task,
    @TimeStampSerializer() required DateTime deadline,
    @Default(false) bool isDone,
  }) = _DeadlineItem;

  factory DeadlineItem.fromJson(Map<String, Object?> json) =>
      _$DeadlineItemFromJson(json);

  String daysLeft() {
    DateTime now = DateTime.now();
    DateTime date = DateTime(now.year, now.month, now.day);
    int daysDifference = deadline.difference(date).inDays;
    return daysDifference.toString();
  }

  String deadlineDateFormatted() {
    return DateFormat.yMMMEd().format(deadline);
  }
}