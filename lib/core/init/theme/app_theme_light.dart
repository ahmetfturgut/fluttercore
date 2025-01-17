import 'package:flutter/material.dart';

import '../../constants/app/app_constants.dart';
import 'app_theme.dart';

class AppThemeLight extends AppTheme {
  static AppThemeLight? _instance;
  static AppThemeLight get instance {
    return _instance ??= AppThemeLight._init();
  }

  AppThemeLight._init();

  @override
  ThemeData get theme => ThemeData(
        fontFamily: ApplicationConstants.FONT_FAMILY,
        colorScheme: _appColorScheme,
         appBarTheme: ThemeData.light().appBarTheme.copyWith(
            color: Colors.transparent,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black87, size: 21)),
        bottomNavigationBarTheme: ThemeData.light()
            .bottomNavigationBarTheme
            .copyWith(
                selectedItemColor: Colors.amber[800],
                unselectedItemColor: Colors.white),
        inputDecorationTheme: InputDecorationTheme(
            focusColor: Colors.black12,
            labelStyle: TextStyle(),
            fillColor: Color(0xfff1f3f8),
            contentPadding: EdgeInsets.zero,
            filled: true,
            // border: OutlineInputBorder(borderSide: BorderSide(width: 0.3)),
            focusedBorder: OutlineInputBorder()),
        scaffoldBackgroundColor: Color(0xffffffff),
        floatingActionButtonTheme:
            ThemeData.light().floatingActionButtonTheme.copyWith(),
        buttonTheme: ThemeData.light().buttonTheme.copyWith(
              colorScheme: ColorScheme.light(
                onError: Color(0xffFF2D55),
              ),
            ),
        tabBarTheme: tabBarTheme,
      );

  TabBarTheme get tabBarTheme {
    return TabBarTheme(
       labelColor: _appColorScheme.onSecondary,
       unselectedLabelColor: _appColorScheme.onSecondary.withOpacity(0.2),
      // unselectedLabelStyle: textThemeLight.headline4.copyWith(color: colorSchemeLight.red),
    );
  }



  ColorScheme get _appColorScheme {
    return ColorScheme(
        surfaceVariant: Color(0xFF051028).withOpacity(0.1),
        primary: Color(0xffffffff),
        secondary: Color(0xFFB3BECD),
        surface: Color(0xFF6E7F98), //xx
        background: Color(0xfff6f9fc), //xx
        error: Colors.red[900]!,
        onPrimary: Colors.black45,
        onSecondary: Colors.black, //x
        onSurface: Color(0xFF051028),
        onBackground: Color(0xFF2859E9),
        onError: Color(0xFFF3177E0), //xx
        brightness: Brightness.light);
  }
}
