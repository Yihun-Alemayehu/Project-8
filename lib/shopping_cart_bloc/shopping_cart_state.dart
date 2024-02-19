part of 'shopping_cart_bloc.dart';

sealed class ShoppingCartState extends Equatable {
  const ShoppingCartState();
  
  @override
  List<Object> get props => [];
}

final class ShoppingCartInitial extends ShoppingCartState {}
