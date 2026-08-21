import 'package:delivery_platform/core/routing/routes.dart';
import 'package:delivery_platform/core/services/secure_storage_helper.dart';
import 'package:delivery_platform/features/driver/logic/driver_cubit.dart';
import 'package:delivery_platform/features/driver/logic/driver_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:delivery_platform/core/theming/app_colors.dart';

class DriverProfileScreen extends StatefulWidget {
  const DriverProfileScreen({super.key});

  @override
  State<DriverProfileScreen> createState() => _DriverProfileScreenState();
}

class _DriverProfileScreenState extends State<DriverProfileScreen> {
  @override
  void initState() {
    super.initState();
    context.read<DriverCubit>().getProfile();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue5,
      body: BlocBuilder<DriverCubit, DriverState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),

            loading: () => const Center(
              child: CircularProgressIndicator(color: AppColors.blue1),
            ),

            error: (msg) => Center(
              child: Text(msg,
                  style: const TextStyle(color: AppColors.black2)),
            ),

            driverStatusLoading: () => const SizedBox(),
            driverStatusLoaded: (_) => const SizedBox(),
            driverStatusError: (msg) => Center(
              child: Text(msg,
                  style: const TextStyle(color: AppColors.black2)),
            ),

            loaded: (profile) {
              return CustomScrollView(
                slivers: [
                  _buildAppBar(profile),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          _buildStatusCard(profile),
                          const SizedBox(height: 20),
                          _buildStats(profile),
                          const SizedBox(height: 20),
                          _buildLocationCard(profile),
                          const SizedBox(height: 20),
                          _buildInfoCard(profile),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }

  // ================= APP BAR =================
  Widget _buildAppBar(profile) {
    return SliverAppBar(
      expandedHeight: 220,
      pinned: true,
      backgroundColor: AppColors.blue1,

      actions: [

        IconButton(
          icon: const Icon(Icons.logout, color: AppColors.white,),
          onPressed: () async {

            /// حذف كل البيانات
            await SecureStorageHelper.deleteAll();

            /// رجوع للسلاش
            if (!context.mounted) return;

            Navigator.pushNamedAndRemoveUntil(
              context,
              Routes.splashScreen,
                  (route) => false,
            );
          },
        ),
      ],

      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppColors.blue1,
                AppColors.blue2,
                AppColors.blue3,
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColors.white,
                      width: 3,
                    ),
                  ),
                  child: const CircleAvatar(
                    radius: 45,
                    backgroundColor: AppColors.white,
                    child: Icon(
                      Icons.delivery_dining,
                      size: 40,
                      color: AppColors.blue1,
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                Text(
                  profile.user.name,
                  style: const TextStyle(
                    color: AppColors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  profile.user.email,
                  style: const TextStyle(
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ================= STATUS =================
  Widget _buildStatusCard(profile) {

    final isOnline =
        context.watch<DriverCubit>().isOnline;

    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 15,
            offset: const Offset(0, 8),
          )
        ],
      ),
      child: Row(
        children: [

          /// STATUS ICON
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isOnline
                  ? AppColors.blue5
                  : AppColors.black4,
            ),
            child: Icon(
              isOnline ? Icons.wifi : Icons.wifi_off,
              color: isOnline ? AppColors.blue1 : AppColors.black3,
              size: 28,
            ),
          ),

          const SizedBox(width: 16),

          /// TEXT
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const Text(
                  "Driver Status",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 4),

                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 250),
                  child: Text(
                    isOnline
                        ? "You are online and receiving orders"
                        : "You are offline",
                    key: ValueKey(isOnline),
                    style: TextStyle(
                      color:
                      isOnline ? AppColors.blue1 : AppColors.black3,
                      fontSize: 13,
                    ),
                  ),
                ),
              ],
            ),
          ),

          /// SWITCH
          Switch(
            value: isOnline,
            activeColor: AppColors.blue1,
            onChanged: (_) {

              context
                  .read<DriverCubit>()
                  .driverStatusToggle();
            },
          ),
        ],
      ),
    );
  }

  // ================= STATS =================
  Widget _buildStats(profile) {
    return Row(
      children: [
        _statCard("Rating", "${profile.rating}", Icons.star),
        const SizedBox(width: 10),
        _statCard("Deliveries", "${profile.totalDeliveries}",
            Icons.local_shipping),
      ],
    );
  }

  Widget _statCard(String title, String value, IconData icon) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Icon(icon, color: AppColors.blue1),
            const SizedBox(height: 8),
            Text(value,
                style: const TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold)),
            Text(title,
                style: const TextStyle(color: AppColors.black3)),
          ],
        ),
      ),
    );
  }

  // ================= LOCATION =================
  Widget _buildLocationCard(profile) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Current Location",
              style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Row(
            children: [
              const Icon(Icons.location_on, color: AppColors.blue1),
              const SizedBox(width: 10),
              Text(
                "${profile.currentLat}, ${profile.currentLng}",
                style: const TextStyle(color: AppColors.black2),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // ================= INFO =================
  Widget _buildInfoCard(profile) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Driver Info",
              style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          _infoRow("Vehicle Type", profile.vehicleType),
          _infoRow("Status", profile.status),
        ],
      ),
    );
  }

  Widget _infoRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(color: AppColors.black3)),
          Text(value,
              style: const TextStyle(fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}