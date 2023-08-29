import 'package:cubit/counter_cubit.dart';
import 'package:cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Logic extends StatelessWidget {
  Logic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(fontSize: 17),
            ),
            BlocBuilder<CounterCubit, CounterStates>(
              builder: (context, state) => Text(
                BlocProvider.of<CounterCubit>(context).cnt.toString(),
                style: TextStyle(fontSize: 40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
