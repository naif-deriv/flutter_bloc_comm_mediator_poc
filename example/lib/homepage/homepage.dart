import 'package:example/homepage/homepage_cubit/homepage_cubit.dart';
import 'package:example/homepage/widgets/auth_widget.dart';
import 'package:example/homepage/widgets/connection_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomepageCubit, HomepageState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Observations on Cooking',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            backgroundColor: Colors.blue,
          ),
          body: Column(
            children: [
              const Expanded(
                child: AuthWidget(),
              ),
              const Expanded(
                child: ConnectionWidget(),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Text(state.connectionState),
                    ),
                    Expanded(
                      child: Text(state.authState),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
