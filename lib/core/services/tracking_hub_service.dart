import 'package:signalr_netcore/signalr_client.dart';

class TrackingHubService {
  late HubConnection _connection;

  /// URL داخل الفايل (عدّله حسب السيرفر عندك)
  final String baseUrl = "https://tracking.medicuras.co/trakingHub";

  TrackingHubService();

  Function(dynamic location)? onLocationUpdate;
  bool _isConnected = false;

  /// إنشاء الاتصال
  Future<void> startConnection() async {
    if (_isConnected) return;

    _connection = HubConnectionBuilder()
        .withUrl(
      baseUrl,
      options: HttpConnectionOptions(),
    )
        .build();

    _connection.on("ReceiveLocation", (arguments) {
      if (arguments == null || arguments.isEmpty) return;

      final data = arguments[0];

      print("📍 Location update received: $data");

      onLocationUpdate?.call(data);
    });

    await _connection.start();

    _isConnected = true;

    print("✅ SignalR Connected");
  }

  void clearListeners() {
    _connection.off("ReceiveLocation");
  }

  /// الانضمام لطلب
  Future<void> joinOrder(String orderId) async {
    await _connection.invoke("JoinOrder", args: [orderId]);
  }

  /// مغادرة الطلب
  Future<void> leaveOrder(String orderId) async {
    await _connection.invoke("LeaveOrder", args: [orderId]);
  }

  /// إرسال تحديث موقع
  Future<void> updateLocation({
    required String latitude,
    required String longitude,
    required String orderId,
  }) async {
    await _connection.invoke(
      "UpdateLocation",
      args: [latitude, longitude, orderId],
    );
  }

  /// إغلاق الاتصال
  Future<void> stopConnection() async {
    await _connection.stop();
    print("🔌 SignalR Disconnected");
  }

  HubConnectionState get connectionState => _connection.state!;
}