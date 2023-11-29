import 'package:booka_service_app/core/styles/colors.dart';
import 'package:booka_service_app/core/widgets/bootom_bar.dart';
import 'package:booka_service_app/json/order.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();

    const order = Order(
      orderNumber: '#123',
      items: 'Items',
      actions: 'Actions',
    );
    final json = order.toJson();
    debugPrint('JSON: ${order.toJson()}');

    final newOrder = Order.fromJson(json);
    debugPrint('$newOrder');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Booka',
      theme: ThemeData(
        fontFamily: 'Dm Sans',
        scaffoldBackgroundColor: kColorClean,
      ),
      home: const BottomBar(),
    );
  }
}
