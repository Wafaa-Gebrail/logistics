import 'package:delivery_platform/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class ModeCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final bool selected;
  final VoidCallback onTap;

  const ModeCard({super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: AnimatedContainer(
        duration:
        const Duration(milliseconds: 250),

        padding: const EdgeInsets.all(20),

        decoration: BoxDecoration(
          gradient: selected
              ? const LinearGradient(
            colors: [
              AppColors.blue1,
              AppColors.blue2,
            ],
          )
              : null,

          color:
          selected
              ? null
              : AppColors.white,

          borderRadius:
          BorderRadius.circular(24),

          border: Border.all(
            color: selected
                ? Colors.transparent
                : AppColors.blue4
                .withOpacity(.25),
          ),

          boxShadow: [
            BoxShadow(
              color: selected
                  ? AppColors.blue1
                  .withOpacity(.18)
                  : AppColors.blue1
                  .withOpacity(.04),
              blurRadius: 20,
              offset: const Offset(0, 10),
            ),
          ],
        ),

        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,
          children: [
            Container(
              width: 46,
              height: 46,
              decoration: BoxDecoration(
                color: selected
                    ? AppColors.white
                    .withOpacity(.15)
                    : AppColors.blue5,
                borderRadius:
                BorderRadius.circular(
                  14,
                ),
              ),
              child: Icon(
                icon,
                color: selected
                    ? AppColors.white
                    : AppColors.blue1,
              ),
            ),

            const SizedBox(height: 18),

            Text(
              title,
              style: TextStyle(
                color: selected
                    ? AppColors.white
                    : AppColors.black1,
                fontWeight:
                FontWeight.w800,
                fontSize: 17,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              subtitle,
              style: TextStyle(
                color: selected
                    ? AppColors.white
                    .withOpacity(.8)
                    : AppColors.black3,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}