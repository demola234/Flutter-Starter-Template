import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/theme/theme_detector.dart';

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => _changeTheme(context, ThemeModeEnum.Light),
              child: const Text('Light Theme'),
            ),
            ElevatedButton(
              onPressed: () => _changeTheme(context, ThemeModeEnum.Dark),
              child: const Text('Dark Theme'),
            ),
            ElevatedButton(
              onPressed: () => _changeTheme(context, ThemeModeEnum.Dim),
              child: const Text('Dim Theme'),
            ),
          ],
        ),
      ),
    );
  }

  void _changeTheme(BuildContext context, ThemeModeEnum newTheme) {
    ref.read(themeProvider.notifier).setTheme(newTheme);
  }
}
