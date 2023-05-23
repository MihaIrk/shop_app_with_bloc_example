import 'package:flutter/material.dart';
import 'package:task_3/cubit/basket_cubit/basket_cubit.dart';
import 'package:task_3/cubit/product_counter_cubit/product_counter_cubit.dart';
import 'package:task_3/cubit/purchase_list_cubit/purchase_list_cubit.dart';
import 'package:task_3/routes/app_router.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_3/service/local_service.dart';
import 'package:task_3/service/web_service.dart';

import 'bloc/product_bloc/product_bloc.dart';

GetIt getIt = GetIt.instance;


void main() {
  getIt.registerSingleton<AppRouter>(AppRouter());
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final appRouter = getIt<AppRouter>();
    final service = LocalService();
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProductBloc>(
          create: (BuildContext context) => ProductBloc(webService: WebService())..add(const ProductStartEvent()),
        ),
        BlocProvider<ProductCounterCubit>(
          create: (BuildContext context) => ProductCounterCubit()..reset(),
        ),
        BlocProvider<BasketCubit>(
            create: (BuildContext context) => BasketCubit(localService: service)),
        BlocProvider<PurchaseListCubit>(
            create: (BuildContext context) => PurchaseListCubit(localService: service)),
      ],
      child: MaterialApp.router(
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        routerConfig: appRouter.config(),
      ),
    );
  }
}
