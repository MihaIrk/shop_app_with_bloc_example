part of 'basket_cubit.dart';

@freezed
class BasketState with _$BasketState {
  const factory BasketState.initial({
    required List<Purchase> purchase,
  }) = _Initial;
}
