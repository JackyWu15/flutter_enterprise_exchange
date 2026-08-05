import '../models/market_model.dart';
import 'market_repository.dart';


class MarketRepositoryImpl implements MarketRepository {

  @override
  Future<List<MarketModel>> getMarkets() async {

    // 后面换成 Dio
    await Future.delayed(
      const Duration(seconds: 1),
    );


    return [
      const MarketModel(
        symbol: 'BTCUSDT',
        price: 116000,
        change: 2.5,
      ),
      const MarketModel(
        symbol: 'ETHUSDT',
        price: 4200,
        change: -1.2,
      ),
    ];
  }
}