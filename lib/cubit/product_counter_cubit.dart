import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_counter_state.dart';
part 'product_counter_cubit.freezed.dart';

class ProductCounterCubit extends Cubit<ProductCounterState> {
  ProductCounterCubit() : super(const ProductCounterState(value: 1));

  void increment(){
    emit(state.copyWith(value: state.value + 1));
  }
  void decrement() {
    emit(state.copyWith(value: state.value >=2 ? state.value -1 : state.value));
  }
  void reset(){
    emit(state.copyWith(value: 1));
  }
}
