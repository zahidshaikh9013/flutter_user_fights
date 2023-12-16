// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UsersResponseImpl _$$UsersResponseImplFromJson(Map<String, dynamic> json) =>
    _$UsersResponseImpl(
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      count: json['count'] as int,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => Results.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$UsersResponseImplToJson(_$UsersResponseImpl instance) =>
    <String, dynamic>{
      'next': instance.next,
      'previous': instance.previous,
      'count': instance.count,
      'results': instance.results,
    };
