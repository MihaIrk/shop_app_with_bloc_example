import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_3/models/product.dart';

import '../models/purchase.dart';

part 'basket_state.dart';
part 'basket_cubit.freezed.dart';

class BasketCubit extends Cubit<BasketState> {
  BasketCubit() : super(const BasketState.initial(purchase: []));

  void addPurchase (Product product, int kolvo) {
    final tovar = Purchase(product: product, quantity: kolvo);
    state.purchase.add(tovar);
    emit(state);
    print('${product.id}, $kolvo');
  }
}
