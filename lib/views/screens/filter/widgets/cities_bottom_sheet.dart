import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:open_sooq/utils/custom_text_style.dart';
import 'package:open_sooq/utils/constants/all_constants.dart';
import 'package:open_sooq/views/screens/filter/filter_bloc.dart';

import 'filter_search_bar.dart';

bool showCitiesSheet = false;

Future<Widget> citiesBottomSheet(BuildContext context) async {
  Size size = MediaQuery.of(context).size;
  final filterBloc = FilterBloc();

  ValueNotifier<bool> isIndexSelected = ValueNotifier<bool>(false);
  List<int> selectedCities = [];

  return await Get.bottomSheet(
    isDismissible: true,
    isScrollControlled: true,
    enterBottomSheetDuration: const Duration(milliseconds: 500),
    exitBottomSheetDuration: const Duration(milliseconds: 500),
    SizedBox(
      height: size.height * 0.80,
      child: Column(
        children: [
          Container(
            width: 48,
            height: 8,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          const SizedBox(height: 2),
          Expanded(
            child: Container(
              width: size.width,
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  const CustomText(
                    title: "Cities",
                    fontSize: 20,
                    fontColor: Color(0xFF444444),
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(height: 6),
                  const CustomText(
                    title: "Choose a city",
                    fontSize: 12,
                    fontColor: Color(0xFF444444),
                    fontWeight: FontWeight.normal,
                  ),
                  const SizedBox(height: 12),
                  FilterSearchBar(),
                  const SizedBox(height: 6),
                  Expanded(
                    child: ListView.separated(
                      itemCount: 10,
                      physics: const BouncingScrollPhysics(),
                      separatorBuilder: (ctx, i) =>
                          Divider(color: Colors.grey[400]!),
                      itemBuilder: (context, index) {
                        return SizedBox(
                          height: 44,
                          child: ListTile(
                            onTap: () {
                              // add all items to list
                              if (index == 0) {
                                for (int i = 0;
                                    i < filterBloc.jordanCitiesList.length;
                                    i++) {
                                  selectedCities.add(i);

                                  

                                  print(
                                      "selectedCities.length: ${selectedCities.length}");
                                }
                              } else {
                                // add only the selected item to list
                                selectedCities.add(index);
                              }
                              // check box selected or not
                              isIndexSelected.value = !isIndexSelected.value;
                            },
                            // leading:
                            title:
                                Text(filterBloc.jordanCitiesList[index].name),
                            trailing: ValueListenableBuilder<bool>(
                              valueListenable: isIndexSelected,
                              builder: (context, snapshots, __) {
                                return selectedCities.contains(index)
                                    ? const Icon(Icons.check_box)
                                    : const Icon(Icons.check_box_outline_blank);
                              },
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
