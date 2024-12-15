import 'package:bloc/bloc.dart';

class UserNameCubit extends Cubit<String> {
  UserNameCubit() : super('no-username');

  setUserName(String name) => emit(name);
}
