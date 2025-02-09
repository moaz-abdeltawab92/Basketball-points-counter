import 'package:basket_ball_counter/cubit/counter_cubit.dart';
import 'package:basket_ball_counter/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const pointsCounter());
}

// ignore: camel_case_types
class pointsCounter extends StatelessWidget {
  const pointsCounter({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const MaterialApp(
          debugShowCheckedModeBanner: false, home: HomePage()),
    );
  }
}
