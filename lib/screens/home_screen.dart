import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_8/screens/cart_screen.dart';
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
                          subtitle:
                              Text(state.products[index].price.toString()),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    context.read<ShoppingCartBloc>().add(
                                          AddCartEvent(
                                              product: state.products[index]),
                                        );
                                  },
                                  icon: const Icon(
                                      Icons.bookmark_added_outlined)),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.delete)),
                            ],
                          ));
                    },
                  ),
                )
              else
                const Text('I don\'t know what happend to you..')
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              context.read<ShoppingCartBloc>().add(LoadMyCartEvent());
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CartScreen(),
                ),
              );
            },
            child: const Icon(Icons.navigate_next_sharp),
          ),
        );
      },
    );
  }
}
