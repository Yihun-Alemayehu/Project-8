import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'shopping_cart_event.dart';
part 'shopping_cart_state.dart';

class ShoppingCartBloc extends Bloc<ShoppingCartEvent, ShoppingCartState> {
  ShoppingCartBloc() : super(ShoppingCartInitial()) {
    on<ShoppingCartEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
