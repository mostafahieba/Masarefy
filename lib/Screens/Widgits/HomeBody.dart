import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frist_projact/Screens/Widgits/BlanceHeader.dart';

import '../../Logic/Home/home_cubit.dart';

class Homebody extends StatelessWidget {
  const Homebody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Blanceheader(),
        Expanded(
          child: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              return ListView.builder(
                itemCount: state.list.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.account_balance_wallet),
                    title: Text("${state.list[index].title}"),
                    subtitle: Text("${state.list[index].amount}"),
                    trailing: Text("${state.list[index].source}"),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
