import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder;

import '../../Logic/Home/home_cubit.dart';

class Blanceheader extends StatelessWidget {
  const Blanceheader({super.key});

  @override
  Widget build(BuildContext context) {
    var now = DateTime.now().toString().substring(0, 16);
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0x6CFDF900),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("my_balance_today".tr()),
          BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              var balnce = 5000 - state.total;
              return Text(balnce.toString());
            },
          ),
          Text(now),
        ],
      ),
    );
  }
}
