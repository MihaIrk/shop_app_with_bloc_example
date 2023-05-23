import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_3/models/product.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class Order with _$Order {
  const Order._();
  const factory Order({
    required Product product,
    required int quantity,
}) = _Order;
  factory Order.fromJson(Map<String,dynamic>json) => _$OrderFromJson(json);
}