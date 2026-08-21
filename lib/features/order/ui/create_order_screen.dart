import 'package:delivery_platform/core/theming/app_colors.dart';
import 'package:delivery_platform/features/order/data/model/create_order_request.dart';
import 'package:delivery_platform/features/order/logic/order_cubit.dart';
import 'package:delivery_platform/features/order/logic/order_state.dart';
import 'package:delivery_platform/features/order/ui/widget/create-order/screen_header.dart';
import 'package:delivery_platform/features/order/ui/widget/create-order/sections/delivery_mode.dart';
import 'package:delivery_platform/features/order/ui/widget/create-order/sections/drop_off.dart';
import 'package:delivery_platform/features/order/ui/widget/create-order/sections/package.dart';
import 'package:delivery_platform/features/order/ui/widget/create-order/sections/pickup.dart';
import 'package:delivery_platform/features/tracking/data/model/tracking_request.dart';
import 'package:delivery_platform/features/tracking/logic/tracking_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateOrderScreen extends StatefulWidget {
  const CreateOrderScreen({super.key});

  @override
  State<CreateOrderScreen> createState() => _CreateOrderScreenState();
}

class _CreateOrderScreenState extends State<CreateOrderScreen>
    with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  late final AnimationController _animationController;
  late final Animation<double> _fadeAnimation;
  late final Animation<Offset> _slideAnimation;
  String deliveryMode = 'express_direct';
  final pickupAddressController = TextEditingController();
  final pickupNameController = TextEditingController();
  final pickupPhoneController = TextEditingController();
  final pickupInstructionsController = TextEditingController();
  final dropAddressController = TextEditingController();
  final dropNameController = TextEditingController();
  final dropPhoneController = TextEditingController();
  final dropInstructionsController = TextEditingController();
  final descriptionController = TextEditingController();
  String packageType = 'small_box';
  double? pickupLat;
  double? pickupLng;
  double? dropLat;
  double? dropLng;
  final lengthController = TextEditingController();
  final widthController = TextEditingController();
  final heightController = TextEditingController();
  final weightController = TextEditingController();
  bool isFragile = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );
    _fadeAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOut,
    );
    _slideAnimation =
        Tween<Offset>(begin: const Offset(0, .08), end: Offset.zero).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Curves.easeOutCubic,
          ),
        );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    pickupAddressController.dispose();
    pickupNameController.dispose();
    pickupPhoneController.dispose();
    pickupInstructionsController.dispose();
    dropAddressController.dispose();
    dropNameController.dispose();
    dropPhoneController.dispose();
    dropInstructionsController.dispose();
    descriptionController.dispose();
    lengthController.dispose();
    widthController.dispose();
    heightController.dispose();
    weightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<OrderCubit, OrderState>(
      listener: (context, state) {
        state.whenOrNull(
          addOrderLoading: () {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (_) {
                return const Center(child: CircularProgressIndicator());
              },
            );
          },
          addOrderSuccess: (data) async {
            context.read<TrackingCubit>().createTracking(
              TrackingRequest(
                orderId: data.data.id,
                pickupLatitude: data.data.pickupLatitude.toString(),
                pickupLongitude: data.data.pickupLongitude.toString(),
                dropoffLatitude: data.data.dropoffLatitude.toString(),
                dropoffLongitude: data.data.dropoffLongitude.toString(),
              ),
            );

            Navigator.pop(context); // dismiss loading dialog
            Navigator.pop(context, true); // return true to OrderScreen
          },
          addOrderError: (error) {
            Navigator.pop(context);
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(error)));
          },
        );
      },
      child: Scaffold(
        backgroundColor: AppColors.blue5,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.blue1.withOpacity(.06),
                    blurRadius: 14,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: AppColors.black1,
                  size: 20,
                ),
              ),
            ),
          ),
          title: const Text(
            'Create Order',
            style: TextStyle(
              color: AppColors.black1,
              fontWeight: FontWeight.w800,
              fontSize: 24,
            ),
          ),
        ),
        bottomNavigationBar: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [AppColors.blue1, AppColors.blue2],
                ),
                borderRadius: BorderRadius.circular(22),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.blue1.withOpacity(.3),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: ElevatedButton(
                onPressed: () {
                  if (!_formKey.currentState!.validate()) {
                    return;
                  }
                  context.read<OrderCubit>().addOrder(
                    CreateOrderRequest(
                      deliveryMode: deliveryMode,
                      pickup: LocationInfo(
                        address: pickupAddressController.text,
                        latitude: pickupLat ?? 0,
                        longitude: pickupLng ?? 0,
                        contactName: pickupNameController.text,
                        contactPhone: pickupPhoneController.text,
                        instructions: pickupInstructionsController.text,
                      ),
                      dropoff: LocationInfo(
                        address: dropAddressController.text,
                        latitude: dropLat ?? 0,
                        longitude: dropLng ?? 0,
                        contactName: dropNameController.text,
                        contactPhone: dropPhoneController.text,
                        instructions: dropInstructionsController.text,
                      ),
                      packages: [
                        PackageInfo(
                          type: packageType,
                          lengthCm: double.tryParse(lengthController.text) ?? 0,
                          widthCm: double.tryParse(widthController.text) ?? 0,
                          heightCm: double.tryParse(heightController.text) ?? 0,
                          weightKg: double.tryParse(weightController.text) ?? 0,
                          isFragile: isFragile,
                          description: descriptionController.text,
                        ),
                      ],
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Create Order',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.create, color: AppColors.white),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: FadeTransition(
          opacity: _fadeAnimation,
          child: SlideTransition(
            position: _slideAnimation,
            child: Form(
              key: _formKey,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.all(20),
                children: [
                  const ScreenHeader(),
                  const SizedBox(height: 28),
                  // DeliveryMode
                  DeliveryMode(deliveryMode: deliveryMode),
                  const SizedBox(height: 30),
                  // Pickup
                  Pickup(
                    pickupAddressController: pickupAddressController,
                    pickupNameController: pickupNameController,
                    pickupPhoneController: pickupPhoneController,
                    pickupInstructionsController:
                    pickupInstructionsController,
                    pickupLat: pickupLat,
                    pickupLng: pickupLng,
                    onLocationSelected: (lat, lng) {
                      setState(() {
                        pickupLat = lat;
                        pickupLng = lng;
                      });
                    },
                  ),
                  const SizedBox(height: 30),
                  // Dropoff
                  DropOff(
                    dropAddressController: dropAddressController,
                    dropNameController: dropNameController,
                    dropPhoneController: dropPhoneController,
                    dropInstructionsController:
                    dropInstructionsController,
                    dropLat: dropLat,
                    dropLng: dropLng,
                    onLocationSelected: (lat, lng) {
                      setState(() {
                        dropLat = lat;
                        dropLng = lng;
                      });
                    },
                  ),
                  const SizedBox(height: 30),
                  // Package
                  Package(
                    packageType: packageType,
                    weightController: weightController,
                    lengthController: lengthController,
                    widthController: widthController,
                    heightController: heightController,
                    isFragile: isFragile,
                    descriptionController: descriptionController,
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
