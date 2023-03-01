import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class ReportModel {
  ReportModel({
    required this.comment,
    required this.images,
    required this.location,
  });

  final String comment;
  final List<String> images;
  final GeoPoint location;

  factory ReportModel.fromRawJson(String str) =>
      ReportModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ReportModel.fromJson(Map<String, dynamic> json) => ReportModel(
        comment: json["comment"],
        images: List<String>.from(json["images"].map((x) => x)),
        location: json["location"],
      );

  Map<String, dynamic> toJson() => {
        "comment": comment,
        "images": List<dynamic>.from(images.map((x) => x)),
        "location": location,
      };
}
