import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_3/service/local_service.dart';

import '../../models/purchase.dart';

part '../purchase_list_cubit/purchase_list_state.dart';
part 'purchase_list_cubit.freezed.dart';

class PurchaseListCubit extends Cubit<PurchaseListState> {
  PurchaseListCubit({required this.localService}) : super(const PurchaseListState(purchases: []));
  final OffLineService localService;

  void addPurchase(Purchase purchase){
    emit(state.copyWith(purchases: localService.addPurchase(state.purchases, purchase)));
  }

  void deletePurchase(Purchase purchase){
    emit(state.copyWith(purchases: localService.deletePurchase(state.purchases, purchase)));
  }
}
