import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:open_sooq/utils/custom_text_style.dart';
import 'package:open_sooq/data/models/banner_images_model.dart';
import 'package:open_sooq/utils/constants/all_constants.dart';
import 'package:open_sooq/views/screens/filter/widgets/filter_search_bar.dart';

bool showCategoriesSheet = false;

Future<Widget> categoriesBottomSheet(
    BuildContext context, List<CategoriesModel> listOfCategories) async {
  Size size = MediaQuery.of(context).size;

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
                    title: "All Categories",
                    fontSize: 20,
                    fontColor: Color(0xFF444444),
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(height: 6),
                  const CustomText(
                    title: "Search Your Favorite Category",
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
                              print(index);
                            },
                            leading: CircleAvatar(
                              radius: 16,
                              backgroundColor: Colors.grey,
                              backgroundImage:
                                  NetworkImage(listOfCategories[index].image),
                            ),
                            title: Text(listOfCategories[index].name),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                              size: 12,
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
