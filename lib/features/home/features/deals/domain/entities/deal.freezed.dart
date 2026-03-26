// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Deal {
  int get id;
  String get language;
  String get codeTo;
  String get codeFrom;
  String get slug;
  String get imageUrl;
  String get title;
  String get description;

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DealCopyWith<Deal> get copyWith =>
      _$DealCopyWithImpl<Deal>(this as Deal, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Deal &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.codeTo, codeTo) || other.codeTo == codeTo) &&
            (identical(other.codeFrom, codeFrom) ||
                other.codeFrom == codeFrom) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, language, codeTo, codeFrom,
      slug, imageUrl, title, description);

  @override
  String toString() {
    return 'Deal(id: $id, language: $language, codeTo: $codeTo, codeFrom: $codeFrom, slug: $slug, imageUrl: $imageUrl, title: $title, description: $description)';
  }
}

/// @nodoc
abstract mixin class $DealCopyWith<$Res> {
  factory $DealCopyWith(Deal value, $Res Function(Deal) _then) =
      _$DealCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String language,
      String codeTo,
      String codeFrom,
      String slug,
      String imageUrl,
      String title,
      String description});
}

/// @nodoc
class _$DealCopyWithImpl<$Res> implements $DealCopyWith<$Res> {
  _$DealCopyWithImpl(this._self, this._then);

  final Deal _self;
  final $Res Function(Deal) _then;

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? language = null,
    Object? codeTo = null,
    Object? codeFrom = null,
    Object? slug = null,
    Object? imageUrl = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      language: null == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      codeTo: null == codeTo
          ? _self.codeTo
          : codeTo // ignore: cast_nullable_to_non_nullable
              as String,
      codeFrom: null == codeFrom
          ? _self.codeFrom
          : codeFrom // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _self.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [Deal].
extension DealPatterns on Deal {
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
    TResult Function(_Deal value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Deal() when $default != null:
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
    TResult Function(_Deal value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Deal():
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
    TResult? Function(_Deal value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Deal() when $default != null:
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
    TResult Function(int id, String language, String codeTo, String codeFrom,
            String slug, String imageUrl, String title, String description)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Deal() when $default != null:
        return $default(_that.id, _that.language, _that.codeTo, _that.codeFrom,
            _that.slug, _that.imageUrl, _that.title, _that.description);
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
    TResult Function(int id, String language, String codeTo, String codeFrom,
            String slug, String imageUrl, String title, String description)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Deal():
        return $default(_that.id, _that.language, _that.codeTo, _that.codeFrom,
            _that.slug, _that.imageUrl, _that.title, _that.description);
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
    TResult? Function(int id, String language, String codeTo, String codeFrom,
            String slug, String imageUrl, String title, String description)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Deal() when $default != null:
        return $default(_that.id, _that.language, _that.codeTo, _that.codeFrom,
            _that.slug, _that.imageUrl, _that.title, _that.description);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Deal implements Deal {
  const _Deal(
      {required this.id,
      required this.language,
      required this.codeTo,
      required this.codeFrom,
      required this.slug,
      required this.imageUrl,
      required this.title,
      required this.description});

  @override
  final int id;
  @override
  final String language;
  @override
  final String codeTo;
  @override
  final String codeFrom;
  @override
  final String slug;
  @override
  final String imageUrl;
  @override
  final String title;
  @override
  final String description;

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DealCopyWith<_Deal> get copyWith =>
      __$DealCopyWithImpl<_Deal>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Deal &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.codeTo, codeTo) || other.codeTo == codeTo) &&
            (identical(other.codeFrom, codeFrom) ||
                other.codeFrom == codeFrom) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, language, codeTo, codeFrom,
      slug, imageUrl, title, description);

  @override
  String toString() {
    return 'Deal(id: $id, language: $language, codeTo: $codeTo, codeFrom: $codeFrom, slug: $slug, imageUrl: $imageUrl, title: $title, description: $description)';
  }
}

/// @nodoc
abstract mixin class _$DealCopyWith<$Res> implements $DealCopyWith<$Res> {
  factory _$DealCopyWith(_Deal value, $Res Function(_Deal) _then) =
      __$DealCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String language,
      String codeTo,
      String codeFrom,
      String slug,
      String imageUrl,
      String title,
      String description});
}

/// @nodoc
class __$DealCopyWithImpl<$Res> implements _$DealCopyWith<$Res> {
  __$DealCopyWithImpl(this._self, this._then);

  final _Deal _self;
  final $Res Function(_Deal) _then;

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? language = null,
    Object? codeTo = null,
    Object? codeFrom = null,
    Object? slug = null,
    Object? imageUrl = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_Deal(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      language: null == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      codeTo: null == codeTo
          ? _self.codeTo
          : codeTo // ignore: cast_nullable_to_non_nullable
              as String,
      codeFrom: null == codeFrom
          ? _self.codeFrom
          : codeFrom // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _self.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
