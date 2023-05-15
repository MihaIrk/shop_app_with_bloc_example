import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_counter_state.dart';
part 'product_counter_cubit.freezed.dart';

class ProductCounterCubit extends Cubit<int> {
  ProductCounterCubit() : super(1);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}
