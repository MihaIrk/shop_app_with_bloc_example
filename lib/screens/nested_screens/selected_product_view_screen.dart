import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_3/cubit/basket_cubit/basket_cubit.dart';
import 'package:task_3/cubit/product_counter_cubit/product_counter_cubit.dart';
import 'package:task_3/main.dart';
import 'package:task_3/routes/app_router.dart';
import 'package:task_3/routes/app_router.gr.dart';
import '../../models/product.dart';

@RoutePage()
class SelectedProductScreen extends StatelessWidget {
  const SelectedProductScreen({Key? key,required this.product, @PathParam('id') this.id}) : super(key: key);
  final int? id;
  final Product product;

  @override
  Widget build(BuildContext context) {
    int quantity = 1;
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(product.image),
            Text(product.description),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.read<ProductCounterCubit>().decrement();
                    quantity -= 1;
                  },
                  child: const Icon(Icons.minimize),
                ),
                BlocBuilder<ProductCounterCubit, ProductCounterState>(
                  builder: (context, state) {
                    quantity = state.value;
                    return Text('${state.value}');
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<ProductCounterCubit>().increment();
                    quantity += 1;
                  },
                  child: const Icon(Icons.add),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                context.read<BasketCubit>().addOrder(product, quantity);
                context.read<ProductCounterCubit>().reset();
                getIt<AppRouter>().navigate(
                  const Basket(
                    children: [
                      BasketViewRoute(),
                    ],
                  ),
                );
              },
              child: const Text('Добавить в корзину'),
            ),
          ],
        ),
      ),
    );
  }
}
