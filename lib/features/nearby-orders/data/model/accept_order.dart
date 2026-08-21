import 'package:freezed_annotation/freezed_annotation.dart';
part 'accept_order.g.dart';

@JsonSerializable()
class AcceptOrder {
  final String orderId;

  AcceptOrder({
    required this.orderId,
});

  factory AcceptOrder.fromJson(Map<String, dynamic> json) => _$AcceptOrderFromJson(json);

  Map<String, dynamic> toJson() => _$AcceptOrderToJson(this);
}