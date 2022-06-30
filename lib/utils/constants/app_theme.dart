import 'package:flutter/material.dart';
import 'package:open_sooq/utils/constants/all_constants.dart';

//... DARK MODE
final darkThemeMode = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: AppColors.darkBackgroundColor,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  canvasColor: AppColors.darkBackgroundColor,
  primaryColor: Colors.white,
  colorScheme: const ColorScheme.light(
    background: AppColors.mainBlue,
    onSurface: AppColors.white,
  ),
  iconTheme: const IconThemeData(
    color: AppColors.white,
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: AppColors.greyColor,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      minimumSize: const Size(double.infinity, 56),
      primary: AppColors.buttonColor,
      onPrimary: AppColors.greyColor2,
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: AppColors.darkBackgroundColor,
    selectedItemColor: AppColors.buttonColor,
    unselectedItemColor: AppColors.greyColor,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.darkBackgroundColor,
    foregroundColor: AppColors.white,
    elevation: 0,
    centerTitle: true,
  ),
);

//... LIGHT MODE
final lightThemeMode = ThemeData(
  scaffoldBackgroundColor: AppColors.lightBackgroundColor,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primaryColor: Colors.black,
  backgroundColor: AppColors.white,
  primaryColorLight: Colors.black,
  canvasColor: AppColors.lightBackgroundColor,
  colorScheme: const ColorScheme.light(
    background: AppColors.mainBlue,
    primary: AppColors.white,
    onSurface: AppColors.white,
  ),

  /// ..
  iconTheme: const IconThemeData(
    color: AppColors.black,
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: AppColors.indyBlue,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      minimumSize: const Size(double.infinity, 56),
      primary: AppColors.orangeWeb,
      onPrimary: AppColors.indyBlue,
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: AppColors.white,
    selectedItemColor: AppColors.spaceCadet,
    unselectedItemColor: AppColors.indyBlue,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.white,
    foregroundColor: AppColors.indyBlue,
    elevation: 0,
    centerTitle: true,
  ),
);
