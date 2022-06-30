import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';

import 'package:open_sooq/app.dart';
import 'package:open_sooq/models/http/countries_model.dart';
import 'package:open_sooq/services/filter_service.dart';
import 'package:open_sooq/utils/singleton/singleton.dart';

class StartUpBloc {
  RxInt languageSelectedIndex = 0.obs;

  ValueNotifier<List<CountriesData>> listOfCountries =
      ValueNotifier<List<CountriesData>>([]);

  void getListOfCountries() {
    FilterService().getCountries().then((value) {
      listOfCountries.value = value;
    });
  }

  void refreshAppWithLanguageCode(BuildContext context, String code) {
    Singleton.instance.selectedLanguage = code;
    listOfCountries.value = [];

    MyApp.of(context)!.setLocal(
      Locale.fromSubtags(languageCode: code),
    );
    getListOfCountries();
  }
}
