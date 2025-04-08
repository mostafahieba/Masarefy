import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Logic/Home/home_cubit.dart';

class Addtransactions extends StatelessWidget {
  Addtransactions({super.key});
  TextEditingController title = TextEditingController();
  TextEditingController amount = TextEditingController();
  TextEditingController source = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("add_new_transaction".tr()),
        TextField(
          controller: title,
          decoration: InputDecoration(label: Text("title".tr())),
        ),
        TextField(
          controller: amount,
          decoration: InputDecoration(label: Text("amount".tr())),
        ),
        TextField(
          controller: source,
          decoration: InputDecoration(label: Text("source".tr())),
        ),


        ElevatedButton(
          onPressed: () {
            context.read<HomeCubit>().addTransaction(
              title.text,
              double.parse(amount.text),
              source.text,
            );
            Navigator.pop(context);
          },
          child: Text("add".tr()),
        ),
      ],
    );
  }
}
