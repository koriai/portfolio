import 'package:flutter/material.dart';
import '../widgets/project_card.dart';

///
/// class of [Project]
/// [title] : title of the project
/// [uri] : Uri to open the project
/// [image] : image of the project
/// [description] : description of the project
class Project {

  Project({
    required this.title,
    required this.images,
    required this.description,
    this.web,
    this.ios,
    this.aos,
    this.packages = const [],
    this.frontEndDescription = const [],
    this.backEndDescription = const [],
    this.cloudDescription = const [],
    this.isNew = false,
  }) {
    // print('Project: $title');
  }
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

  /// frontEndDescription
  List<String> frontEndDescription = [];

  /// backEndDescription
  List<String> backEndDescription = [];

  ///cloudDescription
  List<String> cloudDescription = [];

  ///packages
  List<String> packages;

  /// is new project?
  bool isNew;
  Widget card(context, double? screenWidth) => projectCard(context, title,
        web: web,
        ios: ios,
        aos: aos,
        images: images,
        description: description,
        frontEndDescription: frontEndDescription,
        backEndDescription: backEndDescription,
        cloudDescription: cloudDescription,
        packages: packages,
        screenWidth: screenWidth,
        isNew: isNew,);
}
