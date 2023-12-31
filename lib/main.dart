// ignore_for_file: prefer_expression_function_bodies

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';

import '../generated/l10n.dart';
import 'firebase_options.dart';
import 'src/app.dart';
import 'src/pages/pages.dart';
import 'src/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // final ValueKey<String> _scaffoldKey = const ValueKey<String>('AppScaffold');
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);

  @override
  Widget build(BuildContext context) => ValueListenableBuilder<ThemeMode>(
        valueListenable: themeNotifier,
        builder: (_, ThemeMode currentMode, __) => MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: Themes.light,
          darkTheme: Themes.dark,
          themeMode: currentMode,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          // home: const Portfolio(),
          routerConfig: _router,
        ),
      );

  /// [GoRouter] configuration
  /// initial path: '/'
  /// redirect: [_redirect]
  late final GoRouter _router = GoRouter(
    // observers: <NavigatorObserver>[_observer],
    // debugLogDiagnostics: false,
    initialLocation: '/',
    redirect: _redirect,
    restorationScopeId: 'restorationScopeId',
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (context, state) => const Portfolio(),
      ),
      GoRoute(
        path: '/settings',
        builder: (context, state) => const Settings(),
      ),
    ],
  );

  /// redirect pages by Conditions of Server or User Auth
  String? _redirect(BuildContext context, GoRouterState state) {
    /// Server maintanence
    /// return 'maintanence';

    /// User not logged in
    /// return 'login';
    return null;
  }
}
