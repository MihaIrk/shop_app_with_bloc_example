part of '../product_bloc/product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent() = ProductStartEvent;
}
