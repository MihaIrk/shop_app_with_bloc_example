import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_3/cubit/basket_cubit.dart';
import 'package:task_3/cubit/buy_button_cubit.dart';
import 'package:task_3/cubit/purchase_list_cubit.dart';
import 'package:task_3/main.dart';
import 'package:task_3/models/order.dart';
import 'package:task_3/routes/app_router.dart';
import 'package:task_3/routes/app_router.gr.dart';

import '../models/purchase.dart';

@RoutePage()
class BasketViewScreen extends StatelessWidget {
  const BasketViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Purchase? purchase;
    return Scaffold(
      appBar: AppBar(title: Text('kjhgkh'),),
      body: BlocBuilder<BasketCubit, BasketState>(builder: (context, state) {
        if (state.orders.isEmpty) {
          return Text('Basket is empty');
        }
        else {
          purchase = Purchase(orders: state.orders);
          print('Длина ордеров${purchase!.orders.length}');
          return ListView.builder(
            itemCount: state.orders.length,
            itemBuilder: (context, index) {
              return BasketItem(order: state.orders[index]);
            },
          );
        }
      },
      ),
      floatingActionButton: FloatingActionButton(
        child: BlocBuilder<BuyButtonCubit, BuyButtonState>(
          builder: (context, state) {
            if(state.loaded) {
              return Text('Купить');
            }
            else {
              return CircularProgressIndicator(color: Colors.white,);
            }
          },
        ),
        onPressed: () {
          context.read<BuyButtonCubit>().onTap();
          context.read<PurchaseListCubit>().addPurchase(purchase!);
          getIt<AppRouter>().navigate(
            UserInfo(
              children: [
                UserInfoViewRoute(),
                ShoppingHistoryViewRoute(),
              ],
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}


class BasketItem extends StatelessWidget {
  const BasketItem({Key? key, required this.order}) : super(key: key);
  final Order order;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: IconButton(icon: Icon(Icons.delete_forever), onPressed: () {
          context.read<BasketCubit>().deletePurchase(order.product.id);
        },),
        title: Text(order.product.title),
        trailing: Text('Количество ${order.quantity}'),
      ),
    );
  }
}
