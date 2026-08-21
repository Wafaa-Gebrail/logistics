import 'package:delivery_platform/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  final String title;
  final Widget child;
  final IconData icon;

  const Section({super.key,
    required this.title,
    required this.child,
    required this.icon,});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius:
        BorderRadius.circular(26),
        boxShadow: [
          BoxShadow(
            color:
            Colors.black.withOpacity(.04),
            blurRadius: 18,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [

          Row(
            children: [

              Container(
                padding:
                const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.blue5,
                  borderRadius:
                  BorderRadius.circular(
                    14,
                  ),
                ),
                child: Icon(
                  icon,
                  color: AppColors.blue1,
                ),
              ),

              const SizedBox(width: 12),

              Text(
                title,
                style: const TextStyle(
                  fontWeight:
                  FontWeight.w800,
                  fontSize: 18,
                ),
              ),
            ],
          ),

          const SizedBox(height: 22),

          child,
        ],
      ),
    );
  }
}
