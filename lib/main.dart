import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smartradio/controllers/homepage_controller.dart';
import 'package:smartradio/controllers/selectcity_controller.dart';
import 'package:smartradio/presentation/splash_screen.dart';
import 'core/app_export.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(SelectcityController());
  Get.put(HomepageController());
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await Future.delayed(1.seconds);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: AppLocalization(),
      locale: Get.deviceLocale,
      fallbackLocale: Locale('en', 'US'),
      title: 'SmartRadio',
      home: SplashScreen(),
    );
  }
}
