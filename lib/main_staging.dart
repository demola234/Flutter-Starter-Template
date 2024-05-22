import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'app/app.dart';
import 'app/app_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  String envFile = 'env/.env.staging';

  await dotenv.load(fileName: envFile);
  await PackageInfo.fromPlatform();

  final String appName = dotenv.get('APP_NAME');
  final String baseUrl = dotenv.get('BASE_URL');

  AppConfig.create(
    appName: appName,
    baseUrl: baseUrl,
    primaryColor: Colors.blue,
    flavor: Flavor.staging,
  );
  runApp(const StarterTemplateApp(title: 'Staging'));
}
