import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278216820),
      surfaceTint: Color(4278216820),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4288606205),
      onPrimaryContainer: Color(4278198052),
      secondary: Color(4285488398),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4294632071),
      onSecondaryContainer: Color(4280425216),
      tertiary: Color(4278216820),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4288606205),
      onTertiaryContainer: Color(4278198052),
      error: Color(4287646278),
      onError: Color(4294967295),
      errorContainer: Color(4294957783),
      onErrorContainer: Color(4282058761),
      surface: Color(4294310651),
      onSurface: Color(4279704862),
      onSurfaceVariant: Color(4282337354),
      outline: Color(4285495674),
      outlineVariant: Color(4290758858),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281020723),
      inversePrimary: Color(4286764000),
      primaryFixed: Color(4288606205),
      onPrimaryFixed: Color(4278198052),
      primaryFixedDim: Color(4286764000),
      onPrimaryFixedVariant: Color(4278210392),
      secondaryFixed: Color(4294632071),
      onSecondaryFixed: Color(4280425216),
      secondaryFixedDim: Color(4292724334),
      onSecondaryFixedVariant: Color(4283713024),
      tertiaryFixed: Color(4288606205),
      onTertiaryFixed: Color(4278198052),
      tertiaryFixedDim: Color(4286764000),
      onTertiaryFixedVariant: Color(4278210392),
      surfaceDim: Color(4292205532),
      surfaceBright: Color(4294310651),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293916150),
      surfaceContainer: Color(4293521392),
      surfaceContainerHigh: Color(4293126634),
      surfaceContainerHighest: Color(4292797413),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278209107),
      surfaceTint: Color(4278216820),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4280647820),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4283449856),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4287001381),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4278209107),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4280647820),
      onTertiaryContainer: Color(4294967295),
      error: Color(4285411117),
      onError: Color(4294967295),
      errorContainer: Color(4289355611),
      onErrorContainer: Color(4294967295),
      surface: Color(4294310651),
      onSurface: Color(4279704862),
      onSurfaceVariant: Color(4282074182),
      outline: Color(4283916642),
      outlineVariant: Color(4285758590),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281020723),
      inversePrimary: Color(4286764000),
      primaryFixed: Color(4280647820),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278216305),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4287001381),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4285291275),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4280647820),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4278216305),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292205532),
      surfaceBright: Color(4294310651),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293916150),
      surfaceContainer: Color(4293521392),
      surfaceContainerHigh: Color(4293126634),
      surfaceContainerHighest: Color(4292797413),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278200108),
      surfaceTint: Color(4278216820),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4278209107),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4280951296),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4283449856),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4278200108),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4278209107),
      onTertiaryContainer: Color(4294967295),
      error: Color(4282650383),
      onError: Color(4294967295),
      errorContainer: Color(4285411117),
      onErrorContainer: Color(4294967295),
      surface: Color(4294310651),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4280034599),
      outline: Color(4282074182),
      outlineVariant: Color(4282074182),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281020723),
      inversePrimary: Color(4290770431),
      primaryFixed: Color(4278209107),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278202936),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4283449856),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4281740288),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4278209107),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4278202936),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292205532),
      surfaceBright: Color(4294310651),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293916150),
      surfaceContainer: Color(4293521392),
      surfaceContainerHigh: Color(4293126634),
      surfaceContainerHighest: Color(4292797413),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4286764000),
      surfaceTint: Color(4286764000),
      onPrimary: Color(4278203965),
      primaryContainer: Color(4278210392),
      onPrimaryContainer: Color(4288606205),
      secondary: Color(4292724334),
      onSecondary: Color(4282003456),
      secondaryContainer: Color(4283713024),
      onSecondaryContainer: Color(4294632071),
      tertiary: Color(4286764000),
      onTertiary: Color(4278203965),
      tertiaryContainer: Color(4278210392),
      onTertiaryContainer: Color(4288606205),
      error: Color(4294947758),
      onError: Color(4283899164),
      errorContainer: Color(4285739825),
      onErrorContainer: Color(4294957783),
      surface: Color(4279112725),
      onSurface: Color(4292797413),
      onSurfaceVariant: Color(4290758858),
      outline: Color(4287206036),
      outlineVariant: Color(4282337354),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292797413),
      inversePrimary: Color(4278216820),
      primaryFixed: Color(4288606205),
      onPrimaryFixed: Color(4278198052),
      primaryFixedDim: Color(4286764000),
      onPrimaryFixedVariant: Color(4278210392),
      secondaryFixed: Color(4294632071),
      onSecondaryFixed: Color(4280425216),
      secondaryFixedDim: Color(4292724334),
      onSecondaryFixedVariant: Color(4283713024),
      tertiaryFixed: Color(4288606205),
      onTertiaryFixed: Color(4278198052),
      tertiaryFixedDim: Color(4286764000),
      onTertiaryFixedVariant: Color(4278210392),
      surfaceDim: Color(4279112725),
      surfaceBright: Color(4281612859),
      surfaceContainerLowest: Color(4278783760),
      surfaceContainerLow: Color(4279704862),
      surfaceContainer: Color(4279968034),
      surfaceContainerHigh: Color(4280625964),
      surfaceContainerHighest: Color(4281349687),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4287027173),
      surfaceTint: Color(4286764000),
      onPrimary: Color(4278196765),
      primaryContainer: Color(4283014313),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4292987506),
      onSecondary: Color(4280030720),
      secondaryContainer: Color(4288974910),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4287027173),
      onTertiary: Color(4278196765),
      tertiaryContainer: Color(4283014313),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949301),
      onError: Color(4281533445),
      errorContainer: Color(4291525494),
      onErrorContainer: Color(4278190080),
      surface: Color(4279112725),
      onSurface: Color(4294376701),
      onSurfaceVariant: Color(4291022030),
      outline: Color(4288390566),
      outlineVariant: Color(4286285191),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292797413),
      inversePrimary: Color(4278210649),
      primaryFixed: Color(4288606205),
      onPrimaryFixed: Color(4278195223),
      primaryFixedDim: Color(4286764000),
      onPrimaryFixedVariant: Color(4278205508),
      secondaryFixed: Color(4294632071),
      onSecondaryFixed: Color(4279636224),
      secondaryFixedDim: Color(4292724334),
      onSecondaryFixedVariant: Color(4282463488),
      tertiaryFixed: Color(4288606205),
      onTertiaryFixed: Color(4278195223),
      tertiaryFixedDim: Color(4286764000),
      onTertiaryFixedVariant: Color(4278205508),
      surfaceDim: Color(4279112725),
      surfaceBright: Color(4281612859),
      surfaceContainerLowest: Color(4278783760),
      surfaceContainerLow: Color(4279704862),
      surfaceContainer: Color(4279968034),
      surfaceContainerHigh: Color(4280625964),
      surfaceContainerHighest: Color(4281349687),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294049279),
      surfaceTint: Color(4286764000),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4287027173),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294966005),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4292987506),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294049279),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4287027173),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949301),
      onErrorContainer: Color(4278190080),
      surface: Color(4279112725),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294180094),
      outline: Color(4291022030),
      outlineVariant: Color(4291022030),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292797413),
      inversePrimary: Color(4278202165),
      primaryFixed: Color(4289393663),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4287027173),
      onPrimaryFixedVariant: Color(4278196765),
      secondaryFixed: Color(4294960779),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4292987506),
      onSecondaryFixedVariant: Color(4280030720),
      tertiaryFixed: Color(4289393663),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4287027173),
      onTertiaryFixedVariant: Color(4278196765),
      surfaceDim: Color(4279112725),
      surfaceBright: Color(4281612859),
      surfaceContainerLowest: Color(4278783760),
      surfaceContainerLow: Color(4279704862),
      surfaceContainer: Color(4279968034),
      surfaceContainerHigh: Color(4280625964),
      surfaceContainerHighest: Color(4281349687),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) =>
      ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.background,
        canvasColor: colorScheme.surface,
      );


  List<ExtendedColor> get extendedColors =>
      [
      ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}


