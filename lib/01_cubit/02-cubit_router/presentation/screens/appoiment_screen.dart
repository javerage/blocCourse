import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloccourse/01_cubit/02-cubit_router/presentation/blocs/router_simple_cubit.dart';

class AppoimentScreen extends StatelessWidget {
  const AppoimentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appoiments'),
      ),
      body: Center(
        child: const Text('Reuniones del día....'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<RouterSimpleCubit>().goBack();
        },
        child: const Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}