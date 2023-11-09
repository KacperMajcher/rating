// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deadline_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeadlineItem _$DeadlineItemFromJson(Map<String, dynamic> json) {
  return _DeadlineItem.fromJson(json);
}

/// @nodoc
mixin _$DeadlineItem {
  String get id => throw _privateConstructorUsedError;
  String get task => throw _privateConstructorUsedError;
  @TimeStampSerializer()
  DateTime get deadline => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeadlineItemCopyWith<DeadlineItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeadlineItemCopyWith<$Res> {
  factory $DeadlineItemCopyWith(
          DeadlineItem value, $Res Function(DeadlineItem) then) =
      _$DeadlineItemCopyWithImpl<$Res, DeadlineItem>;
  @useResult
  $Res call(
      {String id,
      String task,
      @TimeStampSerializer() DateTime deadline,
      bool isDone});
}

/// @nodoc
class _$DeadlineItemCopyWithImpl<$Res, $Val extends DeadlineItem>
    implements $DeadlineItemCopyWith<$Res> {
  _$DeadlineItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? task = null,
    Object? deadline = null,
    Object? isDone = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as String,
      deadline: null == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeadlineItemImplCopyWith<$Res>
    implements $DeadlineItemCopyWith<$Res> {
  factory _$$DeadlineItemImplCopyWith(
          _$DeadlineItemImpl value, $Res Function(_$DeadlineItemImpl) then) =
      __$$DeadlineItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String task,
      @TimeStampSerializer() DateTime deadline,
      bool isDone});
}

/// @nodoc
class __$$DeadlineItemImplCopyWithImpl<$Res>
    extends _$DeadlineItemCopyWithImpl<$Res, _$DeadlineItemImpl>
    implements _$$DeadlineItemImplCopyWith<$Res> {
  __$$DeadlineItemImplCopyWithImpl(
      _$DeadlineItemImpl _value, $Res Function(_$DeadlineItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? task = null,
    Object? deadline = null,
    Object? isDone = null,
  }) {
    return _then(_$DeadlineItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as String,
      deadline: null == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$DeadlineItemImpl extends _DeadlineItem {
  _$DeadlineItemImpl(
      {required this.id,
      required this.task,
      @TimeStampSerializer() required this.deadline,
      this.isDone = false})
      : super._();

  factory _$DeadlineItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeadlineItemImplFromJson(json);

  @override
  final String id;
  @override
  final String task;
  @override
  @TimeStampSerializer()
  final DateTime deadline;
  @override
  @JsonKey()
  final bool isDone;

  @override
  String toString() {
    return 'DeadlineItem(id: $id, task: $task, deadline: $deadline, isDone: $isDone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeadlineItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            (identical(other.isDone, isDone) || other.isDone == isDone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, task, deadline, isDone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeadlineItemImplCopyWith<_$DeadlineItemImpl> get copyWith =>
      __$$DeadlineItemImplCopyWithImpl<_$DeadlineItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeadlineItemImplToJson(
      this,
    );
  }
}

abstract class _DeadlineItem extends DeadlineItem {
  factory _DeadlineItem(
      {required final String id,
      required final String task,
      @TimeStampSerializer() required final DateTime deadline,
      final bool isDone}) = _$DeadlineItemImpl;
  _DeadlineItem._() : super._();

  factory _DeadlineItem.fromJson(Map<String, dynamic> json) =
      _$DeadlineItemImpl.fromJson;

  @override
  String get id;
  @override
  String get task;
  @override
  @TimeStampSerializer()
  DateTime get deadline;
  @override
  bool get isDone;
  @override
  @JsonKey(ignore: true)
  _$$DeadlineItemImplCopyWith<_$DeadlineItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
