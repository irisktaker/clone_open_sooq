import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:open_sooq/services/secure_service.dart';
import 'package:open_sooq/utils/custom_text_style.dart';
import 'package:open_sooq/models/storage_item_model.dart';
import 'package:open_sooq/models/http/countries_model.dart';
import 'package:open_sooq/utils/constants/all_constants.dart';
import 'package:open_sooq/views/screens/start_up/widgets/list_of_countries.dart';
import 'package:open_sooq/views/screens/start_up/widgets/change_language_card.dart';

import 'start_up_bloc.dart';

class StartUpScreen extends StatefulWidget {
  const StartUpScreen({Key? key}) : super(key: key);

  @override
  State<StartUpScreen> createState() => _StartUpScreenState();
}

class _StartUpScreenState extends State<StartUpScreen> {
  final _bloc = StartUpBloc();
  final StorageService _storageService = StorageService();
  late List<StorageItemModel> items;
  bool loading = true;

  @override
  void initState() {
    super.initState();
    _bloc.getListOfCountries();
    initList();
  }

  void initList() async {
    items = await _storageService.readAllSecureData();
    loading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Obx(
                  () => ChangeLanguageCard(
                    languageSelectedIndex: _bloc.languageSelectedIndex.value,
                    valueChanged: (value) async {
                      _bloc.languageSelectedIndex.value = value;
                      _bloc.refreshAppWithLanguageCode(
                        context,
                        value == 0 ? "en" : value == 1 ? "tr" : "ar",
                      );
                    },
                  ),
                ),
              ),
              CustomText(
                title: AppLocalizations.of(context)!.select_country_text,
                fontColor: AppColors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 6),
              ValueListenableBuilder<List<CountriesData>?>(
                valueListenable: _bloc.listOfCountries,
                builder: (context, snapshot, child) {
                  return ListOfCountries(
                    listOfCountries: snapshot,
                    selectedLanguage:
                        _bloc.languageSelectedIndex.value == 0 ? "en" : "ar",
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
