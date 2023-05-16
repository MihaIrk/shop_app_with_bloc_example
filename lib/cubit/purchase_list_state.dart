part of 'purchase_list_cubit.dart';

@freezed
class PurchaseListState with _$PurchaseListState {
  const factory PurchaseListState({
    required List<Purchase>purchases,
}) = _Initial;
}
