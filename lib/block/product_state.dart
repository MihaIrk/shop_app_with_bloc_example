part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    String? text,
    @Default(false)bool loaded,
    @Default([])List<Product>products,
}) = _ProductState;
}
