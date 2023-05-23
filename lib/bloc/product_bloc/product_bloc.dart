import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_3/service/web_service.dart';

import '../../models/product.dart';

part '../product_bloc/product_event.dart';
part '../product_bloc/product_state.dart';
part '../product_bloc/product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final OnLineService webService;
  ProductBloc({required this.webService}): super(const ProductState(text: '')) {
    on<ProductStartEvent>((event, emit) async {
      emit(const ProductState(text: 'loading...', load: Load.loading));
      await Future.delayed(const Duration(seconds: 2));
      final productList = await webService.getAllProducts();
      emit(ProductState(text: 'loaded!', load: Load.loaded, products: productList));
    });
  }
}
