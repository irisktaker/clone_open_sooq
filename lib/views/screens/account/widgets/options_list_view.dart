// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:open_sooq/data/models/options_list_model.dart';
import 'package:open_sooq/utils/constants/all_constants.dart';
import 'package:open_sooq/utils/custom_text_style.dart';

class OptionsListView extends StatelessWidget {
  OptionsListView(this.list, this.onPressed, {Key? key}) : super(key: key);

  List<OptionsListModel> list;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildCustomContainer(Colors.grey.shade800, Icons.person, "Sales Team"),
      ],
    );
  }

  _buildCustomContainer(Color iconBGColor, IconData icon, String title,
      [Widget? optionalChild]) {
    return Container(
      height: list.length * 50,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
              color: AppColors.greyColor, offset: Offset(1, 1), blurRadius: 4)
        ],
      ),
      child: ListView.separated(
        itemCount: list.length,
        physics: const NeverScrollableScrollPhysics(),
        // itemExtent: 40,
        separatorBuilder: (context, int i) => const SizedBox(height: 17),
        itemBuilder: (ctx, index) {
          return InkWell(
            onTap: () {
              //----
              logInformationMessage(list[index].title);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            color: list[index].iconsBGColor,
                            borderRadius: BorderRadius.circular(4)),
                        child: Icon(list[index].icon,
                            color: AppColors.white, size: 23)),
                    const SizedBox(width: 12),
                    CustomText(
                        title: list[index].title,
                        fontSize: 16,
                        fontColor: AppColors.black),
                  ],
                ),
                // const Spacer(),
                Row(
                  children: [
                    Container(child: optionalChild),
                    const SizedBox(width: 8),
                    Icon(Icons.arrow_forward_ios,
                        size: 16, color: Colors.grey.shade900),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
