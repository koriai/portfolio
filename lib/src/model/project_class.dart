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
  final Uri web;

  /// Uri to open the project
  final Uri? ios;

  /// Uri to open the project
  final Uri? aos;

  /// image of the project
  final Image image;

  /// description of the project
  final String description;

  List<String> packages;

  Project(
      {required this.title,
      required this.web,
      required this.image,
      required this.description,
      this.ios,
      this.aos,
      this.packages = const []}) {
    print('Project: $title');
  }
  Widget card(context) {
    return projectCard(context, title,
        web: web,
        ios: ios,
        aos: aos,
        image: image,
        description: description,
        packages: packages);
  }
}
