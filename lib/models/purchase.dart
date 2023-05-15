import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_3/models/product.dart';

part 'purchase.freezed.dart';
part 'purchase.g.dart';

@freezed
class Purchase with _$Purchase {
  const factory Purchase({
    required Product product,
    required int quantity,
}) = _Purchase;
  factory Purchase.fromJson(Map<String,dynamic>json) => _$PurchaseFromJson(json);
}