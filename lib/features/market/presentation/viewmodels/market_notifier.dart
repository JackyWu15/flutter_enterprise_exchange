import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../app/di/service_locator.dart';
import '../../data/repositories/market_repository.dart';
import '../state/market_state.dart';

class MarketNotifier extends AsyncNotifier<MarketState> {
  late final MarketRepository repository;

  @override
  Future<MarketState> build() async {
    repository = getIt<MarketRepository>();

    return const MarketState();
  }

  Future<void> loadMarkets() async {
    state = const AsyncLoading();

    try {
      final markets = await repository.getMarkets();

      state = AsyncData(MarketState(markets: markets));
    } catch (e) {
      state = AsyncError(e, StackTrace.current);
    }
  }

  void updateKeyword(String keyword) {
    final current = state.value;
    if (current == null) return;

    state = AsyncData(
      current.copyWith(
        keyword: keyword,
      ),
    );
  }
}
