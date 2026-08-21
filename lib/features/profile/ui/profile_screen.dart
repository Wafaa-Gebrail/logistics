import 'dart:ui';
import 'package:delivery_platform/core/routing/routes.dart';
import 'package:delivery_platform/core/services/secure_storage_helper.dart';
import 'package:delivery_platform/core/theming/app_colors.dart';
import 'package:delivery_platform/features/profile/data/model/driver_auth_request.dart';
import 'package:delivery_platform/features/profile/logic/profile_cubit.dart';
import 'package:delivery_platform/features/profile/logic/profile_state.dart';
import 'package:delivery_platform/features/profile/ui/widgets/build_tile.dart';
import 'package:delivery_platform/features/profile/ui/widgets/glass_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  void initState() {
    super.initState();
    context.read<ProfileCubit>().getProfile();
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        title: const Text("Logout"),
        content: const Text("Are you sure you want to logout?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              "Cancel",
              style: TextStyle(color: AppColors.blue1),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.blue1,
            ),
            onPressed: () async {
              await _logout(context);
            },
            child: const Text(
              "Logout",
              style: TextStyle(color: AppColors.white),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _logout(BuildContext context) async {
    await SecureStorageHelper.deleteAll();

    if (!context.mounted) return;

    Navigator.pushNamedAndRemoveUntil(
      context,
      Routes.splashScreen,
          (route) => false,
    );
  }

  void _showBecomeDriverDialog(BuildContext context) {
    String? selectedVehicleType;
    final vehiclePlateController = TextEditingController();
    final maxWeightController = TextEditingController();
    final maxVolumeController = TextEditingController();

    final state = context.read<ProfileCubit>().state;

    String userId = '';

    state.whenOrNull(
      loaded: (profile) {
        userId = profile.id;
      },
    );

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (dialogContext) {
        final profileCubit = context.read<ProfileCubit>();
        return DraggableScrollableSheet(
          initialChildSize: 0.85,
          minChildSize: 0.6,
          maxChildSize: 0.95,
          builder: (_, scrollController) {
            return Container(
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              child: SingleChildScrollView(
                controller: scrollController,
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    /// TOP INDICATOR
                    Center(
                      child: Container(
                        width: 50,
                        height: 5,
                        decoration: BoxDecoration(
                          color: AppColors.black3,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    /// TITLE
                    const Text(
                      "Become a Driver",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                      ),
                    ),

                    const SizedBox(height: 6),

                    Text(
                      "Fill your vehicle details to start delivering",
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.black3,
                      ),
                    ),

                    const SizedBox(height: 25),

                    /// VEHICLE TYPE
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: AppColors.blue5,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: selectedVehicleType,
                          hint: const Text("Vehicle Type"),
                          isExpanded: true,
                          icon: const Icon(Icons.arrow_drop_down),
                          items: const [
                            DropdownMenuItem(
                              value: "bicycle",
                              child: Text("Bicycle"),
                            ),
                            DropdownMenuItem(
                              value: "small_car",
                              child: Text("Small Car"),
                            ),
                            DropdownMenuItem(
                              value: "large_car",
                              child: Text("Large Car"),
                            ),
                            DropdownMenuItem(
                              value: "van",
                              child: Text("Van"),
                            ),
                          ],
                          onChanged: (value) {
                            setState(() {
                              selectedVehicleType = value;
                            });
                          },
                        ),
                      ),
                    ),

                    const SizedBox(height: 15),

                    /// PLATE
                    _buildInput(
                      controller: vehiclePlateController,
                      label: "Vehicle Plate",
                      icon: Icons.pin_rounded,
                    ),

                    const SizedBox(height: 15),

                    /// WEIGHT
                    _buildInput(
                      controller: maxWeightController,
                      label: "Max Weight (Kg)",
                      icon: Icons.fitness_center_rounded,
                      keyboardType: TextInputType.number,
                    ),

                    const SizedBox(height: 15),

                    /// VOLUME
                    _buildInput(
                      controller: maxVolumeController,
                      label: "Max Volume (Cm³)",
                      icon: Icons.straighten_rounded,
                      keyboardType: TextInputType.number,
                    ),

                    const SizedBox(height: 30),

                    /// CONFIRM BUTTON
                    GestureDetector(
                      onTap: () async {
                        if (selectedVehicleType == null || selectedVehicleType!.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Please select vehicle type")),
                          );
                          return;
                        }

                        await profileCubit.becomeDriver(
                          DriverAuthRequest(
                            userId: userId,
                            vehicleType: selectedVehicleType ?? "",
                            vehiclePlate: vehiclePlateController.text,
                            maxWeightKg: int.tryParse(maxWeightController.text) ?? 0,
                            maxVolumeCm3: int.tryParse(maxVolumeController.text) ?? 0,
                          ),
                        );

                        // 🔥 IMPORTANT: update local role BEFORE navigation
                        await SecureStorageHelper.write('role', 'driver');

                        if (!context.mounted) return;

                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          Routes.splashScreen,
                              (route) => false,
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          gradient: const LinearGradient(
                            colors: [
                              AppColors.blue1,
                              AppColors.blue3,
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue.withOpacity(0.3),
                              blurRadius: 20,
                              offset: const Offset(0, 10),
                            )
                          ],
                        ),
                        child: const Center(
                          child: Text(
                            "Confirm & Continue",
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 12),

                    /// CANCEL
                    Center(
                      child: TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text(
                          "Cancel",
                          style: TextStyle(color: AppColors.blue1,),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  /// MODERN INPUT WIDGET
  Widget _buildInput({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.blue5,
        borderRadius: BorderRadius.circular(16),
      ),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: AppColors.blue1,),
          hintText: label,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileCubit, ProfileState>(
      listener: (context, state) {
        state.whenOrNull(
          driverLoaded: (_) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("You are now a driver!")),
            );

            Navigator.pushNamedAndRemoveUntil(
              context,
              Routes.splashScreen,
                  (route) => false,
            );
          },
          driverError: (error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(error)),
            );
          },
        );
      },

      child: Scaffold(
        backgroundColor: AppColors.blue5,
        body: BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox(),

              loading: () => const Center(
                child: CircularProgressIndicator(
                  color: AppColors.blue1,
                ),
              ),

              error: (error) => Center(
                child: Text(
                  error,
                  style: const TextStyle(
                    color: AppColors.blue3,
                    fontSize: 16,
                  ),
                ),
              ),

              loaded: (profile) {
                return CustomScrollView(
                  slivers: [

                    SliverAppBar(
                      expandedHeight: 280,
                      pinned: true,
                      backgroundColor: AppColors.blue1,
                      elevation: 0,
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
                          child: SafeArea(
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
                                  child: CircleAvatar(
                                    radius: 50,
                                    backgroundColor: AppColors.white,
                                    child: Text(
                                      profile.name[0].toUpperCase(),
                                      style: const TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.blue1,
                                      ),
                                    ),
                                  ),
                                ),

                                const SizedBox(height: 16),

                                Text(
                                  profile.name,
                                  style: const TextStyle(
                                    color: AppColors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                const SizedBox(height: 8),

                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 14,
                                    vertical: 6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.white.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    profile.role.toUpperCase(),
                                    style: const TextStyle(
                                      color: AppColors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [

                            GlassCard(
                              children: [
                                BuildTile(
                                  icon: Icons.email_rounded,
                                  title: "Email",
                                  value: profile.email,
                                ),
                                const SizedBox(height: 18),
                                BuildTile(
                                  icon: Icons.phone_rounded,
                                  title: "Phone",
                                  value: profile.phone,
                                ),
                                const SizedBox(height: 18),
                                BuildTile(
                                  icon: Icons.badge_rounded,
                                  title: "User ID",
                                  value: profile.id,
                                ),
                                const SizedBox(height: 18),
                                BuildTile(
                                  icon: Icons.calendar_month_rounded,
                                  title: "Created At",
                                  value:
                                  "${profile.createdAt.day}/${profile.createdAt.month}/${profile.createdAt.year}",
                                ),
                              ],
                            ),

                            const SizedBox(height: 20),

                            GestureDetector(
                              onTap: () {
                                _showBecomeDriverDialog(context);
                              },
                              child: Container(
                                width: double.infinity,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 16,
                                  horizontal: 20,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  gradient: const LinearGradient(
                                    colors: [
                                      AppColors.blue1,
                                      AppColors.blue2,
                                    ],
                                  ),
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.delivery_dining_rounded, color: AppColors.white),
                                    SizedBox(width: 10),
                                    Text(
                                      "Become a Driver",
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

                            const SizedBox(height: 16),

                            GestureDetector(
                              onTap: () {
                                _showLogoutDialog(context);
                              },
                              child: Container(
                                width: double.infinity,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 16,
                                  horizontal: 20,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: AppColors.blue3,
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.logout_rounded, color: AppColors.white),
                                    SizedBox(width: 10),
                                    Text(
                                      "Logout",
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

                            const SizedBox(height: 30),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },

              driverLoading: () => const Center(
                child: CircularProgressIndicator(color: AppColors.blue1),
              ),

              driverLoaded: (_) => const SizedBox(),

              driverError: (error) => const SizedBox(),
            );
          },
        ),
      ),
    );
  }
}