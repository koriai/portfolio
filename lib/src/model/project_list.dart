import 'package:flutter/material.dart';
import '../../generated/l10n.dart';
import 'project_class.dart';

/// SR-report project
Project projectReport(BuildContext context) {
  return Project(
      title: S.of(context).srTitle,
      web: Uri.parse('https://app.koriai.com/'),
      aos: Uri.parse(
          'https://play.google.com/store/apps/details?id=com.koriai.report'),
      image: Image.asset('srreport_thumbnail.png'),
      description: S.of(context).srDescription,
      packages: ['firebase', 'firebase']);
}

/// Total war warhammer roster project
Project projectTTWRoster(context) {
  return Project(
    title: S.of(context).ttwTitle,
    web: Uri.parse('https://ttw-roster.web.app/'),
    image: Image.asset('ttwroster_thumbnail.png'),
    description: S.of(context).ttwDescription,
  );
}

/// clips-u project
Project projectClips(context) {
  return Project(
    title: S.of(context).clipsTitle,
    web: Uri.parse('https://clips-u.web.app/'),
    image: Image.asset('clips_thumbnail.png'),
    description: S.of(context).clipsDescription,
  );
}
