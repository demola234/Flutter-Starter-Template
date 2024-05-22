import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/localization/generated/strings.dart';
import '../core/localization/l10n.dart';
import '../core/theme/theme.dart';
import 'home.dart';

class StarterTemplateApp extends StatelessWidget {
  final String title;
  const StarterTemplateApp({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: Consumer(
        builder: (_, WidgetRef ref, __) {
          final themeMode = ref.watch(themeProvider);
          return ScreenUtilInit(
            designSize: const Size(393, 852),
            minTextAdapt: true,
            splitScreenMode: false,
            child: MaterialApp(
              title: title,
              debugShowCheckedModeBanner: false,
            
              locale: const Locale('en'),
              supportedLocales: L10n.all,
              theme: _getThemeData(themeMode),
              localizationsDelegates: const [
                Strings.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              home: MyHomePage(title: title),
            ),
          );
        },
      ),
    );
  }

// Function to get ThemeData for each ThemeModeEnum
  ThemeData _getThemeData(ThemeModeEnum themeMode) {
    switch (themeMode) {
      case ThemeModeEnum.Light:
        return AppTheme.lightTheme;
      case ThemeModeEnum.Dark:
        return AppTheme.darkTheme;
      case ThemeModeEnum.Dim:
        return AppTheme.darkTheme;
      default:
        return AppTheme.lightTheme;
    }
  }
}
