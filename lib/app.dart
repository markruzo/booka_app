import 'package:booka_service_app/core/widgets/bootom_bar.dart';
import 'package:booka_service_app/json/order.dart';
import 'package:booka_service_app/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Start extends StatefulWidget {
  final TargetPlatform? platform;
  final double screenWidth;
  final double screenHeight;

  const Start({
    super.key,
    this.platform,
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
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
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Booka',
      theme: themeProvider.getTheme(),
      home: const BottomBar(),
    );
  }
}
