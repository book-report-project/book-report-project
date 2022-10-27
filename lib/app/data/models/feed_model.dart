// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<Feed> feedFromJson(str) =>
    List<Feed>.from(str.map((x) => Feed.fromJson(x)));

String feedToJson(List<Feed> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Feed {
  Feed({
    required this.no,
    required this.title,
    required this.text,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });

  int no;
  String title;
  String text;
  bool isDeleted;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;

  factory Feed.fromJson(Map<String, dynamic> json) => Feed(
        no: json["no"],
        title: json["title"],
        text: json["text"],
        isDeleted: json["isDeleted"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        deletedAt: json["deletedAt"],
      );

  Map<String, dynamic> toJson() => {
        "no": no,
        "title": title,
        "text": text,
        "isDeleted": isDeleted,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "deletedAt": deletedAt,
      };
}
