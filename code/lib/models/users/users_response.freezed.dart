// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UsersResponse _$UsersResponseFromJson(Map<String, dynamic> json) {
  return _UsersResponse.fromJson(json);
}

/// @nodoc
mixin _$UsersResponse {
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  List<Results> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsersResponseCopyWith<UsersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersResponseCopyWith<$Res> {
  factory $UsersResponseCopyWith(
          UsersResponse value, $Res Function(UsersResponse) then) =
      _$UsersResponseCopyWithImpl<$Res, UsersResponse>;
  @useResult
  $Res call({String? next, String? previous, int count, List<Results> results});
}

/// @nodoc
class _$UsersResponseCopyWithImpl<$Res, $Val extends UsersResponse>
    implements $UsersResponseCopyWith<$Res> {
  _$UsersResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? next = freezed,
    Object? previous = freezed,
    Object? count = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsersResponseImplCopyWith<$Res>
    implements $UsersResponseCopyWith<$Res> {
  factory _$$UsersResponseImplCopyWith(
          _$UsersResponseImpl value, $Res Function(_$UsersResponseImpl) then) =
      __$$UsersResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? next, String? previous, int count, List<Results> results});
}

/// @nodoc
class __$$UsersResponseImplCopyWithImpl<$Res>
    extends _$UsersResponseCopyWithImpl<$Res, _$UsersResponseImpl>
    implements _$$UsersResponseImplCopyWith<$Res> {
  __$$UsersResponseImplCopyWithImpl(
      _$UsersResponseImpl _value, $Res Function(_$UsersResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? next = freezed,
    Object? previous = freezed,
    Object? count = null,
    Object? results = null,
  }) {
    return _then(_$UsersResponseImpl(
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UsersResponseImpl
    with DiagnosticableTreeMixin
    implements _UsersResponse {
  const _$UsersResponseImpl(
      {this.next,
      this.previous,
      required this.count,
      final List<Results> results = const []})
      : _results = results;

  factory _$UsersResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsersResponseImplFromJson(json);

  @override
  final String? next;
  @override
  final String? previous;
  @override
  final int count;
  final List<Results> _results;
  @override
  @JsonKey()
  List<Results> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UsersResponse(next: $next, previous: $previous, count: $count, results: $results)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UsersResponse'))
      ..add(DiagnosticsProperty('next', next))
      ..add(DiagnosticsProperty('previous', previous))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('results', results));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersResponseImpl &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, next, previous, count,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersResponseImplCopyWith<_$UsersResponseImpl> get copyWith =>
      __$$UsersResponseImplCopyWithImpl<_$UsersResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsersResponseImplToJson(
      this,
    );
  }
}

abstract class _UsersResponse implements UsersResponse {
  const factory _UsersResponse(
      {final String? next,
      final String? previous,
      required final int count,
      final List<Results> results}) = _$UsersResponseImpl;

  factory _UsersResponse.fromJson(Map<String, dynamic> json) =
      _$UsersResponseImpl.fromJson;

  @override
  String? get next;
  @override
  String? get previous;
  @override
  int get count;
  @override
  List<Results> get results;
  @override
  @JsonKey(ignore: true)
  _$$UsersResponseImplCopyWith<_$UsersResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
