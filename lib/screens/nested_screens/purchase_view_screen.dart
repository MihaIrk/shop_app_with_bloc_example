import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:task_3/models/purchase.dart';


@RoutePage()
class PurchaseViewScreen extends StatelessWidget {
  const PurchaseViewScreen({Key? key, required this.purchase, required this.index}) : super(key: key);
  final int index;
  final Purchase purchase;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Заказ №$index'),),
      body: Center(child: Text('${purchase.orders.first.product.title}'),),
    );
  }
}
