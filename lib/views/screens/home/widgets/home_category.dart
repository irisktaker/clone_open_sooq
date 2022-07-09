// ignore_for_file: must_be_immutable

import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:open_sooq/utils/custom_text_style.dart';
import 'package:open_sooq/models/banner_images_model.dart';
import 'package:open_sooq/views/screens/home/home_bloc.dart';
import 'package:open_sooq/views/screens/filter/filter_screen.dart';

class HomeCategoryWidget extends StatelessWidget {
  HomeCategoryWidget({required this.homeBloc, Key? key}) : super(key: key);

  HomeBloc homeBloc;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      padding: const EdgeInsets.symmetric(vertical: 10),
      color: Colors.white,
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(top: 16),
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.2,
              ),
              controller: ScrollController(),
              itemCount: homeBloc.listOfCategories.length,
              itemBuilder: (context, index) =>
                  buildColumn(homeBloc.listOfCategories[index], index),
            ),
          ),
        ],
      ),
    );
  }

  Column buildColumn(CategoriesModel item, int index) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            if (item.name == "All") {
              Get.to(const FilterScreen());
            }
          },
          child: SizedBox(
            width: 90,
            height: 90,
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                        homeBloc.listOfCategories[index].image,
                      ),
                    ),
                  ),
                ),
                homeBloc.listOfCategories[index].badge
                    ? Positioned(
                        top: 0,
                        left: 18,
                        child: Container(
                          width: 54,
                          height: 22,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.red[900],
                              borderRadius: BorderRadius.circular(8)),
                          child: const Text(
                            "New",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
        ),
        CustomText(
          title: homeBloc.listOfCategories[index].name,
          fontSize: 14,
          fontColor: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}
