import 'package:flutter/cupertino.dart';

class OptionsListModel {
  String title;
  IconData icon;
  Color iconsBGColor;
  Widget? optionalChild;
  OptionsListModel(this.title, this.icon, this.iconsBGColor, [this.optionalChild]);
}