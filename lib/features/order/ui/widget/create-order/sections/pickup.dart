import 'package:delivery_platform/core/routing/routes.dart';
import 'package:delivery_platform/core/theming/app_colors.dart';
import 'package:delivery_platform/features/order/ui/widget/create-order/glass_card.dart';
import 'package:delivery_platform/features/order/ui/widget/create-order/input.dart';
import 'package:delivery_platform/features/order/ui/widget/create-order/section_title.dart';
import 'package:flutter/material.dart';

class Pickup extends StatefulWidget {
  final TextEditingController pickupAddressController;
  final TextEditingController pickupNameController;
  final TextEditingController pickupPhoneController;
  final TextEditingController pickupInstructionsController;

  final double? pickupLat;
  final double? pickupLng;

  final Function(double lat, double lng) onLocationSelected;

  const Pickup({
    super.key,
    required this.pickupAddressController,
    required this.pickupNameController,
    required this.pickupPhoneController,
    required this.pickupInstructionsController,
    required this.onLocationSelected,
    this.pickupLat,
    this.pickupLng,
  });

  @override
  State<Pickup> createState() => _PickupState();
}

class _PickupState extends State<Pickup> {
  double? pickupLat;
  double? pickupLng;

  @override
  void initState() {
    super.initState();

    pickupLat = widget.pickupLat;
    pickupLng = widget.pickupLng;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionTitle(
          title: 'Pickup Information',
        ),
        const SizedBox(height: 18),

        GlassCard(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  borderRadius: BorderRadius.circular(14),
                  onTap: () async {
                    final result = await Navigator.pushNamed(
                      context,
                      Routes.pickupLocationScreen,
                    );

                    if (result != null) {
                      final data =
                      result as Map<String, dynamic>;

                      setState(() {
                        pickupLat = data['lat'];
                        pickupLng = data['lng'];

                        widget.pickupAddressController.text =
                        data['address'];
                      });

                      widget.onLocationSelected(
                        pickupLat!,
                        pickupLng!,
                      );
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.blue1,
                      borderRadius:
                      BorderRadius.circular(14),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.map_outlined,
                          color: AppColors.white,
                          size: 18,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Pick From Map',
                          style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 18),

              Input(
                controller: widget.pickupAddressController,
                hint: 'Pickup Address',
                icon: Icons.location_on_outlined,
              ),

              const SizedBox(height: 14),

              Input(
                controller: widget.pickupNameController,
                hint: 'Contact Name',
                icon: Icons.person_outline_rounded,
              ),

              const SizedBox(height: 14),

              Input(
                controller: widget.pickupPhoneController,
                hint: 'Contact Phone',
                icon: Icons.phone_outlined,
              ),

              const SizedBox(height: 14),

              Input(
                controller:
                widget.pickupInstructionsController,
                hint: 'Instructions',
                icon: Icons.edit_note_rounded,
              ),
            ],
          ),
        ),
      ],
    );
  }
}