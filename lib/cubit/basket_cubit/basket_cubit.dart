import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_3/models/product.dart';
import '../../models/order.dart';

part '../basket_cubit/basket_state.dart';
part 'basket_cubit.freezed.dart';

class BasketCubit extends Cubit<BasketState> {
  BasketCubit() : super(const BasketState(orders: [], loading: false));

  void addPurchase(Product product, int quantity,) {
    final orders = state.orders.toList();
    orders.add(Order(product: product, quantity: quantity),);
    emit(state.copyWith(orders: orders),);
  }

  void deletePurchase(int productId,) {
    final orders = state.orders.toList();
    orders.removeWhere((element) => element.product.id == productId);
    emit(state.copyWith(orders: orders,),);
  }

  void incrementQuantityOrder(Product product, int quantity, int index, ){
    final orders = state.orders.toList();
    orders.removeWhere((element) => element.product.id == product.id);
    orders.insert(index,Order(product: product, quantity: quantity + 1),);
    emit(state.copyWith(orders: orders,),);
  }

  void decrementQuantityOrder(Product product, int quantity, int index, ){
    final orders = state.orders.toList();
    orders.removeWhere((element) => element.product.id == product.id);
    orders.insert(index,Order(product: product, quantity: quantity >= 2 ? quantity -1  : quantity),);
    emit(state.copyWith(orders: orders,),);
  }

  void clearBasket()async{
    emit(state.copyWith(loading: true,),);
    await Future.delayed(const Duration(seconds: 1,),);
    emit(state.copyWith(orders: [],loading: false,),);
  }
}