import 'package:bloc_comm_mediator_poc/component/component.dart';
import 'package:meta/meta.dart';

part 'connection_state.dart';

class ConnectionCubit extends Component<InternetConectionState> {
  ConnectionCubit() : super(Connected());

  void disconnect() {
    emit(Disconnected());
  }

  void connect() {
    emit(Connected());
  }
}
