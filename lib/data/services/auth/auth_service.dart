import 'package:hive/hive.dart';
import 'package:open_sooq/data/api/http_request.dart';
import 'package:open_sooq/data/models/http/auth/auth_debug_request_model.dart';
import 'package:open_sooq/data/models/http/auth/auth_debug_response_model.dart';
import 'package:open_sooq/utils/hive_data/hive_constant.dart';

class AuthService {
  Future<dynamic> authDebug(String mobileNumber) async {
    final hiveBox = Hive.box(DatabaseBoxConstant.storage);
    final countryID = hiveBox.get(DatabaseFieldConstants.countryId);

    final body = AuthDebugRequestModel(mobileNumber, "", "", "", "", countryID);

    final response = await HttpRepository().callRequest(
      requestType: RequestType.post,
      methodName: "auth-debug",
      postBody: body.toJson(),
    );

    AuthDebugResponseData.fromJson(response);
  }
}
