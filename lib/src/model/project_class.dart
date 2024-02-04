import 'package:flutter/material.dart';
import '../widgets/project_card.dart';

///
/// class of [Project]
/// [title] : title of the project
/// [uri] : Uri to open the project
/// [image] : image of the project
/// [description] : description of the project
class Project {
  /// title of the project
  final String title;

  /// Uri to open the project
  final Uri? web;

  /// Uri to open the project
  final Uri? ios;

  /// Uri to open the project
  final Uri? aos;

  /// image of the project
  final List<Image> images;

  /// description of the project
  final String description;

  /// front end description for this project
  List<String> frontEndDescription = [];

  /// back end description for this project
  List<String> backEndDescription = [];

  /// cloud description for this project
  List<String> cloudDescription = [];

  /// List of used packages for this project
  List<String> packages;

  Project(
      {required this.title,
      required this.images,
      required this.description,
      this.web,
      this.ios,
      this.aos,
      this.packages = const [],
      this.frontEndDescription = const [],
      this.backEndDescription = const [],
      this.cloudDescription = const []}) {
    // print('Project: $title');
  }

  /// return [Card] widget for this project
  Widget card(context, double? screenWidth) {
    return projectCard(context, title,
        web: web,
        ios: ios,
        aos: aos,
        images: images,
        description: description,
        frontEndDescription: frontEndDescription,
        backEndDescription: backEndDescription,
        cloudDescription: cloudDescription,
        packages: packages,
        screenWidth: screenWidth);
  }
}
