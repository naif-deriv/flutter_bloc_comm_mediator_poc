import 'package:example/auth_cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthWidget extends StatelessWidget {
  const AuthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
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
                    onPressed: () => context.read<AuthCubit>().authorize(),
                    child: const Text('Log In'),
                  ),
                  ElevatedButton(
                    onPressed: () => context.read<AuthCubit>().unAuthorize(),
                    child: const Text('Log Out'),
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
