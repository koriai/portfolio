import 'package:flutter/material.dart';

/// SNS class
class SNS {
  /// title
  final String title;

  /// sns uri
  final Uri uri;

  /// image
  final Image image;

  /// description
  final String description;

  SNS({
    required this.title,
    required this.uri,
    required this.image,
    required this.description,
  }) {
    // print('SNS: $title');
  }
}
