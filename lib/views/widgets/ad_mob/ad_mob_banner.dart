import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:open_sooq/utils/constants/all_constants.dart';
import 'package:open_sooq/utils/helper/adds_helper.dart';

class AdMobBanner extends StatefulWidget {
  const AdMobBanner({Key? key}) : super(key: key);

  @override
  State<AdMobBanner> createState() => _AdMobBannerState();
}

class _AdMobBannerState extends State<AdMobBanner> {
  late BannerAd _bannerAd;
  bool _isBannerAdReady = false;

  @override
  void initState() {
    // Initialize _bannerAd
    _bannerAd = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(() {
            _isBannerAdReady = true;
          });
        },
        onAdFailedToLoad: (ad, err) {
          logErrorMessage("Failed to load a banner ad: ${err.message}");
          _isBannerAdReady = false;

          ad.dispose();
        },
      ),
    );

    _bannerAd.load();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _isBannerAdReady
        ? Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: _bannerAd.size.width.toDouble(),
              height: _bannerAd.size.height.toDouble(),
              child: AdWidget(ad: _bannerAd),
            ),
          )
        : Container(
            height: 54,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(
                horizontal: SizeConfig.defaultPadding),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(SizeConfig.defaultRadius),
            ),
          );
  }
}
