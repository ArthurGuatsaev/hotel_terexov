part of '../theme.dart';

ThemeData createLightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.bg,
    extensions: <ThemeExtension<dynamic>>[
      $MyThemeColor.light,
      $MyThemeText.light,
    ],
    primaryColor: AppColors.primary,
    focusColor: Colors.blue.withOpacity(0.2),
    appBarTheme: const AppBarTheme(
        centerTitle: true,
        backgroundColor: AppColors.appbar,
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(color: Colors.white)),
  );
}
