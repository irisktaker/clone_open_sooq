// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:open_sooq/utils/custom_text_style.dart';

class CustomButton extends StatelessWidget {
  CustomButton({required this.onTap, required this.title, Key? key})
      : super(key: key);
  VoidCallback onTap;
  String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 48,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFF444444),
          ),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Center(
          child: CustomText(
            title: title,
            fontSize: 15,
            fontColor: const Color(0xFF444444),
          ),
        ),
      ),
    );
  }
}
