import 'package:api/api_session/cubit/api_cubit.dart';
import 'package:api/api_session/screens/api_session.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ApiCubit()..getAlbumsData(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ApiSession(),
      ),
    );
  }
}
