import 'package:flutter/material.dart';
import 'package:open_sooq/models/options_list_model.dart';

class AccountBloc {
  List<OptionsListModel> list1 = [
    OptionsListModel('Sales Team', Icons.person, Colors.grey),
  ];

  List<OptionsListModel> list2 = [
    OptionsListModel('Create Shop Now', Icons.shop, Colors.blue),
    OptionsListModel('Account Details', Icons.king_bed, Colors.blue, const Text("Free Member")),
    OptionsListModel('ID & Commercial Register', Icons.king_bed, Colors.blue)
  ];

  List<OptionsListModel> list3 = [
    OptionsListModel('Wallet', Icons.wallet, Colors.green),
    OptionsListModel('Add Credit', Icons.add_circle_outlined, Colors.green),
    OptionsListModel('Recharge Card', Icons.add_card, Colors.green),
    OptionsListModel('Buy Bundles', Icons.brunch_dining_outlined, Colors.green),
  ];

  List<OptionsListModel> list4 = [
    OptionsListModel('Car Reports', Icons.sticky_note_2, Colors.red[400]!),
    OptionsListModel('Hide Promotional Ads', Icons.not_interested, Colors.red[400]!),
  ];

  List<OptionsListModel> list5 = [
    OptionsListModel('Jop Profile', Icons.work, Colors.grey),
  ];

  List<OptionsListModel> list6 = [
    OptionsListModel('Post Your Add', Icons.camera_enhance_rounded, Colors.orangeAccent),
    OptionsListModel('Ads', Icons.ad_units, Colors.grey),
    OptionsListModel('Favorite Ads', Icons.favorite, Colors.grey),
    OptionsListModel('Recently Viewed Ads', Icons.visibility, Colors.grey),
    OptionsListModel('Recent Searches', Icons.search, Colors.grey),
    OptionsListModel('Saved Search', Icons.search_off_rounded, Colors.grey),
  ];

  List<OptionsListModel> list7 = [
    OptionsListModel('Followers', Icons.person, Colors.grey),
    OptionsListModel('Following', Icons.person_add, Colors.grey),
  ];

  List<OptionsListModel> list8 = [
    OptionsListModel('Invite Your Friends', Icons.groups, Colors.grey),
    OptionsListModel('Share Your Ads', Icons.ios_share_rounded, Colors.grey),
  ];

  List<OptionsListModel> list9 = [
    OptionsListModel('Help', Icons.help, Colors.grey),
    OptionsListModel('About OpenSooq', Icons.logo_dev, Colors.grey),
  ];
}
