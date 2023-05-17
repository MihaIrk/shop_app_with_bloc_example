import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:task_3/models/order.dart';
import 'package:task_3/models/purchase.dart';
import 'package:task_3/routes/app_router.dart';
import 'package:task_3/routes/app_router.gr.dart';

import '../../main.dart';


@RoutePage()
class PurchaseViewScreen extends StatelessWidget {
  const PurchaseViewScreen({Key? key, required this.purchase, @PathParam('id')required this.index,}) : super(key: key);
  final int index;
  final Purchase purchase;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Заказ №$index'),),
      body: ListView.builder(
        itemCount: purchase.orders.length,
        itemBuilder: (context, index) => PurchaseOrders(order: purchase.orders[index],),)
    );
  }
}

class PurchaseOrders extends StatelessWidget {
  const PurchaseOrders({Key? key, required this.order}) : super(key: key);
  final Order order;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        getIt<AppRouter>().navigate(
          Products(children: [
            const ProductViewRoute(),
            SelectedProductRoute(product: order.product, id: order.product.id)
          ]),
        );
      },
      child: Card(
        child: ListTile(
          leading: Image.network(order.product.image),
          title: Text(order.product.title),
          trailing: Text('Количество:${order.quantity}'),
        ),
      ),
    );
  }
}
