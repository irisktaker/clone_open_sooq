import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:open_sooq/utils/constants/all_constants.dart';
import 'package:open_sooq/utils/custom_text_style.dart';
import 'package:open_sooq/views/screens/auth/login/login_first_step/login_first_step_screen.dart';

class AccountHeaderView extends StatelessWidget {
  const AccountHeaderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.symmetric(vertical: 10),
      color: AppColors.white,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    CircleAvatar(
                      backgroundColor: AppColors.lightBackgroundColor,
                      radius: 36,
                      backgroundImage: NetworkImage(
                          "https://cdn.dribbble.com/users/1782018/screenshots/4592002/dribble_shot.jpg"),
                    ),
                    SizedBox(height: 12),
                    Text("Naser"),
                    Text("User Id 664715"),
                  ],
                ),
                Column(
                  children: [
                    _buttonView(
                        () => Get.to(() => const LoginFirstStepScreen()),
                        AppColors.white,
                        "Login",
                        AppColors.black),
                    // _buttonView((){}, AppColors.white, "Edit Profile", AppColors.black),
                    const SizedBox(height: 8),
                    _buttonView(() {}, AppColors.mainBlue, "Open Shop",
                        AppColors.white),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 6),
          const Divider(thickness: 1.3),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _bottomView("0", "Ads"),
              _bottomView("83,225", "Views"),
              _bottomView("0", "Credits"),
            ],
          ),
        ],
      ),
    );
  }

  _buttonView(VoidCallback onTap, Color color, String text, Color fontColor) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 110,
        height: 38,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: AppColors.mainBlue),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(child: Text(text, style: TextStyle(color: fontColor))),
      ),
    );
  }

  _bottomView(String value, String title) {
    return Column(
      children: [
        CustomText(
            title: value,
            fontSize: 15,
            fontColor: AppColors.black,
            fontWeight: FontWeight.bold),
        CustomText(title: title, fontSize: 15, fontColor: AppColors.greyColor),
      ],
    );
  }
}
