import 'package:bloccourse/01_cubit/01-simple_cubit/presentation/blocs/blocs.dart';
import 'package:bloccourse/01_cubit/02-cubit_router/presentation/blocs/blocs.dart';
import 'package:bloccourse/01_cubit/02-cubit_router/presentation/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const BlocsProviders());
}

class BlocsProviders extends StatelessWidget {
  const BlocsProviders({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UserNameCubit(),
        ),
        BlocProvider(
          create: (context) => RouterSimpleCubit()
        )
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = context.watch<RouterSimpleCubit>().state;
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Bloc Course',
      routerConfig: appRouter,
    );
  }
}
