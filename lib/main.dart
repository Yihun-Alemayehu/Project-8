import 'package:flutter/material.dart';
import 'package:project_8/screens/home_screen.dart';
import 'package:project_8/shopping_cart_bloc/shopping_cart_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShoppingCartBloc()..add(LoadCartEvent()),
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
