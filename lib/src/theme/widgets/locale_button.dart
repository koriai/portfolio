import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import '../bloc/theme_bloc.dart';

class LocaleChangeButton extends StatefulWidget {
  const LocaleChangeButton({super.key});

  @override
  State<LocaleChangeButton> createState() => _LocaleChangeButtonState();
}

class _LocaleChangeButtonState extends State<LocaleChangeButton> {
  @override
  Widget build(BuildContext context) {
    print('Change Locale');
    return FloatingActionButton(
      key: const Key('Change_Locale_Button'),
      child: const Icon(Icons.language),
      onPressed: () {
        context
            .read<ThemeBloc>()
            .add(const LocaleChanged(newLocale: Locale('en')));
      },
    );
  }
}
