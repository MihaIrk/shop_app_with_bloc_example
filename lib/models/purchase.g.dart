// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Purchase _$$_PurchaseFromJson(Map<String, dynamic> json) => _$_Purchase(
      orders: (json['orders'] as List<dynamic>)
          .map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PurchaseToJson(_$_Purchase instance) =>
    <String, dynamic>{
      'orders': instance.orders,
    };
