part of '../cubit/basket_cubit.dart';

@freezed
class BasketState with _$BasketState {
  const factory BasketState({
    required List<Order> orders,
  }) = _Initial;
}
