// ignore_for_file: lines_longer_than_80_chars

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../generated/l10n.dart';
import '../../main.dart';
import '../model/personal_info.dart';

/// Setting page
class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final myProfile = Profile();

  @override
  Widget build(BuildContext context) {
    /// open source license button
    final licenseButton = InkWell(
      onTap: () async => Navigator.of(context).push(
        MaterialPageRoute<void>(
          builder: (context) => Theme(
            data: Theme.of(context).copyWith(
              scaffoldBackgroundColor: Colors.white,
            ),
            child: LicensePage(
              applicationName: S.of(context).apptitle,
              applicationVersion: '0.9.0',
              applicationIcon: Container(
                padding: const EdgeInsets.all(12),
                height: 64,
                width: 64,
                child: myProfile.myCircleAvatar,
              ),
            ),
          ),
        ),
      ),
      child: Card(
        child: SizedBox(
          height: 36,
          child: Center(child: Text(S.of(context).openSourceLicense)),
        ),
      ),
    );

    /// theme mode switch
    final themeModeSwitch = Switch(
      activeColor: Colors.blue,
      inactiveThumbColor: Colors.grey,
      thumbIcon: MaterialStateProperty.all(
        (MyApp.themeNotifier.value == ThemeMode.light)
            ? const Icon(Icons.light_mode)
            : const Icon(Icons.dark_mode),
      ),
      value: MyApp.themeNotifier.value == ThemeMode.light,
      onChanged: (_) {
        setState(() {
          MyApp.themeNotifier.value =
              MyApp.themeNotifier.value == ThemeMode.light
                  ? ThemeMode.dark
                  : ThemeMode.light;
        });
      },
    );

    /// language dropdown button
    final languageDropDownButton = Center(
      child: SizedBox(
        width: 60,
        child: DropdownButtonHideUnderline(
          child: DropdownButton<Locale>(
            value: Intl.getCurrentLocale() == 'en'
                ? const Locale('en')
                : const Locale('ko'),
            items: List<DropdownMenuItem<Locale>>.generate(
              S.delegate.supportedLocales.length,
              (index) => DropdownMenuItem<Locale>(
                value: S.delegate.supportedLocales[index],
                child: Text(
                  ' ${S.delegate.supportedLocales[index].toLanguageTag()}',
                ),
              ),
            ),
            onChanged: (Locale? select) {
              if (select == null) {
                return;
              }
              setState(() {
                if (Intl.getCurrentLocale() == 'en') {
                  unawaited(S.load(select));
                } else {
                  unawaited(S.load(select));
                }
              });
            },
          ),
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).settings),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 720,
              minHeight: constraints.maxHeight,
            ),
            child: ListView(
              children: [
                const SizedBox(height: 24),
                licenseButton,
                const SizedBox(height: 24),
                Center(child: Text(S.of(context).isDarkMode)),
                themeModeSwitch,
                const SizedBox(height: 24),
                Center(child: Text(S.of(context).language)),
                languageDropDownButton,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
