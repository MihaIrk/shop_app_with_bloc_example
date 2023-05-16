import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/purchase.dart';

part 'purchase_list_state.dart';
part 'purchase_list_cubit.freezed.dart';

class PurchaseListCubit extends Cubit<PurchaseListState> {
  PurchaseListCubit() : super(const PurchaseListState(purchases: []));

  void addPurchase(Purchase purchase){
    final List<Purchase> purchases = [];
    purchases.addAll(state.purchases);
    purchases.add(purchase);
    emit(PurchaseListState(purchases: purchases));
  }

  void deletePurchase(Purchase purchase){
    final List<Purchase> purchases = [];
    purchases.addAll(state.purchases);
    purchases.remove(purchase);
    emit(PurchaseListState(purchases: purchases));

  }
}
