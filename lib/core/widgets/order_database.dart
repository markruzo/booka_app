import 'package:booka_service_app/core/widgets/order_model.dart';

class OrderDatabase {
  static List<Order> orders = [
    Order(
      orderNumber: '123',
      status: 'Requested',
      items: '2 x Regular Bags',
      actions: 'Add actions',
    ),
    Order(
      orderNumber: '456',
      status: 'Laundry',
      items: '2 x Regular Bags',
      actions: 'Add actions',
    ),
  ];

  static List<Order> getAllOrders() {
    return orders;
  }
}
