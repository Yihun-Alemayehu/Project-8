part of 'shopping_cart_bloc.dart';

sealed class ShoppingCartEvent extends Equatable {
  const ShoppingCartEvent();

  @override
  List<Object> get props => [];
}

class AddCartEvent extends ShoppingCartEvent {
  final Product product;

  const AddCartEvent({required this.product});

  @override
  List<Object> get props => [product];
}

class RemoveCartEvent extends ShoppingCartEvent {
  final Product product;

  const RemoveCartEvent({required this.product});

  @override
  List<Object> get props => [product];
}

class UpdateCartEvent extends ShoppingCartEvent {
  final Product product;

  const UpdateCartEvent({required this.product});

  @override
  List<Object> get props => [product];
}

