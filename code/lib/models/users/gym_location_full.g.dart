// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gym_location_full.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GymLocationFullImpl _$$GymLocationFullImplFromJson(
        Map<String, dynamic> json) =>
    _$GymLocationFullImpl(
      locality: json['locality'] as String?,
      state: json['state'] as String?,
      state_code: json['state_code'] as String?,
      country: json['country'] as String?,
      country_code: json['country_code'] as String?,
      raw: json['raw'] as String?,
    );

Map<String, dynamic> _$$GymLocationFullImplToJson(
        _$GymLocationFullImpl instance) =>
    <String, dynamic>{
      'locality': instance.locality,
      'state': instance.state,
      'state_code': instance.state_code,
      'country': instance.country,
      'country_code': instance.country_code,
      'raw': instance.raw,
    };
