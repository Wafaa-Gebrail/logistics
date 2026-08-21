import 'package:delivery_platform/core/routing/routes.dart';
import 'package:delivery_platform/core/theming/app_colors.dart';
import 'package:delivery_platform/features/order/ui/widget/create-order/glass_card.dart';
import 'package:delivery_platform/features/order/ui/widget/create-order/input.dart';
import 'package:delivery_platform/features/order/ui/widget/create-order/section_title.dart';
import 'package:flutter/material.dart';

class DropOff extends StatefulWidget {
  final TextEditingController dropAddressController;
  final TextEditingController dropNameController;
  final TextEditingController dropPhoneController;
  final TextEditingController dropInstructionsController;

  final double? dropLat;
  final double? dropLng;

  final Function(double lat, double lng) onLocationSelected;

  const DropOff({
    super.key,
    required this.dropAddressController,
    required this.dropNameController,
    required this.dropPhoneController,
    required this.dropInstructionsController,
    required this.onLocationSelected,
    this.dropLat,
    this.dropLng,
  });

  @override
  State<DropOff> createState() => _DropOffState();
}

class _DropOffState extends State<DropOff> {
  double? dropLat;
  double? dropLng;

  @override
  void initState() {
    super.initState();

    dropLat = widget.dropLat;
    dropLng = widget.dropLng;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionTitle(
          title: 'Dropoff Information',
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
                        dropLat = data['lat'];
                        dropLng = data['lng'];

                        widget.dropAddressController.text =
                        data['address'];
                      });

                      widget.onLocationSelected(
                        dropLat!,
                        dropLng!,
                      );
                    }
                  },
                  child: Container(
                    padding:
                    const EdgeInsets.symmetric(
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
                            fontWeight:
                            FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 18),

              Input(
                controller: widget.dropAddressController,
                hint: 'Dropoff Address',
                icon: Icons.location_on_outlined,
              ),

              const SizedBox(height: 14),

              Input(
                controller: widget.dropNameController,
                hint: 'Contact Name',
                icon: Icons.person_outline_rounded,
              ),

              const SizedBox(height: 14),

              Input(
                controller: widget.dropPhoneController,
                hint: 'Contact Phone',
                icon: Icons.phone_outlined,
              ),

              const SizedBox(height: 14),

              Input(
                controller:
                widget.dropInstructionsController,
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