import 'package:delivery_platform/core/routing/routes.dart';
import 'package:delivery_platform/core/services/secure_storage_helper.dart';
import 'package:delivery_platform/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _truckController;

  @override
  void initState() {
    super.initState();

    _truckController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )..repeat();

    _checkTokenAndNavigate();
  }

  @override
  void dispose() {
    _truckController.dispose();
    super.dispose();
  }

  Future<void> _checkTokenAndNavigate() async {
    try {
      await Future.delayed(const Duration(seconds: 4));

      final token = await SecureStorageHelper.read('token');
      final role = await SecureStorageHelper.read('role');

      print("token $token");
      print("role $role");

      if (token == null || token.isEmpty) {
        Navigator.pushNamedAndRemoveUntil(
          context,
          Routes.loginScreen,
              (route) => false,
        );
        return;
      }

      if (role == "driver") {
        Navigator.pushNamedAndRemoveUntil(
          context,
          Routes.driverNavbar,
              (route) => false,
        );
        return;
      }

      // default = customer
      Navigator.pushNamedAndRemoveUntil(
        context,
        Routes.navbar,
            (route) => false,
      );
    } catch (e) {
      Navigator.pushNamedAndRemoveUntil(
        context,
        Routes.loginScreen,
            (route) => false,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.blue1,
              AppColors.blue2,
              AppColors.blue3,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Stack(
          children: [
            /// Top Circle
            Positioned(
              top: -120,
              right: -80,
              child: Container(
                width: 260,
                height: 260,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.06),
                  shape: BoxShape.circle,
                ),
              ),
            ),

            /// Bottom Circle
            Positioned(
              bottom: -100,
              left: -50,
              child: Container(
                width: 220,
                height: 220,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.05),
                  shape: BoxShape.circle,
                ),
              ),
            ),

            Column(
              children: [
                const Spacer(),

                /// Truck Animation Area
                SizedBox(
                  height: 180,
                  width: size.width,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      /// Road
                      Positioned(
                        bottom: 28,
                        child: Container(
                          width: size.width * .78,
                          height: 5,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(.15),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),

                      /// Dashed Road Effect
                      Positioned(
                        bottom: 29,
                        child: SizedBox(
                          width: size.width * .78,
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                            children: List.generate(
                              12,
                                  (index) => Container(
                                width: 14,
                                height: 3,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(.35),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      /// Moving Truck
                      // Positioned(
                      //   bottom: 18,
                      //   child: SizedBox(
                      //     width: size.width,
                      //     height: 100,
                      //     child: AnimatedBuilder(
                      //       animation: _truckController,
                      //       builder: (context, child) {
                      //         return Transform.translate(
                      //           offset: Offset(
                      //             (_truckController.value * size.width) - 120,
                      //             0,
                      //           ),
                      //           child: child,
                      //         );
                      //       },
                      //       child: Column(
                      //         mainAxisSize: MainAxisSize.min,
                      //         children: [
                      //           /// Truck Shadow
                      //           Container(
                      //             width: 70,
                      //             height: 10,
                      //             decoration: BoxDecoration(
                      //               color:
                      //               Colors.black.withOpacity(.25),
                      //               borderRadius:
                      //               BorderRadius.circular(20),
                      //             ),
                      //           ),
                      //
                      //           const SizedBox(height: 4),
                      //
                      //           /// Truck SVG
                      //           Transform.rotate(
                      //             angle: 0,
                      //             child: SvgPicture.asset(
                      //               "assets/svgs/truck.svg",
                      //               width: 95,
                      //               fit: BoxFit.contain,
                      //             )
                      //                 .animate(
                      //               onPlay: (controller) =>
                      //                   controller.repeat(),
                      //             )
                      //                 .shimmer(
                      //               duration: 1800.ms,
                      //               color: Colors.white
                      //                   .withOpacity(.4),
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),

                const SizedBox(height: 40),

                /// App Name
                Text(
                  "LOGISTICS",
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 4,
                    color: AppColors.white,
                  ),
                )
                    .animate()
                    .fadeIn(duration: 900.ms)
                    .slideY(begin: .3),

                const SizedBox(height: 12),

                /// Subtitle
                Text(
                  "Fast • Smart • Reliable Delivery",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white.withOpacity(.8),
                    letterSpacing: 1.2,
                  ),
                ).animate().fadeIn(delay: 400.ms),

                const Spacer(),

                /// Loading Indicator
                SpinKitThreeBounce(
                  color: AppColors.white,
                  size: 22,
                ),

                const SizedBox(height: 40),

                /// Powered By
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.08),
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Colors.white.withOpacity(.1),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "POWERED BY",
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          color: Colors.white.withOpacity(.7),
                          letterSpacing: 1.5,
                        ),
                      ),
                      const SizedBox(width: 10),
                      SvgPicture.asset(
                        "assets/svgs/medicuras logo.svg",
                        width: 22,
                        height: 22,
                      ),
                    ],
                  ),
                ).animate().fadeIn(delay: 700.ms),

                const SizedBox(height: 40),
              ],
            ),
          ],
        ),
      ),
    );
  }
}