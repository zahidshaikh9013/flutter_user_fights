import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hamam_test/app/app_theme.dart';
import 'package:hamam_test/app/context_ext.dart';
import 'package:hamam_test/app/dimensions.dart';
import 'package:hamam_test/app/strings.dart';
import 'package:hamam_test/providers/theme_provider.dart';

import 'shared_fighters_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late final TabController _tabBarController;

  @override
  void initState() {
    super.initState();

    _tabBarController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _tabBarWidget(),
            Expanded(
              child: TabBarView(
                controller: _tabBarController,
                children: const [
                  SharedFightersTab(isFirst: true),
                  SharedFightersTab(isFirst: false),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Consumer(
        builder: (_, provider, child) {
          final theme = provider.watch(themeProvider.notifier);
          return FloatingActionButton(
            backgroundColor: context.primaryColor,
            onPressed: () {
              theme.toggleTheme();
            },
            child: Icon(
              Icons.dark_mode,
              color: context.textColor,
            ),
          );
        },
      ),
    );
  }

  Widget _tabBarWidget() {
    return ValueListenableBuilder(
      valueListenable: _tabBarController.animation!,
      builder: (context, model, child) {
        var borderRadius = BR10;
        var splashBorderRadius = BR10;

        if (_tabBarController.index == 0) {
          borderRadius = BR10.copyWith(
            topRight: Radius.zero,
            bottomRight: Radius.zero,
          );
          splashBorderRadius = BR10.copyWith(
            topLeft: Radius.zero,
            bottomLeft: Radius.zero,
          );
        } else if (_tabBarController.index == 1) {
          borderRadius = BR10.copyWith(
            topLeft: Radius.zero,
            bottomLeft: Radius.zero,
          );
          splashBorderRadius = BR10.copyWith(
            topRight: Radius.zero,
            bottomRight: Radius.zero,
          );
        }

        return Container(
          margin: p16.copyWith(bottom: 0),
          decoration: BoxDecoration(
            color: context.backgroundColor,
            borderRadius: BR10,
            border: Border.all(color: context.greyColor!),
          ),
          child: TabBar(
            controller: _tabBarController,
            labelColor: kWhite,
            indicator: BoxDecoration(
              color: context.primaryColor,
              borderRadius: borderRadius,
              // border: Border.all(color: context.greyColor!),
            ),
            indicatorSize: TabBarIndicatorSize.tab,
            splashBorderRadius: splashBorderRadius,
            indicatorPadding: EdgeInsets.zero,
            indicatorColor: Colors.transparent,
            dividerColor: Colors.transparent,
            tabs: [
              Tab(
                text: Strings.fighters0to35,
              ),
              Tab(
                text: Strings.fighters35to90,
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _tabBarController.dispose();
    super.dispose();
  }
}
