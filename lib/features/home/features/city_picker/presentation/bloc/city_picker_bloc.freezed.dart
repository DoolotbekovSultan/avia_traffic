// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_picker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CityPickerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(City from) setFrom,
    required TResult Function(City to) setTo,
    required TResult Function(City? from, City? to) setCities,
    required TResult Function() swap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(City from)? setFrom,
    TResult? Function(City to)? setTo,
    TResult? Function(City? from, City? to)? setCities,
    TResult? Function()? swap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(City from)? setFrom,
    TResult Function(City to)? setTo,
    TResult Function(City? from, City? to)? setCities,
    TResult Function()? swap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetFrom value) setFrom,
    required TResult Function(_SetTo value) setTo,
    required TResult Function(_SetCities value) setCities,
    required TResult Function(_Swap value) swap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetFrom value)? setFrom,
    TResult? Function(_SetTo value)? setTo,
    TResult? Function(_SetCities value)? setCities,
    TResult? Function(_Swap value)? swap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetFrom value)? setFrom,
    TResult Function(_SetTo value)? setTo,
    TResult Function(_SetCities value)? setCities,
    TResult Function(_Swap value)? swap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityPickerEventCopyWith<$Res> {
  factory $CityPickerEventCopyWith(
          CityPickerEvent value, $Res Function(CityPickerEvent) then) =
      _$CityPickerEventCopyWithImpl<$Res, CityPickerEvent>;
}

/// @nodoc
class _$CityPickerEventCopyWithImpl<$Res, $Val extends CityPickerEvent>
    implements $CityPickerEventCopyWith<$Res> {
  _$CityPickerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CityPickerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SetFromImplCopyWith<$Res> {
  factory _$$SetFromImplCopyWith(
          _$SetFromImpl value, $Res Function(_$SetFromImpl) then) =
      __$$SetFromImplCopyWithImpl<$Res>;
  @useResult
  $Res call({City from});

  $CityCopyWith<$Res> get from;
}

/// @nodoc
class __$$SetFromImplCopyWithImpl<$Res>
    extends _$CityPickerEventCopyWithImpl<$Res, _$SetFromImpl>
    implements _$$SetFromImplCopyWith<$Res> {
  __$$SetFromImplCopyWithImpl(
      _$SetFromImpl _value, $Res Function(_$SetFromImpl) _then)
      : super(_value, _then);

  /// Create a copy of CityPickerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
  }) {
    return _then(_$SetFromImpl(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as City,
    ));
  }

  /// Create a copy of CityPickerEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res> get from {
    return $CityCopyWith<$Res>(_value.from, (value) {
      return _then(_value.copyWith(from: value));
    });
  }
}

/// @nodoc

class _$SetFromImpl implements _SetFrom {
  const _$SetFromImpl({required this.from});

  @override
  final City from;

  @override
  String toString() {
    return 'CityPickerEvent.setFrom(from: $from)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetFromImpl &&
            (identical(other.from, from) || other.from == from));
  }

  @override
  int get hashCode => Object.hash(runtimeType, from);

  /// Create a copy of CityPickerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetFromImplCopyWith<_$SetFromImpl> get copyWith =>
      __$$SetFromImplCopyWithImpl<_$SetFromImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(City from) setFrom,
    required TResult Function(City to) setTo,
    required TResult Function(City? from, City? to) setCities,
    required TResult Function() swap,
  }) {
    return setFrom(from);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(City from)? setFrom,
    TResult? Function(City to)? setTo,
    TResult? Function(City? from, City? to)? setCities,
    TResult? Function()? swap,
  }) {
    return setFrom?.call(from);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(City from)? setFrom,
    TResult Function(City to)? setTo,
    TResult Function(City? from, City? to)? setCities,
    TResult Function()? swap,
    required TResult orElse(),
  }) {
    if (setFrom != null) {
      return setFrom(from);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetFrom value) setFrom,
    required TResult Function(_SetTo value) setTo,
    required TResult Function(_SetCities value) setCities,
    required TResult Function(_Swap value) swap,
  }) {
    return setFrom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetFrom value)? setFrom,
    TResult? Function(_SetTo value)? setTo,
    TResult? Function(_SetCities value)? setCities,
    TResult? Function(_Swap value)? swap,
  }) {
    return setFrom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetFrom value)? setFrom,
    TResult Function(_SetTo value)? setTo,
    TResult Function(_SetCities value)? setCities,
    TResult Function(_Swap value)? swap,
    required TResult orElse(),
  }) {
    if (setFrom != null) {
      return setFrom(this);
    }
    return orElse();
  }
}

