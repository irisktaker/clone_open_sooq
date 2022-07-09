import 'package:flutter/material.dart';
import 'package:open_sooq/views/screens/home/widgets/home_search_bar.dart';
import 'package:open_sooq/views/widgets/ad_mob/ad_mob_banner.dart';

import 'home_bloc.dart';
import 'widgets/home_banner_widget.dart';
import 'widgets/home_category.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final _homeBloc = HomeBloc();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: ListView(
        controller: ScrollController(),
        children: [
          HomeSearchBar(_homeBloc),
          HomeBannerWidget(bloc: _homeBloc),
          HomeCategoryWidget(homeBloc: _homeBloc),
          const SizedBox(height: 16),
          const AdMobBanner(),
          const SizedBox(height: 16),
          const AdMobBanner(),
        ],
      ),
    );
  }
}
