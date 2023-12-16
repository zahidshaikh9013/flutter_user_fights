import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_provider.freezed.dart';

final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeState>((ref) {
  return ThemeNotifier();
});

@freezed
abstract class ThemeState with _$ThemeState {
  const factory ThemeState({
    required ThemeMode themeMode,
  }) = _ThemeState;

  const ThemeState._();
}

class ThemeNotifier extends StateNotifier<ThemeState> {
  ThemeNotifier() : super(const ThemeState(themeMode: ThemeMode.system));

  bool isDark() {
    if (state.themeMode == ThemeMode.system) {
      var brightness = SchedulerBinding.instance.platformDispatcher.platformBrightness;
      return brightness == Brightness.dark;
    }
    return state.themeMode == ThemeMode.dark;
  }

  void toggleTheme() {
    if (isDark()) {
      state = state.copyWith(themeMode: ThemeMode.light);
    } else {
      state = state.copyWith(themeMode: ThemeMode.dark);
    }
  }
}
