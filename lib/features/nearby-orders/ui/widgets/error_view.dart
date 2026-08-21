import 'package:delivery_platform/core/theming/app_colors.dart';
import 'package:delivery_platform/features/nearby-orders/logic/nearby_orders_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ErrorView extends StatelessWidget {
  final String message;
  final VoidCallback? onRetry;

  const ErrorView({super.key, required this.message, this.onRetry});

  bool get _isOffline =>
      message.toLowerCase().contains('online') ||
      message.toLowerCase().contains('offline');

  @override
  Widget build(BuildContext context) {
    return _isOffline ? _OfflineView(onRetry: onRetry) : _GenericErrorView(message: message, onRetry: onRetry);
  }
}

class _OfflineView extends StatelessWidget {
  final VoidCallback? onRetry;
  const _OfflineView({this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.blue5,
                border: Border.all(color: AppColors.blue4, width: 2),
              ),
              child: const Icon(
                Icons.wifi_off_rounded,
                size: 52,
                color: AppColors.blue3,
              ),
            ),

            const SizedBox(height: 28),

            const Text(
              'You\'re Offline',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w800,
                color: AppColors.black1,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Go online to start receiving\nnearby delivery orders.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: AppColors.black3,
                height: 1.6,
              ),
            ),

            const SizedBox(height: 32),

            _OnlineToggleButton(onRetry: onRetry),
          ],
        ),
      ),
    );
  }
}

class _OnlineToggleButton extends StatefulWidget {
  final VoidCallback? onRetry;
  const _OnlineToggleButton({this.onRetry});

  @override
  State<_OnlineToggleButton> createState() => _OnlineToggleButtonState();
}

class _OnlineToggleButtonState extends State<_OnlineToggleButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _pulse;

  @override
  void initState() {
    super.initState();
    _pulse = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _pulse.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _pulse,
      builder: (context, child) {
        return Transform.scale(
          scale: 1.0 + (_pulse.value * 0.04),
          child: child,
        );
      },
      child: GestureDetector(
        onTap: () {
          if (widget.onRetry != null) {
            widget.onRetry!();
          } else {
            context.read<NearbyOrdersCubit>().startTracking();
          }
        },
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
              colors: [AppColors.blue1, AppColors.blue2],
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.blue1.withOpacity(0.35),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.power_settings_new_rounded, color: AppColors.white),
              SizedBox(width: 10),
              Text(
                'Go Online',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _GenericErrorView extends StatelessWidget {
  final String message;
  final VoidCallback? onRetry;

  const _GenericErrorView({required this.message, this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 70, color: AppColors.blue3),
            const SizedBox(height: 20),
            Text(
              message,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, color: AppColors.black2),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.blue1,
                foregroundColor: AppColors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              onPressed: onRetry ?? () => context.read<NearbyOrdersCubit>().getNearbyOrders(),
              child: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}
