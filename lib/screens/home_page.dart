import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/internet_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: BlocBuilder<InternetCubit, InternetState>(
        builder: (context, state) {
          //== to check value
          //is to check data type
          if (state == InternetState.Gained) {
            return const Text("Connected!");
          } else if (state == InternetState.Gained) {
            return const Text("Not Connected!");
          } else {
            return const Text("Loading....");
          }
        },
      )),
    );
  }
}
