import 'package:task_3/repository/web_repository.dart';

import '../models/product.dart';

abstract class OnLineService {
  Future<Product> getProduct(int productId);
  Future<List<Product>> getAllProducts();
}

class WebService extends OnLineService{
  @override
  Future<List<Product>> getAllProducts() async {
    final products = await WebRepository().getAllProducts();
    return products;
  }

  @override
  Future<Product> getProduct(int productId) async {
    final product = await WebRepository().getProduct(productId);
    return product;
  }
}