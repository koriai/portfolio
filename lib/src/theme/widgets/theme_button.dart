import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import '../bloc/theme_bloc.dart';

class ThemeChangeButton extends StatefulWidget {
  const ThemeChangeButton({super.key});

  @override
  State<ThemeChangeButton> createState() => _ThemeChangeButtonState();
}

class _ThemeChangeButtonState extends State<ThemeChangeButton> {
  @override
  Widget build(BuildContext context) {
    print('Change Theme');
    return FloatingActionButton(
      key: const Key('Change_Theme_Button'),
      child: Icon(Icons.dark_mode),
      onPressed: () {
        // S.load(const Locale('en'));
        context.read<ThemeBloc>().add(const ThemeChanged());
      },
    );
  }
}
