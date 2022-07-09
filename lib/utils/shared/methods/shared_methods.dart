import 'package:hive/hive.dart';
import 'package:open_sooq/utils/hive_data/hive_constant.dart';

class SharedMethods {
  
  static bool checkIfUserLoggedIn() {
    final hiveBox = Hive.box(DatabaseBoxConstant.storage);
    
    if (hiveBox.get(DatabaseFieldConstants.isUserLoggedIn) == null ||
        hiveBox.get(DatabaseFieldConstants.isUserLoggedIn) == false) {
      // TODO:
      return false;
    } else {
      return true;
    }
  }
}
