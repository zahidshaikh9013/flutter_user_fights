// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'results.dart';

// required: associates our `main.dart` with the code generated by Freezed
part 'users_response.freezed.dart';
// optional: Since our Person class is serializable, we must add this line.
// But if Person was not serializable, we could skip it.
part 'users_response.g.dart';

@freezed
class UsersResponse with _$UsersResponse {
  const factory UsersResponse({
    String? next,
    String? previous,
    required int count,
    @Default([]) List<Results> results,
  }) = _UsersResponse;

  factory UsersResponse.fromJson(Map<String, Object?> json)
  => _$UsersResponseFromJson(json);
}