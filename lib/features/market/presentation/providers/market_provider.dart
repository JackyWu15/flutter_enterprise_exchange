import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../viewmodels/market_notifier.dart';
import '../state/market_state.dart';

// 获取状态
final marketProvider = AsyncNotifierProvider<MarketNotifier, MarketState>(
  MarketNotifier.new,
);
