import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:task_3/routes/app_router.gr.dart';


@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: [
        ProductViewRoute(),
        BasketViewRoute(),
        UserInfoViewRoute(),
      ],
      bottomNavigationBuilder: (_,tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.manage_search_sharp),label: 'Products',),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_basket),label: 'Basket',),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'profile',)
          ],
        );
      },
    );
  }
}
