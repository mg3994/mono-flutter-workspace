import 'package:flutter/material.dart';

/// App theme configuration for light and dark modes.
class AppTheme {
  const AppTheme._();

  static ThemeData light({Color seed = Colors.indigo}) {
    final base = ThemeData.light(useMaterial3: true);
    final scheme = ColorScheme.fromSeed(seedColor: seed);

    return base.copyWith(
      colorScheme: scheme,
      cardTheme: CardThemeData(
        elevation: 2,
        shadowColor: Colors.black.withOpacity(0.08),
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
    );
  }

  static ThemeData dark({Color seed = Colors.indigo}) {
    final base = ThemeData.dark(useMaterial3: true);
    final scheme = ColorScheme.fromSeed(
      seedColor: seed,
      brightness: Brightness.dark,
    );

    return base.copyWith(
      colorScheme: scheme,
      cardTheme: CardThemeData(
        elevation: 2,
        shadowColor: Colors.black.withOpacity(0.25),
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}
