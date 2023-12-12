import 'package:flutter/material.dart';

class SNS {

  SNS({
    required this.title,
    required this.uri,
    required this.image,
    required this.description,
  }) {
    // print('SNS: $title');
  }
  final String title;
  final Uri uri;
  final Image image;
  final String description;
}
