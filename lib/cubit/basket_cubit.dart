import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_3/models/product.dart';
import '../models/order.dart';

part '../cubit/basket_state.dart';
part 'basket_cubit.freezed.dart';

class BasketCubit extends Cubit<BasketState> {
  BasketCubit() : super(const BasketState(orders: []));

  void addPurchase (Product product, int quantity) {
    final List<Order> orders = [];
    orders.addAll(state.orders);
    final newProduct = Order(product: product, quantity: quantity);
    orders.add(newProduct);
    emit(BasketState(orders: orders));
  }

  void deletePurchase (int productId){
    final List<Order> orders = [];
    orders.addAll(state.orders);
    orders.removeWhere((element) => element.product.id == productId);
    emit(BasketState(orders: orders));
  }
}
