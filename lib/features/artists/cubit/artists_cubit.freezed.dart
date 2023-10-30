// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artists_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArtistsState {
  List<ArtistModel> get artistModel => throw _privateConstructorUsedError;
  List<TopSongsModel> get topSongsModel => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArtistsStateCopyWith<ArtistsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistsStateCopyWith<$Res> {
  factory $ArtistsStateCopyWith(
          ArtistsState value, $Res Function(ArtistsState) then) =
      _$ArtistsStateCopyWithImpl<$Res, ArtistsState>;
  @useResult
  $Res call(
      {List<ArtistModel> artistModel,
      List<TopSongsModel> topSongsModel,
      Status status,
      String? errorMessage});
}

/// @nodoc
class _$ArtistsStateCopyWithImpl<$Res, $Val extends ArtistsState>
    implements $ArtistsStateCopyWith<$Res> {
  _$ArtistsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistModel = null,
    Object? topSongsModel = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      artistModel: null == artistModel
          ? _value.artistModel
          : artistModel // ignore: cast_nullable_to_non_nullable
              as List<ArtistModel>,
      topSongsModel: null == topSongsModel
          ? _value.topSongsModel
          : topSongsModel // ignore: cast_nullable_to_non_nullable
              as List<TopSongsModel>,
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
abstract class _$$ArtistsStateImplCopyWith<$Res>
    implements $ArtistsStateCopyWith<$Res> {
  factory _$$ArtistsStateImplCopyWith(
          _$ArtistsStateImpl value, $Res Function(_$ArtistsStateImpl) then) =
      __$$ArtistsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ArtistModel> artistModel,
      List<TopSongsModel> topSongsModel,
      Status status,
      String? errorMessage});
}

/// @nodoc
class __$$ArtistsStateImplCopyWithImpl<$Res>
    extends _$ArtistsStateCopyWithImpl<$Res, _$ArtistsStateImpl>
    implements _$$ArtistsStateImplCopyWith<$Res> {
  __$$ArtistsStateImplCopyWithImpl(
      _$ArtistsStateImpl _value, $Res Function(_$ArtistsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistModel = null,
    Object? topSongsModel = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$ArtistsStateImpl(
      artistModel: null == artistModel
          ? _value._artistModel
          : artistModel // ignore: cast_nullable_to_non_nullable
              as List<ArtistModel>,
      topSongsModel: null == topSongsModel
          ? _value._topSongsModel
          : topSongsModel // ignore: cast_nullable_to_non_nullable
              as List<TopSongsModel>,
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

class _$ArtistsStateImpl implements _ArtistsState {
  _$ArtistsStateImpl(
      {final List<ArtistModel> artistModel = const [],
      final List<TopSongsModel> topSongsModel = const [],
      this.status = Status.initial,
      this.errorMessage})
      : _artistModel = artistModel,
        _topSongsModel = topSongsModel;

  final List<ArtistModel> _artistModel;
  @override
  @JsonKey()
  List<ArtistModel> get artistModel {
    if (_artistModel is EqualUnmodifiableListView) return _artistModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artistModel);
  }

  final List<TopSongsModel> _topSongsModel;
  @override
  @JsonKey()
  List<TopSongsModel> get topSongsModel {
    if (_topSongsModel is EqualUnmodifiableListView) return _topSongsModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topSongsModel);
  }

  @override
  @JsonKey()
  final Status status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'ArtistsState(artistModel: $artistModel, topSongsModel: $topSongsModel, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._artistModel, _artistModel) &&
            const DeepCollectionEquality()
                .equals(other._topSongsModel, _topSongsModel) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_artistModel),
      const DeepCollectionEquality().hash(_topSongsModel),
      status,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistsStateImplCopyWith<_$ArtistsStateImpl> get copyWith =>
      __$$ArtistsStateImplCopyWithImpl<_$ArtistsStateImpl>(this, _$identity);
}

abstract class _ArtistsState implements ArtistsState {
  factory _ArtistsState(
      {final List<ArtistModel> artistModel,
      final List<TopSongsModel> topSongsModel,
      final Status status,
      final String? errorMessage}) = _$ArtistsStateImpl;

  @override
  List<ArtistModel> get artistModel;
  @override
  List<TopSongsModel> get topSongsModel;
  @override
  Status get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$ArtistsStateImplCopyWith<_$ArtistsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
