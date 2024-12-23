import 'package:bloccourse/01_cubit/02-cubit_router/presentation/blocs/router_simple_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomerScreen extends StatelessWidget {
  const CustomerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customers'),
      ),
      body: Center(
        child: const Text('Lista de clientes...'),
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
