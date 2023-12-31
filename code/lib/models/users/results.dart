// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';

import 'gym_location_full.dart';

// required: associates our `main.dart` with the code generated by Freezed
part 'results.freezed.dart';

// optional: Since our Person class is serializable, we must add this line.
// But if Person was not serializable, we could skip it.
part 'results.g.dart';

@freezed
class Results with _$Results {
  const factory Results({
    String? first_name,
    String? last_name,
    String? usa_boxing_id,
    String? gender,
    String? weight,
    String? date_of_birth,
    num? number_of_fights,
    num? team_id,
    String? gym_name,
    String? picture_thumb,
    bool? is_boxer,
    bool? is_coach,
    bool? is_official,
    bool? is_matchmaker,
    bool? is_managed_account,
    num? id,
    GymLocationFull? gymLocationFull,
  }) = _Results;

  factory Results.fromJson(Map<String, Object?> json) => _$ResultsFromJson(json);
}

