import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'buy_button_state.dart';
part 'buy_button_cubit.freezed.dart';

class BuyButtonCubit extends Cubit<BuyButtonState> {
  BuyButtonCubit() : super(const BuyButtonState());

  void onTap()async{
    emit(BuyButtonState(loaded: false));
    await Future.delayed(const Duration(seconds: 1));
    emit(BuyButtonState(loaded: true));
  }
}
