// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArtistModel _$ArtistModelFromJson(Map<String, dynamic> json) {
  return _ArtistModel.fromJson(json);
}

/// @nodoc
mixin _$ArtistModel {
  int get place => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  List<TopSongsModel> get topSongs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistModelCopyWith<ArtistModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistModelCopyWith<$Res> {
  factory $ArtistModelCopyWith(
          ArtistModel value, $Res Function(ArtistModel) then) =
      _$ArtistModelCopyWithImpl<$Res, ArtistModel>;
  @useResult
  $Res call({int place, String name, String bio, List<TopSongsModel> topSongs});
}

/// @nodoc
class _$ArtistModelCopyWithImpl<$Res, $Val extends ArtistModel>
    implements $ArtistModelCopyWith<$Res> {
  _$ArtistModelCopyWithImpl(this._value, this._then);

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
    Object? topSongs = null,
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
      topSongs: null == topSongs
          ? _value.topSongs
          : topSongs // ignore: cast_nullable_to_non_nullable
              as List<TopSongsModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtistModelImplCopyWith<$Res>
    implements $ArtistModelCopyWith<$Res> {
  factory _$$ArtistModelImplCopyWith(
          _$ArtistModelImpl value, $Res Function(_$ArtistModelImpl) then) =
      __$$ArtistModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int place, String name, String bio, List<TopSongsModel> topSongs});
}

/// @nodoc
class __$$ArtistModelImplCopyWithImpl<$Res>
    extends _$ArtistModelCopyWithImpl<$Res, _$ArtistModelImpl>
    implements _$$ArtistModelImplCopyWith<$Res> {
  __$$ArtistModelImplCopyWithImpl(
      _$ArtistModelImpl _value, $Res Function(_$ArtistModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = null,
    Object? name = null,
    Object? bio = null,
    Object? topSongs = null,
  }) {
    return _then(_$ArtistModelImpl(
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
      null == topSongs
          ? _value._topSongs
          : topSongs // ignore: cast_nullable_to_non_nullable
              as List<TopSongsModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ArtistModelImpl implements _ArtistModel {
  _$ArtistModelImpl(
      this.place, this.name, this.bio, final List<TopSongsModel> topSongs)
      : _topSongs = topSongs;

  factory _$ArtistModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistModelImplFromJson(json);

  @override
  final int place;
  @override
  final String name;
  @override
  final String bio;
  final List<TopSongsModel> _topSongs;
  @override
  List<TopSongsModel> get topSongs {
    if (_topSongs is EqualUnmodifiableListView) return _topSongs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topSongs);
  }

  @override
  String toString() {
    return 'ArtistModel(place: $place, name: $name, bio: $bio, topSongs: $topSongs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistModelImpl &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            const DeepCollectionEquality().equals(other._topSongs, _topSongs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, place, name, bio,
      const DeepCollectionEquality().hash(_topSongs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistModelImplCopyWith<_$ArtistModelImpl> get copyWith =>
      __$$ArtistModelImplCopyWithImpl<_$ArtistModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistModelImplToJson(
      this,
    );
  }
}

abstract class _ArtistModel implements ArtistModel {
  factory _ArtistModel(final int place, final String name, final String bio,
      final List<TopSongsModel> topSongs) = _$ArtistModelImpl;

  factory _ArtistModel.fromJson(Map<String, dynamic> json) =
      _$ArtistModelImpl.fromJson;

  @override
  int get place;
  @override
  String get name;
  @override
  String get bio;
  @override
  List<TopSongsModel> get topSongs;
  @override
  @JsonKey(ignore: true)
  _$$ArtistModelImplCopyWith<_$ArtistModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopSongsModel _$TopSongsModelFromJson(Map<String, dynamic> json) {
  return _TopSongsModel.fromJson(json);
}

/// @nodoc
mixin _$TopSongsModel {
  String get title => throw _privateConstructorUsedError;
  int get views => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopSongsModelCopyWith<TopSongsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopSongsModelCopyWith<$Res> {
  factory $TopSongsModelCopyWith(
          TopSongsModel value, $Res Function(TopSongsModel) then) =
      _$TopSongsModelCopyWithImpl<$Res, TopSongsModel>;
  @useResult
  $Res call({String title, int views});
}

/// @nodoc
class _$TopSongsModelCopyWithImpl<$Res, $Val extends TopSongsModel>
    implements $TopSongsModelCopyWith<$Res> {
  _$TopSongsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? views = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      views: null == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopSongsModelImplCopyWith<$Res>
    implements $TopSongsModelCopyWith<$Res> {
  factory _$$TopSongsModelImplCopyWith(
          _$TopSongsModelImpl value, $Res Function(_$TopSongsModelImpl) then) =
      __$$TopSongsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, int views});
}

/// @nodoc
class __$$TopSongsModelImplCopyWithImpl<$Res>
    extends _$TopSongsModelCopyWithImpl<$Res, _$TopSongsModelImpl>
    implements _$$TopSongsModelImplCopyWith<$Res> {
  __$$TopSongsModelImplCopyWithImpl(
      _$TopSongsModelImpl _value, $Res Function(_$TopSongsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? views = null,
  }) {
    return _then(_$TopSongsModelImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopSongsModelImpl implements _TopSongsModel {
  _$TopSongsModelImpl(this.title, this.views);

  factory _$TopSongsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopSongsModelImplFromJson(json);

  @override
  final String title;
  @override
  final int views;

  @override
  String toString() {
    return 'TopSongsModel(title: $title, views: $views)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopSongsModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.views, views) || other.views == views));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, views);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopSongsModelImplCopyWith<_$TopSongsModelImpl> get copyWith =>
      __$$TopSongsModelImplCopyWithImpl<_$TopSongsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopSongsModelImplToJson(
      this,
    );
  }
}

abstract class _TopSongsModel implements TopSongsModel {
  factory _TopSongsModel(final String title, final int views) =
      _$TopSongsModelImpl;

  factory _TopSongsModel.fromJson(Map<String, dynamic> json) =
      _$TopSongsModelImpl.fromJson;

  @override
  String get title;
  @override
  int get views;
  @override
  @JsonKey(ignore: true)
  _$$TopSongsModelImplCopyWith<_$TopSongsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
