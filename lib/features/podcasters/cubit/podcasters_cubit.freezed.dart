// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'podcasters_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PodcastersState {
  List<PodcasterModel> get podcasterModel => throw _privateConstructorUsedError;
  List<TopPodcastsModel> get topPodcastsModel =>
      throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PodcastersStateCopyWith<PodcastersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PodcastersStateCopyWith<$Res> {
  factory $PodcastersStateCopyWith(
          PodcastersState value, $Res Function(PodcastersState) then) =
      _$PodcastersStateCopyWithImpl<$Res, PodcastersState>;
  @useResult
  $Res call(
      {List<PodcasterModel> podcasterModel,
      List<TopPodcastsModel> topPodcastsModel,
      Status status,
      String? errorMessage});
}

/// @nodoc
class _$PodcastersStateCopyWithImpl<$Res, $Val extends PodcastersState>
    implements $PodcastersStateCopyWith<$Res> {
  _$PodcastersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? podcasterModel = null,
    Object? topPodcastsModel = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      podcasterModel: null == podcasterModel
          ? _value.podcasterModel
          : podcasterModel // ignore: cast_nullable_to_non_nullable
              as List<PodcasterModel>,
      topPodcastsModel: null == topPodcastsModel
          ? _value.topPodcastsModel
          : topPodcastsModel // ignore: cast_nullable_to_non_nullable
              as List<TopPodcastsModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PodcastersStateImplCopyWith<$Res>
    implements $PodcastersStateCopyWith<$Res> {
  factory _$$PodcastersStateImplCopyWith(_$PodcastersStateImpl value,
          $Res Function(_$PodcastersStateImpl) then) =
      __$$PodcastersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PodcasterModel> podcasterModel,
      List<TopPodcastsModel> topPodcastsModel,
      Status status,
      String? errorMessage});
}

/// @nodoc
class __$$PodcastersStateImplCopyWithImpl<$Res>
    extends _$PodcastersStateCopyWithImpl<$Res, _$PodcastersStateImpl>
    implements _$$PodcastersStateImplCopyWith<$Res> {
  __$$PodcastersStateImplCopyWithImpl(
      _$PodcastersStateImpl _value, $Res Function(_$PodcastersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? podcasterModel = null,
    Object? topPodcastsModel = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$PodcastersStateImpl(
      podcasterModel: null == podcasterModel
          ? _value._podcasterModel
          : podcasterModel // ignore: cast_nullable_to_non_nullable
              as List<PodcasterModel>,
      topPodcastsModel: null == topPodcastsModel
          ? _value._topPodcastsModel
          : topPodcastsModel // ignore: cast_nullable_to_non_nullable
              as List<TopPodcastsModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PodcastersStateImpl implements _PodcastersState {
  _$PodcastersStateImpl(
      {final List<PodcasterModel> podcasterModel = const [],
      final List<TopPodcastsModel> topPodcastsModel = const [],
      this.status = Status.initial,
      this.errorMessage})
      : _podcasterModel = podcasterModel,
        _topPodcastsModel = topPodcastsModel;

  final List<PodcasterModel> _podcasterModel;
  @override
  @JsonKey()
  List<PodcasterModel> get podcasterModel {
    if (_podcasterModel is EqualUnmodifiableListView) return _podcasterModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_podcasterModel);
  }

  final List<TopPodcastsModel> _topPodcastsModel;
  @override
  @JsonKey()
  List<TopPodcastsModel> get topPodcastsModel {
    if (_topPodcastsModel is EqualUnmodifiableListView)
      return _topPodcastsModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topPodcastsModel);
  }

  @override
  @JsonKey()
  final Status status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'PodcastersState(podcasterModel: $podcasterModel, topPodcastsModel: $topPodcastsModel, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PodcastersStateImpl &&
            const DeepCollectionEquality()
                .equals(other._podcasterModel, _podcasterModel) &&
            const DeepCollectionEquality()
                .equals(other._topPodcastsModel, _topPodcastsModel) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_podcasterModel),
      const DeepCollectionEquality().hash(_topPodcastsModel),
      status,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PodcastersStateImplCopyWith<_$PodcastersStateImpl> get copyWith =>
      __$$PodcastersStateImplCopyWithImpl<_$PodcastersStateImpl>(
          this, _$identity);
}

abstract class _PodcastersState implements PodcastersState {
  factory _PodcastersState(
      {final List<PodcasterModel> podcasterModel,
      final List<TopPodcastsModel> topPodcastsModel,
      final Status status,
      final String? errorMessage}) = _$PodcastersStateImpl;

  @override
  List<PodcasterModel> get podcasterModel;
  @override
  List<TopPodcastsModel> get topPodcastsModel;
  @override
  Status get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$PodcastersStateImplCopyWith<_$PodcastersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
