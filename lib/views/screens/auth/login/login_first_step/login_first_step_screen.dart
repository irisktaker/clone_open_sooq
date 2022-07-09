import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:open_sooq/utils/custom_text_style.dart';
import 'package:open_sooq/views/widgets/custom_button_2.dart';
import 'package:open_sooq/views/screens/btn_nav_bar/btn_nav_bar_screen.dart';

import '../login_second_step/login_second_step_screen.dart';

class LoginFirstStepScreen extends StatelessWidget {
  const LoginFirstStepScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 30, height: 30),
                  Image.asset("assets/images/logo-tv-logo.png", scale: 3),
                  SizedBox(
                    width: 30,
                    height: 30,
                    child: IconButton(
                      onPressed: () => Get.to(const BtnNavBarScreen()),
                      icon: const Icon(
                        Icons.close,
                      ),
                    ),
                  ),
                ],
              ),
              Image.asset("assets/images/login_1.png"),
              const CustomText(
                title: "Login",
                fontSize: 32,
                fontColor: Color(0xff444444),
                fontWeight: FontWeight.bold,
              ),
              const CustomText(
                title: "this is the first page for login",
                fontSize: 12,
                fontColor: Color(0xffBFBFBF),
              ),
              CustomButton2(
                  buttonTitle: "SIGN IN / REGISTER",
                  enableButton: true,
                  onTap: () {
                    Get.to(() => LoginSecondStepScreen());
                  }),
              const CustomText(
                title:
                    "By clicking \"SIGN IN / REGISTER\" you will be agreed to the",
                fontSize: 11,
                fontColor: Color(0xff444444),
              ),
              TextButton(
                onPressed: () async {
                  var url = "https://www.talabat.com/jordan/terms";
                  if (!await launchUrl(Uri.parse(url))) {
                    throw 'Could not launch $url';
                  }
                },
                child: const CustomText(
                  title: "Terms & Conditions",
                  fontSize: 12,
                  fontColor: Color(0xff4CB6EA),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      // why back?
                      Get.back();
                    },
                    child: const CustomText(
                      title: "Skip",
                      fontSize: 15,
                      fontColor: Color(0xff4CB6EA),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
