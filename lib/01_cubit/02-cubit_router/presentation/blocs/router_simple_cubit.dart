import 'package:bloc/bloc.dart';
import 'package:bloccourse/config/router/app_router.dart';
import 'package:go_router/go_router.dart';

class RouterSimpleCubit extends Cubit<GoRouter> {
  RouterSimpleCubit() : super(publicRoutes);

  void goBack() => state.pop();

  void goHome() => state.go('/');

  void goCustomers() => state.go('/customers');

  void goAppoiments() => state.go('/appoiments');

  void goSimpleCubit() => state.go('/simplecubit');
}
