import 'package:elearnnig/core/theme/app_color.dart';
import 'package:flutter/material.dart';

ThemeData getLightThemeData() => ThemeData(
      appBarTheme: const AppBarTheme(),
      colorScheme: ColorScheme.light(
        primary: AppColor.primaryColor,
        onPrimary: AppColor.onPrimaryColor,
        secondary: AppColor.secondaryColor,
        onSecondary: AppColor.onSecondaryColor,
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 28,
          fontFamily: "Cairo",
          fontWeight: FontWeight.bold,
          color: AppColor.primaryColor,
        ),
        titleMedium: TextStyle(
          fontSize: 24,
          fontFamily: "Cairo",
          fontWeight: FontWeight.bold,
          color: AppColor.primaryColor,
        ),
        titleSmall: TextStyle(
          fontSize: 20,
          fontFamily: "Cairo",
          fontWeight: FontWeight.bold,
          color: AppColor.primaryColor,
        ),
        bodyLarge: TextStyle(
          fontSize: 28,
          fontFamily: "Cairo",
          color: AppColor.greyColor,
        ),
        bodyMedium: TextStyle(
          fontSize: 16,
          fontFamily: "Cairo",
          color: AppColor.greyColor,
        ),
        bodySmall: TextStyle(
          fontSize: 14,
          fontFamily: "Cairo",
          color: AppColor.greyColor,
        ),
        labelLarge: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontFamily: "Cairo",
          color: AppColor.secondaryColor,
        ),
        labelMedium: TextStyle(
          fontSize: 18,
          fontFamily: "Cairo",
          color: AppColor.secondaryColor,
        ),
        labelSmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          fontFamily: "Cairo",
          color: AppColor.secondaryColor,
        ),
        displayLarge: TextStyle(
            letterSpacing: 1,
            fontSize: 28,
            fontWeight: FontWeight.bold,
            fontFamily: "Cairo",
            color: AppColor.secondaryColor,
            shadows: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(1, 4),
              ),
            ]),
        displayMedium: TextStyle(
            letterSpacing: 2,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: "Cairo",
            color: Colors.black,
            shadows: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(1, 4),
              ),
            ]),
        displaySmall: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: "Cairo",
            color: Colors.black,
            shadows: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(1, 4),
              ),
            ]),
      ),
      elevatedButtonTheme: const ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Color(0xFF0E74BC)),
        ),
      ),
      fontFamily: "Cairo",
    );
