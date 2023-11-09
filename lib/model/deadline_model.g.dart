// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deadline_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeadlineItemImpl _$$DeadlineItemImplFromJson(Map<String, dynamic> json) =>
    _$DeadlineItemImpl(
      id: json['id'] as String,
      task: json['task'] as String,
      deadline: const TimeStampSerializer().fromJson(json['deadline']),
      isDone: json['is_done'] as bool? ?? false,
    );

Map<String, dynamic> _$$DeadlineItemImplToJson(_$DeadlineItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'task': instance.task,
      'deadline': const TimeStampSerializer().toJson(instance.deadline),
      'is_done': instance.isDone,
    };