abstract class _SetFrom implements CityPickerEvent {
  const factory _SetFrom({required final City from}) = _$SetFromImpl;

  City get from;

  /// Create a copy of CityPickerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetFromImplCopyWith<_$SetFromImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetToImplCopyWith<$Res> {
  factory _$$SetToImplCopyWith(
          _$SetToImpl value, $Res Function(_$SetToImpl) then) =
      __$$SetToImplCopyWithImpl<$Res>;
  @useResult
  $Res call({City to});

  $CityCopyWith<$Res> get to;
}

/// @nodoc
class __$$SetToImplCopyWithImpl<$Res>
    extends _$CityPickerEventCopyWithImpl<$Res, _$SetToImpl>
    implements _$$SetToImplCopyWith<$Res> {
  __$$SetToImplCopyWithImpl(
      _$SetToImpl _value, $Res Function(_$SetToImpl) _then)
      : super(_value, _then);

  /// Create a copy of CityPickerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? to = null,
  }) {
    return _then(_$SetToImpl(
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as City,
    ));
  }

  /// Create a copy of CityPickerEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res> get to {
    return $CityCopyWith<$Res>(_value.to, (value) {
      return _then(_value.copyWith(to: value));
    });
  }
}

/// @nodoc

class _$SetToImpl implements _SetTo {
  const _$SetToImpl({required this.to});

  @override
  final City to;

  @override
  String toString() {
    return 'CityPickerEvent.setTo(to: $to)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetToImpl &&
            (identical(other.to, to) || other.to == to));
  }

  @override
  int get hashCode => Object.hash(runtimeType, to);

  /// Create a copy of CityPickerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetToImplCopyWith<_$SetToImpl> get copyWith =>
      __$$SetToImplCopyWithImpl<_$SetToImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(City from) setFrom,
    required TResult Function(City to) setTo,
    required TResult Function(City? from, City? to) setCities,
    required TResult Function() swap,
  }) {
    return setTo(to);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(City from)? setFrom,
    TResult? Function(City to)? setTo,
    TResult? Function(City? from, City? to)? setCities,
    TResult? Function()? swap,
  }) {
    return setTo?.call(to);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(City from)? setFrom,
    TResult Function(City to)? setTo,
    TResult Function(City? from, City? to)? setCities,
    TResult Function()? swap,
    required TResult orElse(),
  }) {
    if (setTo != null) {
      return setTo(to);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetFrom value) setFrom,
    required TResult Function(_SetTo value) setTo,
    required TResult Function(_SetCities value) setCities,
    required TResult Function(_Swap value) swap,
  }) {
    return setTo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetFrom value)? setFrom,
    TResult? Function(_SetTo value)? setTo,
    TResult? Function(_SetCities value)? setCities,
    TResult? Function(_Swap value)? swap,
  }) {
    return setTo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetFrom value)? setFrom,
    TResult Function(_SetTo value)? setTo,
    TResult Function(_SetCities value)? setCities,
    TResult Function(_Swap value)? swap,
    required TResult orElse(),
  }) {
    if (setTo != null) {
      return setTo(this);
    }
    return orElse();
  }
}

abstract class _SetTo implements CityPickerEvent {
  const factory _SetTo({required final City to}) = _$SetToImpl;

