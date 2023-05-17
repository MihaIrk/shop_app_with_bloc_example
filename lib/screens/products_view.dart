import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_3/block/product_bloc.dart';
import 'package:task_3/main.dart';

import '../models/product.dart';
import '../routes/app_router.dart';
import '../routes/app_router.gr.dart';

@RoutePage()
class ProductViewScreen extends StatelessWidget {
  const ProductViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc,ProductState>(
      builder: (context, state) {
        if(state.loaded == false) {
          return Column(mainAxisAlignment: MainAxisAlignment.center,children: [Text("${state.text}",), CircularProgressIndicator()],);
        }
        else {
          return ListView.builder(
            itemCount: state.products.length,
            itemBuilder: (context, index) => ProductsItem(product: state.products[index],),
          );
        }
      },
    );
  }
}

class ProductsItem extends StatelessWidget {
  const ProductsItem({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        getIt<AppRouter>().push(SelectedProductRoute(product: product, id:product.id));
      },
      child: Card(
        child: ListTile(
          leading: Image.network(product.image),
          title: Text(product.title, overflow: TextOverflow.ellipsis,),
          subtitle: Text(product.description, maxLines: 2,),
          trailing: Text('Rating:${product.rating.rate}'),
        ),
      ),
    );
  }
}

