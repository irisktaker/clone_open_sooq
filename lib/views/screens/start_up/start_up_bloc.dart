import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:open_sooq/app.dart';
import 'package:open_sooq/utils/singleton/singleton.dart';
import 'package:open_sooq/utils/constants/all_constants.dart';
import 'package:open_sooq/data/services/filter/filter_service.dart';
import 'package:open_sooq/data/models/http/country/countries_model.dart';

class StartUpBloc {
  RxInt languageSelectedIndex = 0.obs;

  ValueNotifier<List<CountriesData>?> listOfCountries =
      ValueNotifier<List<CountriesData>?>(null);

  void getListOfCountries() {
    FilterService().getCountries().then((value) {
      logDebugMessage("Object Value: \n$value");

      listOfCountries.value = value;
    });
  }

  void refreshAppWithLanguageCode(BuildContext context, String code) {
    // print("code: $code"); // en, tr, ar

    Singleton.instance.selectedLanguage = code;
    listOfCountries.value = null;

    MyApp.of(context)!.setLocal(
      Locale.fromSubtags(languageCode: code),
    );
    getListOfCountries();
  }
}
