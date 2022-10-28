part of 'connection_cubit.dart';

@immutable
abstract class InternetConectionState {}

class Disconnected extends InternetConectionState {}

class Connected extends InternetConectionState {}
