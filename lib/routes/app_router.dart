import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const CustomRouteType(
        transitionsBuilder: TransitionsBuilders.zoomIn,
        durationInMilliseconds: 100,
        reverseDurationInMilliseconds: 100,
      );

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: MainRoute.page,
      path: '/',
      initial: true,
      children: [
          AutoRoute(
            initial: true,
            page: Products.page,
            path: '',
            children: [
              AutoRoute(
                page: ProductViewRoute.page,
                initial: true,
                path: 'market/allproducts',
              ),
              AutoRoute(
                page: SelectedProductRoute.page,
                path: 'market/Product/:id',
              )
            ],
          ),
          AutoRoute(
            page: Basket.page,
            children: [
              AutoRoute(
                page: BasketViewRoute.page,
                initial: true,
              ),
            ],
          ),
          AutoRoute(
            page: User.page,
            children: [
              AutoRoute(
                page: UserInfoViewRoute.page,
                initial: true,
                path: 'userInfo',
              ),
              AutoRoute(
                page: ShoppingHistoryViewRoute.page,
                path: 'user/shoppingHistory',
              ),
              AutoRoute(
                page: PurchaseViewRoute.page,
                path: 'user/shoppingHistory/orders/order:id',
              ),
            ],
          ),
        ]
    ),
  ];
}

@RoutePage(name:'Products')
class ProductsScreen extends AutoRouter{
  const ProductsScreen({super.key});
}

@RoutePage(name:'Basket')
class BasketScreen extends AutoRouter{
  const BasketScreen({super.key});
}

@RoutePage(name:'User')
class UserInfoScreen extends AutoRouter{
  const UserInfoScreen({super.key});
}
