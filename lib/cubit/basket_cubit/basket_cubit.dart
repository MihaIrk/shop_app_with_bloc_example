import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_3/models/product.dart';
import '../../models/order.dart';

part '../basket_cubit/basket_state.dart';
part 'basket_cubit.freezed.dart';

class BasketCubit extends Cubit<BasketState> {
  BasketCubit() : super(const BasketState(orders: [], loading: false));

  void addPurchase(Product product, int quantity) {
    final orders = state.orders.toList();
    orders.add(Order(product: product, quantity: quantity),);
    emit(state.copyWith(orders: orders));
  }

  void deletePurchase(int productId,) {
    final orders = state.orders.toList();
    orders.removeWhere((element) => element.product.id == productId);
    emit(state.copyWith(orders: orders));
  }

  void incrementQuantityOrder(int index){
    final orders = state.orders.toList();
    orders[index] = Order(product: orders[index].product, quantity: orders[index].quantity+1);
    emit(state.copyWith(orders: orders));
  }

  void decrementQuantityOrder(int index ){
    final orders = state.orders.toList();
    if(orders[index].quantity >= 2) {
      orders[index] = Order(product: orders[index].product,quantity: orders[index].quantity-1);
    }
    emit(state.copyWith(orders: orders));
  }

  void clearBasket()async{
    emit(state.copyWith(loading: true));
    await Future.delayed(const Duration(seconds: 1));
    emit(state.copyWith(orders: [],loading: false,));
  }
}