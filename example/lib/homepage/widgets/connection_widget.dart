import 'package:example/connection_cubit/connection_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConnectionWidget extends StatelessWidget {
  const ConnectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConnectionCubit, InternetConectionState>(
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
              child: Text(
                state.toString(),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () =>
                        context.read<ConnectionCubit>().disconnect(),
                    child: const Text('disable internet'),
                  ),
                  ElevatedButton(
                    onPressed: () => context.read<ConnectionCubit>().connect(),
                    child: const Text('enable internet'),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
