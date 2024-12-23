import 'package:bloccourse/01_cubit/01-simple_cubit/presentation/screens/screens.dart';
import 'package:bloccourse/01_cubit/02-cubit_router/presentation/screens/screens.dart';
import 'package:go_router/go_router.dart';

final GoRouter publicRoutes = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const HomeRouterScreen();
      },
      routes: [
        GoRoute(
          path: 'appoiments',
          builder: (context, state) => const AppoimentScreen(),
        ),
        GoRoute(
          path: 'customers',
          builder: (context, state) => const CustomerScreen(),
        ),
        GoRoute(
          path: 'simplecubit', 
          builder: (context, state) => const UserNameScreen(),
        ),
      ]
    ),
  ],
);
