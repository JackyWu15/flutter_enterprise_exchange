import 'package:flutter/material.dart';
import 'package:flutter_enterprise_exchange/app/routes.dart';
import 'package:flutter_enterprise_exchange/common/theme/app_theme.dart';
import 'package:flutter_enterprise_exchange/features/home/home_page.dart';

class ExchangeApp extends StatelessWidget {
  const ExchangeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.light,
      title: 'Flutter Enterprise Exchange',
      debugShowCheckedModeBanner: false,
      // 采用routers形式
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.home: (_) => const HomePage()
      },
    );
  }
}