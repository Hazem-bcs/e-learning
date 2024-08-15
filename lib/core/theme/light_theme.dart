import 'package:flutter/material.dart';

ThemeData getLightThemeData() => ThemeData(
      appBarTheme: const AppBarTheme(),
      colorScheme: const ColorScheme.light(
        primary: Color(0xFF0E74BC),
        onPrimary: Colors.white,
        secondary: Colors.white,
        onSecondary: Color(0xFF0E74BC),
      ),
      textTheme: TextTheme(
        titleLarge: const TextStyle(
          fontSize: 28,
          fontFamily: "Cairo",
          fontWeight: FontWeight.bold,
          color: Color(0xFF0E74BC),
        ),
        titleMedium: const TextStyle(
          fontSize: 28,
          fontFamily: "Cairo",
          fontWeight: FontWeight.bold,
          color: Color(0xFF0E74BC),
        ),
        titleSmall: const TextStyle(
          fontSize: 28,
          fontFamily: "Cairo",
          fontWeight: FontWeight.bold,
          color: Color(0xFF0E74BC),
        ),
        bodyLarge: const TextStyle(
          fontSize: 28,
          fontFamily: "Cairo",
          color: Color(0xFF6C6C6C),
        ),
        bodyMedium: const TextStyle(
          fontSize: 16,
          fontFamily: "Cairo",
          color: Color(0xFF6C6C6C),
        ),
        bodySmall: const TextStyle(
          fontSize: 14,
          fontFamily: "Cairo",
          color: Color(0xFF6C6C6C),
        ),
        labelLarge: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontFamily: "Cairo",
          color: Colors.white,
        ),
        labelMedium: const TextStyle(
          fontSize: 18,
          fontFamily: "Cairo",
          color: Colors.white,
        ),
        labelSmall: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          fontFamily: "Cairo",
          color: Colors.white70,
        ),
        displayLarge: TextStyle(
            letterSpacing: 1,
            fontSize: 28,
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
