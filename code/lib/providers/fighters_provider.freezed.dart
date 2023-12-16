// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fighters_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FighterUsersState {
  int get page => throw _privateConstructorUsedError;
  List<Results> get posts => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadMoreError => throw _privateConstructorUsedError;
  bool get isLoadMoreDone => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FighterUsersStateCopyWith<FighterUsersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FighterUsersStateCopyWith<$Res> {
  factory $FighterUsersStateCopyWith(
          FighterUsersState value, $Res Function(FighterUsersState) then) =
      _$FighterUsersStateCopyWithImpl<$Res, FighterUsersState>;
  @useResult
  $Res call(
      {int page,
      List<Results> posts,
      bool isLoading,
      bool isLoadMoreError,
      bool isLoadMoreDone});
}

/// @nodoc
class _$FighterUsersStateCopyWithImpl<$Res, $Val extends FighterUsersState>
    implements $FighterUsersStateCopyWith<$Res> {
  _$FighterUsersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? posts = null,
    Object? isLoading = null,
    Object? isLoadMoreError = null,
    Object? isLoadMoreDone = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Results>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadMoreError: null == isLoadMoreError
          ? _value.isLoadMoreError
          : isLoadMoreError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadMoreDone: null == isLoadMoreDone
          ? _value.isLoadMoreDone
          : isLoadMoreDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FighterUsersStateImplCopyWith<$Res>
    implements $FighterUsersStateCopyWith<$Res> {
  factory _$$FighterUsersStateImplCopyWith(_$FighterUsersStateImpl value,
          $Res Function(_$FighterUsersStateImpl) then) =
      __$$FighterUsersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      List<Results> posts,
      bool isLoading,
      bool isLoadMoreError,
      bool isLoadMoreDone});
}

/// @nodoc
class __$$FighterUsersStateImplCopyWithImpl<$Res>
    extends _$FighterUsersStateCopyWithImpl<$Res, _$FighterUsersStateImpl>
    implements _$$FighterUsersStateImplCopyWith<$Res> {
  __$$FighterUsersStateImplCopyWithImpl(_$FighterUsersStateImpl _value,
      $Res Function(_$FighterUsersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? posts = null,
    Object? isLoading = null,
    Object? isLoadMoreError = null,
    Object? isLoadMoreDone = null,
  }) {
    return _then(_$FighterUsersStateImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      posts: null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Results>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadMoreError: null == isLoadMoreError
          ? _value.isLoadMoreError
          : isLoadMoreError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadMoreDone: null == isLoadMoreDone
          ? _value.isLoadMoreDone
          : isLoadMoreDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FighterUsersStateImpl extends _FighterUsersState {
  const _$FighterUsersStateImpl(
      {this.page = 1,
      required final List<Results> posts,
      this.isLoading = true,
      this.isLoadMoreError = false,
      this.isLoadMoreDone = false})
      : _posts = posts,
        super._();

  @override
  @JsonKey()
  final int page;
  final List<Results> _posts;
  @override
  List<Results> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isLoadMoreError;
  @override
  @JsonKey()
  final bool isLoadMoreDone;

  @override
  String toString() {
    return 'FighterUsersState(page: $page, posts: $posts, isLoading: $isLoading, isLoadMoreError: $isLoadMoreError, isLoadMoreDone: $isLoadMoreDone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FighterUsersStateImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._posts, _posts) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadMoreError, isLoadMoreError) ||
                other.isLoadMoreError == isLoadMoreError) &&
            (identical(other.isLoadMoreDone, isLoadMoreDone) ||
                other.isLoadMoreDone == isLoadMoreDone));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      page,
      const DeepCollectionEquality().hash(_posts),
      isLoading,
      isLoadMoreError,
      isLoadMoreDone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FighterUsersStateImplCopyWith<_$FighterUsersStateImpl> get copyWith =>
      __$$FighterUsersStateImplCopyWithImpl<_$FighterUsersStateImpl>(
          this, _$identity);
}

abstract class _FighterUsersState extends FighterUsersState {
  const factory _FighterUsersState(
      {final int page,
      required final List<Results> posts,
      final bool isLoading,
      final bool isLoadMoreError,
      final bool isLoadMoreDone}) = _$FighterUsersStateImpl;
  const _FighterUsersState._() : super._();

  @override
  int get page;
  @override
  List<Results> get posts;
  @override
  bool get isLoading;
  @override
  bool get isLoadMoreError;
  @override
  bool get isLoadMoreDone;
  @override
  @JsonKey(ignore: true)
  _$$FighterUsersStateImplCopyWith<_$FighterUsersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
