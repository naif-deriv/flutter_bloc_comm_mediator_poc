import 'package:bloc_comm_mediator_poc/component/component.dart';
import 'package:bloc_comm_mediator_poc/mediator/mediator.dart';
import 'package:example/auth_cubit/auth_cubit.dart';
import 'package:example/connection_cubit/connection_cubit.dart';

part 'homepage_state.dart';

class HomepageCubit extends MediatorCubit<HomepageState> {
  HomepageCubit() : super(HomepageState(connectionState: '', authState: ''));

  @override
  void notify(sender, newState) {
    if (sender is AuthCubit) {
      if (newState is AuthInitial) {
        emit(state.copyWith(
          authState: 'Initial',
        ));
      }
      if (newState is AuthLoading) {
        emit(state.copyWith(
          authState: 'Loading',
        ));
      }
      if (newState is AuthLoggedIn) {
        emit(state.copyWith(
          authState: 'Logged in',
        ));
      }
      if (newState is AuthLoggedOut) {
        emit(state.copyWith(
          authState: 'Logged out',
        ));
      }
    } else if (sender is ConnectionCubit) {
      if (newState is Connected) {
        emit(state.copyWith(
          connectionState: 'Connected',
        ));
      }
      if (newState is Disconnected) {
        emit(state.copyWith(
          connectionState: 'No Internet',
        ));
      }
    }
  }

  @override
  void setDefaultMediator(List<Component> list) {
    for (Component component in list) {
      component.mediator = this;
    }
  }
}
