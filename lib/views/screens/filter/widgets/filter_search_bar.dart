// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:open_sooq/utils/constants/all_constants.dart';

class FilterSearchBar extends StatelessWidget {
  FilterSearchBar({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: 1,
      duration: const Duration(milliseconds: 800),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextField(
          controller: searchController,
          cursorColor: Colors.black,
          textAlign: TextAlign.start,
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search, color: Colors.grey[300]!),
            border: InputBorder.none,
            fillColor: AppColors.lightBackgroundColor,
            filled: true,
            hintText: "Search for category...",
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.grey[200]!),
              borderRadius: BorderRadius.circular(20.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.grey[200]!),
              borderRadius: BorderRadius.circular(20.0),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.red[200]!),
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
      ),
    );
  }
}
