import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_3/block/basket_cubit.dart';

@RoutePage()
class BasketViewScreen extends StatelessWidget {
  const BasketViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('kjhgkh'),),
      body: BlocBuilder<BasketCubit, BasketState>(builder: (context, state) {
        if(state.purchase.isEmpty) {
          return Text('Basket is empty');
        }
        else {
          return ListView.builder(
            itemBuilder: (context, index) {Text('${state.purchase[index].product.title} = ${state.purchase[index].quantity}');},);
        }
      },),
    );
  }
}
