import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_3/cubit/basket_cubit.dart';
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
    return Scaffold(
      appBar: AppBar(title: const Text('Корзина'),),
      body: BlocBuilder<BasketCubit, BasketState>(builder: (context, state) {
        if (state.orders.isEmpty) {
          return const Center(child: Text('В вашей корзине ничего нет'));
        }
        else {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: state.orders.length,
                  itemBuilder: (context, index) {
                    return BasketItem(order: state.orders[index], index: index,);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: FloatingActionButton(
                  child: state.loading ? const CircularProgressIndicator(color: Colors.white,) : const Text('Купить'),
                  onPressed: () async {
                    if (state.orders.isNotEmpty) {
                      context.read<PurchaseListCubit>().addPurchase(Purchase(orders: state.orders));
                      context.read<BasketCubit>().clearBasket();
                      await Future.delayed(const Duration(seconds: 1));
                      getIt<AppRouter>().navigate(
                        const User(
                          children: [
                            UserInfoViewRoute(),
                            ShoppingHistoryViewRoute(),
                          ],
                        ),
                      );

                    }
                  },
                ),
              ),
            ],
          );
        }
      },
      ),
    );
  }
}


class BasketItem extends StatelessWidget {
  const BasketItem({Key? key, required this.order, required this.index}) : super(key: key);
  final int index;
  final Order order;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            IconButton(onPressed: (){
              context.read<BasketCubit>().incrementQuantityOrder(order.product, order.quantity, index);
            }, icon: const Icon(Icons.keyboard_arrow_up,),),
            Text('Кол-во: ${order.quantity}'),
            IconButton(onPressed: (){
              context.read<BasketCubit>().decrementQuantityOrder(order.product, order.quantity, index);
            }, icon: const Icon(Icons.keyboard_arrow_down,),style: ElevatedButton.styleFrom(fixedSize: const Size(5.0,5.0)),),
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              order.product.title,
              maxLines: 2,
            ),
          ),
        ),
        IconButton(
          icon: const Icon(Icons.delete_forever),
          onPressed: () {
            context.read<BasketCubit>().deletePurchase(order.product.id);
          },
        ),
      ],
    );
  }
}
