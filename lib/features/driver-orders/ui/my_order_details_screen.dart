import 'dart:io';

import 'package:delivery_platform/core/theming/app_colors.dart';
import 'package:delivery_platform/features/driver-orders/logic/driver_orders_cubit.dart';
import 'package:delivery_platform/features/nearby-orders/data/model/nearby_orders.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class MyOrderDetailsScreen extends StatelessWidget {
  final NearbyOrdersData order;

  const MyOrderDetailsScreen({super.key, required this.order});

  @override
  Widget build(BuildContext context) {

    void showProofBottomSheet(BuildContext context) {
      showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        builder: (ctx) {
          return BlocProvider.value(
            value: context.read<DriverOrdersCubit>(),
            child: _ProofSheet(order: order),
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: AppColors.blue5,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: const Text(
          "Order Details",
          style: TextStyle(color: AppColors.black1),
        ),
        iconTheme: const IconThemeData(color: AppColors.black1),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _Header(order: order),
            const SizedBox(height: 12),
            _Section(title: "Route", child: _route()),
            const SizedBox(height: 12),
            _Section(title: "Contacts", child: _contacts()),
            const SizedBox(height: 12),
            _Section(title: "Packages", child: _packages()),
            const SizedBox(height: 12),
            _Section(title: "Finance", child: _finance()),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                showProofBottomSheet(context);
              },
              icon: const Icon(Icons.camera_alt),
              label: const Text("Proof of Delivery"),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.blue2,
                foregroundColor: AppColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _route() {
    return Column(
      children: [
        _line(Icons.my_location, order.pickupAddress),
        const SizedBox(height: 8),
        _line(Icons.flag, order.dropoffAddress),
      ],
    );
  }

  Widget _line(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 16, color: AppColors.blue2),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(color: AppColors.black2),
          ),
        ),
      ],
    );
  }

  Widget _contacts() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Pickup: ${order.pickupContactName}",
            style: const TextStyle(color: AppColors.black2)),
        Text("Phone: ${order.pickupContactPhone}",
            style: const TextStyle(color: AppColors.black3)),
        const SizedBox(height: 8),
        Text("Dropoff: ${order.dropoffContactName}",
            style: const TextStyle(color: AppColors.black2)),
        Text("Phone: ${order.dropoffContactPhone}",
            style: const TextStyle(color: AppColors.black3)),
      ],
    );
  }

  Widget _packages() {
    return Column(
      children: order.packages.map((p) {
        return Container(
          margin: const EdgeInsets.only(bottom: 8),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppColors.blue5,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(p.type,
                  style: const TextStyle(color: AppColors.black2)),
              Text("${p.weightKg} kg",
                  style: const TextStyle(color: AppColors.black3)),
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _finance() {
    return Column(
      children: [
        _row("Total", order.totalAmount),
        _row("Earnings", order.driverEarnings),
        _row("Fee", order.platformFee),
      ],
    );
  }

  Widget _row(String label, dynamic value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label,
              style: const TextStyle(color: AppColors.black2)),
          Text("$value €",
              style: const TextStyle(color: AppColors.blue1)),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  final NearbyOrdersData order;

  const _Header({required this.order});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _StatusChip(status: order.status),
          const SizedBox(height: 10),
          Text(
            "Order ${order.id.substring(0, 8)}",
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.black1,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            order.createdAt.toString(),
            style: const TextStyle(
              color: AppColors.black3,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

class _Section extends StatelessWidget {
  final String title;
  final Widget child;

  const _Section({
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.black1,
            ),
          ),
          const SizedBox(height: 10),
          child,
        ],
      ),
    );
  }
}

class _StatusChip extends StatelessWidget {
  final String status;

  const _StatusChip({required this.status});

  Color getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case "pending":
        return AppColors.blue3;
      case "assigned":
        return AppColors.blue2;
      case "delivered":
        return Colors.green;
      case "cancelled":
        return Colors.red;
      default:
        return AppColors.black3;
    }
  }

  @override
  Widget build(BuildContext context) {
    final color = getStatusColor(status);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: color.withOpacity(0.15),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        status.toUpperCase(),
        style: TextStyle(
          color: color,
          fontSize: 11,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class _ProofSheet extends StatefulWidget {
  final NearbyOrdersData order;

  const _ProofSheet({required this.order});

  @override
  State<_ProofSheet> createState() => _ProofSheetState();
}
class _ProofSheetState extends State<_ProofSheet> {
  File? image;
  bool isUploading = false;

  Future<void> pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final picked = await picker.pickImage(source: source);

    if (picked != null) {
      setState(() {
        image = File(picked.path);
      });
    }
  }

  void upload() async {
    if (image == null) return;

    setState(() {
      isUploading = true;
    });

    final cubit = context.read<DriverOrdersCubit>();

    await cubit.uploadProof(
      photo: image!,
      orderId: widget.order.id,
    );

    if (!mounted) return;

    setState(() {
      isUploading = false;
    });

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Proof of Delivery",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
      
            const SizedBox(height: 16),
      
            if (image != null)
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.file(image!, height: 180),
              )
            else
              const Icon(Icons.image, size: 80, color: AppColors.black3),
      
            const SizedBox(height: 16),
      
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton.icon(
                  onPressed: () => pickImage(ImageSource.camera),
                  icon: const Icon(Icons.camera, color: AppColors.blue1),
                  label: const Text("Camera", style: TextStyle(color: AppColors.blue1),),
                ),
                TextButton.icon(
                  onPressed: () => pickImage(ImageSource.gallery),
                  icon: const Icon(Icons.photo, color: AppColors.blue1),
                  label: const Text("Gallery", style: TextStyle(color: AppColors.blue1),),
                ),
              ],
            ),
      
            const SizedBox(height: 16),

            ElevatedButton(
              onPressed: (image == null || isUploading)
                  ? null
                  : upload,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.blue1,
                foregroundColor: AppColors.white,
                minimumSize: const Size(double.infinity, 45),
              ),
              child: isUploading
                  ? const SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Colors.white,
                ),
              )
                  : const Text("Confirm & Upload"),
            ),
          ],
        ),
      ),
    );
  }
}