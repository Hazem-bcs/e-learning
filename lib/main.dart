import 'package:elearnnig/core/theme/dark_theme.dart';
import 'package:elearnnig/core/theme/light_theme.dart';
import 'package:elearnnig/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/localization/translation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: MyTranslation(),
      theme: getLightThemeData(),
      darkTheme: getDarkThemeData(),
      themeMode: ThemeMode.light,
      getPages: routes,
    );
  }
}
