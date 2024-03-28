part of 'theme_bloc.dart';

final class ThemeState extends Equatable {
  const ThemeState({
    this.themeMode = ThemeMode.system,
    this.font = Fonts.notoSansKR,
    this.locale = const Locale('ko'),
  });
  final ThemeMode themeMode;
  final Fonts font;
  final Locale locale;

  ThemeState copyWith({
    ThemeMode? themeMode,
    Fonts? font,
    Locale? locale,
  }) =>
      ThemeState(
        themeMode: themeMode ?? this.themeMode,
        font: font ?? this.font,
        locale: locale ?? this.locale,
      );

  @override
  List<Object> get props => [
        themeMode,
        font,
        locale,
      ];
}
