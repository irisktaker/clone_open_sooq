import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:open_sooq/utils/custom_text_style.dart';
import 'package:open_sooq/utils/constants/all_constants.dart';
import 'package:open_sooq/views/widgets/custom_button.dart';

bool showContactSheet = false;

Future<Widget> contactBottomSheet(BuildContext context) async {
  Size size = MediaQuery.of(context).size;

  return await Get.bottomSheet(
    isDismissible: true,
    SizedBox(
      height: 378,
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
          Container(
            height: 334,
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
                  title: "Report a Problem",
                  fontSize: 20,
                  fontColor: Color(0xFF444444),
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(height: 6),
                const CustomText(
                  title: "Your feedback help us to improve",
                  fontSize: 12,
                  fontColor: Color(0xFF444444),
                  fontWeight: FontWeight.normal,
                ),
                const SizedBox(height: 12),
                Image.asset(
                  "assets/images/contact.png",
                  width: 100,
                ),
                const SizedBox(height: 16),
                CustomButton(
                  onTap: () {},
                  title: "Contact us on What'sUp",
                ),
                const SizedBox(height: 6),
                CustomButton(
                  onTap: () {},
                  title: "Report a problem",
                ),
                const SizedBox(height: 6),
                CustomButton(
                  onTap: () {},
                  title: "Have a suggestion!",
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
