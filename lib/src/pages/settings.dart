import 'package:flutter/material.dart';
import '../../main.dart';
import '../../generated/l10n.dart';
import 'package:intl/intl.dart';
import '../model/personal_info.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final myProfile = Profile();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).settings),
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(Icons.arrow_back)),
        ),
        body: ListView(
          children: [
            const SizedBox(height: 24),
            TextButton(
                onPressed: () =>
                    Navigator.of(context).push(MaterialPageRoute<void>(
                      builder: (context) => Theme(
                          data: Theme.of(context).copyWith(
                            scaffoldBackgroundColor: Colors.white,
                          ),
                          child: LicensePage(
                            applicationName: S.of(context).apptitle,
                            applicationVersion: '0.9.0',
                            applicationIcon: Container(
                              padding: const EdgeInsets.all(12.0),
                              height: 64,
                              width: 64,
                              child: myProfile.myCircleAvatar,
                            ),
                          )),
                    )),
                child: const Text('opensource license')),
            const SizedBox(height: 24),
            Center(
              child: Text(
                S.of(context).isDarkMode,
              ),
            ),
            Switch(
                thumbIcon: MaterialStateProperty.all(
                    (MyApp.themeNotifier.value == ThemeMode.light)
                        ? const Icon(Icons.light_mode)
                        : const Icon(Icons.dark_mode)),
                value: MyApp.themeNotifier.value == ThemeMode.light,
                onChanged: (_) {
                  setState(() {
                    MyApp.themeNotifier.value =
                        MyApp.themeNotifier.value == ThemeMode.light
                            ? ThemeMode.dark
                            : ThemeMode.light;
                  });
                }),
            const SizedBox(height: 24),
            Center(
              child: Text(
                S.of(context).language,
              ),
            ),
            Center(
                child: SizedBox(
                    width: 60,
                    child: DropdownButton<Locale>(
                        value: Intl.getCurrentLocale() == 'en'
                            ? const Locale('en')
                            : const Locale('ko'),
                        items: List<DropdownMenuItem<Locale>>.generate(
                            S.delegate.supportedLocales.length,
                            (index) => DropdownMenuItem<Locale>(
                                  value: S.delegate.supportedLocales[index],
                                  child: Text(
                                      ' ${S.delegate.supportedLocales[index].toLanguageTag()}'),
                                )),
                        onChanged: (Locale? select) {
                          if (select == null) {
                            return;
                          }
                          setState(() {
                            if (Intl.getCurrentLocale() == 'en') {
                              S.load(select);
                            } else {
                              S.load(select);
                            }
                          });
                        })))
          ],
        ));
  }
}
