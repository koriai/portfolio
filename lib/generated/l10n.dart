// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) => Localizations.of<S>(context, S);

  /// `HyunJin's Portfolio`
  String get apptitle => Intl.message(
        'HyunJin\'s Portfolio',
        name: 'apptitle',
        desc: '',
        args: [],
      );

  /// `HyunJin Kim`
  String get name => Intl.message(
        'HyunJin Kim',
        name: 'name',
        desc: '',
        args: [],
      );

  /// `SR Report`
  String get srTitle => Intl.message(
        'SR Report',
        name: 'srTitle',
        desc: '',
        args: [],
      );

  /// `Settings`
  String get settings => Intl.message(
        'Settings',
        name: 'settings',
        desc: '',
        args: [],
      );

  /// `Theme Mode`
  String get isDarkMode => Intl.message(
        'Theme Mode',
        name: 'isDarkMode',
        desc: '',
        args: [],
      );

  /// `Language`
  String get language => Intl.message(
        'Language',
        name: 'language',
        desc: '',
        args: [],
      );

  /// `home`
  String get home => Intl.message(
        'home',
        name: 'home',
        desc: '',
        args: [],
      );

  /// `Open Source License`
  String get openSourceLicense => Intl.message(
        'Open Source License',
        name: 'openSourceLicense',
        desc: '',
        args: [],
      );

  /// `Mail`
  String get mail => Intl.message(
        'Mail',
        name: 'mail',
        desc: '',
        args: [],
      );

  /// `Resume`
  String get resume => Intl.message(
        'Resume',
        name: 'resume',
        desc: '',
        args: [],
      );

  /// `Analyze Commnets of YouTube content, and make a report`
  String get srDescription => Intl.message(
        'Analyze Commnets of YouTube content, and make a report',
        name: 'srDescription',
        desc: '',
        args: [],
      );

  /// `TTW:Warhammer3 Roster Simulator`
  String get ttwTitle => Intl.message(
        'TTW:Warhammer3 Roster Simulator',
        name: 'ttwTitle',
        desc: '',
        args: [],
      );

  /// `This web provides users to simulate the roster of Total War: Warhammer3`
  String get ttwDescription => Intl.message(
        'This web provides users to simulate the roster of Total War: Warhammer3',
        name: 'ttwDescription',
        desc: '',
        args: [],
      );

  /// `CLIP-u`
  String get clipsTitle => Intl.message(
        'CLIP-u',
        name: 'clipsTitle',
        desc: '',
        args: [],
      );

  /// `This web provides users to watch clips`
  String get clipsDescription => Intl.message(
        'This web provides users to watch clips',
        name: 'clipsDescription',
        desc: '',
        args: [],
      );

  /// `PACKAGES `
  String get packagesTitle => Intl.message(
        'PACKAGES ',
        name: 'packagesTitle',
        desc: '',
        args: [],
      );

  /// `Front-end`
  String get frontendTitle => Intl.message(
        'Front-end',
        name: 'frontendTitle',
        desc: '',
        args: [],
      );

  /// `Back-end`
  String get backendTitle => Intl.message(
        'Back-end',
        name: 'backendTitle',
        desc: '',
        args: [],
      );

  /// `Cloud`
  String get cloudTitle => Intl.message(
        'Cloud',
        name: 'cloudTitle',
        desc: '',
        args: [],
      );

  /// `Flutter web & app`
  String get srFrontDes1 => Intl.message(
        'Flutter web & app',
        name: 'srFrontDes1',
        desc: '',
        args: [],
      );

  /// `Firebase uses`
  String get srFrontDes2 => Intl.message(
        'Firebase uses',
        name: 'srFrontDes2',
        desc: '',
        args: [],
      );

  /// `Korean & English support`
  String get srFrontDes3 => Intl.message(
        'Korean & English support',
        name: 'srFrontDes3',
        desc: '',
        args: [],
      );

  /// `Python Django REST API use`
  String get srBackDes1 => Intl.message(
        'Python Django REST API use',
        name: 'srBackDes1',
        desc: '',
        args: [],
      );

  /// `With Cronjob, schedule the task`
  String get srBackDes2 => Intl.message(
        'With Cronjob, schedule the task',
        name: 'srBackDes2',
        desc: '',
        args: [],
      );

  /// `Pandas & Numpy use`
  String get srBackDes3 => Intl.message(
        'Pandas & Numpy use',
        name: 'srBackDes3',
        desc: '',
        args: [],
      );

  /// `GCP & Google Login`
  String get srCloudDes1 => Intl.message(
        'GCP & Google Login',
        name: 'srCloudDes1',
        desc: '',
        args: [],
      );

  /// `firebase hosting, firestore, storage, functions(TypeScript)`
  String get srCloudDes2 => Intl.message(
        'firebase hosting, firestore, storage, functions(TypeScript)',
        name: 'srCloudDes2',
        desc: '',
        args: [],
      );

  /// `remote-config, analytics, crashlytics, performance`
  String get srCloudDes3 => Intl.message(
        'remote-config, analytics, crashlytics, performance',
        name: 'srCloudDes3',
        desc: '',
        args: [],
      );

  /// `Flutter Web`
  String get ttwFrontDes1 => Intl.message(
        'Flutter Web',
        name: 'ttwFrontDes1',
        desc: '',
        args: [],
      );

  /// `TTW는`
  String get ttwFrontDes2 => Intl.message(
        'TTW는',
        name: 'ttwFrontDes2',
        desc: '',
        args: [],
      );

  /// ``
  String get ttwFrontDes3 => Intl.message(
        '',
        name: 'ttwFrontDes3',
        desc: '',
        args: [],
      );

  /// `Extract game DB, convert to csv, pandas Analyze`
  String get ttwBackDes1 => Intl.message(
        'Extract game DB, convert to csv, pandas Analyze',
        name: 'ttwBackDes1',
        desc: '',
        args: [],
      );

  /// `pandas merge, lambda, apply `
  String get ttwBackDes2 => Intl.message(
        'pandas merge, lambda, apply ',
        name: 'ttwBackDes2',
        desc: '',
        args: [],
      );

  /// `firebase hosting`
  String get ttwCloudDes1 => Intl.message(
        'firebase hosting',
        name: 'ttwCloudDes1',
        desc: '',
        args: [],
      );

  /// `Flutter web`
  String get clipsFrontDes1 => Intl.message(
        'Flutter web',
        name: 'clipsFrontDes1',
        desc: '',
        args: [],
      );

  /// `go_router & media support`
  String get clipsFrontDes2 => Intl.message(
        'go_router & media support',
        name: 'clipsFrontDes2',
        desc: '',
        args: [],
      );

  /// `CLIPS는`
  String get clipsFrontDes3 => Intl.message(
        'CLIPS는',
        name: 'clipsFrontDes3',
        desc: '',
        args: [],
      );

  /// `firebase firestore, managing clips`
  String get clipsCloudDes1 => Intl.message(
        'firebase firestore, managing clips',
        name: 'clipsCloudDes1',
        desc: '',
        args: [],
      );

  /// `firebase hosting`
  String get clipsCloudDes2 => Intl.message(
        'firebase hosting',
        name: 'clipsCloudDes2',
        desc: '',
        args: [],
      );

  /// `GLLIM (closed)`
  String get gllimTitle => Intl.message(
        'GLLIM (closed)',
        name: 'gllimTitle',
        desc: '',
        args: [],
      );

  /// `Analyze & find pictures with words, Translation`
  String get gllimDescription => Intl.message(
        'Analyze & find pictures with words, Translation',
        name: 'gllimDescription',
        desc: '',
        args: [],
      );

  /// `Adaptive extension 패키지`
  String get adaptiveExtension => Intl.message(
        'Adaptive extension 패키지',
        name: 'adaptiveExtension',
        desc: '',
        args: [],
      );

  /// `마테리얼-쿠퍼티노 위젯`
  String get adaptiveExtensionDes1 => Intl.message(
        '마테리얼-쿠퍼티노 위젯',
        name: 'adaptiveExtensionDes1',
        desc: '',
        args: [],
      );
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales => const <Locale>[
        Locale.fromSubtags(languageCode: 'en'),
        Locale.fromSubtags(languageCode: 'ko'),
      ];

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
