import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frist_projact/Logic/Theme/theme_cubit.dart';
import 'package:frist_projact/Screens/Widgits/HomeScreen.dart';

class loginscreen extends StatelessWidget {
  loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Login")),
          actions: [
            Expanded(
              child: BlocBuilder<ThemeCubit, ThemeState>(
                builder: (context, state) {
                  return SwitchListTile(
                    value: state.isDarkMode,
                    onChanged: (value) => context.read<ThemeCubit>().Toggle(),
                  );
                },
              ),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "masrafy_app".tr(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                  "https://wallpapercave.com/wp/wp13767088.jpg",
                ),
              ),

              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Email Address".tr(),
                    labelText: "Enter Your Name".tr(),
                  ),
                ),
              ),

              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelText: "Enter Your Password".tr(),
                    hintText: "password".tr(),
                  ),
                ),
              ),

              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homescreen()),
                  );
                },
                child: Text(
                  "login".tr(),
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  if (context.locale == Locale('en')) {
                    context.setLocale(Locale('ar'));
                  } else {
                    context.setLocale(Locale('en'));
                  }
                },
                child: Text("${context.locale.languageCode}"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
