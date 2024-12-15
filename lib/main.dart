import 'package:bloccourse/01_cubit/01-simple_cubit/presentation/screens/screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class BlocPro extends StatelessWidget {
  const BlocPro({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const UserNameScreen(),
    );
  }
}
