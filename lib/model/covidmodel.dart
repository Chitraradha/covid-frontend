// To parse this JSON data, do
//
//     final covid = covidFromJson(jsonString);

import 'dart:convert';

List<Covid> covidFromJson(String str) => List<Covid>.from(json.decode(str).map((x) => Covid.fromJson(x)));

String covidToJson(List<Covid> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Covid {
  String id;
  String name;
  String address;
  String sympton;
  String status;
  String phoneNo;
  int v;

  Covid({
    required this.id,
    required this.name,
    required this.address,
    required this.sympton,
    required this.status,
    required this.phoneNo,
    required this.v,
  });

  factory Covid.fromJson(Map<String, dynamic> json) => Covid(
    id: json["_id"],
    name: json["Name"],
    address: json["Address"],
    sympton: json["sympton"],
    status: json["Status"],
    phoneNo: json["PhoneNo"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "Name": name,
    "Address": address,
    "sympton": sympton,
    "Status": status,
    "PhoneNo": phoneNo,
    "__v": v,
  };
}
