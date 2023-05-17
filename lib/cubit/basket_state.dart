part of '../cubit/basket_cubit.dart';

@freezed
class BasketState with _$BasketState {
  const factory BasketState({
    required List<Order> orders,
    @Default(false)bool loading,
  }) = _Initial;
}
