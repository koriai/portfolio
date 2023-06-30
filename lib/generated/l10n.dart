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

  /// ``
  String get srDescription {
    return Intl.message(
      '',
      name: 'srDescription',
      desc: '',
      args: [],
    );
  }

  /// `TTW `
  String get ttwTitle {
    return Intl.message(
      'TTW ',
      name: 'ttwTitle',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get ttwDescription {
    return Intl.message(
      '',
      name: 'ttwDescription',
      desc: '',
      args: [],
    );
  }

  /// `CLIPS `
  String get clipsTitle {
    return Intl.message(
      'CLIPS ',
      name: 'clipsTitle',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get clipsDescription {
    return Intl.message(
      '',
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

  /// `SR 리포트는`
  String get srFrontDes1 {
    return Intl.message(
      'SR 리포트는',
      name: 'srFrontDes1',
      desc: '',
      args: [],
    );
  }

  /// `SR 리포트는`
  String get srFrontDes2 {
    return Intl.message(
      'SR 리포트는',
      name: 'srFrontDes2',
      desc: '',
      args: [],
    );
  }

  /// `SR 리포트는`
  String get srFrontDes3 {
    return Intl.message(
      'SR 리포트는',
      name: 'srFrontDes3',
      desc: '',
      args: [],
    );
  }

  /// `SR 리포트는`
  String get srBackDes1 {
    return Intl.message(
      'SR 리포트는',
      name: 'srBackDes1',
      desc: '',
      args: [],
    );
  }

  /// `SR 리포트는`
  String get srBackDes2 {
    return Intl.message(
      'SR 리포트는',
      name: 'srBackDes2',
      desc: '',
      args: [],
    );
  }

  /// `SR 리포트는`
  String get srBackDes3 {
    return Intl.message(
      'SR 리포트는',
      name: 'srBackDes3',
      desc: '',
      args: [],
    );
  }

  /// `SR 리포트는`
  String get srCloudDes1 {
    return Intl.message(
      'SR 리포트는',
      name: 'srCloudDes1',
      desc: '',
      args: [],
    );
  }

  /// `SR 리포트는`
  String get srCloudDes2 {
    return Intl.message(
      'SR 리포트는',
      name: 'srCloudDes2',
      desc: '',
      args: [],
    );
  }

  /// `SR 리포트는`
  String get srCloudDes3 {
    return Intl.message(
      'SR 리포트는',
      name: 'srCloudDes3',
      desc: '',
      args: [],
    );
  }

  /// `TTW는`
  String get ttwFrontDes1 {
    return Intl.message(
      'TTW는',
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

  /// `TTW는`
  String get ttwFrontDes3 {
    return Intl.message(
      'TTW는',
      name: 'ttwFrontDes3',
      desc: '',
      args: [],
    );
  }

  /// `TTW는`
  String get ttwBackDes1 {
    return Intl.message(
      'TTW는',
      name: 'ttwBackDes1',
      desc: '',
      args: [],
    );
  }

  /// `TTW는`
  String get ttwBackDes2 {
    return Intl.message(
      'TTW는',
      name: 'ttwBackDes2',
      desc: '',
      args: [],
    );
  }

  /// `CLIPS는`
  String get clipsFrontDes1 {
    return Intl.message(
      'CLIPS는',
      name: 'clipsFrontDes1',
      desc: '',
      args: [],
    );
  }

  /// `CLIPS는`
  String get clipsFrontDes2 {
    return Intl.message(
      'CLIPS는',
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

  /// `CLIPS는`
  String get clipsCloudDes1 {
    return Intl.message(
      'CLIPS는',
      name: 'clipsCloudDes1',
      desc: '',
      args: [],
    );
  }

  /// `CLIPS는`
  String get clipsCloudDes2 {
    return Intl.message(
      'CLIPS는',
      name: 'clipsCloudDes2',
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
