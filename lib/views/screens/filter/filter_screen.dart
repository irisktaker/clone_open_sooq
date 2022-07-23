// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:open_sooq/data/models/banner_images_model.dart';
import 'package:open_sooq/views/widgets/build_app_bar.dart';
import 'package:open_sooq/views/screens/filter/widgets/cities_bottom_sheet.dart';
import 'package:open_sooq/views/screens/filter/widgets/categories_bottom_sheet.dart';

import 'filter_bloc.dart';

class FilterScreen extends StatelessWidget {
  List<CategoriesModel> listOfCategories;
  FilterScreen({required this.listOfCategories, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, "Filter", -1),
      body: Column(
        children: [
          Container(
            height: 54,
            color: Colors.grey[200],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () => citiesBottomSheet(context),
                  child: const Text(
                    "Cites",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => categoriesBottomSheet(context, listOfCategories),
                  child: const Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
