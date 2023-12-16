import 'dart:core';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:hamam_test/widgets/native_loader.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:universal_platform/universal_platform.dart';

const NA = "NA";

double screenWidth = 0.0;
double screenHeight = 0.0;

late SharedPreferences sharedPref;

String somethingWentWrongM = "Something went wrong please try again later...";

bool isEmulator = false;
final bool kIsWeb = UniversalPlatform.isWeb;
final bool isIos = UniversalPlatform.isIOS;
final bool isAndroid = UniversalPlatform.isAndroid;
final bool isMacOS = UniversalPlatform.isMacOS;
final bool isWindow = UniversalPlatform.isWindows;
final bool isFuchsia = UniversalPlatform.isFuchsia;
final bool isMobile = UniversalPlatform.isIOS || UniversalPlatform.isAndroid;
final bool isDesktop = UniversalPlatform.isMacOS || UniversalPlatform.isWindows;

Future<bool> isNetworkConnected() async {
  bool result = await InternetConnectionChecker().hasConnection;
  return result;
}

void somethingWentWrong() {
  showToast(somethingWentWrongM);
}

void noInternet() {
  showToast("No internet.");
}

void showLog(dynamic msg) {
  // print(msg);
  if (!kDebugMode) return;
  debugPrintThrottled(msg.toString(), wrapWidth: 200);
}

void showPrint(Object? msg) {
  print(msg);
}

void showInternetConnectionError() {
  showToast("No internet!");
}

void hideKeyboard([BuildContext? context]) {
  if (context != null) {
    FocusScope.of(context).unfocus();
    FocusScope.of(context).requestFocus(FocusNode());
  }
  SystemChannels.textInput.invokeMethod<String>('TextInput.hide');
}

void safeSetState(VoidCallback onComplete) {
  WidgetsBinding.instance.addPostFrameCallback((timestamp) {
    onComplete();
  });
}

CancelFunc? loading;

void showToast([String? msg]) {
  if (msg != null) {
    BotToast.showText(text: msg, contentColor: Colors.black);
  }
}

void showLoader({String? request, Duration? timeout, bool showLogo = false}) {
  loading?.call();
  loading = BotToast.showCustomLoading(
    backgroundColor: Colors.black54,
    toastBuilder: (func) {
      return const NativeLoader();
    },
    duration: timeout,
    backButtonBehavior: BackButtonBehavior.ignore,
    ignoreContentClick: true,
    onClose: () {},
  );
}

void hideLoader() => loading?.call();

Future<void> showSnackbar([String? msg, BuildContext? context, Color? color]) async {
  ScaffoldMessenger.of(context ?? StackedService.navigatorKey!.currentContext!).showSnackBar(
    SnackBar(
      backgroundColor: color,
      content: Text(
        msg ?? somethingWentWrongM,
        style: const TextStyle(color: Colors.white),
      ),
      duration: const Duration(milliseconds: 2000),
    ),
  );
}

Future<void> showSuccessSnackbar([String? msg, BuildContext? context, Duration? duration]) async {
  ScaffoldMessenger.of(context ?? StackedService.navigatorKey!.currentContext!).showSnackBar(
    SnackBar(
      backgroundColor: Colors.green,
      content: Text(
        msg ?? somethingWentWrongM,
        style: const TextStyle(color: Colors.white),
      ),
      duration: duration ?? const Duration(milliseconds: 2000),
    ),
  );
}

Future<void> showErrorSnackbar([String? msg, bool? floating]) async {
  SchedulerBinding.instance.addPostFrameCallback((timestamp) {
    ScaffoldMessenger.of(StackedService.navigatorKey!.currentContext!).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        behavior: floating == true ? SnackBarBehavior.floating : null,
        content: Text(
          msg ?? somethingWentWrongM,
          style: const TextStyle(color: Colors.white),
        ),
        duration: const Duration(milliseconds: 2000),
      ),
    );
  });
}
