// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'counter_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CounterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() numberIncreaseEvent,
    required TResult Function() numberDecreaseEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? numberIncreaseEvent,
    TResult? Function()? numberDecreaseEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? numberIncreaseEvent,
    TResult Function()? numberDecreaseEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NumberIncreaseEvent value) numberIncreaseEvent,
    required TResult Function(_NumberDecreaseEvent value) numberDecreaseEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NumberIncreaseEvent value)? numberIncreaseEvent,
    TResult? Function(_NumberDecreaseEvent value)? numberDecreaseEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NumberIncreaseEvent value)? numberIncreaseEvent,
    TResult Function(_NumberDecreaseEvent value)? numberDecreaseEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterEventCopyWith<$Res> {
  factory $CounterEventCopyWith(
          CounterEvent value, $Res Function(CounterEvent) then) =
      _$CounterEventCopyWithImpl<$Res, CounterEvent>;
}

/// @nodoc
class _$CounterEventCopyWithImpl<$Res, $Val extends CounterEvent>
    implements $CounterEventCopyWith<$Res> {
  _$CounterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NumberIncreaseEventImplCopyWith<$Res> {
  factory _$$NumberIncreaseEventImplCopyWith(_$NumberIncreaseEventImpl value,
          $Res Function(_$NumberIncreaseEventImpl) then) =
      __$$NumberIncreaseEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NumberIncreaseEventImplCopyWithImpl<$Res>
    extends _$CounterEventCopyWithImpl<$Res, _$NumberIncreaseEventImpl>
    implements _$$NumberIncreaseEventImplCopyWith<$Res> {
  __$$NumberIncreaseEventImplCopyWithImpl(_$NumberIncreaseEventImpl _value,
      $Res Function(_$NumberIncreaseEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NumberIncreaseEventImpl implements _NumberIncreaseEvent {
  const _$NumberIncreaseEventImpl();

  @override
  String toString() {
    return 'CounterEvent.numberIncreaseEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NumberIncreaseEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() numberIncreaseEvent,
    required TResult Function() numberDecreaseEvent,
  }) {
    return numberIncreaseEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? numberIncreaseEvent,
    TResult? Function()? numberDecreaseEvent,
  }) {
    return numberIncreaseEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? numberIncreaseEvent,
    TResult Function()? numberDecreaseEvent,
    required TResult orElse(),
  }) {
    if (numberIncreaseEvent != null) {
      return numberIncreaseEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NumberIncreaseEvent value) numberIncreaseEvent,
    required TResult Function(_NumberDecreaseEvent value) numberDecreaseEvent,
  }) {
    return numberIncreaseEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NumberIncreaseEvent value)? numberIncreaseEvent,
    TResult? Function(_NumberDecreaseEvent value)? numberDecreaseEvent,
  }) {
    return numberIncreaseEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NumberIncreaseEvent value)? numberIncreaseEvent,
    TResult Function(_NumberDecreaseEvent value)? numberDecreaseEvent,
    required TResult orElse(),
  }) {
    if (numberIncreaseEvent != null) {
      return numberIncreaseEvent(this);
    }
    return orElse();
  }
}

abstract class _NumberIncreaseEvent implements CounterEvent {
  const factory _NumberIncreaseEvent() = _$NumberIncreaseEventImpl;
}

/// @nodoc
abstract class _$$NumberDecreaseEventImplCopyWith<$Res> {
  factory _$$NumberDecreaseEventImplCopyWith(_$NumberDecreaseEventImpl value,
          $Res Function(_$NumberDecreaseEventImpl) then) =
      __$$NumberDecreaseEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NumberDecreaseEventImplCopyWithImpl<$Res>
    extends _$CounterEventCopyWithImpl<$Res, _$NumberDecreaseEventImpl>
    implements _$$NumberDecreaseEventImplCopyWith<$Res> {
  __$$NumberDecreaseEventImplCopyWithImpl(_$NumberDecreaseEventImpl _value,
      $Res Function(_$NumberDecreaseEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NumberDecreaseEventImpl implements _NumberDecreaseEvent {
  const _$NumberDecreaseEventImpl();

  @override
  String toString() {
    return 'CounterEvent.numberDecreaseEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NumberDecreaseEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() numberIncreaseEvent,
    required TResult Function() numberDecreaseEvent,
  }) {
    return numberDecreaseEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? numberIncreaseEvent,
    TResult? Function()? numberDecreaseEvent,
  }) {
    return numberDecreaseEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? numberIncreaseEvent,
    TResult Function()? numberDecreaseEvent,
    required TResult orElse(),
  }) {
    if (numberDecreaseEvent != null) {
      return numberDecreaseEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NumberIncreaseEvent value) numberIncreaseEvent,
    required TResult Function(_NumberDecreaseEvent value) numberDecreaseEvent,
  }) {
    return numberDecreaseEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NumberIncreaseEvent value)? numberIncreaseEvent,
    TResult? Function(_NumberDecreaseEvent value)? numberDecreaseEvent,
  }) {
    return numberDecreaseEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NumberIncreaseEvent value)? numberIncreaseEvent,
    TResult Function(_NumberDecreaseEvent value)? numberDecreaseEvent,
    required TResult orElse(),
  }) {
    if (numberDecreaseEvent != null) {
      return numberDecreaseEvent(this);
    }
    return orElse();
  }
}

abstract class _NumberDecreaseEvent implements CounterEvent {
  const factory _NumberDecreaseEvent() = _$NumberDecreaseEventImpl;
}
