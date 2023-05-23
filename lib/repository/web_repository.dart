import 'package:dio/dio.dart';
import '../models/product.dart';

abstract class Repository {
  Future<Product> getProduct(int productId);
  Future<List<Product>> getAllProducts();
}


class WebRepository extends Repository {
  final _dio = Dio();
  final String _path = 'https://fakestoreapi.com/products';

  @override
  Future<List<Product>> getAllProducts() async {
    final request = await _dio.get(_path);
    final response = request.data as List<dynamic>;
    final products = response.map((e) => Product.fromJson(e as Map<String, dynamic>)).toList();
    return products;
  }

  @override
  Future<Product> getProduct(int productId) async {
    final request = await _dio.get('$_path/$productId');
    final product = Product.fromJson(request.data);
    return product;
  }
}