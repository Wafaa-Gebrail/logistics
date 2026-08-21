import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:delivery_platform/core/networking/api_result.dart';
import 'package:delivery_platform/features/order/data/model/create_order_request.dart';
import 'package:delivery_platform/features/order/data/model/create_order_response.dart';
import 'package:delivery_platform/features/order/data/model/orders.dart';
import 'package:delivery_platform/features/order/data/repo/order_repo.dart';
import '../data/model/order_details.dart';
import 'order_state.dart';

class OrderCubit extends Cubit<OrderState> {
  final OrderRepo _orderRepo;

  OrderCubit(this._orderRepo)
      : super(const OrderState.initial());

  // Add Order
  Future<void> addOrder(
      CreateOrderRequest createOrderRequest,
      ) async {
    emit(const OrderState.addOrderLoading());

    final result =
    await _orderRepo.addOrder(createOrderRequest);

    result.when(
      success: (CreateOrderResponse data) {
        emit(OrderState.addOrderSuccess(data));
      },
      failure: (error) {
        emit(
          OrderState.addOrderError(
            error: error.apiErrorModel.message ??
                'Something went wrong',
          ),
        );
      },
    );
  }

  // Get Orders
  Future<void> getOrders({
    String? status,
    int? limit,
    int? offset,
  }) async {
    emit(const OrderState.getOrdersLoading());

    final result = await _orderRepo.getOrders(
      status: status,
      limit: limit,
      offset: offset,
    );

    result.when(
      success: (Orders data) {
        emit(OrderState.getOrdersSuccess(data));
      },
      failure: (error) {
        emit(
          OrderState.getOrdersError(
            error: error.apiErrorModel.message ??
                'Something went wrong',
          ),
        );
      },
    );
  }

  // Order Details
  Future<void> getOrderDetails(String id) async {
    emit(const OrderState.orderDetailsLoading());

    final result =
    await _orderRepo.getOrdersDetails(id);

    result.when(
      success: (OrderDetails data) {
        emit(OrderState.orderDetailsSuccess(data));
      },
      failure: (error) {
        emit(
          OrderState.orderDetailsError(
            error: error.apiErrorModel.message ??
                'Something went wrong',
          ),
        );
      },
    );
  }

  // Cancel Order
  Future<void> cancelOrder(String id) async {
    emit(const OrderState.cancelOrderLoading());

    final result =
    await _orderRepo.cancelOrder(id);

    result.when(
      success: (_) {
        emit(
          const OrderState.cancelOrderSuccess(
            'Order cancelled successfully',
          ),
        );
      },
      failure: (error) {
        emit(
          OrderState.cancelOrderError(
            error: error.apiErrorModel.message ??
                'Something went wrong',
          ),
        );
      },
    );
  }
}