// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:open_sooq/utils/constants/all_constants.dart';
import 'package:open_sooq/utils/custom_text_style.dart';

class ChangeLanguageCard extends StatelessWidget {
  const ChangeLanguageCard(
      {required this.languageSelectedIndex,
      required this.valueChanged,
      Key? key})
      : super(key: key);

  final int languageSelectedIndex;
  final Function(int) valueChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40, bottom: 36),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: AppColors.greyColor,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: CupertinoSlidingSegmentedControl<int>(
            thumbColor: CupertinoColors.systemBlue,
            backgroundColor: Theme.of(context).backgroundColor,
            padding: const EdgeInsets.all(6),
            groupValue: languageSelectedIndex,
            children: {
              0: buildSegment("English", languageSelectedIndex == 0),
              1: buildSegment("Turkish", languageSelectedIndex == 1),
              2: buildSegment("العربية", languageSelectedIndex == 2),
            },
            onValueChanged: (value) {
              valueChanged(value!);
            },
          ),
        ),
      ),
    );
  }

  Widget buildSegment(String text, bool selected) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      child: CustomText(
        title: text,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontColor: selected ? Colors.white : Colors.black,
      ),
    );
  }
}
