import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hamam_test/app/context_ext.dart';
import 'package:hamam_test/app/globals.dart';

enum LoaderPlatform { android, ios }

class NativeLoader extends StatelessWidget {
  final double scale;
  final Color? valueColor;
  final LoaderPlatform? platform;

  const NativeLoader({
    super.key,
    this.scale = 1.0,
    this.valueColor,
    this.platform,
  });

  const NativeLoader.android({
    super.key,
    this.valueColor,
    this.scale = 1.0,
  }) : platform = LoaderPlatform.android;

  const NativeLoader.ios({
    super.key,
    this.valueColor,
    this.scale = 1.0,
  }) : platform = LoaderPlatform.ios;

  @override
  Widget build(BuildContext context) {
    bool isAndroidP = isAndroid;

    /// null = PlatformSpecific meaning native loader will be shown
    if (platform != null) {
      isAndroidP = platform == LoaderPlatform.android;
    }

    return Transform.scale(
      scale: scale,
      child: Center(
        child: isAndroidP
            ? CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(valueColor ?? context.primaryColor),
              )
            : const CupertinoActivityIndicator(),
      ),
    );
  }
}
