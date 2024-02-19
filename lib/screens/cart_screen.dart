import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_8/shopping_cart_bloc/shopping_cart_bloc.dart';

class CartScreen extends StatelessWidget {
  // final ShoppingCartState state;
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart Screen'),
        centerTitle: true,
      ),
      body: BlocBuilder<ShoppingCartBloc, ShoppingCartState>(
        builder: (context, state) {
          return Column(
            children: [
              if (state is MyShoppingCartLoaded)
                Expanded(
                  child: ListView.builder(
                    itemCount: state.cart.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(state.cart[index].name),
                        subtitle: Text(state.cart[index].price.toString()),
                        trailing: Text(state.cart[index].id.toString()),
                      );
                    },
                  ),
                )
                else
                  const Text('I don\'t know what happened to you..')
            ],
          );
        },
      ),
    );
  }
}
