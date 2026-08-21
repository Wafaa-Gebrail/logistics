import 'package:delivery_platform/core/theming/app_colors.dart';
import 'package:delivery_platform/features/order/ui/widget/create-order/glass_card.dart';
import 'package:delivery_platform/features/order/ui/widget/create-order/input.dart';
import 'package:delivery_platform/features/order/ui/widget/create-order/section_title.dart';
import 'package:flutter/material.dart';

class Package extends StatefulWidget {
  final String packageType;
  final TextEditingController weightController;
  final TextEditingController lengthController;
  final TextEditingController widthController;
  final TextEditingController heightController;
  final bool isFragile;
  final TextEditingController descriptionController;

  const Package({
    super.key,
    required this.packageType,
    required this.weightController,
    required this.lengthController,
    required this.widthController,
    required this.heightController,
    required this.isFragile,
    required this.descriptionController,
  });

  @override
  State<Package> createState() => _PackageState();
}

class _PackageState extends State<Package> {
  String packageType = 'small_box';
  bool isFragile = false;

  @override
  void initState() {
    super.initState();

    packageType = widget.packageType;
    isFragile = widget.isFragile;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionTitle(
          title: 'Package Details',
        ),

        const SizedBox(height: 18),

        GlassCard(
          child: Column(
            children: [
              DropdownButtonFormField<String>(
                value: packageType,

                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.white,

                  prefixIcon: const Icon(
                    Icons.inventory_2_outlined,
                    color: AppColors.blue1,
                  ),

                  labelText: 'Package Type',

                  labelStyle: const TextStyle(
                    color: AppColors.black3,
                  ),

                  border: OutlineInputBorder(
                    borderRadius:
                    BorderRadius.circular(18),
                    borderSide: BorderSide.none,
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderRadius:
                    BorderRadius.circular(18),
                    borderSide: BorderSide.none,
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius:
                    BorderRadius.circular(18),
                    borderSide: const BorderSide(
                      color: AppColors.blue1,
                    ),
                  ),
                ),

                dropdownColor: AppColors.white,

                items: const [
                  DropdownMenuItem(
                    value: 'envelope',
                    child: Text('Envelope'),
                  ),

                  DropdownMenuItem(
                    value: 'small_box',
                    child: Text('Small Box'),
                  ),

                  DropdownMenuItem(
                    value: 'medium_box',
                    child: Text('Medium Box'),
                  ),

                  DropdownMenuItem(
                    value: 'large_carton',
                    child: Text('Large Carton'),
                  ),
                ],

                onChanged: (value) {
                  setState(() {
                    packageType = value!;
                  });
                },
              ),

              const SizedBox(height: 16),

              Row(
                children: [
                  Expanded(
                    child: Input(
                      controller: widget.weightController,
                      hint: 'Weight (kg)',
                      icon: Icons.scale_rounded,
                    ),
                  ),

                  const SizedBox(width: 14),

                  Expanded(
                    child: Input(
                      controller: widget.lengthController,
                      hint: 'Length',
                      icon: Icons.straighten_rounded,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 14),

              Row(
                children: [
                  Expanded(
                    child: Input(
                      controller: widget.widthController,
                      hint: 'Width',
                      icon: Icons.square_foot_rounded,
                    ),
                  ),

                  const SizedBox(width: 14),

                  Expanded(
                    child: Input(
                      controller: widget.heightController,
                      hint: 'Height',
                      icon: Icons.height_rounded,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 18),

              AnimatedContainer(
                duration:
                const Duration(milliseconds: 250),

                padding: const EdgeInsets.all(16),

                decoration: BoxDecoration(
                  color: isFragile
                      ? AppColors.blue1.withOpacity(.08)
                      : AppColors.blue5,

                  borderRadius:
                  BorderRadius.circular(18),

                  border: Border.all(
                    color: isFragile
                        ? AppColors.blue1
                        : Colors.transparent,
                  ),
                ),

                child: Row(
                  children: [
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: isFragile
                            ? AppColors.blue1
                            : AppColors.white,

                        borderRadius:
                        BorderRadius.circular(
                          14,
                        ),
                      ),

                      child: Icon(
                        Icons.health_and_safety_outlined,
                        color: isFragile
                            ? AppColors.white
                            : AppColors.blue1,
                      ),
                    ),

                    const SizedBox(width: 14),

                    const Expanded(
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Fragile Package',
                            style: TextStyle(
                              fontWeight:
                              FontWeight.w700,
                              color:
                              AppColors.black1,
                            ),
                          ),

                          SizedBox(height: 4),

                          Text(
                            'Handle this package carefully',
                            style: TextStyle(
                              color:
                              AppColors.black3,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Switch(
                      value: isFragile,
                      activeColor: AppColors.blue1,
                      onChanged: (value) {
                        setState(() {
                          isFragile = value;
                        });
                      },
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              Input(
                controller: widget.descriptionController,
                hint: 'Package Description',
                icon: Icons.description_outlined,
                maxLines: 4,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
