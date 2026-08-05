import '../../data/models/market_model.dart';

class MarketState {
  final List<MarketModel> markets;
  final String keyword;

  const MarketState({
    this.markets = const [],
    this.keyword = '',
  });

  MarketState copyWith({
    List<MarketModel>? markets,
    String? keyword,
  }) {
    return MarketState(
      markets: markets ?? this.markets,
      keyword: keyword ?? this.keyword,
    );
  }
}