// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResultsImpl _$$ResultsImplFromJson(Map<String, dynamic> json) =>
    _$ResultsImpl(
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      usa_boxing_id: json['usa_boxing_id'] as String?,
      gender: json['gender'] as String?,
      weight: json['weight'] as String?,
      date_of_birth: json['date_of_birth'] as String?,
      number_of_fights: json['number_of_fights'] as num?,
      team_id: json['team_id'] as num?,
      gym_name: json['gym_name'] as String?,
      picture_thumb: json['picture_thumb'] as String?,
      is_boxer: json['is_boxer'] as bool?,
      is_coach: json['is_coach'] as bool?,
      is_official: json['is_official'] as bool?,
      is_matchmaker: json['is_matchmaker'] as bool?,
      is_managed_account: json['is_managed_account'] as bool?,
      id: json['id'] as num?,
      gymLocationFull: json['gymLocationFull'] == null
          ? null
          : GymLocationFull.fromJson(
              json['gymLocationFull'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResultsImplToJson(_$ResultsImpl instance) =>
    <String, dynamic>{
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'usa_boxing_id': instance.usa_boxing_id,
      'gender': instance.gender,
      'weight': instance.weight,
      'date_of_birth': instance.date_of_birth,
      'number_of_fights': instance.number_of_fights,
      'team_id': instance.team_id,
      'gym_name': instance.gym_name,
      'picture_thumb': instance.picture_thumb,
      'is_boxer': instance.is_boxer,
      'is_coach': instance.is_coach,
      'is_official': instance.is_official,
      'is_matchmaker': instance.is_matchmaker,
      'is_managed_account': instance.is_managed_account,
      'id': instance.id,
      'gymLocationFull': instance.gymLocationFull,
    };
