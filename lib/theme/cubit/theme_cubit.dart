import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ThemeInitial());

  void changeTheme(ThemeMode themeMode) {
    emit(ThemeChanged(themeMode));
  }

  void resetTheme() {
    emit(const ThemeInitial());
  }
}
