import 'package:flutter/material.dart';

const colorPrimary = Color(0xffF5A623);
const colorLightPrimaryInclusib = Color(0xAAF5A623);
const colorLightBackground = Color(0xffF1F5FB);
const colorGrey = Color(0xff919DA9);

const kBlack = Colors.black;
const kWhite = Colors.white;

Color colorGreyBackground = colorGrey.withOpacity(0.2);
const colorLightGrey = Color(0xffA5B2BE);
const colorSecondary = Color(0xff212121);

const colorGrey1 = Colors.grey;
final colorGrey700 = Colors.grey[700];
const colorError = Color(0xFFF03738);
const colorGreen = Color(0xFF22C746);

const colorGreen1 = Color(0xFF5CB781);
const colorYellow1 = Color(0xFFF0C03C);
const colorRed1 = Color(0xFFD44250);
const accentColorWheel = Color(0xffFD9902);

const Color kGreyColor0 = Color(0xFFF3F5F9);
const Color kGreyColor1 = Color(0xFFB5B9C5);
const Color kGreyColor2 = Color(0xFF47525C);
const Color kGreyColor3 = Color(0xFFE5E8EE);
const Color kGreyColor4 = Color(0xFFA1A3A8);
const Color kGreyColor5 = Color(0xFF656D79);
const Color kGreyColor6 = Color(0xFF1C1C1E);

const button45 = 45.0;
const button48 = 48.0;
const button50 = 50.0;
const borderRadius5 = 5.0;
const borderRadius10 = 10.0;
const borderRadius20 = 20.0;
const borderRadius50 = 50.0;
final BR0 = BorderRadius.circular(0);
final BR5 = BorderRadius.circular(5);
final BR10 = BorderRadius.circular(10);
final BR30 = BorderRadius.circular(30);
final BR50 = BorderRadius.circular(50);
final BR100 = BorderRadius.circular(100);

const colorDarkBackground = kBlack;
const colorLightBackground2 = kWhite;

const int _primaryAccentMaterialColorValue = 0xFFF5A623;
const int _primaryAccentValue = 0xFFFFF1E5;

const appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);

const MaterialColor primaryAccentMaterialColor = MaterialColor(_primaryAccentMaterialColorValue, <int, Color>{
  50: Color(0xFFFEF4E5),
  100: Color(0xFFFCE4BD),
  200: Color(0xFFFAD391),
  300: Color(0xFFF8C165),
  400: Color(0xFFF7B344),
  500: Color(_primaryAccentMaterialColorValue),
  600: Color(0xFFF49E1F),
  700: Color(0xFFF2951A),
  800: Color(0xFFF08B15),
  900: Color(0xFFEE7B0C),
});

const MaterialColor primaryAccentOnly = MaterialColor(_primaryAccentValue, <int, Color>{
  100: Color(0xFFFFFFFF),
  200: Color(_primaryAccentValue),
  400: Color(0xFFFFD4B2),
  700: Color(0xFFFFC698),
});

/// Parent TextStyles
TextStyle? heading1 = const TextStyle(fontSize: 40);

TextStyle? heading2 = const TextStyle(fontSize: 30);

TextStyle? heading3 = const TextStyle(fontSize: 20);

TextStyle? label = const TextStyle(fontSize: 14, letterSpacing: 0.8);

TextStyle? body = const TextStyle(fontSize: 17);

/// Child TextStyles

/// Heading1 Variations
TextStyle? heading1Grey = heading1?.copyWith(color: colorGrey);

TextStyle? heading1GreyBold = heading1?.copyWith(color: colorGrey, fontWeight: FontWeight.bold);

TextStyle? heading1LightGrey = heading1?.copyWith(color: colorLightGrey);

TextStyle? heading1LightBold = heading1?.copyWith(color: colorLightGrey, fontWeight: FontWeight.bold);

TextStyle? heading1Secondary = heading1?.copyWith(color: colorSecondary);

TextStyle? heading1SecondaryBold = heading1?.copyWith(color: colorSecondary, fontWeight: FontWeight.bold);

/// Heading2 Variations
TextStyle? heading2Grey = heading2?.copyWith(color: colorGrey);

TextStyle? heading2GreyBold = heading2?.copyWith(color: colorGrey, fontWeight: FontWeight.bold);

TextStyle? heading2LightGrey = heading2?.copyWith(color: colorLightGrey);

TextStyle? heading2LightBold = heading2?.copyWith(color: colorLightGrey, fontWeight: FontWeight.bold);

TextStyle? heading2Secondary = heading2?.copyWith(color: colorSecondary);

TextStyle? heading2SecondaryBold = heading2?.copyWith(color: colorSecondary, fontWeight: FontWeight.bold);

/// Heading3 Variations
TextStyle? heading3Grey = heading3?.copyWith(color: colorGrey);

TextStyle? heading3GreyBold = heading3?.copyWith(color: colorGrey, fontWeight: FontWeight.bold);

TextStyle? heading3LightGrey = heading3?.copyWith(color: colorLightGrey);

TextStyle? heading3LightBold = heading3?.copyWith(color: colorLightGrey, fontWeight: FontWeight.bold);

TextStyle? heading3Secondary = heading3?.copyWith(color: colorSecondary);

TextStyle? heading3SecondaryBold = heading2?.copyWith(color: colorSecondary, fontWeight: FontWeight.bold);

/// Label Variations
TextStyle? labelGrey = label?.copyWith(color: colorGrey);

