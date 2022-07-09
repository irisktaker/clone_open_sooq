import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart'; 

import '../adds/adds_screen.dart';
import '../chat/chat_screen.dart';
import '../home/home_screen.dart';
import '../account/account_screen.dart';
import '../add_post/add_post_screen.dart';

class BtnNavBarBloc {
  final ValueNotifier<int> currentTabIndexNotifier = ValueNotifier<int>(0);

  List<Widget> navTabs = [
    HomeScreen(),
    ChatScreen(),
    const AddPostScreen(),
    const AddsScreen(),
    AccountScreen()
  ];

  String title(int index, context) {
    switch (index) {
      case 0:
        return AppLocalizations.of(context)!.bottom_tab_bar_home;
      case 1:
        return AppLocalizations.of(context)!.bottom_tab_bar_chat;
      case 3:
        return AppLocalizations.of(context)!.bottom_tab_bar_my_post;
      case 4:
        return AppLocalizations.of(context)!.bottom_tab_bar_profile;
      default:
        return "";
    }
  } 
}