  City get to;

  /// Create a copy of CityPickerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetToImplCopyWith<_$SetToImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetCitiesImplCopyWith<$Res> {
  factory _$$SetCitiesImplCopyWith(
          _$SetCitiesImpl value, $Res Function(_$SetCitiesImpl) then) =
      __$$SetCitiesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({City? from, City? to});

  $CityCopyWith<$Res>? get from;
  $CityCopyWith<$Res>? get to;
}

/// @nodoc
class __$$SetCitiesImplCopyWithImpl<$Res>
    extends _$CityPickerEventCopyWithImpl<$Res, _$SetCitiesImpl>
    implements _$$SetCitiesImplCopyWith<$Res> {
  __$$SetCitiesImplCopyWithImpl(
      _$SetCitiesImpl _value, $Res Function(_$SetCitiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of CityPickerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_$SetCitiesImpl(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as City?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as City?,
    ));
  }

  /// Create a copy of CityPickerEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res>? get from {
    if (_value.from == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_value.from!, (value) {
      return _then(_value.copyWith(from: value));
    });
  }

  /// Create a copy of CityPickerEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res>? get to {
    if (_value.to == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_value.to!, (value) {
      return _then(_value.copyWith(to: value));
    });
  }
}

/// @nodoc

class _$SetCitiesImpl implements _SetCities {
  const _$SetCitiesImpl({this.from, this.to});

  @override
  final City? from;
  @override
  final City? to;

  @override
  String toString() {
    return 'CityPickerEvent.setCities(from: $from, to: $to)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetCitiesImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @override
  int get hashCode => Object.hash(runtimeType, from, to);

  /// Create a copy of CityPickerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetCitiesImplCopyWith<_$SetCitiesImpl> get copyWith =>
      __$$SetCitiesImplCopyWithImpl<_$SetCitiesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(City from) setFrom,
    required TResult Function(City to) setTo,
    required TResult Function(City? from, City? to) setCities,
    required TResult Function() swap,
  }) {
    return setCities(from, to);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(City from)? setFrom,
    TResult? Function(City to)? setTo,
    TResult? Function(City? from, City? to)? setCities,
    TResult? Function()? swap,
  }) {
    return setCities?.call(from, to);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(City from)? setFrom,
    TResult Function(City to)? setTo,
    TResult Function(City? from, City? to)? setCities,
    TResult Function()? swap,
    required TResult orElse(),
  }) {
    if (setCities != null) {
      return setCities(from, to);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetFrom value) setFrom,
    required TResult Function(_SetTo value) setTo,
    required TResult Function(_SetCities value) setCities,
    required TResult Function(_Swap value) swap,
  }) {
    return setCities(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetFrom value)? setFrom,
    TResult? Function(_SetTo value)? setTo,
    TResult? Function(_SetCities value)? setCities,
    TResult? Function(_Swap value)? swap,
  }) {
    return setCities?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetFrom value)? setFrom,
    TResult Function(_SetTo value)? setTo,
    TResult Function(_SetCities value)? setCities,
    TResult Function(_Swap value)? swap,
    required TResult orElse(),
  }) {
    if (setCities != null) {
      return setCities(this);
    }
    return orElse();
  }
}

abstract class _SetCities implements CityPickerEvent {
  const factory _SetCities({final City? from, final City? to}) =
      _$SetCitiesImpl;

  City? get from;
  City? get to;

