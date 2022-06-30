import 'package:flutter/material.dart';
import 'package:open_sooq/utils/constants/all_constants.dart';
import 'package:open_sooq/utils/custom_text_style.dart';
import 'package:url_launcher/url_launcher.dart';

class FollowUsView extends StatelessWidget {
  const FollowUsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 74,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: AppColors.greyColor,
            offset: Offset(1, 1),
            blurRadius: 4,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CustomText(title: "Follow us", fontSize: 20, fontColor: AppColors.black, fontWeight: FontWeight.bold),
          Row(
            children: [
              _socialMediaContainer("facebook", "facebook.com"),
              _socialMediaContainer("youtube",  "youtube.com"),
              _socialMediaContainer("linkedin", "linkedin.com"),
            ],
          ),
        ],
      ),
    );
  }

  _socialMediaContainer(String imgURL,String linkURL) {
    return InkWell(
      onTap: () async {
        if(!await launchUrl(Uri.parse("https://www.$linkURL"))) throw "Could not launch $linkURL";
      },
      child: Container(
        width: 40,
        height: 40,
        margin: const EdgeInsets.only(left: 12),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.asset("assets/icons/$imgURL.png"),
      ),
    );
  }
}
