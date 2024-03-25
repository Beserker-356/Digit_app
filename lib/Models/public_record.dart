import "package:flutter/foundation.dart";
import "package:flutter/material.dart";

class RecordModel {
  String name;
  String iconName;

  RecordModel({required this.name, required this.iconName});

  static List<RecordModel> get_records() {
    List<RecordModel> records = [];

    records.add(
      RecordModel(name: "Birth Registration", iconName: "birth"),
    );

    records.add(
      RecordModel(name: "Documents", iconName: "doc"),
    );

    return records;
  }
}
