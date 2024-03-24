import 'package:riverpod/riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum ThemeModeEnum { Light, Dark, Dim }

class ThemeNotifier extends StateNotifier<ThemeModeEnum> {
  ThemeNotifier() : super(ThemeModeEnum.Light);

  void setTheme(ThemeModeEnum theme) {
    state = theme;
    _saveThemePreference(theme);
  }

  Future<void> _saveThemePreference(ThemeModeEnum theme) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('theme', theme.index);
  }

  Future<void> loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final savedThemeIndex = prefs.getInt('theme') ?? 0;
    state = ThemeModeEnum
        .values[savedThemeIndex.clamp(0, ThemeModeEnum.values.length - 1)];
  }
}

final themeProvider =
    StateNotifierProvider<ThemeNotifier, ThemeModeEnum>((ref) {
  return ThemeNotifier()..loadTheme();
});
