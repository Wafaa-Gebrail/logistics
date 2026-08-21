import 'package:delivery_platform/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final IconData icon;
  final int maxLines;

  const Input({super.key,
    required this.controller,
    required this.hint,
    required this.icon,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,

      style: const TextStyle(
        color: AppColors.black1,
        fontWeight: FontWeight.w600,
      ),

      decoration: InputDecoration(
        hintText: hint,

        hintStyle: const TextStyle(
          color: AppColors.black4,
        ),

        filled: true,
        fillColor: AppColors.blue5,

        prefixIcon: Icon(
          icon,
          color: AppColors.blue1,
        ),

        contentPadding:
        const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 18,
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
            width: 1.5,
          ),
        ),
      ),
    );
  }
}