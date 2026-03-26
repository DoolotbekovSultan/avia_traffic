// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'modify_personal_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ModifyPersonalParams {
  String get email;
  String? get firstName;

  /// Create a copy of ModifyPersonalParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ModifyPersonalParamsCopyWith<ModifyPersonalParams> get copyWith =>
      _$ModifyPersonalParamsCopyWithImpl<ModifyPersonalParams>(
          this as ModifyPersonalParams, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ModifyPersonalParams &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, firstName);

  @override
  String toString() {
    return 'ModifyPersonalParams(email: $email, firstName: $firstName)';
  }
}

/// @nodoc
abstract mixin class $ModifyPersonalParamsCopyWith<$Res> {
  factory $ModifyPersonalParamsCopyWith(ModifyPersonalParams value,
          $Res Function(ModifyPersonalParams) _then) =
      _$ModifyPersonalParamsCopyWithImpl;
  @useResult
  $Res call({String email, String? firstName});
}

/// @nodoc
class _$ModifyPersonalParamsCopyWithImpl<$Res>
    implements $ModifyPersonalParamsCopyWith<$Res> {
  _$ModifyPersonalParamsCopyWithImpl(this._self, this._then);

  final ModifyPersonalParams _self;
  final $Res Function(ModifyPersonalParams) _then;

  /// Create a copy of ModifyPersonalParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? firstName = freezed,
  }) {
    return _then(_self.copyWith(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ModifyPersonalParams].
extension ModifyPersonalParamsPatterns on ModifyPersonalParams {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ModifyPersonalParams value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ModifyPersonalParams() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ModifyPersonalParams value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModifyPersonalParams():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ModifyPersonalParams value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModifyPersonalParams() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String? firstName)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ModifyPersonalParams() when $default != null:
        return $default(_that.email, _that.firstName);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String? firstName) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModifyPersonalParams():
        return $default(_that.email, _that.firstName);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String? firstName)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModifyPersonalParams() when $default != null:
        return $default(_that.email, _that.firstName);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ModifyPersonalParams implements ModifyPersonalParams {
  const _ModifyPersonalParams({required this.email, this.firstName});

  @override
  final String email;
  @override
  final String? firstName;

  /// Create a copy of ModifyPersonalParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ModifyPersonalParamsCopyWith<_ModifyPersonalParams> get copyWith =>
      __$ModifyPersonalParamsCopyWithImpl<_ModifyPersonalParams>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ModifyPersonalParams &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, firstName);

  @override
  String toString() {
    return 'ModifyPersonalParams(email: $email, firstName: $firstName)';
  }
}

/// @nodoc
abstract mixin class _$ModifyPersonalParamsCopyWith<$Res>
    implements $ModifyPersonalParamsCopyWith<$Res> {
  factory _$ModifyPersonalParamsCopyWith(_ModifyPersonalParams value,
          $Res Function(_ModifyPersonalParams) _then) =
      __$ModifyPersonalParamsCopyWithImpl;
  @override
  @useResult
  $Res call({String email, String? firstName});
}

/// @nodoc
class __$ModifyPersonalParamsCopyWithImpl<$Res>
    implements _$ModifyPersonalParamsCopyWith<$Res> {
  __$ModifyPersonalParamsCopyWithImpl(this._self, this._then);

  final _ModifyPersonalParams _self;
  final $Res Function(_ModifyPersonalParams) _then;

  /// Create a copy of ModifyPersonalParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? firstName = freezed,
  }) {
    return _then(_ModifyPersonalParams(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
