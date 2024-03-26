// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_screen_state_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainScreenStateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() screenStateChangeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? screenStateChangeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? screenStateChangeEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScreenStateChangeEvent value)
        screenStateChangeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScreenStateChangeEvent value)? screenStateChangeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScreenStateChangeEvent value)? screenStateChangeEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainScreenStateEventCopyWith<$Res> {
  factory $MainScreenStateEventCopyWith(MainScreenStateEvent value,
          $Res Function(MainScreenStateEvent) then) =
      _$MainScreenStateEventCopyWithImpl<$Res, MainScreenStateEvent>;
}

/// @nodoc
class _$MainScreenStateEventCopyWithImpl<$Res,
        $Val extends MainScreenStateEvent>
    implements $MainScreenStateEventCopyWith<$Res> {
  _$MainScreenStateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ScreenStateChangeEventImplCopyWith<$Res> {
  factory _$$ScreenStateChangeEventImplCopyWith(
          _$ScreenStateChangeEventImpl value,
          $Res Function(_$ScreenStateChangeEventImpl) then) =
      __$$ScreenStateChangeEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScreenStateChangeEventImplCopyWithImpl<$Res>
    extends _$MainScreenStateEventCopyWithImpl<$Res,
        _$ScreenStateChangeEventImpl>
    implements _$$ScreenStateChangeEventImplCopyWith<$Res> {
  __$$ScreenStateChangeEventImplCopyWithImpl(
      _$ScreenStateChangeEventImpl _value,
      $Res Function(_$ScreenStateChangeEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ScreenStateChangeEventImpl implements _ScreenStateChangeEvent {
  const _$ScreenStateChangeEventImpl();

  @override
  String toString() {
    return 'MainScreenStateEvent.screenStateChangeEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScreenStateChangeEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() screenStateChangeEvent,
  }) {
    return screenStateChangeEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? screenStateChangeEvent,
  }) {
    return screenStateChangeEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? screenStateChangeEvent,
    required TResult orElse(),
  }) {
    if (screenStateChangeEvent != null) {
      return screenStateChangeEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScreenStateChangeEvent value)
        screenStateChangeEvent,
  }) {
    return screenStateChangeEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScreenStateChangeEvent value)? screenStateChangeEvent,
  }) {
    return screenStateChangeEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScreenStateChangeEvent value)? screenStateChangeEvent,
    required TResult orElse(),
  }) {
    if (screenStateChangeEvent != null) {
      return screenStateChangeEvent(this);
    }
    return orElse();
  }
}

abstract class _ScreenStateChangeEvent implements MainScreenStateEvent {
  const factory _ScreenStateChangeEvent() = _$ScreenStateChangeEventImpl;
}
