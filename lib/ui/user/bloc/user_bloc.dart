import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_user/core/response/base/base_response.dart';
import 'package:random_user/core/response/user/user_data.dart';
import 'package:random_user/generated/l10n.dart';
import 'package:random_user/ui/user/usecase/user_usecases.dart';
import 'package:random_user/utils/logging.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserDataState> {
  final AuthUseCase authUseCase;

  UserBloc({required this.authUseCase}) : super(Initial()) {
    on<UserDataFetch>(userRecordFetch);
  }

  void userRecordFetch(
    UserDataFetch event,
    Emitter<UserDataState> emit,
  ) async {
    try {
      emit(Loading());
      BaseResponse<List<UserData>?> response =
          await authUseCase.getUserList(event.count);
      if (response.isOk) emit(SuccessfullyState(response.data));
    } catch (e, st) {
      emit(ErrorState(errorMessage: S.current.connectionProblem));
      Log.error(runtimeType.toString(), e.toString(), e, st);
    }
  }
}
