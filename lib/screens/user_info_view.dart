import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UserInfoViewScreen extends StatelessWidget {
  const UserInfoViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('UserInfo'),);
  }
}
