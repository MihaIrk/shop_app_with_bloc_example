import '../models/order.dart';
import '../models/product.dart';
import '../models/purchase.dart';

abstract class OffLineService {
  List<Order> addOrder(List<Order>orders, Product product, int quantity);
  List<Order> deleteOrder(List<Order>orders, int productId);
  List<Order> incrementQuantityOrder(List<Order>orders, int index);
  List<Order> decrementQuantityOrder(List<Order>orders, int index);
  List<Purchase> addPurchase(List<Purchase> purchases, Purchase purchase);
  List<Purchase> deletePurchase(List<Purchase> purchases, Purchase purchase);
}

class LocalService extends OffLineService {
  @override
  List<Order> addOrder(List<Order> orders, Product product, int quantity) {
    final orderList = orders.toList();
    orderList.add(Order(product: product, quantity: quantity));
    return orderList;
  }

  @override
  List<Purchase> addPurchase(List<Purchase> purchases, Purchase purchase) {
    final purchaseList = purchases.toList();
    purchaseList.add(purchase);
    return purchaseList;
  }

  @override
  List<Order> decrementQuantityOrder(List<Order> orders, int index) {
    final orderList = orders.toList();
    if(orderList[index].quantity >= 2) {
      orderList[index] = Order(product: orders[index].product, quantity: orders[index].quantity - 1);
    }
    return orderList;
  }

  @override
  List<Order> deleteOrder(List<Order> orders, int productId) {
    final orderList = orders.toList();
    orderList.removeWhere((element) => element.product.id == productId);
    return orderList;
  }

  @override
  List<Purchase> deletePurchase(List<Purchase> purchases, Purchase purchase) {
    final purchaseList = purchases.toList();
    purchaseList.remove(purchase);
    return purchaseList;
  }

  @override
  List<Order> incrementQuantityOrder(List<Order> orders, int index) {
    final orderList = orders.toList();
    orderList[index] = Order(product: orders[index].product, quantity: orders[index].quantity + 1);
    return orderList;
  }
}