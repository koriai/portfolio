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
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
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
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `HyunJin's Flutter Portfolio`
  String get apptitle {
    return Intl.message(
      'HyunJin\'s Flutter Portfolio',
      name: 'apptitle',
      desc: '',
      args: [],
    );
  }

  /// `HyunJin Kim`
  String get name {
    return Intl.message(
      'HyunJin Kim',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `SR Report`
  String get srTitle {
    return Intl.message(
      'SR Report',
      name: 'srTitle',
      desc: '',
      args: [],
    );
  }

  /// `Analyze Commnets of YouTube content, and make a report`
  String get srDescription {
    return Intl.message(
      'Analyze Commnets of YouTube content, and make a report',
      name: 'srDescription',
      desc: '',
      args: [],
    );
  }

  /// `TTW:Warhammer3 Roster Simulator`
  String get ttwTitle {
    return Intl.message(
      'TTW:Warhammer3 Roster Simulator',
      name: 'ttwTitle',
      desc: '',
      args: [],
    );
  }

  /// `This web provides users to simulate the roster of Total War: Warhammer3`
  String get ttwDescription {
    return Intl.message(
      'This web provides users to simulate the roster of Total War: Warhammer3',
      name: 'ttwDescription',
      desc: '',
      args: [],
    );
  }

  /// `CLIP-u`
  String get clipsTitle {
    return Intl.message(
      'CLIP-u',
      name: 'clipsTitle',
      desc: '',
      args: [],
    );
  }

  /// `This web provides users to watch clips`
  String get clipsDescription {
    return Intl.message(
      'This web provides users to watch clips',
      name: 'clipsDescription',
      desc: '',
      args: [],
    );
  }

  /// `PACKAGES `
  String get packagesTitle {
    return Intl.message(
      'PACKAGES ',
      name: 'packagesTitle',
      desc: '',
      args: [],
    );
  }

  /// `front-end`
  String get frontendTitle {
    return Intl.message(
      'front-end',
      name: 'frontendTitle',
      desc: '',
      args: [],
    );
  }

  /// `back-end`
  String get backendTitle {
    return Intl.message(
      'back-end',
      name: 'backendTitle',
      desc: '',
      args: [],
    );
  }

  /// `cloud`
  String get cloudTitle {
    return Intl.message(
      'cloud',
      name: 'cloudTitle',
      desc: '',
      args: [],
    );
  }

  /// `Flutter web & app`
  String get srFrontDes1 {
    return Intl.message(
      'Flutter web & app',
      name: 'srFrontDes1',
      desc: '',
      args: [],
    );
  }

  /// `Firebase uses`
  String get srFrontDes2 {
    return Intl.message(
      'Firebase uses',
      name: 'srFrontDes2',
      desc: '',
      args: [],
    );
  }

  /// `Korean & English support`
  String get srFrontDes3 {
    return Intl.message(
      'Korean & English support',
      name: 'srFrontDes3',
      desc: '',
      args: [],
    );
  }

  /// `Python Django REST API use`
  String get srBackDes1 {
    return Intl.message(
      'Python Django REST API use',
      name: 'srBackDes1',
      desc: '',
      args: [],
    );
  }

  /// `With Cronjob, schedule the task`
  String get srBackDes2 {
    return Intl.message(
      'With Cronjob, schedule the task',
      name: 'srBackDes2',
      desc: '',
      args: [],
    );
  }

  /// `Pandas & Numpy use`
  String get srBackDes3 {
    return Intl.message(
      'Pandas & Numpy use',
      name: 'srBackDes3',
      desc: '',
      args: [],
    );
  }

  /// `GCP & Google Login`
  String get srCloudDes1 {
    return Intl.message(
      'GCP & Google Login',
      name: 'srCloudDes1',
      desc: '',
      args: [],
    );
  }

  /// `firebase hosting, firestore, storage, functions(TypeScript)`
  String get srCloudDes2 {
    return Intl.message(
      'firebase hosting, firestore, storage, functions(TypeScript)',
      name: 'srCloudDes2',
      desc: '',
      args: [],
    );
  }

  /// `remote-config, analytics, crashlytics, performance`
  String get srCloudDes3 {
    return Intl.message(
      'remote-config, analytics, crashlytics, performance',
      name: 'srCloudDes3',
      desc: '',
      args: [],
    );
  }

  /// `Flutter Web`
  String get ttwFrontDes1 {
    return Intl.message(
      'Flutter Web',
      name: 'ttwFrontDes1',
      desc: '',
      args: [],
    );
  }

  /// `TTW는`
  String get ttwFrontDes2 {
    return Intl.message(
      'TTW는',
      name: 'ttwFrontDes2',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get ttwFrontDes3 {
    return Intl.message(
      '',
      name: 'ttwFrontDes3',
      desc: '',
      args: [],
    );
  }

  /// `Extract game DB, convert to csv, pandas Analyze`
  String get ttwBackDes1 {
    return Intl.message(
      'Extract game DB, convert to csv, pandas Analyze',
      name: 'ttwBackDes1',
      desc: '',
      args: [],
    );
  }

  /// `pandas merge, lambda, apply `
  String get ttwBackDes2 {
    return Intl.message(
      'pandas merge, lambda, apply ',
      name: 'ttwBackDes2',
      desc: '',
      args: [],
    );
  }

  /// `firebase hosting`
  String get ttwCloudDes1 {
    return Intl.message(
      'firebase hosting',
      name: 'ttwCloudDes1',
      desc: '',
      args: [],
    );
  }

  /// `Flutter web`
  String get clipsFrontDes1 {
    return Intl.message(
      'Flutter web',
      name: 'clipsFrontDes1',
      desc: '',
      args: [],
    );
  }

  /// `go_router & media support`
  String get clipsFrontDes2 {
    return Intl.message(
      'go_router & media support',
      name: 'clipsFrontDes2',
      desc: '',
      args: [],
    );
  }

  /// `CLIPS는`
  String get clipsFrontDes3 {
    return Intl.message(
      'CLIPS는',
      name: 'clipsFrontDes3',
      desc: '',
      args: [],
    );
  }

  /// `firebase firestore, managing clips`
  String get clipsCloudDes1 {
    return Intl.message(
      'firebase firestore, managing clips',
      name: 'clipsCloudDes1',
      desc: '',
      args: [],
    );
  }

  /// `firebase hosting`
  String get clipsCloudDes2 {
    return Intl.message(
      'firebase hosting',
      name: 'clipsCloudDes2',
      desc: '',
      args: [],
    );
  }

  /// `GLLIM`
  String get gllimTitle {
    return Intl.message(
      'GLLIM',
      name: 'gllimTitle',
      desc: '',
      args: [],
    );
  }

  /// `Analyze & find pictures with words, Translation`
  String get gllimDescription {
    return Intl.message(
      'Analyze & find pictures with words, Translation',
      name: 'gllimDescription',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ko'),
    ];
  }

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
