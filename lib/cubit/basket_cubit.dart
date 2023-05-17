import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_3/models/product.dart';
import '../models/order.dart';

part '../cubit/basket_state.dart';
part 'basket_cubit.freezed.dart';

class BasketCubit extends Cubit<BasketState> {
  BasketCubit() : super(const BasketState(orders: []));

  void addPurchase(Product product, int quantity) {
    final List<Order> orders = [];
    orders.addAll(state.orders);
    final newOrder = Order(product: product, quantity: quantity);
    orders.add(newOrder);
    emit(BasketState(orders: orders));
  }

  void deletePurchase(int productId) {
    final List<Order> orders = [];
    orders.addAll(state.orders);
    orders.removeWhere((element) => element.product.id == productId);
    orders.sort();
    emit(BasketState(orders: orders));
  }

  void changeQuantityOrder(Product product, int newQuantity, int index ){
    final List<Order> orders = [];
    orders.addAll(state.orders);
    orders.removeWhere((element) => element.product.id == product.id);
    orders.insert(index,Order(product: product, quantity: newQuantity));
    emit(BasketState(orders: orders));
  }
}