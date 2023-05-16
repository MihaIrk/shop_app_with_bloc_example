import 'package:freezed_annotation/freezed_annotation.dart';
import 'order.dart';

part 'purchase.freezed.dart';
part 'purchase.g.dart';


@freezed
class Purchase with _$Purchase {
  const factory Purchase({
    required List<Order>orders,
}) = _Purchase;
  factory Purchase.fromJson(Map<String,dynamic>json) => _$PurchaseFromJson(json);
}