class MarketModel {
  final String symbol;
  final double price;
  final double change;

  const MarketModel({
    required this.symbol,
    required this.price,
    required this.change,
  });

  factory MarketModel.fromJson(Map<String, dynamic> json) {
    return MarketModel(
      symbol: json['symbol'] as String,
      price: (json['price'] as num).toDouble(),
      change: (json['change'] as num).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'symbol': symbol,
      'price': price,
      'change': change,
    };
  }

  MarketModel copyWith({
    String? symbol,
    double? price,
    double? change,
  }) {
    return MarketModel(
      symbol: symbol ?? this.symbol,
      price: price ?? this.price,
      change: change ?? this.change,
    );
  }
}