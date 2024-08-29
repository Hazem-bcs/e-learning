import 'package:elearnnig/core/theme/dark_theme.dart';
import 'package:elearnnig/core/theme/light_theme.dart';
import 'package:elearnnig/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'binding.dart';
import 'core/localization/translation.dart';
import 'core/services/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  await Supabase.initialize(
    url: 'https://hchjrzrvbnzlyidyjbev.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImhjaGpyenJ2Ym56bHlpZHlqYmV2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjMzMzMwMzIsImV4cCI6MjAzODkwOTAzMn0.lwZUOrRyCzpxbri93HWuZ-Rf-trKdMB4-HNsSur-Yvs',
  );
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
      initialBinding: MyBinding(),
      getPages: routes,
    );
  }
}
