import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app/app.dart';
import 'app/di/service_locator.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  // 依赖注入初始化
  await setupLocator();

  runApp(
    // 所有状态管理都放这个容器
    const ProviderScope(
      child: ExchangeApp(),
    ),
  );
}