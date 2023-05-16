// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;
import 'package:task_3/models/product.dart' as _i13;
import 'package:task_3/models/purchase.dart' as _i12;
import 'package:task_3/routes/app_router.dart' as _i1;
import 'package:task_3/screens/basket_view.dart' as _i2;
import 'package:task_3/screens/main_screen.dart' as _i3;
import 'package:task_3/screens/nested_screens/purchase_view_screen.dart' as _i4;
import 'package:task_3/screens/nested_screens/selected_product_view_screen.dart'
    as _i5;
import 'package:task_3/screens/nested_screens/shopping_history.dart' as _i6;
import 'package:task_3/screens/nested_screens/shopping_list.dart' as _i7;
import 'package:task_3/screens/products_view.dart' as _i8;
import 'package:task_3/screens/user_info_view.dart' as _i9;

abstract class $AppRouter extends _i10.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    Products.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ProductsScreen(),
      );
    },
    Basket.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.BasketScreen(),
      );
    },
    UserInfo.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.UserInfoScreen(),
      );
    },
    BasketViewRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.BasketViewScreen(),
      );
    },
    MainRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.MainScreen(),
      );
    },
    PurchaseViewRoute.name: (routeData) {
      final args = routeData.argsAs<PurchaseViewRouteArgs>();
      return _i10.AutoRoutePage<dynamic>(
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
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.SelectedProductScreen(
          key: args.key,
          product: args.product,
        ),
      );
    },
    ShoppingHistoryViewRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ShoppingHistoryViewScreen(),
      );
    },
    ShoppingListViewRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ShoppingListViewScreen(),
      );
    },
    ProductViewRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.ProductViewScreen(),
      );
    },
    UserInfoViewRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.UserInfoViewScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.ProductsScreen]
class Products extends _i10.PageRouteInfo<void> {
  const Products({List<_i10.PageRouteInfo>? children})
      : super(
          Products.name,
          initialChildren: children,
        );

  static const String name = 'Products';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i1.BasketScreen]
class Basket extends _i10.PageRouteInfo<void> {
  const Basket({List<_i10.PageRouteInfo>? children})
      : super(
          Basket.name,
          initialChildren: children,
        );

  static const String name = 'Basket';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i1.UserInfoScreen]
class UserInfo extends _i10.PageRouteInfo<void> {
  const UserInfo({List<_i10.PageRouteInfo>? children})
      : super(
          UserInfo.name,
          initialChildren: children,
        );

  static const String name = 'UserInfo';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i2.BasketViewScreen]
class BasketViewRoute extends _i10.PageRouteInfo<void> {
  const BasketViewRoute({List<_i10.PageRouteInfo>? children})
      : super(
          BasketViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'BasketViewRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i3.MainScreen]
class MainRoute extends _i10.PageRouteInfo<void> {
  const MainRoute({List<_i10.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i4.PurchaseViewScreen]
class PurchaseViewRoute extends _i10.PageRouteInfo<PurchaseViewRouteArgs> {
  PurchaseViewRoute({
    _i11.Key? key,
    required _i12.Purchase purchase,
    required int index,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          PurchaseViewRoute.name,
          args: PurchaseViewRouteArgs(
            key: key,
            purchase: purchase,
            index: index,
          ),
          initialChildren: children,
        );

  static const String name = 'PurchaseViewRoute';

  static const _i10.PageInfo<PurchaseViewRouteArgs> page =
      _i10.PageInfo<PurchaseViewRouteArgs>(name);
}

class PurchaseViewRouteArgs {
  const PurchaseViewRouteArgs({
    this.key,
    required this.purchase,
    required this.index,
  });

  final _i11.Key? key;

  final _i12.Purchase purchase;

  final int index;

  @override
  String toString() {
    return 'PurchaseViewRouteArgs{key: $key, purchase: $purchase, index: $index}';
  }
}

/// generated route for
/// [_i5.SelectedProductScreen]
class SelectedProductRoute
    extends _i10.PageRouteInfo<SelectedProductRouteArgs> {
  SelectedProductRoute({
    _i11.Key? key,
    required _i13.Product product,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          SelectedProductRoute.name,
          args: SelectedProductRouteArgs(
            key: key,
            product: product,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectedProductRoute';

  static const _i10.PageInfo<SelectedProductRouteArgs> page =
      _i10.PageInfo<SelectedProductRouteArgs>(name);
}

class SelectedProductRouteArgs {
  const SelectedProductRouteArgs({
    this.key,
    required this.product,
  });

  final _i11.Key? key;

  final _i13.Product product;

  @override
  String toString() {
    return 'SelectedProductRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i6.ShoppingHistoryViewScreen]
class ShoppingHistoryViewRoute extends _i10.PageRouteInfo<void> {
  const ShoppingHistoryViewRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ShoppingHistoryViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShoppingHistoryViewRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ShoppingListViewScreen]
class ShoppingListViewRoute extends _i10.PageRouteInfo<void> {
  const ShoppingListViewRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ShoppingListViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShoppingListViewRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i8.ProductViewScreen]
class ProductViewRoute extends _i10.PageRouteInfo<void> {
  const ProductViewRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ProductViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductViewRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i9.UserInfoViewScreen]
class UserInfoViewRoute extends _i10.PageRouteInfo<void> {
  const UserInfoViewRoute({List<_i10.PageRouteInfo>? children})
      : super(
          UserInfoViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserInfoViewRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}
