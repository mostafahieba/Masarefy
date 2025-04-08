
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frist_projact/Logic/Theme/theme_cubit.dart';

class Switchbutton extends StatelessWidget {
  const Switchbutton({super.key});

  @override
  Widget build(BuildContext context) {
   return BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
     return Expanded(
         child: SwitchListTile(
             title: Text("switch"),
             value: state.isDarkMode,
             onChanged: (value) => context.read<ThemeCubit>().Toggle()));
   });
  }
}
