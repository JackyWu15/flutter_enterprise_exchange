import 'package:flutter/material.dart';
import 'package:flutter_enterprise_exchange/app/router/app_router.dart';
import 'package:flutter_enterprise_exchange/common/theme/app_theme.dart';

class ExchangeApp extends StatelessWidget {
  const ExchangeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.light,
      title: 'Flutter Enterprise Exchange',
      debugShowCheckedModeBanner: false,
      // 采用routers形式
      routerConfig: AppRouter.appRouter,
    );
  }
}