part of 'shopping_cart_bloc.dart';

abstract class ShoppingCartState extends Equatable {
  const ShoppingCartState();
  
  @override
  List<Object> get props => [];
}

class ShoppingCartInitial extends ShoppingCartState {}

class ShoppingCartLoading extends ShoppingCartState {}

class ShoppingCartLoaded extends ShoppingCartState {
  final List<Product> products;

  const ShoppingCartLoaded({required this.products});

  @override
  List<Object> get props => [products];
}

class ShoppingCartError extends ShoppingCartState {
  final String errorMessage;

  const ShoppingCartError({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}

class MyShoppingCartLoaded extends ShoppingCartState {
  final List<Product> cart;

  const MyShoppingCartLoaded({required this.cart});

  @override
  List<Object> get props => [cart];
}
