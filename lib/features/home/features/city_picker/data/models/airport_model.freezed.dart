// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'airport_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AirportModel {
  int get id;
  String get name;
  @JsonKey(name: 'code_name')
  String get codeName;

  /// Create a copy of AirportModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AirportModelCopyWith<AirportModel> get copyWith =>
      _$AirportModelCopyWithImpl<AirportModel>(
          this as AirportModel, _$identity);

  /// Serializes this AirportModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AirportModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.codeName, codeName) ||
                other.codeName == codeName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, codeName);

  @override
  String toString() {
    return 'AirportModel(id: $id, name: $name, codeName: $codeName)';
  }
}

/// @nodoc
abstract mixin class $AirportModelCopyWith<$Res> {
  factory $AirportModelCopyWith(
          AirportModel value, $Res Function(AirportModel) _then) =
      _$AirportModelCopyWithImpl;
  @useResult
  $Res call({int id, String name, @JsonKey(name: 'code_name') String codeName});
}

/// @nodoc
class _$AirportModelCopyWithImpl<$Res> implements $AirportModelCopyWith<$Res> {
  _$AirportModelCopyWithImpl(this._self, this._then);

  final AirportModel _self;
  final $Res Function(AirportModel) _then;

  /// Create a copy of AirportModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? codeName = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      codeName: null == codeName
          ? _self.codeName
          : codeName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [AirportModel].
extension AirportModelPatterns on AirportModel {
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
    TResult Function(_AirportModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AirportModel() when $default != null:
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
    TResult Function(_AirportModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AirportModel():
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
    TResult? Function(_AirportModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AirportModel() when $default != null:
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
    TResult Function(
            int id, String name, @JsonKey(name: 'code_name') String codeName)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AirportModel() when $default != null:
        return $default(_that.id, _that.name, _that.codeName);
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
    TResult Function(
            int id, String name, @JsonKey(name: 'code_name') String codeName)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AirportModel():
        return $default(_that.id, _that.name, _that.codeName);
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
    TResult? Function(
            int id, String name, @JsonKey(name: 'code_name') String codeName)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AirportModel() when $default != null:
        return $default(_that.id, _that.name, _that.codeName);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AirportModel extends AirportModel {
  const _AirportModel(
      {required this.id,
      required this.name,
      @JsonKey(name: 'code_name') required this.codeName})
      : super._();
  factory _AirportModel.fromJson(Map<String, dynamic> json) =>
      _$AirportModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'code_name')
  final String codeName;

  /// Create a copy of AirportModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AirportModelCopyWith<_AirportModel> get copyWith =>
      __$AirportModelCopyWithImpl<_AirportModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AirportModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AirportModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.codeName, codeName) ||
                other.codeName == codeName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, codeName);

  @override
  String toString() {
    return 'AirportModel(id: $id, name: $name, codeName: $codeName)';
  }
}

/// @nodoc
abstract mixin class _$AirportModelCopyWith<$Res>
    implements $AirportModelCopyWith<$Res> {
  factory _$AirportModelCopyWith(
          _AirportModel value, $Res Function(_AirportModel) _then) =
      __$AirportModelCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String name, @JsonKey(name: 'code_name') String codeName});
}

/// @nodoc
class __$AirportModelCopyWithImpl<$Res>
    implements _$AirportModelCopyWith<$Res> {
  __$AirportModelCopyWithImpl(this._self, this._then);

  final _AirportModel _self;
  final $Res Function(_AirportModel) _then;

  /// Create a copy of AirportModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? codeName = null,
  }) {
    return _then(_AirportModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      codeName: null == codeName
          ? _self.codeName
          : codeName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
