part of 'theme_cubit.dart';

@immutable
abstract class ThemeState {
  final ThemeMode themeMode;

  const ThemeState(this.themeMode);
}

class ThemeInitial extends ThemeState {
  const ThemeInitial() : super(ThemeMode.system);
}

class ThemeChanged extends ThemeState {
  @override
  final ThemeMode themeMode;

  const ThemeChanged(this.themeMode) : super(themeMode);
}
