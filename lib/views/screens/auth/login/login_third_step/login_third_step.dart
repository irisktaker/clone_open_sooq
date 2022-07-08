// ignore_for_file: must_be_immutable

import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:open_sooq/utils/custom_text_style.dart';
import 'package:open_sooq/utils/constants/all_constants.dart';
import 'package:open_sooq/views/screens/btn_nav_bar/btn_nav_bar_screen.dart';
import 'package:open_sooq/views/widgets/custom_button_2.dart';

class LoginThirdStep extends StatelessWidget {
  LoginThirdStep(
      {Key? key, required this.countryCode, required this.mobileNumber})
      : super(key: key);

  String countryCode = "";
  String mobileNumber = "";

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    logWTFMessage(countryCode);
    logWTFMessage(mobileNumber);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 30,
                        height: 30,
                        child: IconButton(
                          onPressed: () => Get.back(),
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Color(0xff4CB6EA),
                          ),
                        ),
                      ),
                      Image.asset("assets/images/logo-tv-logo.png", scale: 3),
                      const SizedBox(width: 30, height: 30),
                    ],
                  ),
                  Image.asset("assets/images/login_3.png"),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    child: CustomText(
                      title: "Enter Your Phone Number in the field bellow",
                      fontSize: 14,
                      fontColor: Colors.grey,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 54,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[300]!),
                      color: Colors.grey[200],
                    ),
                    child: TextField(
                      controller: _controller,
                      cursorColor: Colors.black,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      // maxLength: 6,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter OTP Code",
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  CustomButton2(
                    enableButton: _controller.text.isNotEmpty ? true : false,
                    onTap: () => Get.to(const BtnNavBarScreen()),
                    buttonTitle: "Verify",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
