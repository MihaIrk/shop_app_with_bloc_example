// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:task_3/models/product.dart' as _i12;
import 'package:task_3/models/purchase.dart' as _i11;
import 'package:task_3/routes/app_router.dart' as _i1;
import 'package:task_3/screens/basket_view.dart' as _i2;
import 'package:task_3/screens/main_screen.dart' as _i3;
import 'package:task_3/screens/nested_screens/purchase_view_screen.dart' as _i4;
import 'package:task_3/screens/nested_screens/selected_product_view_screen.dart'
    as _i5;
import 'package:task_3/screens/nested_screens/shopping_history.dart' as _i6;
import 'package:task_3/screens/products_view.dart' as _i7;
import 'package:task_3/screens/user_info_view.dart' as _i8;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    Products.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ProductsScreen(),
      );
    },
    Basket.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.BasketScreen(),
      );
    },
    User.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.UserInfoScreen(),
      );
    },
    BasketViewRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.BasketViewScreen(),
      );
    },
    MainRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.MainScreen(),
      );
    },
    PurchaseViewRoute.name: (routeData) {
      final args = routeData.argsAs<PurchaseViewRouteArgs>();
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.PurchaseViewScreen(
          key: args.key,
          purchase: args.purchase,
          index: args.index,
        ),
      );
    },
    SelectedProductRoute.name: (routeData) {
      final args = routeData.argsAs<SelectedProductRouteArgs>();
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.SelectedProductScreen(
          key: args.key,
          product: args.product,
          id: args.id,
        ),
      );
    },
    ShoppingHistoryViewRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ShoppingHistoryViewScreen(),
      );
    },
    ProductViewRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ProductViewScreen(),
      );
    },
    UserInfoViewRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.UserInfoViewScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.ProductsScreen]
class Products extends _i9.PageRouteInfo<void> {
  const Products({List<_i9.PageRouteInfo>? children})
      : super(
          Products.name,
          initialChildren: children,
        );

  static const String name = 'Products';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i1.BasketScreen]
class Basket extends _i9.PageRouteInfo<void> {
  const Basket({List<_i9.PageRouteInfo>? children})
      : super(
          Basket.name,
          initialChildren: children,
        );

  static const String name = 'Basket';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i1.UserInfoScreen]
class User extends _i9.PageRouteInfo<void> {
  const User({List<_i9.PageRouteInfo>? children})
      : super(
          User.name,
          initialChildren: children,
        );

  static const String name = 'User';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.BasketViewScreen]
class BasketViewRoute extends _i9.PageRouteInfo<void> {
  const BasketViewRoute({List<_i9.PageRouteInfo>? children})
      : super(
          BasketViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'BasketViewRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.MainScreen]
class MainRoute extends _i9.PageRouteInfo<void> {
  const MainRoute({List<_i9.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.PurchaseViewScreen]
class PurchaseViewRoute extends _i9.PageRouteInfo<PurchaseViewRouteArgs> {
  PurchaseViewRoute({
    _i10.Key? key,
    required _i11.Purchase purchase,
    required int index,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          PurchaseViewRoute.name,
          args: PurchaseViewRouteArgs(
            key: key,
            purchase: purchase,
            index: index,
          ),
          rawPathParams: {'id': index},
          initialChildren: children,
        );

  static const String name = 'PurchaseViewRoute';

  static const _i9.PageInfo<PurchaseViewRouteArgs> page =
      _i9.PageInfo<PurchaseViewRouteArgs>(name);
}

class PurchaseViewRouteArgs {
  const PurchaseViewRouteArgs({
    this.key,
    required this.purchase,
    required this.index,
  });

  final _i10.Key? key;

  final _i11.Purchase purchase;

  final int index;

  @override
  String toString() {
    return 'PurchaseViewRouteArgs{key: $key, purchase: $purchase, index: $index}';
  }
}

/// generated route for
/// [_i5.SelectedProductScreen]
class SelectedProductRoute extends _i9.PageRouteInfo<SelectedProductRouteArgs> {
  SelectedProductRoute({
    _i10.Key? key,
    required _i12.Product product,
    int? id,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          SelectedProductRoute.name,
          args: SelectedProductRouteArgs(
            key: key,
            product: product,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'SelectedProductRoute';

  static const _i9.PageInfo<SelectedProductRouteArgs> page =
      _i9.PageInfo<SelectedProductRouteArgs>(name);
}

class SelectedProductRouteArgs {
  const SelectedProductRouteArgs({
    this.key,
    required this.product,
    this.id,
  });

  final _i10.Key? key;

  final _i12.Product product;

  final int? id;

  @override
  String toString() {
    return 'SelectedProductRouteArgs{key: $key, product: $product, id: $id}';
  }
}

/// generated route for
/// [_i6.ShoppingHistoryViewScreen]
class ShoppingHistoryViewRoute extends _i9.PageRouteInfo<void> {
  const ShoppingHistoryViewRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ShoppingHistoryViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShoppingHistoryViewRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ProductViewScreen]
class ProductViewRoute extends _i9.PageRouteInfo<void> {
  const ProductViewRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ProductViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductViewRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.UserInfoViewScreen]
class UserInfoViewRoute extends _i9.PageRouteInfo<void> {
  const UserInfoViewRoute({List<_i9.PageRouteInfo>? children})
      : super(
          UserInfoViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserInfoViewRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
