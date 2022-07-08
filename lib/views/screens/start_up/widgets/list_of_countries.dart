import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:flutter/material.dart';

import 'package:open_sooq/utils/custom_text_style.dart';
import 'package:open_sooq/models/http/countries_model.dart';
import 'package:open_sooq/utils/constants/all_constants.dart';
import 'package:open_sooq/utils/hive_data/hive_constant.dart';
import 'package:open_sooq/views/screens/btn_nav_bar/btn_nav_bar_screen.dart';

class ListOfCountries extends StatelessWidget {
  const ListOfCountries(
      {required this.listOfCountries, required this.selectedLanguage, Key? key})
      : super(key: key);

  final List<CountriesData>? listOfCountries;
  final String selectedLanguage;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: listOfCountries == null
          ? const Center(
              child: CircularProgressIndicator(color: Colors.blue),
            )
          : listOfCountries!.isNotEmpty
              ? ListView.builder(
                  itemCount: listOfCountries!.length,
                  itemBuilder: (context, index) {
                    return MaterialButton(
                      onPressed: () async {
                        // USING HIVE TO STORE VALUES
                        final generalHiveStorageBox = Hive.box(
                          DatabaseBoxConstant.storage,
                        );

                        // save the selected language to the general storage box
                        await generalHiveStorageBox.put(
                          DatabaseFieldConstants.language,
                          selectedLanguage,
                        );

                        // save the selected country to the general storage box by id
                        await generalHiveStorageBox.put(
                          DatabaseFieldConstants.countryId,
                          listOfCountries![index].id,
                        );

                        // print(DatabaseBoxConstant.storage);

                        Get.off(() => const BtnNavBarScreen());
                      },
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        height: 54,
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Theme.of(context).backgroundColor,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 40,
                              height: 40,
                              child: FadeInImage(
                                placeholder: const AssetImage(
                                  "assets/images/flag_placeholder.png",
                                ),
                                image: NetworkImage(
                                  listOfCountries![index].flagImage!,
                                  scale: 1,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: CustomText(
                                title: listOfCountries![index].name!,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                fontColor: AppColors.black,
                              ),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                )
              : const Center(
                  child: CustomText(
                    fontSize: 16,
                    fontColor: Colors.black,
                    title: 'List is empty.',
                  ),
                ),
    );
  }
}
