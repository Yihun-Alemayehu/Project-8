import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_8/shopping_cart_bloc/shopping_cart_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShoppingCartBloc, ShoppingCartState>(
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              title: const Text('Shopping App'),
              centerTitle: true,
            ),
            body: Column(
              children: [
                if (state is ShoppingCartInitial)
                  const Text('Shopping Cart Initial...')
                else if (state is ShoppingCartLoading)
                  const CircularProgressIndicator()
                else if (state is ShoppingCartLoaded)
                  Expanded(
                    child: ListView.builder(
                      itemCount: state.products.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(state.products[index].name),
                          subtitle: Text(state.products[index].id.toString()),
                          trailing: Text(state.products[index].price.toString()),
                        );
                      },
                    ),
                  )
                else 
                  const Text('I don\'t know what happend to you..')
              ],
            ));
      },
    );
  }
}
