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
  final Image image;

  /// description of the project
  final String description;

  List<String> frontEndDescription = [];
  List<String> backEndDescription = [];
  List<String> cloudDescription = [];

  List<String> packages;

  Project(
      {required this.title,
      required this.image,
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
  Widget card(context) {
    return projectCard(context, title,
        web: web,
        ios: ios,
        aos: aos,
        image: image,
        description: description,
        frontEndDescription: frontEndDescription,
        backEndDescription: backEndDescription,
        cloudDescription: cloudDescription,
        packages: packages);
  }
}
