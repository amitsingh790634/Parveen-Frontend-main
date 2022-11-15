// To parse this JSON data, do
//
//     final myaccount = myaccountFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Myaccount myaccountFromJson(String str) => Myaccount.fromJson(json.decode(str));

String myaccountToJson(Myaccount data) => json.encode(data.toJson());

class Myaccount {
  Myaccount({
    required this.user,
    required this.userWallet,
  });

  User user;
  UserWallet userWallet;

  factory Myaccount.fromJson(Map<String, dynamic> json) => Myaccount(
        user: User.fromJson(json["user"]),
        userWallet: UserWallet.fromJson(json["userWallet"]),
      );

  Map<String, dynamic> toJson() => {
        "user": user.toJson(),
        "userWallet": userWallet.toJson(),
      };
}

class User {
  User({
    required this.currentLocation,
    required this.id,
    required this.fullName,
    required this.phone,
    required this.email,
    required this.gender,
    required this.birthDate,
    required this.role,
    required this.image,
    required this.isBlocked,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  CurrentLocation currentLocation;
  String id;
  String fullName;
  String phone;
  String email;
  String gender;
  String birthDate;
  String role;
  String image;
  bool isBlocked;
  DateTime createdAt;
  DateTime updatedAt;
  int v;

  factory User.fromJson(Map<String, dynamic> json) => User(
        currentLocation: CurrentLocation.fromJson(json["currentLocation"]),
        id: json["_id"],
        fullName: json["fullName"],
        phone: json["phone"],
        email: json["email"],
        gender: json["gender"],
        birthDate: json["birthDate"],
        role: json["role"],
        image: json["image"],
        isBlocked: json["isBlocked"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "currentLocation": currentLocation.toJson(),
        "_id": id,
        "fullName": fullName,
        "phone": phone,
        "email": email,
        "gender": gender,
        "birthDate": birthDate,
        "role": role,
        "image": image,
        "isBlocked": isBlocked,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
      };
}

class CurrentLocation {
  CurrentLocation({
    required this.coordinates,
  });

  List<dynamic> coordinates;

  factory CurrentLocation.fromJson(Map<String, dynamic> json) =>
      CurrentLocation(
        coordinates: List<dynamic>.from(json["coordinates"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "coordinates": List<dynamic>.from(coordinates.map((x) => x)),
      };
}

class UserWallet {
  UserWallet({
    required this.id,
    required this.user,
    required this.balance,
    required this.role,
    required this.currency,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  String id;
  String user;
  int balance;
  String role;
  String currency;
  DateTime createdAt;
  DateTime updatedAt;
  int v;

  factory UserWallet.fromJson(Map<String, dynamic> json) => UserWallet(
        id: json["_id"],
        user: json["user"],
        balance: json["balance"],
        role: json["role"],
        currency: json["currency"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "user": user,
        "balance": balance,
        "role": role,
        "currency": currency,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
      };
}
