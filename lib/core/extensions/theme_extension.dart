// Extension method to convert ThemeModeEnum to ThemeData
import 'package:flutter/material.dart';

import '../theme/theme.dart';

extension ThemeModeExtension on ThemeModeEnum {
  ThemeData get themeData {
    switch (this) {
      case ThemeModeEnum.Light:
        return ThemeData.light();
      case ThemeModeEnum.Dark:
        return ThemeData.dark();
      case ThemeModeEnum.Dim:
        // Define your dim theme here
        return ThemeData(
            // Customize dim theme properties
            // Example: backgroundColor: Colors.grey[800],
            );
      default:
        return ThemeData.light();
    }
  }
}
