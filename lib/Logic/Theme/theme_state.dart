part of 'theme_cubit.dart';

@immutable
sealed class ThemeState {
  bool isDarkMode;
  ThemeData themeData;
  ThemeState(this.isDarkMode,  this.themeData);
}

final class ThemeInitial extends ThemeState {
  ThemeInitial() : super(false, ThemeData.light());
}
final class ThemeChanged extends ThemeState {
  ThemeChanged ( super.isDarkMode, super.themeData);
}
