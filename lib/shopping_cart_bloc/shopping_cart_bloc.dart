import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project_8/data/models/product_model.dart';

part 'shopping_cart_event.dart';
part 'shopping_cart_state.dart';

class ShoppingCartBloc extends Bloc<ShoppingCartEvent, ShoppingCartState> {
  final List<Product> _cart = [];
  ShoppingCartBloc() : super(ShoppingCartInitial()) {
    on<LoadCartEvent>((event, emit) {
      emit(ShoppingCartLoading());
      try {
        final List<Product> _products = [
          Product(id: 1, name: 'name-1', price: 80.0),
          Product(id: 2, name: 'name-2', price: 100.0),
          Product(id: 3, name: 'name-3', price: 120.0),
          Product(id: 4, name: 'name-4', price: 60.0),
        ];
        emit(ShoppingCartLoaded(products: _products));
      } catch (e) {
        emit(ShoppingCartError(errorMessage: 'Error: $e'));
      }
    });
    on<AddCartEvent>((event, emit) {
      emit(ShoppingCartLoading());
      try {
        
        // final currentEvent = event;
        _cart.add(Product(id: event.product.id, name: event.product.name, price: event.product.price));
      } catch (e) {
        emit(ShoppingCartError(errorMessage: 'Error: $e'));
      }
    });
    on<RemoveCartEvent>((event, emit) {
      
    });
    on<UpdateCartEvent>((event, emit) {
      
    });
    on<LoadMyCartEvent>((event, emit) {
      // emit(ShoppingCartLoading());
      emit(MyShoppingCartLoaded(cart: _cart));
    });
  }
}
