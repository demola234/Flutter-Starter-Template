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
    return Consumer(
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
            themeMode: _getThemeMode(themeMode),
            localizationsDelegates: const [
              Strings.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            home: MyHomePage(title: title),
          ),
        );
      },
    );
  }

  ThemeMode _getThemeMode(ThemeModeEnum mode) {
    switch (mode) {
      case ThemeModeEnum.Dark:
        return ThemeMode.dark;
      case ThemeModeEnum.Dim:
        return ThemeMode.dark; // You can define a dim theme as well
      default:
        return ThemeMode.light;
    }
  }
}
