// ignore_for_file: must_be_immutable

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';

import 'package:open_sooq/utils/custom_text_style.dart';
import 'package:open_sooq/views/widgets/custom_button_2.dart';
import 'package:open_sooq/views/screens/auth/login/login_third_step/login_third_step.dart';

class LoginSecondStepScreen extends StatelessWidget {
  LoginSecondStepScreen({Key? key}) : super(key: key);

  final TextEditingController _phoneNumberController = TextEditingController();
  String countryCode = "962";

  @override
  Widget build(BuildContext context) {
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
                  Image.asset("assets/images/login_2.png"),
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
                    child: Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.26,
                          child: CountryPickerDropdown(
                            initialValue: 'JO',
                            itemBuilder: _buildDropdownItem,
                            priorityList: [
                              CountryPickerUtils.getCountryByIsoCode('GB'),
                              CountryPickerUtils.getCountryByIsoCode('CN'),
                            ],
                            isExpanded: true,
                            sortComparator: (Country a, Country b) =>
                                a.isoCode.compareTo(b.isoCode),
                            onValuePicked: (Country country) {
                              countryCode = country.phoneCode;
                            },
                          ),
                        ),
                        VerticalDivider(
                          color: Colors.grey[400],
                          thickness: 1.5,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.74 - 78,
                          child: TextField(
                            controller: _phoneNumberController,
                            cursorColor: Colors.black,
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Your mobile number",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  CustomButton2(
                    enableButton:
                        _phoneNumberController.text.isNotEmpty ? true : false,
                    onTap: () => Get.to(LoginThirdStep(
                        countryCode: countryCode,
                        mobileNumber: _phoneNumberController.text,)),
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

  Widget _buildDropdownItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          const SizedBox(width: 8.0),
          Text("+${country.phoneCode}"),
        ],
      );
}
