class ApiConstants{
  static const String apiBaseUrl = "https://delivery-platform-api.onrender.com/";
  static const String apiBaseUrl2 = "https://tracking.medicuras.co/";

  static const String login = "auth/login";
  static const String signup = "auth/register";
  static const String profile = "auth/me";
  static const String driverAuth = "auth/driver/register";

  // Order
  static const String createOrder = "orders";
  static const String orders = "orders";
  static const String orderDetails = "orders/{id}";
  static const String cancelOrder = "/orders/{id}/cancel";
  static const String addTracking = "api/Tracking/add";
  static const String trackingDetails = "api/Tracking/{orderId}";

  // Driver
  static const String driverProfile = "drivers/profile";
  static const String driverStatus = "drivers/status";
  static const String nearbyOrders = "drivers/nearby-orders";
  static const String driverLocation = "drivers/location";
  static const String acceptOrder = "drivers/accept-order";
  static const String orderStatus = "drivers/orders/{orderId}/status";
  static const String driverEarnings = "drivers/earnings";
  static const String driverAssignedOrders = "drivers/assigned-orders";
  static const String proof = "proof/upload-photo";
}

class ApiErrors {
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = "timeoutError";
  static const String defaultError = "defaultError";
  static const String cacheError = "cacheError";
  static const String noInternetError = "noInternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
}