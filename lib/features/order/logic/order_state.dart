import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_state.freezed.dart';

@freezed
class OrderState<T> with _$OrderState<T> {
  // Initial
  const factory OrderState.initial() = _Initial;

  // Add Order
  const factory OrderState.addOrderLoading() =
  CreateOrderLoading;

  const factory OrderState.addOrderSuccess(T data) =
  CreateOrderSuccess<T>;

  const factory OrderState.addOrderError({
    required String error,
  }) = CreateOrderError;

  // Get Orders
  const factory OrderState.getOrdersLoading() =
  GetOrdersLoading;

  const factory OrderState.getOrdersSuccess(T data) =
  GetOrdersSuccess<T>;

  const factory OrderState.getOrdersError({
    required String error,
  }) = GetOrdersError;

  // Order Details
  const factory OrderState.orderDetailsLoading() =
  OrderDetailsLoading;

  const factory OrderState.orderDetailsSuccess(T data) =
  OrderDetailsSuccess<T>;

  const factory OrderState.orderDetailsError({
    required String error,
  }) = OrderDetailsError;

  // Cancel Order
  const factory OrderState.cancelOrderLoading() =
  CancelOrderLoading;

  const factory OrderState.cancelOrderSuccess(T data) =
  CancelOrderSuccess<T>;

  const factory OrderState.cancelOrderError({
    required String error,
  }) = CancelOrderError;
}