import 'dart:io';

class AdHelper {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-6926605739135178/6553907626';
    }
    // else if (Platform.isIOS) {
    //   return '<YOUR_IOS_BANNER_AD_UNIT_ID>';
    // }d
    else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  // static String get interstitialAdUnitId {
  //   if (Platform.isAndroid) {
  //     return '<YOUR_ANDROID_INTERSTITIAL_AD_UNIT_ID>';
  //   } else if (Platform.isIOS) {
  //     return '<YOUR_IOS_INTERSTITIAL_AD_UNIT_ID>';
  //   } else {
  //     throw new UnsupportedError('Unsupported platform');
  //   }
  // }

  // static String get rewardedAdUnitId {
  //   if (Platform.isAndroid) {
  //     return '<YOUR_ANDROID_INTERSTITIAL_AD_UNIT_ID>';
  //   } else if (Platform.isIOS) {
  //     return '<YOUR_IOS_INTERSTITIAL_AD_UNIT_ID>';
  //   } else {
  //     throw new UnsupportedError('Unsupported platform');
  //   }
  // }
}
