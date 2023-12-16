// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gym_location_full.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GymLocationFull _$GymLocationFullFromJson(Map<String, dynamic> json) {
  return _GymLocationFull.fromJson(json);
}

/// @nodoc
mixin _$GymLocationFull {
  String? get locality => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get state_code => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get country_code => throw _privateConstructorUsedError;
  String? get raw => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GymLocationFullCopyWith<GymLocationFull> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GymLocationFullCopyWith<$Res> {
  factory $GymLocationFullCopyWith(
          GymLocationFull value, $Res Function(GymLocationFull) then) =
      _$GymLocationFullCopyWithImpl<$Res, GymLocationFull>;
  @useResult
  $Res call(
      {String? locality,
      String? state,
      String? state_code,
      String? country,
      String? country_code,
      String? raw});
}

/// @nodoc
class _$GymLocationFullCopyWithImpl<$Res, $Val extends GymLocationFull>
    implements $GymLocationFullCopyWith<$Res> {
  _$GymLocationFullCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locality = freezed,
    Object? state = freezed,
    Object? state_code = freezed,
    Object? country = freezed,
    Object? country_code = freezed,
    Object? raw = freezed,
  }) {
    return _then(_value.copyWith(
      locality: freezed == locality
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      state_code: freezed == state_code
          ? _value.state_code
          : state_code // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      country_code: freezed == country_code
          ? _value.country_code
          : country_code // ignore: cast_nullable_to_non_nullable
              as String?,
      raw: freezed == raw
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GymLocationFullImplCopyWith<$Res>
    implements $GymLocationFullCopyWith<$Res> {
  factory _$$GymLocationFullImplCopyWith(_$GymLocationFullImpl value,
          $Res Function(_$GymLocationFullImpl) then) =
      __$$GymLocationFullImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? locality,
      String? state,
      String? state_code,
      String? country,
      String? country_code,
      String? raw});
}

/// @nodoc
class __$$GymLocationFullImplCopyWithImpl<$Res>
    extends _$GymLocationFullCopyWithImpl<$Res, _$GymLocationFullImpl>
    implements _$$GymLocationFullImplCopyWith<$Res> {
  __$$GymLocationFullImplCopyWithImpl(
      _$GymLocationFullImpl _value, $Res Function(_$GymLocationFullImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locality = freezed,
    Object? state = freezed,
    Object? state_code = freezed,
    Object? country = freezed,
    Object? country_code = freezed,
    Object? raw = freezed,
  }) {
    return _then(_$GymLocationFullImpl(
      locality: freezed == locality
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      state_code: freezed == state_code
          ? _value.state_code
          : state_code // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      country_code: freezed == country_code
          ? _value.country_code
          : country_code // ignore: cast_nullable_to_non_nullable
              as String?,
      raw: freezed == raw
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GymLocationFullImpl implements _GymLocationFull {
  const _$GymLocationFullImpl(
      {this.locality,
      this.state,
      this.state_code,
      this.country,
      this.country_code,
      this.raw});

  factory _$GymLocationFullImpl.fromJson(Map<String, dynamic> json) =>
      _$$GymLocationFullImplFromJson(json);

  @override
  final String? locality;
  @override
  final String? state;
  @override
  final String? state_code;
  @override
  final String? country;
  @override
  final String? country_code;
  @override
  final String? raw;

  @override
  String toString() {
    return 'GymLocationFull(locality: $locality, state: $state, state_code: $state_code, country: $country, country_code: $country_code, raw: $raw)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GymLocationFullImpl &&
            (identical(other.locality, locality) ||
                other.locality == locality) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.state_code, state_code) ||
                other.state_code == state_code) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.country_code, country_code) ||
                other.country_code == country_code) &&
            (identical(other.raw, raw) || other.raw == raw));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, locality, state, state_code, country, country_code, raw);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GymLocationFullImplCopyWith<_$GymLocationFullImpl> get copyWith =>
      __$$GymLocationFullImplCopyWithImpl<_$GymLocationFullImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GymLocationFullImplToJson(
      this,
    );
  }
}

abstract class _GymLocationFull implements GymLocationFull {
  const factory _GymLocationFull(
      {final String? locality,
      final String? state,
      final String? state_code,
      final String? country,
      final String? country_code,
      final String? raw}) = _$GymLocationFullImpl;

  factory _GymLocationFull.fromJson(Map<String, dynamic> json) =
      _$GymLocationFullImpl.fromJson;

  @override
  String? get locality;
  @override
  String? get state;
  @override
  String? get state_code;
  @override
  String? get country;
  @override
  String? get country_code;
  @override
  String? get raw;
  @override
  @JsonKey(ignore: true)
  _$$GymLocationFullImplCopyWith<_$GymLocationFullImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
