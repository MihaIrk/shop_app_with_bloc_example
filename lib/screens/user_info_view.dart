import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:task_3/main.dart';
import 'package:task_3/routes/app_router.dart';
import 'package:task_3/routes/app_router.gr.dart';

@RoutePage()
class UserInfoViewScreen extends StatelessWidget {
  const UserInfoViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('История покупок'),
        onPressed: () {
          getIt<AppRouter>().push(const ShoppingHistoryViewRoute());
        },
      ),
    );
  }
}
