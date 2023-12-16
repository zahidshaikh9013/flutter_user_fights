import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hamam_test/models/users/results.dart';
import 'package:hamam_test/services/api_service.dart';

part 'fighters_provider.freezed.dart';

final fightersProvider = StateNotifierProvider<FighterUsersNotifier, FighterUsersState>((ref) {
  return FighterUsersNotifier();
});

@freezed
abstract class FighterUsersState with _$FighterUsersState {
  const factory FighterUsersState({
    @Default(1) int page,
    required List<Results> posts,
    @Default(true) bool isLoading,
    @Default(false) bool isLoadMoreError,
    @Default(false) bool isLoadMoreDone,
  }) = _FighterUsersState;

  const FighterUsersState._();
}

class FighterUsersNotifier extends StateNotifier<FighterUsersState> {
  FighterUsersNotifier() : super(const FighterUsersState(posts: []));

  Future<List<Results>> fetchFighters({
    String? name,
    num? minAge,
    num? maxAge,
    int page = 1,
  }) async {
    final response = await apiService.getFightersUsers(
      name: name,
      page: page,
      minAge: minAge,
      maxAge: maxAge,
    );

    if (response == null) {
      // state = state.copyWith(page: page, isLoading: false);
      return [];
    }

    // state = state.copyWith(page: page, isLoading: false, posts: response.results);
    return response.results;
  }
}
