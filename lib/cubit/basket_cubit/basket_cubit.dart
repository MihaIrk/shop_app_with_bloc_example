import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_3/models/product.dart';
import 'package:task_3/service/local_service.dart';
import '../../models/order.dart';

part '../basket_cubit/basket_state.dart';
part 'basket_cubit.freezed.dart';

class BasketCubit extends Cubit<BasketState> {
  BasketCubit({required this.localService}) : super(const BasketState(orders: [], loading: false));
  final OffLineService localService;
  void addOrder(Product product, int quantity) {
    emit(state.copyWith(orders: localService.addOrder(state.orders, product, quantity)));
  }

  void deleteOrder(int productId) {
    emit(state.copyWith(orders: localService.deleteOrder(state.orders, productId)));
  }

  void incrementQuantityOrder(int index) {
    emit(state.copyWith(orders: localService.incrementQuantityOrder(state.orders, index)));
  }

  void decrementQuantityOrder(int index) {
    emit(state.copyWith(orders: localService.decrementQuantityOrder(state.orders, index)));
  }

  void clearBasket() async {
    emit(state.copyWith(loading: true));
    await Future.delayed(const Duration(seconds: 1));
    emit(state.copyWith(orders: [],loading: false,));
  }
}