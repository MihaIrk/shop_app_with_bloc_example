part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.started() = ProductStartEvent;
  // const factory ProductEvent.loading() = ProductLoadingEvent;
  // const factory ProductEvent.loaded() = ProductLoadedEvent;
}
