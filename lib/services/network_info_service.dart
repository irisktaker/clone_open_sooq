
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';

class NetworkInfoService {
  // ValueNotifier<bool> networkConnectionState = ValueNotifier<bool>(false);

  Future<bool> isConnected() async {
    late ConnectivityResult result;

    try {
      result = await Connectivity().checkConnectivity();
    } on PlatformException catch(e) {
      Exception("Couldn't check connectivity status error: $e");
      return false;
    }
    if (result == ConnectivityResult.wifi ||
        result == ConnectivityResult.mobile) {
      return true;
    } else {
      return false;
    }
  }
}