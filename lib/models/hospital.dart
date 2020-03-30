import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Hospital {
  final int id;
  final String name;
  final String nameSinhala;
  final String nameTamil;

  Hospital(
      {@required this.id,
      @required this.name,
      @required this.nameSinhala,
      @required this.nameTamil});

  String getLocalizedName(Locale locale) {
    switch (locale.languageCode) {
      case "ta":
        return this.nameTamil;
      case "si":
        return this.nameSinhala;
      default:
        return this.name;
    }
  }
}
