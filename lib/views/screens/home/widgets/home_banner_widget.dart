// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:banner_carousel/banner_carousel.dart';
import 'package:open_sooq/views/screens/home/home_bloc.dart';

class HomeBannerWidget extends StatelessWidget {
  HomeBannerWidget({required this.bloc, Key? key}) : super(key: key);
  HomeBloc bloc;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      color: Colors.white,
      child: BannerCarousel(
        banners: bloc.listBanners,
        customizedIndicators: const IndicatorModel.animation(
          width: 20,
          height: 5,
          spaceBetween: 2,
          widthAnimation: 50,
        ),
        height: 180,
        activeColor: Colors.pink,
        disableColor: Colors.white54,
        animation: true,
        borderRadius: 10,
        onTap: (id) => print(id),
        indicatorBottom: false,
      ),
    );
  }
}
