import 'package:flutter/material.dart';
import 'package:open_sooq/views/widgets/ad_mob/ad_mob_banner.dart';

import 'home_bloc.dart';
import 'widgets/home_banner_widget.dart';
import 'widgets/home_category.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final _bloc = HomeBloc();

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: ScrollController(),
      children: [
        HomeBannerWidget(bloc: _bloc),
        HomeCategoryWidget(bloc: _bloc),
        const SizedBox(height: 16),
        const AdMobBanner(),
        const SizedBox(height: 16),
        const AdMobBanner(),
      ],
    );
  }
}
