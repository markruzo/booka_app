import 'package:json_annotation/json_annotation.dart';

part 'order.g.dart';

@JsonSerializable(explicitToJson: true)
class Order {
  final String items;
  final String actions;
  final String orderNumber;

  const Order({
    required this.items,
    required this.actions,
    required this.orderNumber,
  });

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  Map<String, dynamic> toJson() => _$OrderToJson(this);

  @override
  String toString() =>
      'Order{items: $items, orderNumber: $orderNumber, actions: $actions}';
}
