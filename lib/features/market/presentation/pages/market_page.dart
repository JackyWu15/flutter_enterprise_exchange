import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/market_provider.dart';

class MarketPage extends ConsumerWidget {
  const MarketPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final marketAsync = ref.watch(marketProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Market')),

      body: marketAsync.when(
        loading: () {
          return const Center(child: CircularProgressIndicator());
        },

        error: (error, stack) {
          return Center(child: Text(error.toString()));
        },

        data: (state) {
          return ListView.builder(
            itemCount: state.markets.length,

            itemBuilder: (context, index) {
              // final market = state.markets[index];

              return const ListTile(
                // title: Text(market.symbol),
                //
                // subtitle: Text('${market.price}'),
                //
                // trailing: Text('${market.change}%'),
              );
            },
          );
        },
      ),
    );
  }
}
