import 'package:delivery_platform/features/order/ui/widget/create-order/mode_card.dart';
import 'package:delivery_platform/features/order/ui/widget/create-order/section_title.dart';
import 'package:flutter/material.dart';

class DeliveryMode extends StatefulWidget {
  final String deliveryMode;

  const DeliveryMode({super.key, required this.deliveryMode});

  @override
  State<DeliveryMode> createState() => _DeliveryModeState();
}

class _DeliveryModeState extends State<DeliveryMode> {
  String deliveryMode = 'express_direct';
  @override
  void initState() {
    super.initState();

    deliveryMode = widget.deliveryMode;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionTitle(
          title: 'Delivery Mode',
        ),

        const SizedBox(height: 16),

        Row(
          children: [
            Expanded(
              child: ModeCard(
                icon:
                Icons.flash_on_rounded,
                title: 'Express',
                subtitle:
                'Direct fast delivery',
                selected:
                deliveryMode ==
                    'express_direct',
                onTap: () {
                  setState(() {
                    deliveryMode =
                    'express_direct';
                  });
                },
              ),
            ),

            const SizedBox(width: 14),

            Expanded(
              child: ModeCard(
                icon:
                Icons.inventory_2_outlined,
                title: 'Standard',
                subtitle:
                'Depot delivery',
                selected:
                deliveryMode ==
                    'standard_depot',
                onTap: () {
                  setState(() {
                    deliveryMode =
                    'standard_depot';
                  });
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
