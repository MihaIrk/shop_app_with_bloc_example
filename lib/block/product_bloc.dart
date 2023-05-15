import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

import '../models/product.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductState(text:'jhdjhgfjhgjhfg',)) {
    on<ProductStartEvent>((event, emit) async {
      emit(ProductState(text: 'loading...',loaded: false));
      //await Future.delayed(Duration(seconds: 2));
      final dio = Dio();
      final request = await dio.get('https://fakestoreapi.com/products');
      final responseList = request.data as List<dynamic>;
      final productList = responseList.map((e) => Product.fromJson(e as Map<String,dynamic>)).toList();
      print(productList.length);
      emit(ProductState(text: 'loaded!', loaded: true, products: productList));
    });
  }
}
