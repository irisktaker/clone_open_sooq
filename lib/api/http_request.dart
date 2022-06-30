import 'package:dio/dio.dart';
import 'package:open_sooq/services/network_info_service.dart';
import 'package:open_sooq/utils/singleton/singleton.dart';

enum RequestType { get, post, put, delete }

class HttpRepository {
  Future<dynamic> callRequest(
      {required RequestType requestType,
      required String methodName,
      Map<String, dynamic> queryParam = const {},
      Map<String, dynamic>? postBody,
      String contentType = Headers.jsonContentType}) async {
    Response response;
    const baseUrl = 'https://rental-apis.herokuapp.com/';

    if (await NetworkInfoService().isConnected()) {
      final dioClient = Dio()
        ..options = BaseOptions(
          baseUrl: baseUrl,
          followRedirects: false,
          headers: {
            "apikey": "123",
            "user_id": "123",
            "language": Singleton.instance.selectedLanguage,
          },
          validateStatus: (status) {
            return true;
          },
        );

      switch (requestType) {
        case RequestType.get:
          response = await dioClient.get(
            methodName,
            queryParameters: queryParam,
            options: Options(contentType: contentType),
          );
          break;
        case RequestType.post:
          response = await dioClient.post(
            methodName,
            data: postBody,
            queryParameters: queryParam,
            options: Options(contentType: contentType),
          );
          break;
        case RequestType.delete:
          response = await dioClient.delete(
            methodName,
            data: postBody,
            queryParameters: queryParam,
            options: Options(contentType: contentType),
          );
          break;
        case RequestType.put:
          response = await dioClient.put(
            methodName,
            data: postBody,
            queryParameters: queryParam,
            options: Options(contentType: contentType),
          );
          break;
      }

      return response.data;
    } else {
      throw Exception("Please Chick your network connection");
    }
  }
}
