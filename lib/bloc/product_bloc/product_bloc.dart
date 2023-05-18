import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

import '../../models/product.dart';

part '../product_bloc/product_event.dart';
part '../product_bloc/product_state.dart';
part '../product_bloc/product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc(): super(const ProductState(text: '',)) {
    on<ProductStartEvent>((event, emit) async {
      emit(const ProductState(text: 'loading...', load: Load.loading));
      final dio = Dio();
      final request = await dio.get('https://fakestoreapi.com/products');
      final responseList = request.data as List<dynamic>;
      final productList = responseList
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList();
      emit(ProductState(
          text: 'loaded!', load: Load.loaded, products: productList));
    });
  }
}
