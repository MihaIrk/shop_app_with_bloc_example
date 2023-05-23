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
                  path: 'market/allProducts',
                ),
                AutoRoute(
                  page: SelectedProductRoute.page,
                  path: 'market/product/:id',
                ),
              ],
            ),
            AutoRoute(
              page: Basket.page,
              path: 'basket',
              children: [
                AutoRoute(
                  page: BasketViewRoute.page,
                  initial: true,
                ),
              ],
            ),
            AutoRoute(
              page: User.page,
              path: 'user',
              children: [
                AutoRoute(
                  page: UserInfoViewRoute.page,
                  initial: true,
                ),
                AutoRoute(
                  page: ShoppingHistoryViewRoute.page,
                  path: 'shoppingHistory',
                ),
                AutoRoute(
                  page: PurchaseViewRoute.page,
                  path: 'shoppingHistory/order:id',
                ),
              ],
            ),
          ],
        ),
      ];
}

@RoutePage(name:'products')
class ProductsScreen extends AutoRouter {
  const ProductsScreen({super.key});
}

@RoutePage(name:'basket')
class BasketScreen extends AutoRouter {
  const BasketScreen({super.key});
}

@RoutePage(name:'user')
class UserInfoScreen extends AutoRouter {
  const UserInfoScreen({super.key});
}
