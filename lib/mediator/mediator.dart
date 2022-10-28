import 'package:flutter_bloc/flutter_bloc.dart';

import '../component/component.dart';

abstract class IMediator {
  void notify(Object sender, dynamic state);
  void setDefaultMediator(List<Component> list);
}

abstract class Mediator<T> extends Cubit<T> {
  Mediator(super.initialState);
}
