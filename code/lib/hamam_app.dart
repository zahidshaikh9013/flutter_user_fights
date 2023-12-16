import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hamam_test/app/globals.dart';
import 'package:hamam_test/app/routes.dart';
import 'package:hamam_test/app/strings.dart';
import 'package:hamam_test/providers/theme_provider.dart';
import 'package:hamam_test/ui/home/home_screen.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/app_theme.dart';
import 'widgets/double_back_to_close_app.dart';

class HamamApp extends ConsumerStatefulWidget {
  const HamamApp({super.key});

  @override
  HamamAppState createState() => HamamAppState();
}

class HamamAppState extends ConsumerState<HamamApp> {
  Widget myBuilder(BuildContext context, Widget child) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final botToastBuilder = BotToastInit();
    final themeNotifier = ref.watch(themeProvider);
    return MaterialApp(
      title: Strings.appName,
      debugShowCheckedModeBanner: false,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        BotToastNavigatorObserver(),
      ],
      builder: (context, child) {
        screenWidth = MediaQuery.of(context).size.width;
        screenHeight = MediaQuery.of(context).size.height;
        child = myBuilder(context, child!);
        child = botToastBuilder(context, child);
        return child;
      },
      onGenerateRoute: AppRoutes.obtainRoute,
      themeMode: themeNotifier.themeMode,
      theme: lightTheme,
      darkTheme: darkTheme,
      home: const PreLoader(),
    );
  }
}

class PreLoader extends StatefulWidget {
  const PreLoader({super.key});

  @override
  PreLoaderState createState() => PreLoaderState();
}

class PreLoaderState extends State<PreLoader> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DoubleBackToCloseApp(
        child: HomeScreen(),
      ),
    );
  }
}
