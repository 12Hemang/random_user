part of 'user_bloc.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();
}

class UserDataFetch extends UserEvent {
  final int count;

  const UserDataFetch({this.count = 10});

  @override
  List<Object?> get props => [count];
}
