import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:firebase_core/firebase_core.dart';  
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'package:open_sooq/app.dart';
import 'package:open_sooq/utils/constants/all_constants.dart';
import 'package:open_sooq/utils/hive_data/hive_constant.dart';

import 'firebase_options.dart';

void main() async {
  logInformationMessage("Application Started ... ");
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await MobileAds.instance.initialize();
  await Hive.initFlutter();
  await Hive.openBox(DatabaseBoxConstant.storage);

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

/// TODO :
/// More about Exceptions
/// More about Localization
/// Save selected language and country - Hive or Secure Storage
/// Profile Page
/// AdMob