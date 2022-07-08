class CountriesModel {
  List<CountriesData>? data;
  String? message;

  CountriesModel({this.data, this.message});

  CountriesModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <CountriesData>[];
      json['data'].forEach((v) {
        data!.add(CountriesData.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['message'] = message;
    return data;
  }
}

class CountriesData {
  int? id;
  String? flagImage;
  String? name;
  String? currency;
  String? prefixNumber;

  CountriesData(
      {this.id, this.flagImage, this.name, this.currency, this.prefixNumber});

  CountriesData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    flagImage = json['flag_image'];
    name = json['name'];
    currency = json['currency'];
    prefixNumber = json['prefix_number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['flag_image'] = flagImage;
    data['name'] = name;
    data['currency'] = currency;
    data['prefix_number'] = prefixNumber;
    return data;
  }
}


// JSON
// }
//  "data": [
//       {
//          "id": 2,
//           "flag_image": "https://www.countryflags.com/wp-content/uploads/jordan-flag-png-large.png",
//           "name": "الاردن",
//           "currency": "د.ا",
//           "prefix_number": "00962"
//       } 
//    ],
//  "message": "list of countries return successfully"
// }