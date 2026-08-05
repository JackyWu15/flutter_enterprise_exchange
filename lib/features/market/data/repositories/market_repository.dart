import '../models/market_model.dart';

abstract class MarketRepository {

  Future<List<MarketModel>> getMarkets();

}