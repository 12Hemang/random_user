import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_user/core/module/di_module.dart';
import 'package:random_user/core/response/user/user_data.dart';
import 'package:random_user/ui/user/bloc/user_bloc.dart';

class UserHome extends StatefulWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  final UserBloc _userBloc = getIt<UserBloc>();

  @override
  void initState() {
    _userBloc.add(const UserDataFetch());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: userWidget);
  }

  Widget get userWidget => BlocConsumer<UserBloc, UserDataState>(
      bloc: _userBloc,
      listener: (context, UserDataState state) {},
      builder: (BuildContext context, UserDataState state) {
        if (state is Loading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is SuccessfullyState<List<UserData>>) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: state.data?.length ?? 0,
            itemBuilder: (context, index) {
              UserData user = state.data![index];
              return Column(
                children: [
                  Text(user.name?.title ?? "--"),
                  Text(user.gender ?? "--"),
                  Text(user.email ?? "--"),
                ],
              );
            },
          );
        } else if (state is ErrorState) {
          return Center(child: Text(state.errorMessage));
        } else {
          //Initial
          return const Center(child: Text("Requesting Data"));
        }
      });
}
