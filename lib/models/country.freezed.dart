// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Country {
  String get name => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  Region get region => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CountryCopyWith<Country> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryCopyWith<$Res> {
  factory $CountryCopyWith(Country value, $Res Function(Country) then) =
      _$CountryCopyWithImpl<$Res, Country>;
  @useResult
  $Res call({String name, String path, Region region, bool isFavorite});
}

/// @nodoc
class _$CountryCopyWithImpl<$Res, $Val extends Country>
    implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? path = null,
    Object? region = null,
    Object? isFavorite = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as Region,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountryImplCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$$CountryImplCopyWith(
          _$CountryImpl value, $Res Function(_$CountryImpl) then) =
      __$$CountryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String path, Region region, bool isFavorite});
}

/// @nodoc
class __$$CountryImplCopyWithImpl<$Res>
    extends _$CountryCopyWithImpl<$Res, _$CountryImpl>
    implements _$$CountryImplCopyWith<$Res> {
  __$$CountryImplCopyWithImpl(
      _$CountryImpl _value, $Res Function(_$CountryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? path = null,
    Object? region = null,
    Object? isFavorite = null,
  }) {
    return _then(_$CountryImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as Region,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CountryImpl implements _Country {
  const _$CountryImpl(
      {required this.name,
      required this.path,
      required this.region,
      this.isFavorite = false});

  @override
  final String name;
  @override
  final String path;
  @override
  final Region region;
  @override
  @JsonKey()
  final bool isFavorite;

  @override
  String toString() {
    return 'Country(name: $name, path: $path, region: $region, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, path, region, isFavorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryImplCopyWith<_$CountryImpl> get copyWith =>
      __$$CountryImplCopyWithImpl<_$CountryImpl>(this, _$identity);
}

abstract class _Country implements Country {
  const factory _Country(
      {required final String name,
      required final String path,
      required final Region region,
      final bool isFavorite}) = _$CountryImpl;

  @override
  String get name;
  @override
  String get path;
  @override
  Region get region;
  @override
  bool get isFavorite;
  @override
  @JsonKey(ignore: true)
  _$$CountryImplCopyWith<_$CountryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
