// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'podcaster_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PodcasterModel _$PodcasterModelFromJson(Map<String, dynamic> json) {
  return _PodcasterModel.fromJson(json);
}

/// @nodoc
mixin _$PodcasterModel {
  int get place => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  List<TopPodcastsModel> get topPodcasts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PodcasterModelCopyWith<PodcasterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PodcasterModelCopyWith<$Res> {
  factory $PodcasterModelCopyWith(
          PodcasterModel value, $Res Function(PodcasterModel) then) =
      _$PodcasterModelCopyWithImpl<$Res, PodcasterModel>;
  @useResult
  $Res call(
      {int place, String name, String bio, List<TopPodcastsModel> topPodcasts});
}

/// @nodoc
class _$PodcasterModelCopyWithImpl<$Res, $Val extends PodcasterModel>
    implements $PodcasterModelCopyWith<$Res> {
  _$PodcasterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = null,
    Object? name = null,
    Object? bio = null,
    Object? topPodcasts = null,
  }) {
    return _then(_value.copyWith(
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      topPodcasts: null == topPodcasts
          ? _value.topPodcasts
          : topPodcasts // ignore: cast_nullable_to_non_nullable
              as List<TopPodcastsModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PodcasterModelImplCopyWith<$Res>
    implements $PodcasterModelCopyWith<$Res> {
  factory _$$PodcasterModelImplCopyWith(_$PodcasterModelImpl value,
          $Res Function(_$PodcasterModelImpl) then) =
      __$$PodcasterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int place, String name, String bio, List<TopPodcastsModel> topPodcasts});
}

/// @nodoc
class __$$PodcasterModelImplCopyWithImpl<$Res>
    extends _$PodcasterModelCopyWithImpl<$Res, _$PodcasterModelImpl>
    implements _$$PodcasterModelImplCopyWith<$Res> {
  __$$PodcasterModelImplCopyWithImpl(
      _$PodcasterModelImpl _value, $Res Function(_$PodcasterModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = null,
    Object? name = null,
    Object? bio = null,
    Object? topPodcasts = null,
  }) {
    return _then(_$PodcasterModelImpl(
      null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as int,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      null == topPodcasts
          ? _value._topPodcasts
          : topPodcasts // ignore: cast_nullable_to_non_nullable
              as List<TopPodcastsModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$PodcasterModelImpl implements _PodcasterModel {
  _$PodcasterModelImpl(
      this.place, this.name, this.bio, final List<TopPodcastsModel> topPodcasts)
      : _topPodcasts = topPodcasts;

  factory _$PodcasterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PodcasterModelImplFromJson(json);

  @override
  final int place;
  @override
  final String name;
  @override
  final String bio;
  final List<TopPodcastsModel> _topPodcasts;
  @override
  List<TopPodcastsModel> get topPodcasts {
    if (_topPodcasts is EqualUnmodifiableListView) return _topPodcasts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topPodcasts);
  }

  @override
  String toString() {
    return 'PodcasterModel(place: $place, name: $name, bio: $bio, topPodcasts: $topPodcasts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PodcasterModelImpl &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            const DeepCollectionEquality()
                .equals(other._topPodcasts, _topPodcasts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, place, name, bio,
      const DeepCollectionEquality().hash(_topPodcasts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PodcasterModelImplCopyWith<_$PodcasterModelImpl> get copyWith =>
      __$$PodcasterModelImplCopyWithImpl<_$PodcasterModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PodcasterModelImplToJson(
      this,
    );
  }
}

abstract class _PodcasterModel implements PodcasterModel {
  factory _PodcasterModel(final int place, final String name, final String bio,
      final List<TopPodcastsModel> topPodcasts) = _$PodcasterModelImpl;

  factory _PodcasterModel.fromJson(Map<String, dynamic> json) =
      _$PodcasterModelImpl.fromJson;

  @override
  int get place;
  @override
  String get name;
  @override
  String get bio;
  @override
  List<TopPodcastsModel> get topPodcasts;
  @override
  @JsonKey(ignore: true)
  _$$PodcasterModelImplCopyWith<_$PodcasterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopPodcastsModel _$TopPodcastsModelFromJson(Map<String, dynamic> json) {
  return _TopPodcastsModel.fromJson(json);
}

/// @nodoc
mixin _$TopPodcastsModel {
  String get title => throw _privateConstructorUsedError;
  int get listeners => throw _privateConstructorUsedError;
  int get coverNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopPodcastsModelCopyWith<TopPodcastsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopPodcastsModelCopyWith<$Res> {
  factory $TopPodcastsModelCopyWith(
          TopPodcastsModel value, $Res Function(TopPodcastsModel) then) =
      _$TopPodcastsModelCopyWithImpl<$Res, TopPodcastsModel>;
  @useResult
  $Res call({String title, int listeners, int coverNumber});
}

/// @nodoc
class _$TopPodcastsModelCopyWithImpl<$Res, $Val extends TopPodcastsModel>
    implements $TopPodcastsModelCopyWith<$Res> {
  _$TopPodcastsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? listeners = null,
    Object? coverNumber = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      listeners: null == listeners
          ? _value.listeners
          : listeners // ignore: cast_nullable_to_non_nullable
              as int,
      coverNumber: null == coverNumber
          ? _value.coverNumber
          : coverNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopPodcastsModelImplCopyWith<$Res>
    implements $TopPodcastsModelCopyWith<$Res> {
  factory _$$TopPodcastsModelImplCopyWith(_$TopPodcastsModelImpl value,
          $Res Function(_$TopPodcastsModelImpl) then) =
      __$$TopPodcastsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, int listeners, int coverNumber});
}

/// @nodoc
class __$$TopPodcastsModelImplCopyWithImpl<$Res>
    extends _$TopPodcastsModelCopyWithImpl<$Res, _$TopPodcastsModelImpl>
    implements _$$TopPodcastsModelImplCopyWith<$Res> {
  __$$TopPodcastsModelImplCopyWithImpl(_$TopPodcastsModelImpl _value,
      $Res Function(_$TopPodcastsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? listeners = null,
    Object? coverNumber = null,
  }) {
    return _then(_$TopPodcastsModelImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == listeners
          ? _value.listeners
          : listeners // ignore: cast_nullable_to_non_nullable
              as int,
      null == coverNumber
          ? _value.coverNumber
          : coverNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopPodcastsModelImpl implements _TopPodcastsModel {
  _$TopPodcastsModelImpl(this.title, this.listeners, this.coverNumber);

  factory _$TopPodcastsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopPodcastsModelImplFromJson(json);

  @override
  final String title;
  @override
  final int listeners;
  @override
  final int coverNumber;

  @override
  String toString() {
    return 'TopPodcastsModel(title: $title, listeners: $listeners, coverNumber: $coverNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopPodcastsModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.listeners, listeners) ||
                other.listeners == listeners) &&
            (identical(other.coverNumber, coverNumber) ||
                other.coverNumber == coverNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, listeners, coverNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopPodcastsModelImplCopyWith<_$TopPodcastsModelImpl> get copyWith =>
      __$$TopPodcastsModelImplCopyWithImpl<_$TopPodcastsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopPodcastsModelImplToJson(
      this,
    );
  }
}

abstract class _TopPodcastsModel implements TopPodcastsModel {
  factory _TopPodcastsModel(
          final String title, final int listeners, final int coverNumber) =
      _$TopPodcastsModelImpl;

  factory _TopPodcastsModel.fromJson(Map<String, dynamic> json) =
      _$TopPodcastsModelImpl.fromJson;

  @override
  String get title;
  @override
  int get listeners;
  @override
  int get coverNumber;
  @override
  @JsonKey(ignore: true)
  _$$TopPodcastsModelImplCopyWith<_$TopPodcastsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
