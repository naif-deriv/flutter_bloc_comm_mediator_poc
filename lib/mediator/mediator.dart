import 'package:flutter_bloc/flutter_bloc.dart';

import '../component/component.dart';

abstract class IMediator {
  void notify(Object sender, dynamic newState);
  void setDefaultMediator(List<Component> list);
}

abstract class MediatorCubit<T> extends Cubit<T> with IMediator {
  MediatorCubit(super.initialState);
}
