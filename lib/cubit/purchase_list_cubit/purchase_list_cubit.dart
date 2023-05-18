import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/purchase.dart';

part '../purchase_list_cubit/purchase_list_state.dart';
part 'purchase_list_cubit.freezed.dart';

class PurchaseListCubit extends Cubit<PurchaseListState> {
  PurchaseListCubit() : super(const PurchaseListState(purchases: []));

  void addPurchase(Purchase purchase,){
    final purchases = state.purchases.toList();
    purchases.add(purchase);
    emit(state.copyWith(purchases: purchases,),
    );
  }

  void deletePurchase(Purchase purchase,){
    final purchases = state.purchases.toList();
    purchases.remove(purchase);
    emit(state.copyWith(purchases: purchases,),);
  }
}
