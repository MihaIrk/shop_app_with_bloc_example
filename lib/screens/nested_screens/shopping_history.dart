import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_3/cubit/purchase_list_cubit/purchase_list_cubit.dart';
import 'package:task_3/main.dart';
import 'package:task_3/models/purchase.dart';
import 'package:task_3/routes/app_router.dart';
import 'package:task_3/routes/app_router.gr.dart';

@RoutePage()
class ShoppingHistoryViewScreen extends StatelessWidget {
  const ShoppingHistoryViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('История покупок'),
      ),
      body: BlocBuilder<PurchaseListCubit, PurchaseListState>(builder: (context, state) {
        if(state.purchases.isEmpty) {
          return const Center(child: Text('У вас нет заказов вы нищеброд'),);
        }
        else{
          return ListView.builder(itemCount: state.purchases.length, itemBuilder: (context, index) => PurchaseTile(purchase: state.purchases[index], index: index));
        }
      }),
    );
  }
}

class PurchaseTile extends StatelessWidget {
  const PurchaseTile({Key? key, required this.purchase, required this.index}) : super(key: key);
  final int index;
  final Purchase purchase;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        getIt<AppRouter>().navigate(
          User(
            children: [
              const UserInfoViewRoute(),
              const ShoppingHistoryViewRoute(),
              PurchaseViewRoute(purchase: purchase, index: index),
            ],
          ),
        );
      },
      onLongPress: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: SizedBox(
              height: 200,
              width: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text('Удалить покупку из истории?'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(onPressed: () {context.read<PurchaseListCubit>().deletePurchase(purchase);getIt<AppRouter>().pop();}, child: const Text('Yes'),),
                      ElevatedButton(onPressed: () {getIt<AppRouter>().pop();}, child: const Text('No'),),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
      child: Card(
        child: ListTile(
          title: Text(
            'Заказ №$index',
          ),
          subtitle: Text(
            'Позиций в заказе: ${purchase.orders.length}',
          ),
        ),
      ),
    );
  }
}

