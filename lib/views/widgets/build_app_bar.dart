import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:open_sooq/utils/constants/all_constants.dart';
import 'package:open_sooq/views/widgets/contact_bottom_sheet.dart';
import 'package:open_sooq/views/screens/settings/settings_screen.dart';
import 'package:open_sooq/views/screens/notifications/notifications_screen.dart';

PreferredSizeWidget buildAppBar(BuildContext context, String title, int index) {
  return AppBar(
    toolbarHeight: 70,
    automaticallyImplyLeading: false,
    backgroundColor: AppColors.white,
    title: index == 0 ? Image.asset('assets/images/logo-tv-logo.png', width: 50) : Text(title, style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
    centerTitle: false,
    elevation: 0,
    actions: [
      index == 1 || index == 4 ?  IconButton(
          padding: const EdgeInsets.all(0.0),
          onPressed: () => Get.to(() => const SettingsScreen()),
          icon: const Icon(Icons.settings)): Container(),
      IconButton(
        padding: const EdgeInsets.all(0.0),
        onPressed: () => Get.to(() => const NotificationsScreen()),
        icon: const Icon(Icons.notifications)),
      IconButton(
          padding: const EdgeInsets.all(0.0),
          onPressed: () async => await contactBottomSheet(context),
          icon: const Icon(Icons.phone_in_talk)),
    ],
  );
}