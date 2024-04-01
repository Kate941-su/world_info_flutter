// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainScreenState {
  MainScreenType get screenType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainScreenStateCopyWith<MainScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainScreenStateCopyWith<$Res> {
  factory $MainScreenStateCopyWith(
          MainScreenState value, $Res Function(MainScreenState) then) =
      _$MainScreenStateCopyWithImpl<$Res, MainScreenState>;
  @useResult
  $Res call({MainScreenType screenType});

  $MainScreenTypeCopyWith<$Res> get screenType;
}

/// @nodoc
class _$MainScreenStateCopyWithImpl<$Res, $Val extends MainScreenState>
    implements $MainScreenStateCopyWith<$Res> {
  _$MainScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenType = null,
  }) {
    return _then(_value.copyWith(
      screenType: null == screenType
          ? _value.screenType
          : screenType // ignore: cast_nullable_to_non_nullable
              as MainScreenType,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MainScreenTypeCopyWith<$Res> get screenType {
    return $MainScreenTypeCopyWith<$Res>(_value.screenType, (value) {
      return _then(_value.copyWith(screenType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MainScreenTypeImplCopyWith<$Res>
    implements $MainScreenStateCopyWith<$Res> {
  factory _$$MainScreenTypeImplCopyWith(_$MainScreenTypeImpl value,
          $Res Function(_$MainScreenTypeImpl) then) =
      __$$MainScreenTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MainScreenType screenType});

  @override
  $MainScreenTypeCopyWith<$Res> get screenType;
}

/// @nodoc
class __$$MainScreenTypeImplCopyWithImpl<$Res>
    extends _$MainScreenStateCopyWithImpl<$Res, _$MainScreenTypeImpl>
    implements _$$MainScreenTypeImplCopyWith<$Res> {
  __$$MainScreenTypeImplCopyWithImpl(
      _$MainScreenTypeImpl _value, $Res Function(_$MainScreenTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenType = null,
  }) {
    return _then(_$MainScreenTypeImpl(
      screenType: null == screenType
          ? _value.screenType
          : screenType // ignore: cast_nullable_to_non_nullable
              as MainScreenType,
    ));
  }
}

/// @nodoc

class _$MainScreenTypeImpl implements _MainScreenType {
  const _$MainScreenTypeImpl({required this.screenType});

  @override
  final MainScreenType screenType;

  @override
  String toString() {
    return 'MainScreenState(screenType: $screenType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainScreenTypeImpl &&
            (identical(other.screenType, screenType) ||
                other.screenType == screenType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, screenType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainScreenTypeImplCopyWith<_$MainScreenTypeImpl> get copyWith =>
      __$$MainScreenTypeImplCopyWithImpl<_$MainScreenTypeImpl>(
          this, _$identity);
}

abstract class _MainScreenType implements MainScreenState {
  const factory _MainScreenType({required final MainScreenType screenType}) =
      _$MainScreenTypeImpl;

  @override
  MainScreenType get screenType;
  @override
  @JsonKey(ignore: true)
  _$$MainScreenTypeImplCopyWith<_$MainScreenTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainScreenType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() top,
    required TResult Function() select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? top,
    TResult? Function()? select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? top,
    TResult Function()? select,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Top value) top,
    required TResult Function(_Select value) select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Top value)? top,
    TResult? Function(_Select value)? select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Top value)? top,
    TResult Function(_Select value)? select,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainScreenTypeCopyWith<$Res> {
  factory $MainScreenTypeCopyWith(
          MainScreenType value, $Res Function(MainScreenType) then) =
      _$MainScreenTypeCopyWithImpl<$Res, MainScreenType>;
}

/// @nodoc
class _$MainScreenTypeCopyWithImpl<$Res, $Val extends MainScreenType>
    implements $MainScreenTypeCopyWith<$Res> {
  _$MainScreenTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TopImplCopyWith<$Res> {
  factory _$$TopImplCopyWith(_$TopImpl value, $Res Function(_$TopImpl) then) =
      __$$TopImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TopImplCopyWithImpl<$Res>
    extends _$MainScreenTypeCopyWithImpl<$Res, _$TopImpl>
    implements _$$TopImplCopyWith<$Res> {
  __$$TopImplCopyWithImpl(_$TopImpl _value, $Res Function(_$TopImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TopImpl extends _Top {
  const _$TopImpl() : super._();

  @override
  String toString() {
    return 'MainScreenType.top()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TopImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() top,
    required TResult Function() select,
  }) {
    return top();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? top,
    TResult? Function()? select,
  }) {
    return top?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? top,
    TResult Function()? select,
    required TResult orElse(),
  }) {
    if (top != null) {
      return top();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Top value) top,
    required TResult Function(_Select value) select,
  }) {
    return top(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Top value)? top,
    TResult? Function(_Select value)? select,
  }) {
    return top?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Top value)? top,
    TResult Function(_Select value)? select,
    required TResult orElse(),
  }) {
    if (top != null) {
      return top(this);
    }
    return orElse();
  }
}

abstract class _Top extends MainScreenType {
  const factory _Top() = _$TopImpl;
  const _Top._() : super._();
}

/// @nodoc
abstract class _$$SelectImplCopyWith<$Res> {
  factory _$$SelectImplCopyWith(
          _$SelectImpl value, $Res Function(_$SelectImpl) then) =
      __$$SelectImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SelectImplCopyWithImpl<$Res>
    extends _$MainScreenTypeCopyWithImpl<$Res, _$SelectImpl>
    implements _$$SelectImplCopyWith<$Res> {
  __$$SelectImplCopyWithImpl(
      _$SelectImpl _value, $Res Function(_$SelectImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SelectImpl extends _Select {
  const _$SelectImpl() : super._();

  @override
  String toString() {
    return 'MainScreenType.select()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SelectImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() top,
    required TResult Function() select,
  }) {
    return select();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? top,
    TResult? Function()? select,
  }) {
    return select?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? top,
    TResult Function()? select,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Top value) top,
    required TResult Function(_Select value) select,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Top value)? top,
    TResult? Function(_Select value)? select,
  }) {
    return select?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Top value)? top,
    TResult Function(_Select value)? select,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class _Select extends MainScreenType {
  const factory _Select() = _$SelectImpl;
  const _Select._() : super._();
}
