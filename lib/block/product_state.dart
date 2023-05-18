part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    String? text,
    @Default(Load.empty)Load load,
    @Default([])List<Product>products,
}) = _ProductState;
}

enum Load{
  empty,
  loading,
  loaded,
  error,
}