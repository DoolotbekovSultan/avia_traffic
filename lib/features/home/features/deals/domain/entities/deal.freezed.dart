// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Deal {
  int get id => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get codeTo => throw _privateConstructorUsedError;
  String get codeFrom => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DealCopyWith<Deal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealCopyWith<$Res> {
  factory $DealCopyWith(Deal value, $Res Function(Deal) then) =
      _$DealCopyWithImpl<$Res, Deal>;
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
class _$DealCopyWithImpl<$Res, $Val extends Deal>
    implements $DealCopyWith<$Res> {
  _$DealCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      codeTo: null == codeTo
          ? _value.codeTo
          : codeTo // ignore: cast_nullable_to_non_nullable
              as String,
      codeFrom: null == codeFrom
          ? _value.codeFrom
          : codeFrom // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DealImplCopyWith<$Res> implements $DealCopyWith<$Res> {
  factory _$$DealImplCopyWith(
          _$DealImpl value, $Res Function(_$DealImpl) then) =
      __$$DealImplCopyWithImpl<$Res>;
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
class __$$DealImplCopyWithImpl<$Res>
    extends _$DealCopyWithImpl<$Res, _$DealImpl>
    implements _$$DealImplCopyWith<$Res> {
  __$$DealImplCopyWithImpl(_$DealImpl _value, $Res Function(_$DealImpl) _then)
      : super(_value, _then);

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
    return _then(_$DealImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      codeTo: null == codeTo
          ? _value.codeTo
          : codeTo // ignore: cast_nullable_to_non_nullable
              as String,
      codeFrom: null == codeFrom
          ? _value.codeFrom
          : codeFrom // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DealImpl implements _Deal {
  const _$DealImpl(
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

  @override
  String toString() {
    return 'Deal(id: $id, language: $language, codeTo: $codeTo, codeFrom: $codeFrom, slug: $slug, imageUrl: $imageUrl, title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DealImpl &&
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

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DealImplCopyWith<_$DealImpl> get copyWith =>
      __$$DealImplCopyWithImpl<_$DealImpl>(this, _$identity);
}

abstract class _Deal implements Deal {
  const factory _Deal(
      {required final int id,
      required final String language,
      required final String codeTo,
      required final String codeFrom,
      required final String slug,
      required final String imageUrl,
      required final String title,
      required final String description}) = _$DealImpl;

  @override
  int get id;
  @override
  String get language;
  @override
  String get codeTo;
  @override
  String get codeFrom;
  @override
  String get slug;
  @override
  String get imageUrl;
  @override
  String get title;
  @override
  String get description;

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DealImplCopyWith<_$DealImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
