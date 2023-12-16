import 'package:flutter/material.dart';
import 'package:hamam_test/widgets/no_data_found.dart';

abstract class Routes {
  static const String root = "/";
}

class AppRoutes {
  static Route<dynamic>? obtainRoute(RouteSettings settings) {
    Widget screen = const NoDataFound(msg: "No round found.");
    switch (settings.name) {

    }

    return null;
  }
}

class DetailsScreenArgs {
  final String objectId;

  DetailsScreenArgs({required this.objectId});
}
