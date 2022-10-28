import 'package:example/auth_cubit/auth_cubit.dart';
import 'package:example/connection_cubit/connection_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'homepage/homepage.dart';
import 'homepage/homepage_cubit/homepage_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
        BlocProvider(
          create: (context) => ConnectionCubit(),
        ),
        BlocProvider(
          create: (context) => HomepageCubit()
            ..setDefaultMediator(
              [
                context.read<AuthCubit>(),
                context.read<ConnectionCubit>(),
              ],
            ),
        ),
      ],
      child: MaterialApp(
        title: 'Bloc Comm using Mediator Pattern',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Homepage(),
      ),
    );
  }
}
