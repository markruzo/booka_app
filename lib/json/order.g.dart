// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      items: json['items'] as String,
      actions: json['actions'] as String,
      orderNumber: json['orderNumber'] as String,
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'items': instance.items,
      'actions': instance.actions,
      'orderNumber': instance.orderNumber,
    };
