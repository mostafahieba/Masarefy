import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frist_projact/Screens/Widgits/AddTransaction.dart';
import 'package:frist_projact/Screens/Widgits/HomeBody.dart';


class Homescreen extends StatelessWidget {
  const Homescreen({super.key});
  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Addtransactions();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("home".tr()),),
      body: Homebody(),
      floatingActionButton: FloatingActionButton(
        onPressed:()=> showBottomSheet(context),
        child: Icon(Icons.add),
      ),
    );
  }
}