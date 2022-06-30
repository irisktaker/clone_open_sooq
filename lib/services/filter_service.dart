import 'package:open_sooq/api/http_request.dart';
import 'package:open_sooq/models/http/countries_model.dart';

class FilterService {
  Future<List<CountriesData>> getCountries() async {
    final response = await HttpRepository().callRequest(
      requestType: RequestType.get,
      methodName: "countries",
    );
    return CountriesModel.fromJson(response).data!;
  }
}
