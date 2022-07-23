class AuthDebugRequestModel {
  String? mobileNumber;
  String? osType;
  String? deviceTypeName;
  String? osVersion;
  String? appVersion;
  int? countryId;

  AuthDebugRequestModel(
    this.mobileNumber,
    this.osType,
    this.deviceTypeName,
    this.osVersion,
    this.appVersion,
    this.countryId,
  );

  // AuthDebugRequestModel.fromJson(Map<String, dynamic> json) {
  //   mobileNumber = json['mobile_number'];
  //   osType = json['os_type'];
  //   deviceTypeName = json['device_type_name'];
  //   osVersion = json['os_version'];
  //   appVersion = json['app_version'];
  //   countryId = json['country_id'];
  // }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['mobile_number'] = mobileNumber;
    data['os_type'] = osType;
    data['device_type_name'] = deviceTypeName;
    data['os_version'] = osVersion;
    data['app_version'] = appVersion;
    data['country_id'] = countryId;
    return data;
  }
}