TextStyle? labelGreyBold = label?.copyWith(color: colorGrey, fontWeight: FontWeight.bold);

TextStyle? labelLightGrey = label?.copyWith(color: colorLightGrey);

TextStyle? labelLightBold = label?.copyWith(color: colorLightGrey, fontWeight: FontWeight.bold);

TextStyle? labelSecondary = label?.copyWith(color: colorSecondary);

TextStyle? labelSecondaryBold = heading2?.copyWith(color: colorSecondary, fontWeight: FontWeight.bold);

/// Body Variations
TextStyle? bodyGrey = body?.copyWith(color: colorGrey);

TextStyle? bodyGreyBold = body?.copyWith(color: colorGrey, fontWeight: FontWeight.bold);

TextStyle? bodyLightGrey = body?.copyWith(color: colorLightGrey);

TextStyle? bodyLightBold = body?.copyWith(color: colorLightGrey, fontWeight: FontWeight.bold);

TextStyle? bodySecondary = body?.copyWith(color: colorSecondary);

TextStyle? bodySecondaryBold = heading2?.copyWith(color: colorSecondary, fontWeight: FontWeight.bold);

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  fontFamily: 'Poppins',
  brightness: Brightness.light,
  primaryColor: colorPrimary,
  primarySwatch: primaryAccentMaterialColor,
  appBarTheme: appBarTheme,
  scaffoldBackgroundColor: colorLightBackground,
  iconTheme: const IconThemeData(color: colorSecondary),
  dialogBackgroundColor: colorLightBackground,
  cardColor: kWhite,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: colorLightBackground,
    selectedItemColor: colorPrimary,
    unselectedItemColor: colorGrey,
    selectedIconTheme: const IconThemeData(color: colorPrimary),
    unselectedIconTheme: const IconThemeData(color: colorGrey),
    showUnselectedLabels: true,
    selectedLabelStyle: label?.copyWith(color: colorPrimary),
    unselectedLabelStyle: label?.copyWith(color: colorGrey),
  ),
  colorScheme: const ColorScheme.light(
    background: colorLightBackground,
    primary: colorPrimary,
    secondary: colorGrey,
    error: colorError,
  ),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: colorPrimary,
    selectionColor: primaryAccentMaterialColor[200],
  ),
  tabBarTheme: const TabBarTheme(
    labelColor: colorPrimary,
    unselectedLabelColor: colorSecondary,
  ),
  textTheme: TextTheme(
    /// label and content colors
    titleSmall: label?.copyWith(color: colorSecondary),
    titleMedium: body?.copyWith(color: colorSecondary),
    titleLarge: heading3?.copyWith(color: colorSecondary),

    /// label and content colors
    labelSmall: label?.copyWith(color: colorGrey),
    labelMedium: body?.copyWith(color: colorGrey),
    labelLarge: heading3?.copyWith(color: colorGrey),

    /// body and content colors
    bodySmall: label?.copyWith(color: colorLightGrey),
    bodyMedium: body?.copyWith(color: colorLightGrey),
    bodyLarge: heading3?.copyWith(color: colorLightGrey),

    /// headlines
    displaySmall: heading3?.copyWith(color: colorSecondary),
    displayMedium: heading2?.copyWith(color: colorSecondary),
    displayLarge: heading1?.copyWith(color: colorSecondary),
  ),
);

ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  fontFamily: 'Poppins',
  brightness: Brightness.dark,
  primaryColor: colorPrimary,
  primarySwatch: primaryAccentMaterialColor,
  scaffoldBackgroundColor: colorDarkBackground,
  appBarTheme: appBarTheme,
  iconTheme: const IconThemeData(color: colorLightBackground),
  dialogBackgroundColor: colorDarkBackground,
  cardColor: kGreyColor6,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: colorDarkBackground,
    selectedItemColor: colorPrimary,
    unselectedItemColor: colorGrey,
    selectedIconTheme: const IconThemeData(color: colorPrimary),
    unselectedIconTheme: const IconThemeData(color: colorGrey),
    showUnselectedLabels: true,
    selectedLabelStyle: label?.copyWith(color: colorPrimary),
    unselectedLabelStyle: label?.copyWith(color: colorGrey),
  ),
  colorScheme: const ColorScheme.dark(
    background: colorDarkBackground,
    primary: colorPrimary,
    secondary: colorGrey,
    error: colorError,
  ),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: colorPrimary,
    selectionColor: primaryAccentMaterialColor[200],
  ),
  tabBarTheme: const TabBarTheme(
    labelColor: colorPrimary,
    unselectedLabelColor: colorLightBackground,
  ),
  textTheme: TextTheme(
    /// label and content colors
    titleSmall: label?.copyWith(color: colorLightBackground),
    titleMedium: body?.copyWith(color: colorLightBackground),
    titleLarge: heading3?.copyWith(color: colorLightBackground),

    /// label and content colors
    labelSmall: label?.copyWith(color: colorGrey),
    labelMedium: body?.copyWith(color: colorGrey),
    labelLarge: heading3?.copyWith(color: colorGrey),

    /// body and content colors
    bodySmall: label?.copyWith(color: colorLightGrey),
    bodyMedium: body?.copyWith(color: colorLightGrey),
    bodyLarge: heading3?.copyWith(color: colorLightGrey),

    /// headlines
    displaySmall: heading3?.copyWith(color: colorLightGrey),
    displayMedium: heading2?.copyWith(color: colorLightGrey),
    displayLarge: heading1?.copyWith(color: colorLightGrey),
  ),
);
