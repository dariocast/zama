import 'package:flutter/material.dart';

abstract class LightThemeColors {
  static Color get background => const Color(0xFFFFFFFF);
  static Color get surface => const Color(0xFFFFFFFF);
  static Color get primary => const Color(0xFF2A9D8F);
  static Color get primaryVariant => const Color(0xFF264653);
  static Color get secondary => const Color(0xFFE9C46A);
  static Color get secondaryVariant => const Color(0xFFF4A261);
  static Color get error => const Color(0xFFE76F51);

  static Color get onPrimary => const Color(0xFFFFFFFF);
  static Color get onSecondary => const Color(0xFF000000);
  static Color get onBackground => const Color(0xFF000000);
  static Color get onSurface => const Color(0xFF000000);
  static Color get onError => const Color(0xFFFFFFFF);
}

abstract class DarkThemeColors {
  static Color get background => const Color(0xFF121212);
  static Color get surface => const Color(0xFF121212);
  static Color get primary => const Color(0xFF2A9D8F);
  static Color get primaryVariant => const Color(0xFF264653);
  static Color get secondary => const Color(0xFFE9C46A);
  static Color get secondaryVariant => const Color(0xFFF4A261);
  static Color get error => const Color(0xFFE76F51);

  static Color get onPrimary => const Color(0xFF000000);
  static Color get onSecondary => const Color(0xFF000000);
  static Color get onBackground => const Color(0xFFFFFFFF);
  static Color get onSurface => const Color(0xFFFFFFFF);
  static Color get onError => const Color(0xFF000000);
}

class ThemedColor {
  final Color light;
  final Color dark;

  ThemedColor({@required this.light, @required this.dark})
      : assert(light != null),
        assert(dark != null);

  Color getColor(BuildContext context) {
    switch (Theme.of(context).brightness) {
      case Brightness.light:
        return light;
      case Brightness.dark:
        return dark;
    }
    throw UnsupportedError('${Theme.of(context).brightness} non supportato');
  }
}

abstract class ZamaColors {
  static Color background(BuildContext context) => ThemedColor(
          light: LightThemeColors.background, dark: DarkThemeColors.background)
      .getColor(context);

  static Color surface(BuildContext context) => ThemedColor(
          light: LightThemeColors.surface, dark: DarkThemeColors.surface)
      .getColor(context);

  static Color primary(BuildContext context) => ThemedColor(
          light: LightThemeColors.primary, dark: DarkThemeColors.primary)
      .getColor(context);

  static Color primaryVariant(BuildContext context) => ThemedColor(
          light: LightThemeColors.primaryVariant,
          dark: DarkThemeColors.primaryVariant)
      .getColor(context);

  static Color secondary(BuildContext context) => ThemedColor(
          light: LightThemeColors.secondary, dark: DarkThemeColors.secondary)
      .getColor(context);

  static Color secondaryVariant(BuildContext context) => ThemedColor(
          light: LightThemeColors.secondaryVariant,
          dark: DarkThemeColors.secondaryVariant)
      .getColor(context);

  static Color error(BuildContext context) =>
      ThemedColor(light: LightThemeColors.error, dark: DarkThemeColors.error)
          .getColor(context);

  static Color onPrimary(BuildContext context) => ThemedColor(
          light: LightThemeColors.onPrimary, dark: DarkThemeColors.onPrimary)
      .getColor(context);

  static Color onSecondary(BuildContext context) => ThemedColor(
          light: LightThemeColors.onSecondary,
          dark: DarkThemeColors.onSecondary)
      .getColor(context);

  static Color onBackground(BuildContext context) => ThemedColor(
          light: LightThemeColors.onBackground,
          dark: DarkThemeColors.onBackground)
      .getColor(context);

  static Color onSurface(BuildContext context) => ThemedColor(
          light: LightThemeColors.onSurface, dark: DarkThemeColors.onSurface)
      .getColor(context);

  static Color onError(BuildContext context) => ThemedColor(
          light: LightThemeColors.onError, dark: DarkThemeColors.onError)
      .getColor(context);
}

abstract class ZamaTextStyles {
  static const fontFamily = 'Raleway';

  static TextStyle headline1(BuildContext context, {Color color}) {
    return TextStyle(
      color: color ?? ZamaColors.primary(context),
      fontSize: 96.0,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w300,
    );
  }

  static TextStyle headline2(BuildContext context, {Color color}) {
    return TextStyle(
      color: color ?? ZamaColors.primary(context),
      fontSize: 60.0,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w300,
    );
  }

  static TextStyle headline3(BuildContext context, {Color color}) {
    return TextStyle(
      color: color ?? ZamaColors.primary(context),
      fontSize: 48.0,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle headline4(BuildContext context, {Color color}) {
    return TextStyle(
      color: color ?? ZamaColors.primary(context),
      fontSize: 34.0,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle headline5(BuildContext context, {Color color}) {
    return TextStyle(
      color: color ?? ZamaColors.primary(context),
      fontSize: 24.0,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle headline6(BuildContext context, {Color color}) {
    return TextStyle(
      color: color ?? ZamaColors.primary(context),
      fontSize: 34.0,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle subtitle1(BuildContext context, {Color color}) {
    return TextStyle(
      color: color ?? ZamaColors.primary(context),
      fontSize: 16.0,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle subtitle2(BuildContext context, {Color color}) {
    return TextStyle(
      color: color ?? ZamaColors.primary(context),
      fontSize: 14.0,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle body1(BuildContext context, {Color color}) {
    return TextStyle(
      color: color ?? ZamaColors.primary(context),
      fontSize: 16.0,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle body2(BuildContext context, {Color color}) {
    return TextStyle(
      color: color ?? ZamaColors.primary(context),
      fontSize: 14.0,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle button(BuildContext context, {Color color}) {
    return TextStyle(
      color: color ?? ZamaColors.primary(context),
      fontSize: 14.0,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle caption(BuildContext context, {Color color}) {
    return TextStyle(
      color: color ?? ZamaColors.primary(context),
      fontSize: 12.0,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle overline(BuildContext context, {Color color}) {
    return TextStyle(
      color: color ?? ZamaColors.primary(context),
      fontSize: 10.0,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
    );
  }
}

final Map<ThemeMode, ThemeData> zamaThemes = {
  ThemeMode.light: ThemeData(
    primaryColor: LightThemeColors.primary,
    accentColor: LightThemeColors.secondary,
    scaffoldBackgroundColor: LightThemeColors.background,
    brightness: Brightness.light,
  ),
  ThemeMode.dark: ThemeData(
    primaryColor: DarkThemeColors.primary,
    accentColor: DarkThemeColors.secondary,
    scaffoldBackgroundColor: DarkThemeColors.background,
    brightness: Brightness.dark,
  )
};
