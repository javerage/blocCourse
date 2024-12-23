import 'package:bloccourse/01_cubit/01-simple_cubit/presentation/blocs/blocs.dart';
import 'package:bloccourse/config/helpers/random_generator_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserNameScreen extends StatelessWidget {
  const UserNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final userNameCubit = context.watch<UserNameCubit>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Cubit'),
      ),
      body: SafeArea(
        child: Center(
          child: BlocBuilder<UserNameCubit, String>(
            builder: (context, state) => Text(state),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context
              .read<UserNameCubit>()
              .setUserName(RandomGeneratorNames.getName());
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
