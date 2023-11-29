import 'package:booka_service_app/json/order.dart';
import 'package:json_annotation/json_annotation.dart';

part 'person.g.dart';

@JsonSerializable(explicitToJson: true)
class Person {
  final String? name;
  final String? creditCardNumber;
  final DateTime birthday;
  final Order order;

  const Person(
    this.order, {
    required this.name,
    this.creditCardNumber,
    required this.birthday,
  });

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  Map<String, dynamic> toJson() => _$PersonToJson(this);

  @override
  String toString() =>
      'Person{name: $name, creditCardNumber: $creditCardNumber, birthday: $birthday, order: $order}';
}
