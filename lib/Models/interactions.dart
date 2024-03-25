import "package:flutter/foundation.dart";
import "package:flutter/material.dart";

class InterModel {
  String name;
  String iconName;

  InterModel({required this.name, required this.iconName});

  static List<InterModel> get_records() {
    List<InterModel> interactions = [];

    interactions.add(
      InterModel(name: "Survey", iconName: "survey"),
    );

    interactions.add(
      InterModel(name: "Events", iconName: "events"),
    );

    interactions.add(
      InterModel(name: "Public Message Broadcast", iconName: "pmb"),
    );

    return interactions;
  }
}
