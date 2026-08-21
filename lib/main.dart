import 'dart:io';
import 'package:delivery_platform/core/di/dependency_injection.dart';
import 'package:delivery_platform/core/routing/app_router.dart';
import 'package:delivery_platform/core/routing/routes.dart';
import 'package:delivery_platform/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Allow self-signed SSL certificates for dev
  HttpOverrides.global = MyHttpOverrides();

  setupGetIt();

  runApp(MyApp(appRouter: AppRouter()));
}

// HttpOverrides class
class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;

  const MyApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            fontFamily: "Poppins",
            scaffoldBackgroundColor: AppColors.white,
            primaryColor: AppColors.blue1,
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.splashScreen,
          onGenerateRoute: appRouter.generateRoute,
    );
  }
}
