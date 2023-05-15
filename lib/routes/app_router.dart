import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {

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
            children: [
              AutoRoute(page: ProductViewRoute.page,initial: true),
              AutoRoute(page: SelectedProductRoute.page,)
            ],
          ),
          AutoRoute(
            page: Basket.page,
            children: [
              AutoRoute(page: BasketViewRoute.page,initial: true),
            ],
          ),
          AutoRoute(
            page: UserInfo.page,
            children: [
              AutoRoute(page: UserInfoViewRoute.page,initial: true),
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

@RoutePage(name:'UserInfo')
class UserInfoScreen extends AutoRouter{
  const UserInfoScreen({super.key});
}
