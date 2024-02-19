import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project_8/data/models/product_model.dart';

part 'shopping_cart_event.dart';
part 'shopping_cart_state.dart';

class ShoppingCartBloc extends Bloc<ShoppingCartEvent, ShoppingCartState> {
  ShoppingCartBloc() : super(ShoppingCartInitial()) {
    on<AddCartEvent>((event, emit) {
      
    });
    on<RemoveCartEvent>((event, emit) {
      
    });
    on<UpdateCartEvent>((event, emit) {
      
    });
  }
}
