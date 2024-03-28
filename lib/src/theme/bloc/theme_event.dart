part of 'theme_bloc.dart';

enum Fonts {
  notoSansKR,
  roboto,
  robotoMono,
}

sealed class ThemeEvent extends Equatable {
  const ThemeEvent();

  @override
  List<Object> get props => [];
}

final class ThemeChanged extends ThemeEvent {
  const ThemeChanged();
}

final class FontChanged extends ThemeEvent {
  const FontChanged({
    required this.newFont,
  });
  final Fonts newFont;

  @override
  List<Object> get props => [newFont];
}

final class LocaleChanged extends ThemeEvent {
  const LocaleChanged({
    required this.newLocale,
  });
  final Locale newLocale;

  @override
  List<Object> get props => [newLocale];
}
