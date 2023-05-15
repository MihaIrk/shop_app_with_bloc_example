// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:task_3/models/product.dart' as _i9;
import 'package:task_3/routes/app_router.dart' as _i1;
import 'package:task_3/screens/basket_view.dart' as _i2;
import 'package:task_3/screens/main_screen.dart' as _i3;
import 'package:task_3/screens/nested_screens/selected_product_view_screen.dart'
    as _i6;
import 'package:task_3/screens/products_view.dart' as _i4;
import 'package:task_3/screens/user_info_view.dart' as _i5;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    Products.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ProductsScreen(),
      );
    },
    Basket.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.BasketScreen(),
      );
    },
    UserInfo.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.UserInfoScreen(),
      );
    },
    BasketViewRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.BasketViewScreen(),
      );
    },
    MainRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.MainScreen(),
      );
    },
    ProductViewRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ProductViewScreen(),
      );
    },
    UserInfoViewRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.UserInfoViewScreen(),
      );
    },
    SelectedProductRoute.name: (routeData) {
      final args = routeData.argsAs<SelectedProductRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.SelectedProductScreen(
          key: args.key,
          product: args.product,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.ProductsScreen]
class Products extends _i7.PageRouteInfo<void> {
  const Products({List<_i7.PageRouteInfo>? children})
      : super(
          Products.name,
          initialChildren: children,
        );

  static const String name = 'Products';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i1.BasketScreen]
class Basket extends _i7.PageRouteInfo<void> {
  const Basket({List<_i7.PageRouteInfo>? children})
      : super(
          Basket.name,
          initialChildren: children,
        );

  static const String name = 'Basket';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i1.UserInfoScreen]
class UserInfo extends _i7.PageRouteInfo<void> {
  const UserInfo({List<_i7.PageRouteInfo>? children})
      : super(
          UserInfo.name,
          initialChildren: children,
        );

  static const String name = 'UserInfo';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.BasketViewScreen]
class BasketViewRoute extends _i7.PageRouteInfo<void> {
  const BasketViewRoute({List<_i7.PageRouteInfo>? children})
      : super(
          BasketViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'BasketViewRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.MainScreen]
class MainRoute extends _i7.PageRouteInfo<void> {
  const MainRoute({List<_i7.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ProductViewScreen]
class ProductViewRoute extends _i7.PageRouteInfo<void> {
  const ProductViewRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ProductViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductViewRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.UserInfoViewScreen]
class UserInfoViewRoute extends _i7.PageRouteInfo<void> {
  const UserInfoViewRoute({List<_i7.PageRouteInfo>? children})
      : super(
          UserInfoViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserInfoViewRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SelectedProductScreen]
class SelectedProductRoute extends _i7.PageRouteInfo<SelectedProductRouteArgs> {
  SelectedProductRoute({
    _i8.Key? key,
    required _i9.Product product,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          SelectedProductRoute.name,
          args: SelectedProductRouteArgs(
            key: key,
            product: product,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectedProductRoute';

  static const _i7.PageInfo<SelectedProductRouteArgs> page =
      _i7.PageInfo<SelectedProductRouteArgs>(name);
}

class SelectedProductRouteArgs {
  const SelectedProductRouteArgs({
    this.key,
    required this.product,
  });

  final _i8.Key? key;

  final _i9.Product product;

  @override
  String toString() {
    return 'SelectedProductRouteArgs{key: $key, product: $product}';
  }
}
