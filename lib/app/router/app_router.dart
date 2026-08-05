import 'package:flutter_enterprise_exchange/app/router/route_names.dart';
import 'package:flutter_enterprise_exchange/features/home/home_page.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter._();

  static final appRouter = GoRouter(
    initialLocation: RoutePaths.home,
    routes: [
      GoRoute(
        path: RoutePaths.home,
        name: RouteNames.home,
        builder: (context, state) => const HomePage(),
      ),
      // 可以在此处继续添加其他路由，如 market, trade 等


    ],
  );
}
