import 'package:basket_ball_counter/cubit/counter_cubit.dart';
import 'package:basket_ball_counter/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.orange,
              title: const Text(
                "Points Counter",
                style: TextStyle(color: Colors.white),
              ),
            ),
            body: Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const Text(
                          "Team A",
                          style: TextStyle(fontSize: 32, color: Colors.black),
                        ),
                        Text(
                          "${BlocProvider.of<CounterCubit>(context).teamApoints}",
                          style: const TextStyle(
                              fontSize: 150, color: Colors.black),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                maximumSize: const Size(150, 50)),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamIncrement(team: "A", buttonNumber: 1);
                            },
                            child: const Text(
                              "Add 1 Point",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                        const SizedBox(
                          height: 16,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                maximumSize: const Size(150, 50)),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamIncrement(team: "A", buttonNumber: 2);
                            },
                            child: const Text(
                              "Add 2 Point",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                        const SizedBox(
                          height: 16,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                maximumSize: const Size(150, 50)),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamIncrement(team: "A", buttonNumber: 3);
                            },
                            child: const Text(
                              "Add 3 Point",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 420,
                      child: VerticalDivider(
                        thickness: 3,
                        color: Colors.black,
                        indent: 10,
                        endIndent: 10,
                      ),
                    ),
                    Column(
                      children: [
                        const Text(
                          "Team B",
                          style: TextStyle(fontSize: 32, color: Colors.black),
                        ),
                        Text(
                          "${BlocProvider.of<CounterCubit>(context).teamBpoints}",
                          style: const TextStyle(
                              fontSize: 150, color: Colors.black),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                maximumSize: const Size(150, 50)),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamIncrement(team: "B", buttonNumber: 1);
                            },
                            child: const Text(
                              "Add 1 Point",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                        const SizedBox(
                          height: 16,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                maximumSize: const Size(150, 50)),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamIncrement(team: "B", buttonNumber: 2);
                            },
                            child: const Text(
                              "Add 2 Point",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                        const SizedBox(
                          height: 16,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                maximumSize: const Size(150, 50)),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamIncrement(team: "B", buttonNumber: 3);
                            },
                            child: const Text(
                              "Add 3 Point",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  ],
                ),
                const Spacer(
                  flex: 10,
                ),
                // SizedBox(
                //   height: 200,
                // ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        maximumSize: const Size(150, 50)),
                    onPressed: () {
                      BlocProvider.of<CounterCubit>(context).resetScores();
                    },
                    child: const Text(
                      "Reset Score",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )),
                const Spacer(
                  flex: 8,
                )
              ],
            ),
          );
        },
        listener: (context, state) {});
  }
}
