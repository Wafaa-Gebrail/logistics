import 'package:json_annotation/json_annotation.dart';

part 'nearby_orders.g.dart';

@JsonSerializable(explicitToJson: true)
class NearbyOrders {
  final List<NearbyOrdersData> data;

  NearbyOrders({
    required this.data,
  });

  factory NearbyOrders.fromJson(dynamic json) {

    // API رجعت List مباشرة
    if (json is List) {
      return NearbyOrders(
        data: json
            .map((e) => NearbyOrdersData.fromJson(e))
            .toList(),
      );
    }

    // API رجعت Object
    return NearbyOrders(
      data: (json['data'] as List<dynamic>? ?? [])
          .map((e) => NearbyOrdersData.fromJson(e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
    'data': data.map((e) => e.toJson()).toList(),
  };
}

@JsonSerializable(explicitToJson: true)
class NearbyOrdersData {
  final String id;
  final String createdAt;
  final String updatedAt;
  final String userId;
  final String? driverId;
  final String status;
  final String deliveryMode;

  final String pickupAddress;
  final double pickupLatitude;
  final double pickupLongitude;
  final String pickupInstructions;
  final String pickupContactName;
  final String pickupContactPhone;

  final String dropoffAddress;
  final double dropoffLatitude;
  final double dropoffLongitude;
  final String dropoffInstructions;
  final String dropoffContactName;
  final String dropoffContactPhone;

  final String timeWindowPreference;

  final String? pickupEarliestTime;
  final String? pickupLatestTime;
  final String? deliveryEarliestTime;
  final String? deliveryLatestTime;

  final double totalAmount;
  final double driverEarnings;
  final double platformFee;

  final String? assignedAt;
  final String? pickupArrivalAt;
  final String? pickupCompletedAt;
  final String? depotArrivalAt;
  final String? depotDepartureAt;
  final String? deliveredAt;

  final String? deliveryOtp;

  final List<PackageData> packages;

  NearbyOrdersData({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.userId,
    this.driverId,
    required this.status,
    required this.deliveryMode,
    required this.pickupAddress,
    required this.pickupLatitude,
    required this.pickupLongitude,
    required this.pickupInstructions,
    required this.pickupContactName,
    required this.pickupContactPhone,
    required this.dropoffAddress,
    required this.dropoffLatitude,
    required this.dropoffLongitude,
    required this.dropoffInstructions,
    required this.dropoffContactName,
    required this.dropoffContactPhone,
    required this.timeWindowPreference,
    this.pickupEarliestTime,
    this.pickupLatestTime,
    this.deliveryEarliestTime,
    this.deliveryLatestTime,
    required this.totalAmount,
    required this.driverEarnings,
    required this.platformFee,
    this.assignedAt,
    this.pickupArrivalAt,
    this.pickupCompletedAt,
    this.depotArrivalAt,
    this.depotDepartureAt,
    this.deliveredAt,
    this.deliveryOtp,
    required this.packages,
  });

  factory NearbyOrdersData.fromJson(
      Map<String, dynamic> json,
      ) {
    return NearbyOrdersData(
      id: json['id'] ?? '',
      createdAt: json['createdAt'] ?? '',
      updatedAt: json['updatedAt'] ?? '',
      userId: json['userId'] ?? '',
      driverId: json['driverId'],
      status: json['status'] ?? '',
      deliveryMode: json['deliveryMode'] ?? '',

      pickupAddress: json['pickupAddress'] ?? '',
      pickupLatitude:
      double.tryParse(
        json['pickupLatitude'].toString(),
      ) ??
          0,
      pickupLongitude:
      double.tryParse(
        json['pickupLongitude'].toString(),
      ) ??
          0,
      pickupInstructions:
      json['pickupInstructions'] ?? '',
      pickupContactName:
      json['pickupContactName'] ?? '',
      pickupContactPhone:
      json['pickupContactPhone'] ?? '',

      dropoffAddress: json['dropoffAddress'] ?? '',
      dropoffLatitude:
      double.tryParse(
        json['dropoffLatitude'].toString(),
      ) ??
          0,
      dropoffLongitude:
      double.tryParse(
        json['dropoffLongitude'].toString(),
      ) ??
          0,
      dropoffInstructions:
      json['dropoffInstructions'] ?? '',
      dropoffContactName:
      json['dropoffContactName'] ?? '',
      dropoffContactPhone:
      json['dropoffContactPhone'] ?? '',

      timeWindowPreference:
      json['timeWindowPreference'] ?? '',

      pickupEarliestTime:
      json['pickupEarliestTime'],
      pickupLatestTime:
      json['pickupLatestTime'],
      deliveryEarliestTime:
      json['deliveryEarliestTime'],
      deliveryLatestTime:
      json['deliveryLatestTime'],

      totalAmount:
      double.tryParse(
        json['totalAmount'].toString(),
      ) ??
          0,

      driverEarnings:
      double.tryParse(
        json['driverEarnings'].toString(),
      ) ??
          0,

      platformFee:
      double.tryParse(
        json['platformFee'].toString(),
      ) ??
          0,

      assignedAt: json['assignedAt'],
      pickupArrivalAt:
      json['pickupArrivalAt'],
      pickupCompletedAt:
      json['pickupCompletedAt'],
      depotArrivalAt:
      json['depotArrivalAt'],
      depotDepartureAt:
      json['depotDepartureAt'],
      deliveredAt: json['deliveredAt'],
      deliveryOtp: json['deliveryOtp'],

      packages:
      (json['packages']
      as List<dynamic>? ??
          [])
          .map(
            (e) => PackageData.fromJson(e),
      )
          .toList(),
    );
  }

  Map<String, dynamic> toJson() =>
      _$NearbyOrdersDataToJson(this);
}

@JsonSerializable()
class PackageData {
  final String id;
  final String createdAt;
  final String updatedAt;
  final String orderId;

  final String type;

  final double lengthCm;
  final double widthCm;
  final double heightCm;
  final double volumeCm3;
  final double weightKg;

  final bool isFragile;
  final bool isPerishable;

  final String description;
  final String conditionAtPickup;

  final String? pickupPhotoUrl;
  final String? pickupPhotoLocationUrl;
  final String? deliveryPhotoUrl;

  PackageData({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.orderId,
    required this.type,
    required this.lengthCm,
    required this.widthCm,
    required this.heightCm,
    required this.volumeCm3,
    required this.weightKg,
    required this.isFragile,
    required this.isPerishable,
    required this.description,
    required this.conditionAtPickup,
    this.pickupPhotoUrl,
    this.pickupPhotoLocationUrl,
    this.deliveryPhotoUrl,
  });

  factory PackageData.fromJson(
      Map<String, dynamic> json,
      ) {
    return PackageData(
      id: json['id'] ?? '',
      createdAt: json['createdAt'] ?? '',
      updatedAt: json['updatedAt'] ?? '',
      orderId: json['orderId'] ?? '',
      type: json['type'] ?? '',

      lengthCm:
      double.tryParse(
        json['lengthCm'].toString(),
      ) ??
          0,

      widthCm:
      double.tryParse(
        json['widthCm'].toString(),
      ) ??
          0,

      heightCm:
      double.tryParse(
        json['heightCm'].toString(),
      ) ??
          0,

      volumeCm3:
      double.tryParse(
        json['volumeCm3'].toString(),
      ) ??
          0,

      weightKg:
      double.tryParse(
        json['weightKg'].toString(),
      ) ??
          0,

      isFragile:
      json['isFragile'] ?? false,

      isPerishable:
      json['isPerishable'] ?? false,

      description:
      json['description'] ?? '',

      conditionAtPickup:
      json['conditionAtPickup'] ?? '',

      pickupPhotoUrl:
      json['pickupPhotoUrl'],

      pickupPhotoLocationUrl:
      json['pickupPhotoLocationUrl'],

      deliveryPhotoUrl:
      json['deliveryPhotoUrl'],
    );
  }

  Map<String, dynamic> toJson() =>
      _$PackageDataToJson(this);
}