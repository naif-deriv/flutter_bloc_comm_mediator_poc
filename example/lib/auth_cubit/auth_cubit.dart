import 'package:bloc_comm_mediator_poc/component/component.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Component<AuthState> {
  AuthCubit() : super(AuthInitial());

  void authorize() async {
    emit(AuthLoading());
    await Future.delayed(
      const Duration(seconds: 2),
    );
    emit(AuthLoggedIn());
  }

  void unAuthorize() async {
    emit(AuthLoading());
    await Future.delayed(
      const Duration(seconds: 2),
    );
    emit(AuthLoggedOut());
  }
}
