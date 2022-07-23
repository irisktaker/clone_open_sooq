class AuthDebugResponseModel {
  AuthDebugResponseData? data;
  String? message;
  String? requestId;

  AuthDebugResponseModel({this.data, this.message, this.requestId});

  AuthDebugResponseModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ?  AuthDebugResponseData.fromJson(json['data']) : null;
    message = json['message'];
    requestId = json['request_id'];
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data =  <String, dynamic>{};
  //   if (this.data != null) {
  //     data['data'] = this.data!.toJson();
  //   }
  //   data['message'] = message;
  //   data['request_id'] = requestId;
  //   return data;
  // }
}

class AuthDebugResponseData {
  int? id;
  String? apiKey;
  bool? blocked;
  String? firstName;
  String? lastName;
  String? lastOtp;

  AuthDebugResponseData(
      {this.id,
      this.apiKey,
      this.blocked,
      this.firstName,
      this.lastName,
      this.lastOtp});

  AuthDebugResponseData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    apiKey = json['api_key'];
    blocked = json['blocked'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    lastOtp = json['last_otp'];
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = <String, dynamic>{};
  //   data['id'] = id;
  //   data['api_key'] = apiKey;
  //   data['blocked'] = blocked;
  //   data['first_name'] = firstName;
  //   data['last_name'] = lastName;
  //   data['last_otp'] = lastOtp;
  //   return data;
  // }
}