import 'package:cubit/Logic.dart';
import 'package:cubit/counter_cubit.dart';
import 'package:cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Counter extends StatelessWidget {
  Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Counter'),
        ),
        body: Logic(),
        floatingActionButton: BlocBuilder<CounterCubit, CounterStates>(
          builder: (context, state) => Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).increment();
                },
                child: Icon(Icons.add),
              ),
              SizedBox(
                height: 10,
              ),
              FloatingActionButton(
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).decrement();
                },
                child: Icon(Icons.minimize),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
