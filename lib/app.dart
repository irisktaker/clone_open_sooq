// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:open_sooq/utils/hive_data/hive_constant.dart';
import 'package:open_sooq/views/screens/btn_nav_bar/btn_nav_bar_screen.dart';
import 'package:open_sooq/views/screens/start_up/start_up_screen.dart';

import 'utils/constants/all_constants.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
  static _MyAppState? of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>();
}

class _MyAppState extends State<MyApp> {
  Locale? locale;
  Box? storageBox;

  void setLocal(Locale value) {
    setState(() => locale = value);
  }

  @override
  void initState() {
    storageBox = Hive.box(DatabaseBoxConstant.storage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return GetMaterialApp(
      locale: locale,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar', ''),
        Locale('en', ''),
      ],
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: lightThemeMode,
      darkTheme: darkThemeMode,
      home: storageBox!.get(DatabaseFieldConstants.countryId) != null
          ? BtnNavBarScreen()
          : const StartUpScreen(),
    );
  }
}
