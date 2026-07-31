import 'package:flutter/material.dart';
import 'package:flutter_enterprise_exchange/features/market/market_page.dart';
import 'package:flutter_enterprise_exchange/features/profile/profile_page.dart';
import 'package:flutter_enterprise_exchange/features/trade/trade_page.dart';
import 'package:flutter_enterprise_exchange/features/wallet/wallet_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    MarketPage(),
    TradePage(),
    WalletPage(),
    ProfilePage(),
  ];

  final List<String> _titles = const [
    '行情',
    '交易',
    '资产',
    '我的',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // fragmentManager.replace(
      //     container,
      //     pages[currentIndex]
      // )
      // body: _pages[_currentIndex], // 上面页面，取currentIndex进行页面渲染，销毁之前的

      appBar: AppBar(
        title: Text(_titles[_currentIndex]),
        centerTitle: false ,
      ),
      // 保留页面，只显示当前
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.fixed,
        // type: BottomNavigationBarType.shifting ---默认样式不行
        type: BottomNavigationBarType.fixed,

        currentIndex: _currentIndex,//当前高亮item

        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,


        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (index){
          setState(() {
            _currentIndex = index;// 点击通过改变_currentIndex，改变底部item高亮和上面页面
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.show_chart), label: "行情"),
          BottomNavigationBarItem(icon: Icon(Icons.candlestick_chart), label: "交易"),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: "资产"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "我的"),
        ],
      ),
    );
  }
}