  /// Create a copy of CityPickerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetCitiesImplCopyWith<_$SetCitiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SwapImplCopyWith<$Res> {
  factory _$$SwapImplCopyWith(
          _$SwapImpl value, $Res Function(_$SwapImpl) then) =
      __$$SwapImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SwapImplCopyWithImpl<$Res>
    extends _$CityPickerEventCopyWithImpl<$Res, _$SwapImpl>
    implements _$$SwapImplCopyWith<$Res> {
  __$$SwapImplCopyWithImpl(_$SwapImpl _value, $Res Function(_$SwapImpl) _then)
      : super(_value, _then);

  /// Create a copy of CityPickerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SwapImpl implements _Swap {
  const _$SwapImpl();

  @override
  String toString() {
    return 'CityPickerEvent.swap()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SwapImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(City from) setFrom,
    required TResult Function(City to) setTo,
    required TResult Function(City? from, City? to) setCities,
    required TResult Function() swap,
  }) {
    return swap();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(City from)? setFrom,
    TResult? Function(City to)? setTo,
    TResult? Function(City? from, City? to)? setCities,
    TResult? Function()? swap,
  }) {
    return swap?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(City from)? setFrom,
    TResult Function(City to)? setTo,
    TResult Function(City? from, City? to)? setCities,
    TResult Function()? swap,
    required TResult orElse(),
  }) {
    if (swap != null) {
      return swap();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetFrom value) setFrom,
    required TResult Function(_SetTo value) setTo,
    required TResult Function(_SetCities value) setCities,
    required TResult Function(_Swap value) swap,
  }) {
    return swap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetFrom value)? setFrom,
    TResult? Function(_SetTo value)? setTo,
    TResult? Function(_SetCities value)? setCities,
    TResult? Function(_Swap value)? swap,
  }) {
    return swap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetFrom value)? setFrom,
    TResult Function(_SetTo value)? setTo,
    TResult Function(_SetCities value)? setCities,
    TResult Function(_Swap value)? swap,
    required TResult orElse(),
  }) {
    if (swap != null) {
      return swap(this);
    }
    return orElse();
  }
}

abstract class _Swap implements CityPickerEvent {
  const factory _Swap() = _$SwapImpl;
}

/// @nodoc
mixin _$CityPickerState {
  City? get from => throw _privateConstructorUsedError;
  City? get to => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(City? from, City? to) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(City? from, City? to)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(City? from, City? to)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CityPickerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CityPickerStateCopyWith<CityPickerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityPickerStateCopyWith<$Res> {
  factory $CityPickerStateCopyWith(
          CityPickerState value, $Res Function(CityPickerState) then) =
      _$CityPickerStateCopyWithImpl<$Res, CityPickerState>;
  @useResult
  $Res call({City? from, City? to});

  $CityCopyWith<$Res>? get from;
  $CityCopyWith<$Res>? get to;
}

/// @nodoc
class _$CityPickerStateCopyWithImpl<$Res, $Val extends CityPickerState>
    implements $CityPickerStateCopyWith<$Res> {
  _$CityPickerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CityPickerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_value.copyWith(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as City?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as City?,
    ) as $Val);
  }

  /// Create a copy of CityPickerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res>? get from {
    if (_value.from == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_value.from!, (value) {
      return _then(_value.copyWith(from: value) as $Val);
    });
  }

  /// Create a copy of CityPickerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res>? get to {
    if (_value.to == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_value.to!, (value) {
      return _then(_value.copyWith(to: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $CityPickerStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({City? from, City? to});

  @override
  $CityCopyWith<$Res>? get from;
  @override
  $CityCopyWith<$Res>? get to;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CityPickerStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CityPickerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_$InitialImpl(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as City?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as City?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({this.from, this.to});

  @override
  final City? from;
  @override
  final City? to;

  @override
  String toString() {
    return 'CityPickerState.initial(from: $from, to: $to)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @override
  int get hashCode => Object.hash(runtimeType, from, to);

  /// Create a copy of CityPickerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(City? from, City? to) initial,
  }) {
    return initial(from, to);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(City? from, City? to)? initial,
  }) {
    return initial?.call(from, to);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(City? from, City? to)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(from, to);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CityPickerState {
  const factory _Initial({final City? from, final City? to}) = _$InitialImpl;

  @override
  City? get from;
  @override
  City? get to;

  /// Create a copy of CityPickerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
