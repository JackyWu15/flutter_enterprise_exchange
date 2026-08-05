import 'package:get_it/get_it.dart';

import '../../core/network/api_client.dart';
import '../../features/market/data/repositories/market_repository.dart';
import '../../features/market/data/repositories/market_repository_impl.dart';

final getIt = GetIt.instance;

Future<void> setupLocator() async {
  getIt.registerLazySingleton<ApiClient>(
    () => ApiClient(),
  );

  // Market
  getIt.registerLazySingleton<MarketRepository>(
    () => MarketRepositoryImpl(),
  );
}