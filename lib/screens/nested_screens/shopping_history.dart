import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_3/cubit/purchase_list_cubit.dart';
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
      appBar: AppBar(title: Text('Spison Pokupok'),),
      body: BlocBuilder<PurchaseListCubit, PurchaseListState>(builder: (context, state) {
        print('Длина покупки в истории${state.purchases.length}');
        if(state.purchases.isEmpty) {
          return Center(child: Text('У вас нет заказов вы нищеброд'),);
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
          UserInfo(
            children: [
              UserInfoViewRoute(),
              ShoppingHistoryViewRoute(),
              PurchaseViewRoute(purchase: purchase, index: index),
            ],
          ),
        );
      },
      onLongPress: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: Container(
              height: 200,
              width: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Delete purchase?'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(onPressed: () {}, child: Text('Yes'),),
                      ElevatedButton(onPressed: () {getIt<AppRouter>().pop();}, child: Text('No'),),
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

