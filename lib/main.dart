import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import '../generated/l10n.dart';
import 'firebase_options.dart';
import 'src/theme/theme.dart';
import 'src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.system);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: themeNotifier,
        builder: (_, ThemeMode currentMode, __) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: Themes.light,
            darkTheme: Themes.dark,
            themeMode: currentMode,
            localizationsDelegates: const [
              S.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            home: const Portfolio(),
          );
        });
  }
}
