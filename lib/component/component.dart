// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc_comm_mediator_poc/mediator/mediator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class Component<T> extends Cubit<T> {
  late IMediator mediator;

  Component(super.initialState);

  set setMediator(IMediator mediator) {
    this.mediator = mediator;
  }

  @override
  void onChange(Change<T> change) {
    super.onChange(change);
    mediator.notify(this, change.nextState);
  }
}
