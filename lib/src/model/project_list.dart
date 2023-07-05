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
      images: [
        Image.asset('srreport-1.png'),
        Image.asset('srreport-2.png'),
        Image.asset('assets/sr_report_pipe.png'),
      ],
      description: S.of(context).srDescription,
      frontEndDescription: [
        S.of(context).srFrontDes1,
        S.of(context).srFrontDes2,
        S.of(context).srFrontDes3
      ],
      backEndDescription: [
        S.of(context).srBackDes1,
        S.of(context).srBackDes2,
        S.of(context).srBackDes3
      ],
      cloudDescription: [
        S.of(context).srCloudDes1,
        S.of(context).srCloudDes2,
        S.of(context).srCloudDes3
      ],
      packages: ['firebase', 'firebase']);
}

/// Total war warhammer roster project
Project projectTTWRoster(context) {
  return Project(
      title: S.of(context).ttwTitle,
      web: Uri.parse('https://ttw-roster.web.app/'),
      images: [
        Image.asset('assets/ttw-1.png'),
        Image.asset('assets/ttw-2.png'),
      ],
      description: S.of(context).ttwDescription,
      frontEndDescription: [
        S.of(context).ttwFrontDes1,
      ],
      backEndDescription: [
        S.of(context).ttwBackDes1,
        S.of(context).ttwBackDes2,
      ],
      cloudDescription: [S.of(context).ttwCloudDes1]);
}

/// clips-u project
Project projectClips(context) {
  return Project(
      title: S.of(context).clipsTitle,
      web: Uri.parse('https://clips-u.web.app/'),
      images: [
        Image.asset('assets/clips-1.png'),
        Image.asset('assets/clips-2.png'),
      ],
      description: S.of(context).clipsDescription,
      frontEndDescription: [
        S.of(context).clipsFrontDes1,
        S.of(context).clipsFrontDes2,
      ],
      cloudDescription: [
        S.of(context).clipsCloudDes1,
        S.of(context).clipsCloudDes2,
      ]);
}

/// clips-u project
Project projectGllim(context) {
  return Project(
    title: S.of(context).gllimTitle,
    images: [
      Image.asset('assets/gllim-1.png'),
      Image.asset('assets/gllim-2.png'),
    ],
    description: S.of(context).gllimDescription,
  );
}
