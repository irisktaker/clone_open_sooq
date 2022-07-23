import 'package:open_sooq/data/api/http_request.dart';
import 'package:open_sooq/data/models/http/country/countries_model.dart';
import 'package:open_sooq/utils/constants/all_constants.dart';

class FilterService {
  Future<List<CountriesData>> getCountries() async {
    final response = await HttpRepository().callRequest(
      requestType: RequestType.get,
      methodName: "countries",
    );
    // return CountriesModel.fromJson(response).data!;

    List<CountriesData> countriesData = [];
    try {
      countriesData = CountriesModel.fromJson(response).data!;
    } catch (e) {
      logWTFMessage(response["detail"]["message"]);
    }
    return countriesData;
  }
}
