import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';


part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());

  void Toggle() {
    var isDarkMode =!state.isDarkMode;
    ThemeData themeData = isDarkMode ? ThemeData.dark() : ThemeData.light();
    emit(ThemeChanged(isDarkMode , themeData));
  }
}