TextTheme createTextTheme(
    BuildContext context, String bodyFontString, String displayFontString) {
  ColorScheme colorScheme = Theme.of(context).colorScheme;
  TextTheme baseTextTheme = Theme.of(context).textTheme;
  TextTheme bodyTextTheme = GoogleFonts.getTextTheme(bodyFontString, baseTextTheme);
  TextTheme displayTextTheme =
  GoogleFonts.getTextTheme(displayFontString, baseTextTheme);

  // Apply colors from ColorScheme to TextTheme
  TextTheme textTheme = displayTextTheme.copyWith(
    bodyLarge: bodyTextTheme.bodyLarge?.copyWith(color: colorScheme.onSurface),
    bodyMedium: bodyTextTheme.bodyMedium?.copyWith(color: colorScheme.onSurface),
    bodySmall: bodyTextTheme.bodySmall?.copyWith(color: colorScheme.onSurface),
    labelLarge: bodyTextTheme.labelLarge?.copyWith(color: colorScheme.onPrimary),
    labelMedium: bodyTextTheme.labelMedium?.copyWith(color: colorScheme.onPrimary),
    labelSmall: bodyTextTheme.labelSmall?.copyWith(color: colorScheme.onPrimary),
    // Add other text styles as needed
  );
  return textTheme;
}


