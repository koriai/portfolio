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
