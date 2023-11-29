import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/localization/generated/strings.dart';
import 'core/localization/l10n.dart';
import 'core/theme/app_theme.dart';
import 'main.dart';

class StarterTemplateApp extends StatelessWidget {
  const StarterTemplateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: false,
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        locale: const Locale('en'),
        supportedLocales: L10n.all,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        localizationsDelegates: const [
          Strings.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
