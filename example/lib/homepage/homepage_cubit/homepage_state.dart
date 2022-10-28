part of 'homepage_cubit.dart';

class HomepageState {
  final String connectionState;
  final String authState;

  HomepageState({
    required this.connectionState,
    required this.authState,
  });

  HomepageState copyWith({String? connectionState, String? authState}) =>
      HomepageState(
        connectionState: connectionState ?? this.connectionState,
        authState: authState ?? this.authState,
      );
}
