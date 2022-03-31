// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

List<User> userFromJson(String str) => List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String userToJson(List<User> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
    User({
        this.name,
        this.address,
    });

    String? name;
    String? address;

    factory User.fromJson(Map<String, dynamic> json) => User(
        name: json["name"],
        address: json["address"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "address": address,
    };
}
