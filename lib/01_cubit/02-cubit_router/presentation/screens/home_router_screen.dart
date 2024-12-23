import 'package:bloccourse/01_cubit/02-cubit_router/presentation/blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeRouterScreen extends StatelessWidget {
  const HomeRouterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Router + Go Router'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton.icon(
            onPressed: () {
              context.read<RouterSimpleCubit>().goSimpleCubit();
            },
            label: const Text('Simple Cubit'),
            icon: const Icon(Icons.gif_box_sharp),
          ),
          Divider(),
          ElevatedButton.icon(
            onPressed: () {
              context.read<RouterSimpleCubit>().goCustomers();
            },
            label: const Text('Customers'),
            icon: Icon(Icons.people_alt_rounded),
          ),
          Divider(),
          ElevatedButton.icon(
              onPressed: () {
                context.read<RouterSimpleCubit>().goAppoiments();
              },
              label: const Text('Appoiments'),
              icon: Icon(Icons.schedule_rounded))
        ],
      )
    );
  }
}
