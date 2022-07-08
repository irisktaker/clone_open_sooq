import 'package:flutter/material.dart';
import 'package:open_sooq/views/screens/home/home_bloc.dart';
import 'package:open_sooq/utils/constants/all_constants.dart';

class HomeSearchBar extends StatelessWidget {
  final HomeBloc homeBloc;
  const HomeSearchBar(this.homeBloc, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: AppColors.lightBackgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        controller: homeBloc.searchController,
        cursorColor: Colors.black,
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.bottom,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search, color: Colors.grey[300]!),
          border: InputBorder.none,
          hintText: "Search in OpenSooq...",
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
    );
  }
}
