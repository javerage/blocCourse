import 'package:bloc/bloc.dart';

class UserNameCubit extends Cubit<String> {
  UserNameCubit() : super('');

  setUserName(String name) => emit(name);
}
