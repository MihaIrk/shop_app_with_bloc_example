import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_3/models/product.dart';
import '../models/order.dart';

part '../cubit/basket_state.dart';
part 'basket_cubit.freezed.dart';

class BasketCubit extends Cubit<BasketState> {
  BasketCubit() : super(const BasketState(orders: []));

  void addPurchase(Product product, int quantity) {
    final orders = state.orders.toList();
    orders.add(Order(product: product, quantity: quantity));
    emit(state.copyWith(orders: orders));
  }

  void deletePurchase(int productId) {
    final orders = state.orders.toList();
    orders.removeWhere((element) => element.product.id == productId);
    emit(state.copyWith(orders: orders));
  }

  void changeQuantityOrder(Product product, int newQuantity, int index ){
    final orders = state.orders.toList();
    orders.removeWhere((element) => element.product.id == product.id);
    orders.insert(index,Order(product: product, quantity: newQuantity));
    emit(state.copyWith(orders: orders));
  }

  void clearBasket(){
    final orders = state.orders.toList();
    emit(state.copyWith(orders: orders));
  }
}