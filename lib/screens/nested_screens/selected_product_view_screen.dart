import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_3/block/basket_cubit.dart';
import 'package:task_3/cubit/product_counter_cubit.dart';
import 'package:task_3/main.dart';
import 'package:task_3/routes/app_router.dart';
import 'package:task_3/routes/app_router.gr.dart';

import '../../models/product.dart';

@RoutePage()
class SelectedProductScreen extends StatelessWidget {
  const SelectedProductScreen({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    int test = 1;
    return Scaffold(
      appBar: AppBar(title: Text(product.title),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(product.image),
            Text(product.description),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){context.read<ProductCounterCubit>().increment(); test += 1;}, child: Icon(Icons.add)),
                BlocBuilder<ProductCounterCubit, int>(
                  builder: (context, state) {
                    test = state;
                    return Text('$state');
                  },
                ),
                ElevatedButton(onPressed: (){context.read<ProductCounterCubit>().decrement();test -= 1;}, child: Icon(Icons.minimize)),
              ],
            ),
            ElevatedButton(onPressed: () {
              print(test);
              context.read<BasketCubit>().addPurchase(product, test);
              getIt<AppRouter>().navigate(Basket(
                  children: [
                    BasketViewRoute(),
                  ],
              ),
              );
              test = 0;
              print(test);

            }, child: Text('add to basket'),)
          ],
        ),
      ),
    );
  }
}
