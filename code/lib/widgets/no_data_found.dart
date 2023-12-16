import 'package:flutter/material.dart';
import 'package:hamam_test/app/context_ext.dart';

class NoDataFound extends StatelessWidget {
  final String? image;
  final String? title;
  final String? msg;
  final double fontSize;
  final Color? color;
  final Color? titleColor;
  final Color? msgColor;

  final VoidCallback? onRetry;

  const NoDataFound({
    super.key,
    this.image,
    this.title,
    this.msg,
    this.fontSize = 18.0,
    this.onRetry,
    this.color,
    this.titleColor,
    this.msgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title ?? "No data found.",
              style: context.titleSmall,
            )
          ],
        ),
      ),
    );
  }
}
