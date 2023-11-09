part of 'user_bloc.dart';

@immutable
abstract class UserDataState extends Equatable {
  const UserDataState();
}

class Initial extends UserDataState {
  @override
  List<Object?> get props => [];
}

class Loading extends UserDataState {
  @override
  List<Object?> get props => [];
}

class SuccessfullyState<T> extends UserDataState {
  final T? data;
  const SuccessfullyState(this.data);
  @override
  List<Object?> get props => [];
}

class ErrorState extends UserDataState {
  final String errorMessage;

  const ErrorState({required this.errorMessage});

  @override
  List<Object?> get props => [errorMessage];
}
