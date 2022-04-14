// To parse this JSON data, do
//
//     final userData = userDataFromJson(jsonString);

// ignore_for_file: avoid_dynamic_calls

import 'dart:convert';

UserData userDataFromJson(String str) =>
    UserData.fromJson(json.decode(str) as Map<String, dynamic>);

class UserData {
  UserData({
    this.nbf,
    this.oid,
    this.tid,
    this.uti,
    this.iat,
    this.aud,
    this.rh,
    this.exp,
    this.aio,
    this.ver,
    this.name,
    this.iss,
    this.preferredUsername,
    this.sub,
  });

  String? nbf;
  String? oid;
  String? tid;
  String? uti;
  String? iat;
  List<String>? aud;
  String? rh;
  String? exp;
  String? aio;
  String? ver;
  String? name;
  String? iss;
  String? preferredUsername;
  String? sub;

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        nbf: json["nbf"] == null ? null : json["nbf"] as String,
        oid: json["oid"] == null ? null : json["oid"] as String,
        tid: json["tid"] == null ? null : json["tid"] as String,
        uti: json["uti"] == null ? null : json["uti"] as String,
        iat: json["iat"] == null ? null : json["iat"] as String,
        aud: json["aud"] == null
            ? null
            : List<String>.from(json["aud"].map((x) => x) as Iterable<dynamic>),
        rh: json["rh"] == null ? null : json["rh"] as String,
        exp: json["exp"] == null ? null : json["exp"] as String,
        aio: json["aio"] == null ? null : json["aio"] as String,
        ver: json["ver"] == null ? null : json["ver"] as String,
        name: json["name"] == null ? null : json["name"] as String,
        iss: json["iss"] == null ? null : json["iss"] as String,
        preferredUsername: json["preferred_username"] == null
            ? null
            : json["preferred_username"] as String,
        sub: json["sub"] == null ? null : json["sub"] as String,
      );
}
