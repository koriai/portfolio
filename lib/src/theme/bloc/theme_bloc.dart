import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'package:equatable/equatable.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeState()) {
    on<ThemeChanged>(_onThemeChangeRequested);
    on<FontChanged>(_onFontChanged);
    on<LocaleChanged>(_onLocaleChanged);
  }
  void _onThemeChangeRequested(
    ThemeChanged event,
    Emitter<ThemeState> emit,
  ) {
    emit(
      state.copyWith(
        themeMode: state.themeMode == ThemeMode.light
            ? ThemeMode.dark
            : ThemeMode.light,
      ),
    );
  }

  void _onFontChanged(
    FontChanged event,
    Emitter<ThemeState> emit,
  ) {
    emit(
      state.copyWith(
        font: event.newFont,
      ),
    );
  }

  void _onLocaleChanged(
    LocaleChanged event,
    Emitter<ThemeState> emit,
  ) {
    emit(
      state.copyWith(
        locale: event.newLocale,
      ),
    );
  }
}
