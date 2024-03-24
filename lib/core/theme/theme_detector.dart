import 'package:riverpod/riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Enum representing different theme modes
enum ThemeModeEnum { Light, Dark, Dim }

// Notifier to manage the theme state
class ThemeNotifier extends StateNotifier<ThemeModeEnum> {
  ThemeNotifier() : super(ThemeModeEnum.Light);

  // Function to set the theme and save it to SharedPreferences
  void setTheme(ThemeModeEnum theme) {
    state = theme;
    _saveThemePreference(theme);
  }

  // Function to save the selected theme to SharedPreferences
  Future<void> _saveThemePreference(ThemeModeEnum theme) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('theme', theme.index);
  }

  // Function to load the saved theme from SharedPreferences
  Future<void> loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final savedThemeIndex = prefs.getInt('theme') ?? 0;
    state = ThemeModeEnum
        .values[savedThemeIndex.clamp(0, ThemeModeEnum.values.length - 1)];
  }
}

// Provider for the theme notifier
final themeProvider =
    StateNotifierProvider<ThemeNotifier, ThemeModeEnum>((ref) {
  return ThemeNotifier()..loadTheme();
});