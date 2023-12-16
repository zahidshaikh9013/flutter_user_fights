import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:hamam_test/app/app_theme.dart';

class Texts extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final Color? color;
  final FontWeight fontWeight;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign textAlign;
  final double? letterSpacing;
  final TextDecoration? textDecoration;
  final String? fontFamily;
  final shadows;
  final bool? softWrap;
  final FontStyle? fontStyle;
  final TextDirection? textDirection;

  final double? height;

  /// if set and not null then all of the default values will be ignored
  /// for this text widget that is color,fontSize etc...
  final TextStyle? style;

  const Texts(
    this.text, {
    super.key,
    this.fontSize,
    this.color,
    this.fontWeight = FontWeight.normal,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.letterSpacing,
    this.textDecoration,
    this.fontFamily,
    this.shadows,
    this.softWrap,
    this.fontStyle,
    this.style,
    this.textDirection,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '',
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      softWrap: softWrap,
      textDirection: textDirection,

      /// if style is applied all the params will be ignored
      style: style ??
          customTextStyle(
            fontSize: fontSize,
            color: color,
            fontWeight: fontWeight,
            letterSpacing: letterSpacing,
            textDecoration: textDecoration,
            fontFamily: fontFamily,
            shadows: shadows,
            fontStyle: fontStyle,
          ),
      strutStyle: StrutStyle(
        fontSize: fontSize ?? style?.fontSize,
        forceStrutHeight: true,
      ),
    );
  }

  static customTextStyle({
    Color? color,
    FontWeight fontWeight = FontWeight.normal,
    double? fontSize,
    TextDecoration? textDecoration = TextDecoration.none,
    double? letterSpacing,
    String? fontFamily,
    var shadows,
    FontStyle? fontStyle,
    double? height,
  }) {
    var brightness = SchedulerBinding.instance.platformDispatcher.platformBrightness;
    final isDark = brightness == Brightness.dark;

    color ??= isDark ? kWhite : kBlack;

    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: fontSize,
      decoration: textDecoration,
      letterSpacing: letterSpacing,
      shadows: shadows,
      fontStyle: fontStyle,
      height: height,
    );
  }
}

class LinkedText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color? color;
  final FontWeight fontWeight;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign textAlign;
  final double? letterSpacing;
  final TextDecoration? textDecoration;
  final String? fontFamily;
  final shadows;
  final bool? softWrap;
  final FontStyle? fontStyle;
  final VoidCallback onTap;
  final EdgeInsets? paddingAround;

  const LinkedText(
    this.text, {
    super.key,
    required this.onTap,
    this.fontSize = 14.0,
    this.color,
    this.fontWeight = FontWeight.normal,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.left,
    this.letterSpacing,
    this.textDecoration = TextDecoration.underline,
    this.fontFamily,
    this.shadows,
    this.softWrap,
    this.fontStyle,
    this.paddingAround = const EdgeInsets.all(3.0),
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Padding(
        padding: paddingAround!,
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: text,
                style: Texts.customTextStyle(
                  fontSize: fontSize,
                  color: color,
                  fontWeight: fontWeight,
                  letterSpacing: letterSpacing,
                  textDecoration: textDecoration,
                  fontFamily: fontFamily,
                  shadows: shadows,
                  fontStyle: fontStyle,
                ),
              ),
            ],
          ),
          key: Key(text),
          textAlign: textAlign,
          maxLines: maxLines,
          overflow: overflow,
          softWrap: softWrap,
        ),
      ),
    );
  }
}
