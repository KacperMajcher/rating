// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  List<DeadlineItem> get deadlineItem => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  bool get removingErrorOccured => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {List<DeadlineItem> deadlineItem,
      Status status,
      bool removingErrorOccured,
      String? errorMessage});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deadlineItem = null,
    Object? status = null,
    Object? removingErrorOccured = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      deadlineItem: null == deadlineItem
          ? _value.deadlineItem
          : deadlineItem // ignore: cast_nullable_to_non_nullable
              as List<DeadlineItem>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      removingErrorOccured: null == removingErrorOccured
          ? _value.removingErrorOccured
          : removingErrorOccured // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DeadlineItem> deadlineItem,
      Status status,
      bool removingErrorOccured,
      String? errorMessage});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deadlineItem = null,
    Object? status = null,
    Object? removingErrorOccured = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$HomeStateImpl(
      deadlineItem: null == deadlineItem
          ? _value._deadlineItem
          : deadlineItem // ignore: cast_nullable_to_non_nullable
              as List<DeadlineItem>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      removingErrorOccured: null == removingErrorOccured
          ? _value.removingErrorOccured
          : removingErrorOccured // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  _$HomeStateImpl(
      {final List<DeadlineItem> deadlineItem = const [],
      this.status = Status.initial,
      this.removingErrorOccured = false,
      this.errorMessage})
      : _deadlineItem = deadlineItem;

  final List<DeadlineItem> _deadlineItem;
  @override
  @JsonKey()
  List<DeadlineItem> get deadlineItem {
    if (_deadlineItem is EqualUnmodifiableListView) return _deadlineItem;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deadlineItem);
  }

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final bool removingErrorOccured;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'HomeState(deadlineItem: $deadlineItem, status: $status, removingErrorOccured: $removingErrorOccured, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            const DeepCollectionEquality()
                .equals(other._deadlineItem, _deadlineItem) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.removingErrorOccured, removingErrorOccured) ||
                other.removingErrorOccured == removingErrorOccured) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_deadlineItem),
      status,
      removingErrorOccured,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  factory _HomeState(
      {final List<DeadlineItem> deadlineItem,
      final Status status,
      final bool removingErrorOccured,
      final String? errorMessage}) = _$HomeStateImpl;

  @override
  List<DeadlineItem> get deadlineItem;
  @override
  Status get status;
  @override
  bool get removingErrorOccured;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
