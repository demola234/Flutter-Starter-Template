import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app/app.dart';
import 'app/app_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  AppConfig.create(
    appName: 'Production Flavor Example',
    baseUrl: 'https://dev.dwirandyh.com',
    primaryColor: Colors.blue,
    flavor: Flavor.production,
  );
  runApp(const StarterTemplateApp(
     title: 'Production'
  ));
}