import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_counter_state.dart';
part 'product_counter_cubit.freezed.dart';

class ProductCounterCubit extends Cubit<ProductCounterState> {
  ProductCounterCubit() : super(const ProductCounterState(value: 1));

  void increment(){
    int value = state.value;
    value += 1;
    emit(ProductCounterState(value: value));
  }
  void decrement() {
    int value = state.value;
    if(value >=2){
      value -= 1;
    }
    emit(ProductCounterState(value: value));
  }
  void reset(){
    emit(const ProductCounterState(value: 1));
  }
}
